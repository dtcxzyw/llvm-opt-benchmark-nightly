Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvNS0_22ordered_unique_range_tET_SJ_:bb.a
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEEPKS7_NS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_T0_SK_T1_NS_11move_detail5bool_ILb1EEE.exit, label %bb.b, !llvm.loop !8

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.025.i.i.i = phi ptr [ %i.e, %bb.d ], [ %i.s, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.025.i.i.i, i64 -8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !254
  %i.u = icmp slt i32 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.e, ptr %3, align 8, !tbaa !267
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !266
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.i, ptr %i.w, align 8, !tbaa !268
  %i.x = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = ptrtoint ptr %.025.i.i.i to i64
  %i.ac = sub i64 %i.ab, %i.x
  %i.ad = ashr exact i64 %i.ac, 3
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull %.0.i.i.i, i64 noundef %i.aa, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp eq ptr %i.s, %i.f
  br i1 %i.ae, label %_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEEPKS7_NS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_T0_SK_T1_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e, !llvm.loop !9

bb.h:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.v, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.h
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ag = trunc i64 %i.af to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.ah
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEEPKS7_NS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_T0_SK_T1_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !266 ; 2 uses
  %.not.i.i30.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i30.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i.i, label %.preheader.i.i.i31.i.i.i

.preheader.i.i.i31.i.i.i:                         ; preds = %bb.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.al = trunc i64 %i.ak to i32
  %i.am = shl i32 %i.al, 1
  %i.an = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i.i.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i.i: ; preds = %.preheader.i.i.i31.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.aj

_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEEPKS7_NS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_T0_SK_T1_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.c, %bb.g, %bb.a, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5eraseENS0_12vec_iteratorIPS8_Lb1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.b = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1532
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !259, !noalias !1532 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.g = load i32, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !1532
  store i32 %i.g, ptr %.010.i.i.i, align 4, !tbaa !254, !noalias !1532
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !1532
  %i.h = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.j = load i32, ptr %i.h, align 4, !tbaa !254, !noalias !1532
  store i32 %i.j, ptr %i.i, align 4, !tbaa !254, !noalias !1532
  store i32 0, ptr %i.h, align 4, !tbaa !254, !noalias !1532
  %i.k = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1532
  %i.n = add i32 %i.m, -2
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1532
  %i.o = add i64 %i.d, -1
  store i64 %i.o, ptr %i.c, align 8, !tbaa !259, !noalias !1532
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !1532
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250, !noalias !1553 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1554 ; 4 uses
  %.not12.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1555
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.e = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.013.i.i.i.i, 1                ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1555
  %i.i = icmp slt i32 %i.h, %i.d                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.neg.i.i.i.i = xor i64 %i.f, -1
  %i.k = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.l = select i1 %i.i, ptr %i.j, ptr %i.e       ; 2 uses
  %.1.i.i.i.i = select i1 %i.i, i64 %i.k, i64 %i.f ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i, label %bb.b, !llvm.loop !6

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE12erase_uniqueERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i
  %i.o = load i32, ptr %1, align 4, !tbaa !254, !noalias !1556
  %i.p = load i32, ptr %i.m, align 4, !tbaa !254, !noalias !1556
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE12erase_uniqueERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit.i, label %.lr.ph.i.i.i3.i

.lr.ph.i.i.i3.i:                                  ; preds = %bb.d, %.lr.ph.i.i.i3.i
  %.010.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i3.i ], [ %i.m, %bb.d ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i3.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.s = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !254, !noalias !1557
  store i32 %i.s, ptr %.010.i.i.i.i, align 4, !tbaa !254, !noalias !1557
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !254, !noalias !1557
  %i.t = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254, !noalias !1557
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254, !noalias !1557
  store i32 0, ptr %i.t, align 4, !tbaa !254, !noalias !1557
  %i.w = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i4.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i4.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit.i, label %.lr.ph.i.i.i3.i, !llvm.loop !10

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit.i: ; preds = %.lr.ph.i.i.i3.i, %bb.d
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1557
  %i.z = add i32 %i.y, -2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1557
  %i.aa = add i64 %i.c, -1
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !259, !noalias !1557
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE12erase_uniqueERKS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE12erase_uniqueERKS5_.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i, %bb.c, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit.i
  %i.ab = phi i64 [ 0, %bb.c ], [ 1, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit.i ], [ 0, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i.i ]
  ret i64 %i.ab
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5eraseENS0_12vec_iteratorIPS8_Lb1EEESE_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !262    ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %.not.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1569 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !259, !noalias !1569 ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.f
  br i1 %.not8.i.i.i, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %4 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.g = shl nuw nsw i64 %i.e, 3
  %5 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %i.h = add i64 %i.g, %4
  %i.i = add i64 %i.h, -8
  %i.j = sub i64 %i.i, %5                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.m = shl nuw nsw i64 %i.e, 3
  %i.n = add i64 %i.m, %4
  %i.o = add i64 %i.n, -8
  %i.p = sub i64 %i.o, %5
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8                          ; 2 uses
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %i.t = getelementptr i8, ptr %i.b, i64 %i.r
  %bound0 = icmp ult ptr %i.a, %i.t
  %bound1 = icmp ult ptr %i.b, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 4611686018427387902      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u     ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.x
  %next.gep5 = getelementptr i8, ptr %i.b, i64 %i.x ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !254, !alias.scope !1570, !noalias !1569
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !1571, !noalias !1569
  store <4 x i32> zeroinitializer, ptr %next.gep5, align 4, !tbaa !254, !alias.scope !1570, !noalias !1569
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader8

.lr.ph.i.i.i.preheader8:                          ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader8, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 4 uses
  %i.z = load i32, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !1569
  store i32 %i.z, ptr %.010.i.i.i, align 4, !tbaa !254, !noalias !1569
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !1569
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !254, !noalias !1569
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !254, !noalias !1569
  store i32 0, ptr %i.aa, align 4, !tbaa !254, !noalias !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.f
  br i1 %.not.i.i.i, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1566

_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.v, %middle.block ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = ptrtoint ptr %i.f to i64
  %i.ag = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.f, %.0.lcssa.i.i.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !1569
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = shl i32 %i.aj, 1
  %i.al = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ak
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1569
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i
  %i.am = sub i64 %i.e, %i.ai
  store i64 %i.am, ptr %i.d, align 8, !tbaa !251, !noalias !1569
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESH_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESH_.exit: ; preds = %bb.a, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i.i
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !1569
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE4swapERSB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE15prot_swap_smallINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef 10)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4swapERSE_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4swapERSE_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE10value_compEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5countERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250, !noalias !1588 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1589 ; 3 uses
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1590
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.e = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1590
  %i.i = icmp slt i32 %i.h, %i.d                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.neg.i.i.i = xor i64 %i.f, -1
  %i.k = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.l = select i1 %i.i, ptr %i.j, ptr %i.e       ; 2 uses
  %.1.i.i.i = select i1 %i.i, i64 %i.k, i64 %i.f  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i, label %bb.b, !llvm.loop !6

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i
  %i.o = load i32, ptr %1, align 4, !tbaa !254, !noalias !1591
  %i.p = load i32, ptr %i.m, align 4, !tbaa !254, !noalias !1591
  %i.q = icmp sge i32 %i.o, %i.p
  %i.r = zext i1 %i.q to i64
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit: ; preds = %bb.c, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i
  %.sroa.02.0 = phi i64 [ 0, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i ], [ %i.r, %bb.c ]
  ret i64 %.sroa.02.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE8containsERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250, !noalias !1608 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1609 ; 3 uses
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1610
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.e = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1610
  %i.i = icmp slt i32 %i.h, %i.d                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.neg.i.i.i = xor i64 %i.f, -1
  %i.k = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.l = select i1 %i.i, ptr %i.j, ptr %i.e       ; 2 uses
  %.1.i.i.i = select i1 %i.i, i64 %i.k, i64 %i.f  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i, label %bb.b, !llvm.loop !6

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i
  %i.o = load i32, ptr %1, align 4, !tbaa !254, !noalias !1611
  %i.p = load i32, ptr %i.m, align 4, !tbaa !254, !noalias !1611
  %i.q = icmp sge i32 %i.o, %i.p
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4findERKS5_.exit: ; preds = %bb.c, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i
  %.sroa.02.0 = phi i1 [ false, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11lower_boundERKS5_.exit.i ], [ %i.q, %bb.c ]
  ret i1 %.sroa.02.0
}

end_hunk_0
begin_hunk_1_@_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.an = trunc i64 %i.am to i32
  %i.ao = shl i32 %i.an, 1
  %i.ap = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.ao
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !266 ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i6.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i, label %.preheader.i.i.i7.i.i

.preheader.i.i.i7.i.i:                            ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.as = trunc i64 %i.ar to i32
  %i.at = shl i32 %i.as, 1
  %i.au = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i, %i.at
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i

common.resume:                                    ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i ], [ %i.bv, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i: ; preds = %.preheader.i.i.i7.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.d, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.av = load i64, ptr %i.a, align 8, !tbaa !319
  %.idx = shl nuw nsw i64 %i.av, 3                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.ax = icmp eq i64 %i.b, 0
  %i.ay = icmp eq i64 %.idx17, %.idx
  %or.cond.i.i = or i1 %i.ax, %i.ay
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit
  %i.az = load i32, ptr %i.c, align 8, !tbaa !254
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bc, %bb.g ], [ %0, %.preheader.i.i ] ; 4 uses
  %i.ba = load i32, ptr %.0.i.i, align 4, !tbaa !254
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !8

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !254
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.bg, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !254
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = ptrtoint ptr %.0.i.i to i64
  %i.bl = sub i64 %i.al, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = ptrtoint ptr %.025.i.i to i64
  %i.bo = sub i64 %i.bn, %i.al
  %i.bp = ashr exact i64 %i.bo, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.bm, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bq = icmp eq ptr %i.bg, %i.c
  br i1 %i.bq, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !9

bb.l:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.bj, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i10 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i10, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i, label %.preheader.i.i.i.i.i11

.preheader.i.i.i.i.i11:                           ; preds = %bb.l
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i12 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bs = trunc i64 %i.br to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i12, %i.bt
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i: ; preds = %.preheader.i.i.i.i.i11, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.m:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load i64, ptr %i.bj, align 8, !tbaa !266 ; 2 uses
  %.not.i.i30.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i30.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i, label %.preheader.i.i.i31.i.i

.preheader.i.i.i31.i.i:                           ; preds = %bb.m
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bx = trunc i64 %i.bw to i32
  %i.by = shl i32 %i.bx, 1
  %i.bz = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i.i, %i.by
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i.i: ; preds = %.preheader.i.i.i31.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i.i, %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE6insertENS0_15ordered_range_tESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319
  %i.c = sub i64 10, %i.b
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.b, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvNS0_15ordered_range_tET_SI_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvNS0_15ordered_range_tET_SI_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE18priv_merge_genericIPKS5_NS6_23flat_tree_value_compareISt4lessIS4_ES5_NS6_9select1stIS4_EEEEEEvT_SJ_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE5eraseENS0_12vec_iteratorIPS8_Lb1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !319, !noalias !3020 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.f = load i32, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !3020
  store i32 %i.f, ptr %.010.i.i.i, align 4, !tbaa !254, !noalias !3020
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !3020
  %i.g = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.i = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !3020
  store i32 %i.i, ptr %i.h, align 4, !tbaa !254, !noalias !3020
  store i32 0, ptr %i.g, align 4, !tbaa !254, !noalias !3020
  %i.j = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3020
  %i.m = add i32 %i.l, -2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3020
  %i.n = add i64 %i.c, -1
  store i64 %i.n, ptr %i.b, align 8, !tbaa !319, !noalias !3020
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !3020
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319, !noalias !3037 ; 6 uses
  %.not42.i.i = icmp eq i64 %i.b, 0
  br i1 %.not42.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !254, !noalias !3038 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.02.0.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.02.1.i, %bb.g ] ; 5 uses
  %i.d = phi ptr [ %0, %.lr.ph.i.i ], [ %i.aj, %bb.g ] ; 2 uses
  %.01443.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %.2.i.i, %bb.g ] ; 3 uses
  %i.e = lshr i64 %.01443.i.i, 1                  ; 3 uses
  %.idx35.i.i = shl nuw nsw i64 %i.e, 3           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx35.i.i ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254, !noalias !3038 ; 2 uses
  %i.h = icmp slt i32 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.neg.i.i = xor i64 %i.e, -1
  %i.j = add i64 %.01443.i.i, %.neg.i.i
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.c, %i.g
  br i1 %i.k, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d
  %.idx.i.i = shl nsw i64 %.01443.i.i, 3          ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.f, %.sroa.02.0.i
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i
  %i.l = ptrtoint ptr %.sroa.02.0.i to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = ashr exact i64 %i.n, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.p = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 2 uses
  %i.q = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254, !noalias !3039
  %i.t = icmp slt i32 %i.s, %i.c                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.neg.i.i.i = xor i64 %i.q, -1
  %i.v = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.w = select i1 %i.t, ptr %i.u, ptr %i.p       ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.v, i64 %i.q  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i, label %bb.e, !llvm.loop !26

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i: ; preds = %bb.e, %.critedge.i.i
  %i.x = phi ptr [ %.sroa.02.0.i, %.critedge.i.i ], [ %i.w, %bb.e ] ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.z = add nuw nsw i64 %.idx35.i.i, 8
  %.not12.i15.i.i = icmp eq i64 %.idx.i.i, %i.z
  br i1 %.not12.i15.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit, label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i
  %.neg36.i.i = add i64 %.idx.i.i, -8
  %gepdiff.i.i = sub i64 %.neg36.i.i, %.idx35.i.i
  %i.aa = ashr exact i64 %gepdiff.i.i, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i16.i.i
  %i.ab = phi ptr [ %i.y, %.lr.ph.i16.i.i ], [ %i.ai, %bb.f ] ; 2 uses
  %.013.i17.i.i = phi i64 [ %i.aa, %.lr.ph.i16.i.i ], [ %.1.i19.i.i, %bb.f ] ; 2 uses
  %i.ac = lshr i64 %.013.i17.i.i, 1               ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254, !noalias !3040
  %i.af = icmp slt i32 %i.c, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.neg.i18.i.i = xor i64 %i.ac, -1
  %i.ah = add i64 %.013.i17.i.i, %.neg.i18.i.i
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.ag   ; 2 uses
  %.1.i19.i.i = select i1 %i.af, i64 %i.ac, i64 %i.ah ; 2 uses
  %.not.i20.i.i = icmp eq i64 %.1.i19.i.i, 0
  br i1 %.not.i20.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit, label %bb.f, !llvm.loop !23

bb.g:                                             ; preds = %bb.d, %bb.c
  %.sroa.02.1.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.02.0.i, %bb.d ]
  %i.aj = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %.2.i.i = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq i64 %.2.i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, label %bb.b, !llvm.loop !27

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit: ; preds = %bb.f, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i
  %.sink.i.i = phi ptr [ %i.y, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i ], [ %i.ai, %bb.f ] ; 15 uses
  %.not = icmp eq ptr %.sink.i.i, %i.x
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 4 uses
  %.not8.i.i = icmp eq ptr %.sink.i.i, %i.ak
  br i1 %.not8.i.i, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i, label %.lr.ph.i.i3.preheader

.lr.ph.i.i3.preheader:                            ; preds = %bb.h
  %2 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.al = shl i64 %i.b, 3
  %3 = ptrtoaddr ptr %.sink.i.i to i64            ; 2 uses
  %i.am = add i64 %i.al, %2
  %i.an = add i64 %i.am, -8
  %i.ao = sub i64 %i.an, %3                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 344
  br i1 %min.iters.check, label %.lr.ph.i.i3.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i3.preheader
  %i.ar = shl i64 %i.b, 3
  %i.as = add i64 %i.ar, %2
  %i.at = add i64 %i.as, -8
  %i.au = sub i64 %i.at, %3
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %i.aw = or disjoint i64 %i.av, 4                ; 2 uses
  %i.ax = getelementptr i8, ptr %i.x, i64 %i.aw   ; 3 uses
  %i.ay = getelementptr i8, ptr %.sink.i.i, i64 %i.aw ; 3 uses
  %i.az = getelementptr i8, ptr %i.x, i64 4       ; 3 uses
  %i.ba = add i64 %i.av, 8                        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.x, i64 %i.ba   ; 3 uses
  %i.bc = getelementptr i8, ptr %.sink.i.i, i64 4 ; 3 uses
  %i.bd = getelementptr i8, ptr %.sink.i.i, i64 %i.ba ; 3 uses
  %bound0 = icmp ult ptr %i.x, %i.ay
  %bound1 = icmp ult ptr %.sink.i.i, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %i.x, %i.bb
  %bound179 = icmp ult ptr %i.az, %i.ax
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %bound081 = icmp ult ptr %i.x, %i.bd
  %bound182 = icmp ult ptr %i.bc, %i.ax
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx, %found.conflict83
  %bound085 = icmp ult ptr %.sink.i.i, %i.bb
  %bound186 = icmp ult ptr %i.az, %i.ay
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %.sink.i.i, %i.bd
  %bound190 = icmp ult ptr %i.bc, %i.ay
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  %bound093 = icmp ult ptr %i.az, %i.bd
  %bound194 = icmp ult ptr %i.bc, %i.bb
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  br i1 %conflict.rdx96, label %.lr.ph.i.i3.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387902     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.x, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %.sink.i.i, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.bh
  %next.gep97 = getelementptr i8, ptr %.sink.i.i, i64 %i.bh ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !254, !noalias !3041
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !noalias !3041
  store <4 x i32> zeroinitializer, ptr %next.gep97, align 4, !tbaa !254, !noalias !3041
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3035

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i, label %.lr.ph.i.i3.preheader100

.lr.ph.i.i3.preheader100:                         ; preds = %vector.memcheck, %.lr.ph.i.i3.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i3.preheader ], [ %i.bf, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.sink.i.i, %vector.memcheck ], [ %.sink.i.i, %.lr.ph.i.i3.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %.lr.ph.i.i3.preheader100, %.lr.ph.i.i3
  %.010.i.i = phi ptr [ %i.bo, %.lr.ph.i.i3 ], [ %.010.i.i.ph, %.lr.ph.i.i3.preheader100 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.bn, %.lr.ph.i.i3 ], [ %.079.i.i.ph, %.lr.ph.i.i3.preheader100 ] ; 4 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !254, !noalias !3041
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !254, !noalias !3041
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254, !noalias !3041
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !254, !noalias !3041
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !254, !noalias !3041
  store i32 0, ptr %i.bk, align 4, !tbaa !254, !noalias !3041
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bn, %i.ak
  br i1 %.not.i.i4, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i, label %.lr.ph.i.i3, !llvm.loop !3036

_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i: ; preds = %.lr.ph.i.i3, %middle.block, %bb.h
  %.0.lcssa.i.i = phi ptr [ %i.x, %bb.h ], [ %i.bf, %middle.block ], [ %i.bo, %.lr.ph.i.i3 ] ; 2 uses
  %i.bp = ptrtoint ptr %i.ak to i64
  %i.bq = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ak, %.0.lcssa.i.i
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !3041
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl i32 %i.bt, 1
  %i.bv = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bu
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3041
  br label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i
  %i.bw = sub i64 %i.b, %i.bs
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !317, !noalias !3041
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit: ; preds = %bb.g, %bb.a, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit
  %.sink.i.i36 = phi ptr [ %.sink.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit ], [ %.sink.i.i, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ %0, %bb.a ], [ %i.aj, %bb.g ]
  %.sink66.i.i35 = phi ptr [ %i.x, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit ], [ %i.x, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ %0, %bb.a ], [ %i.aj, %bb.g ]
  %i.bx = ptrtoint ptr %.sink66.i.i35 to i64
  %i.by = ptrtoint ptr %.sink.i.i36 to i64
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = ashr exact i64 %i.bz, 3
  ret i64 %i.ca
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE5eraseENS0_12vec_iteratorIPS8_Lb1EEESD_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !262    ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %.not.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !319, !noalias !3053 ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d ; 4 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not8.i.i.i, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.f = shl nuw nsw i64 %i.d, 3
  %5 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %i.g = add i64 %i.f, %4
  %i.h = add i64 %i.g, -8
  %i.i = sub i64 %i.h, %5                         ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.l = shl nuw nsw i64 %i.d, 3
  %i.m = add i64 %i.l, %4
  %i.n = add i64 %i.m, -8
  %i.o = sub i64 %i.n, %5
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  %i.s = getelementptr i8, ptr %i.b, i64 %i.q
  %bound0 = icmp ult ptr %i.a, %i.s
  %bound1 = icmp ult ptr %i.b, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 4611686018427387902      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.b, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.w
  %next.gep5 = getelementptr i8, ptr %i.b, i64 %i.w ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !254, !alias.scope !3054, !noalias !3053
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3055, !noalias !3053
  store <4 x i32> zeroinitializer, ptr %next.gep5, align 4, !tbaa !254, !alias.scope !3054, !noalias !3053
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !3049

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader8

.lr.ph.i.i.i.preheader8:                          ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader8, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 4 uses
  %i.y = load i32, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !3053
  store i32 %i.y, ptr %.010.i.i.i, align 4, !tbaa !254, !noalias !3053
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254, !noalias !3053
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254, !noalias !3053
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !254, !noalias !3053
  store i32 0, ptr %i.z, align 4, !tbaa !254, !noalias !3053
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.e
  br i1 %.not.i.i.i, label %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3050

_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = ptrtoint ptr %i.e to i64
  %i.af = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.e, %.0.lcssa.i.i.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !3053
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = shl i32 %i.ai, 1
  %i.ak = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aj
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3053
  br label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN5boost9container4moveIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit.i.i
  %i.al = sub i64 %i.d, %i.ah
  store i64 %i.al, ptr %i.c, align 8, !tbaa !317, !noalias !3053
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESG_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE5eraseENS0_12vec_iteratorIPS6_Lb1EEESG_.exit: ; preds = %bb.a, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !3053
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE4swapERSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapIS8_mSB_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE10value_compEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319, !noalias !3068 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  %.not12.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !254, !noalias !3070
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.d = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.e = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254, !noalias !3070
  %i.h = icmp slt i32 %i.g, %i.c                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.neg.i.i.i = xor i64 %i.e, -1
  %i.j = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.k = select i1 %i.h, ptr %i.i, ptr %i.d       ; 2 uses
  %.1.i.i.i = select i1 %i.h, i64 %i.j, i64 %i.e  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i, label %bb.b, !llvm.loop !26

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %1, %bb.a ], [ %i.k, %bb.b ]   ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !261, !alias.scope !3070
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4findERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i
  %i.n = load i32, ptr %2, align 4, !tbaa !254, !noalias !3066
  %i.o = load i32, ptr %i.l, align 4, !tbaa !254, !noalias !3066
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4findERKS5_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !261, !alias.scope !3066
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4findERKS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4findERKS5_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319, !noalias !3085 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %.not12.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !254, !noalias !3087
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.d = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.e = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254, !noalias !3087
  %i.h = icmp slt i32 %i.g, %i.c                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.neg.i.i.i = xor i64 %i.e, -1
  %i.j = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.k = select i1 %i.h, ptr %i.i, ptr %i.d       ; 2 uses
  %.1.i.i.i = select i1 %i.h, i64 %i.j, i64 %i.e  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i, label %bb.b, !llvm.loop !25

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11lower_boundERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %1, %bb.a ], [ %i.k, %bb.b ]   ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !257, !alias.scope !3087
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4findERKS5_.exit, label %bb.c

end_hunk_1
begin_hunk_2_@_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE4treeEv:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE4treeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ERKS9_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ERKS5_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ERKS5_RKS9_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ESt16initializer_listIS8_ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ESt16initializer_listIS8_ERKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSC_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSA_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ESt16initializer_listIS8_ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ESt16initializer_listIS8_ERKS5_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSA_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EEbT_SI_RKSA_RKSC_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE15_M_range_insertIPKS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE15_M_range_insertIPKS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE15_M_range_insertIPKS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_RKSC_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ERKSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !323    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !225

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !323
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !324
  %i.m = load ptr, ptr %1, align 8, !tbaa !262    ; 10 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !262  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %i.q = add i64 %i.o, -8
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound012 = icmp ult ptr %i.i, %i.x
  %bound113 = icmp ult ptr %i.m, %i.w
  %found.conflict14 = and i1 %bound012, %bound113
  %conflict.rdx = or i1 %found.conflict, %found.conflict14
  %bound015 = icmp ugt ptr %i.x, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound116 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx18 = or i1 %conflict.rdx, %found.conflict17
  br i1 %conflict.rdx18, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ab, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi19 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac
  %next.gep20 = getelementptr i8, ptr %i.i, i64 %i.ad
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.ac
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !254, !alias.scope !3243
  %wide.vec24 = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !254, !alias.scope !3243
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3244, !noalias !3245
  store <4 x i32> %wide.vec24, ptr %next.gep20, align 4, !tbaa !254, !alias.scope !3244, !noalias !3245
  %i.ae = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.af = add <2 x i32> %vec.phi19, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3241

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !3246, !noalias !3243
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.ai = phi i32 [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.aj, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !254
  %i.an = add i32 %i.ai, 2                        ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3242

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !322
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2EOSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5EOSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !262
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324
  store ptr %i.d, ptr %i.b, align 8, !tbaa !324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2ERKSB_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5ERKSB_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !323    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !225

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i

_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairIN5boost9container4test24movable_and_copyable_intES4_EE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !323
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !324
  %i.m = load ptr, ptr %1, align 8, !tbaa !262    ; 10 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !262  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_RKSC_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %i.q = add i64 %i.o, -8
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %i.i, %i.x
  %bound114 = icmp ult ptr %i.m, %i.w
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  %bound016 = icmp ugt ptr %i.x, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound117 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18
  br i1 %conflict.rdx19, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ab, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi20 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac
  %next.gep21 = getelementptr i8, ptr %i.i, i64 %i.ad
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.ac
  %next.gep23 = getelementptr i8, ptr %i.m, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !254, !alias.scope !3253
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !254, !alias.scope !3253
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3254, !noalias !3255
  store <4 x i32> %wide.vec25, ptr %next.gep21, align 4, !tbaa !254, !alias.scope !3254, !noalias !3255
  %i.ae = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.af = add <2 x i32> %vec.phi20, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3251

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !3256, !noalias !3253
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_RKSC_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.ai = phi i32 [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.aj, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !254
  %i.an = add i32 %i.ai, 2                        ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_RKSC_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3252

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEC2ERKSE_RKSC_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEC2EmRKS6_.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !322
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC2EOSB_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEC5EOSB_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !262
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324
  store ptr %i.d, ptr %i.b, align 8, !tbaa !324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEaSEOSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !323    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !262
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !324
  store ptr %i.h, ptr %i.d, align 8, !tbaa !324
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.i = ptrtoaddr ptr %i.c to i64
  %i.j = ptrtoaddr ptr %i.a to i64
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 17179869176
  %sh.diff.i.i.i.i.i.i.i = lshr i64 %i.k, 2
  %tr.sh.diff.i.i.i.i.i.i.i = trunc i64 %sh.diff.i.i.i.i.i.i.i to i32
  %tr.sh.diff.i.not.i.i.i.i.i.i = and i32 %tr.sh.diff.i.i.i.i.i.i.i, -2
  %i.l = xor i32 %tr.sh.diff.i.not.i.i.i.i.i.i, -2
  %i.m = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEaSEOSE_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.p) #28
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEaSEOSE_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEEaSEOSE_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEEaSESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !323    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 17179869176
  %sh.diff.i.i.i.i.i.i = lshr i64 %i.f, 2
  %tr.sh.diff.i.i.i.i.i.i = trunc i64 %sh.diff.i.i.i.i.i.i to i32
  %tr.sh.diff.i.not.i.i.i.i.i = and i32 %tr.sh.diff.i.i.i.i.i.i, -2
  %i.g = xor i32 %tr.sh.diff.i.not.i.i.i.i.i, -2
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  store ptr %i.a, ptr %i.b, align 8, !tbaa !322
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE5clearEv.exit

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.i)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ESt6vectorISt4pairIS3_S3_ESaIS8_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !323    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 17179869176
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.en, %bb.aa ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  %storemerge122 = phi ptr [ %i.fi, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  %.1106 = phi i8 [ %i.em, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.fj = phi i1 [ %i.el, %bb.ab ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bs, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ae, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bb, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fj, true
  %i.fk = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.fk
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fl = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.fm = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.fm to i64
  %i.fn = add i64 %.099286, %.neg                 ; 2 uses
  %i.fo = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fo to i64
  %i.fp = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fq = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3793

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.fr = phi ptr [ %i.bb, %.sink.split.i ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fp, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fl, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fn, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.fs = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ft = phi ptr [ %i.i, %bb.a ], [ %i.fr, %.thread.loopexit ] ; 10 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fs, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fu = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx252 = shl nuw nsw i64 %6, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.fw = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fw, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ga, %bb.af ] ; 3 uses
  %i.fy = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ga, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ga, %bb.af ] ; 12 uses
  %i.gb = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.gc = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.ft, i64 %i.gf ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gh = add i64 %i.gb, -8
  %i.gi = sub i64 %i.gh, %i.gc                    ; 3 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check568 = icmp ult i64 %i.gi, 360
  br i1 %min.iters.check568, label %.lr.ph.i.i146.preheader721, label %vector.memcheck569

vector.memcheck569:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gl = and i64 %i.gi, -8                       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 4                ; 2 uses
  %i.gn = sub i64 %i.gm, %i.gd
  %i.go = getelementptr i8, ptr %i.ft, i64 %i.gn  ; 3 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gm ; 3 uses
  %i.gq = sub i64 4, %i.gd
  %i.gr = getelementptr i8, ptr %i.ft, i64 %i.gq  ; 3 uses
  %i.gs = add i64 %i.gl, 8                        ; 2 uses
  %i.gt = sub i64 %i.gs, %i.gd
  %i.gu = getelementptr i8, ptr %i.ft, i64 %i.gt  ; 3 uses
  %i.gv = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gs ; 3 uses
  %bound0570 = icmp ult ptr %i.gg, %i.gp
  %bound1571 = icmp ult ptr %.0.lcssa.i, %i.go
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0573 = icmp ult ptr %i.gg, %i.gu
  %bound1574 = icmp ult ptr %i.gr, %i.go
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %found.conflict572, %found.conflict575
  %bound0577 = icmp ult ptr %i.gg, %i.gw
  %bound1578 = icmp ult ptr %i.gv, %i.go
  %found.conflict579 = and i1 %bound0577, %bound1578
  %conflict.rdx580 = or i1 %conflict.rdx576, %found.conflict579
  %bound0581 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1582 = icmp ult ptr %i.gr, %i.gp
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %conflict.rdx580, %found.conflict583
  %bound0585 = icmp ult ptr %.0.lcssa.i, %i.gw
  %bound1586 = icmp ult ptr %i.gv, %i.gp
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %conflict.rdx584, %found.conflict587
  %bound0589 = icmp ult ptr %i.gr, %i.gw
  %bound1590 = icmp ult ptr %i.gv, %i.gu
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx588, %found.conflict591
  br i1 %conflict.rdx592, label %.lr.ph.i.i146.preheader721, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck569
  %n.vec594 = and i64 %i.gk, 4611686018427387902  ; 3 uses
  %i.gx = shl i64 %n.vec594, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gg, i64 %i.gx
  %i.gz = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gx
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next603, %vector.body595 ] ; 2 uses
  %i.ha = shl i64 %index596, 3                    ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.gg, i64 %i.ha
  %next.gep598 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ha ; 2 uses
  %wide.vec599 = load <4 x i32>, ptr %next.gep598, align 4, !tbaa !254
  store <4 x i32> %wide.vec599, ptr %next.gep597, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep598, align 4, !tbaa !254
  %index.next603 = add nuw i64 %index596, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next603, %n.vec594
  br i1 %i.hb, label %middle.block604, label %vector.body595, !llvm.loop !3794

middle.block604:                                  ; preds = %vector.body595
  %cmp.n605 = icmp eq i64 %i.gk, %n.vec594
  br i1 %cmp.n605, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader721

.lr.ph.i.i146.preheader721:                       ; preds = %vector.memcheck569, %.lr.ph.i.i146.preheader, %middle.block604
  %.010.i.i147.ph = phi ptr [ %i.gg, %vector.memcheck569 ], [ %i.gg, %.lr.ph.i.i146.preheader ], [ %i.gy, %middle.block604 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck569 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gz, %middle.block604 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader721, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hh, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader721 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hg, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader721 ] ; 4 uses
  %i.hc = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.hc, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !254
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !254
  store i32 0, ptr %i.hd, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hg, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !3795

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block604, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.hi, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gg, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ft, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hm, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hs, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hm, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ho, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hj = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hk = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hl = icmp slt i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hj, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %i.fv
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hk, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ht = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !254
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.ht, align 4, !tbaa !254
  %i.hv = icmp eq ptr %i.hs, %.5
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hm, %bb.ai ], [ %i.hm, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hs, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fv, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.hw = ptrtoaddr ptr %.223.i to i64
  %i.hx = add i64 %11, -8
  %i.hy = sub i64 %i.hx, %i.hw                    ; 3 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check641 = icmp ult i64 %i.hy, 312
  br i1 %min.iters.check641, label %.lr.ph.i.i154.preheader709, label %vector.memcheck642

vector.memcheck642:                               ; preds = %.lr.ph.i.i154.preheader
  %i.ib = and i64 %i.hy, -8                       ; 2 uses
  %i.ic = or disjoint i64 %i.ib, 4                ; 2 uses
  %i.id = getelementptr i8, ptr %.226.i, i64 %i.ic ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ic ; 3 uses
  %i.if = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ig = add i64 %i.ib, 8                        ; 2 uses
  %i.ih = getelementptr i8, ptr %.226.i, i64 %i.ig ; 3 uses
  %i.ii = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ij = getelementptr i8, ptr %.223.i, i64 %i.ig ; 3 uses
  %bound0643 = icmp ult ptr %.226.i, %i.ie
  %bound1644 = icmp ult ptr %.223.i, %i.id
  %found.conflict645 = and i1 %bound0643, %bound1644
  %bound0646 = icmp ult ptr %.226.i, %i.ih
  %bound1647 = icmp ult ptr %i.if, %i.id
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %found.conflict645, %found.conflict648
  %bound0650 = icmp ult ptr %.226.i, %i.ij
  %bound1651 = icmp ult ptr %i.ii, %i.id
  %found.conflict652 = and i1 %bound0650, %bound1651
  %conflict.rdx653 = or i1 %conflict.rdx649, %found.conflict652
  %bound0654 = icmp ult ptr %.223.i, %i.ih
  %bound1655 = icmp ult ptr %i.if, %i.ie
  %found.conflict656 = and i1 %bound0654, %bound1655
  %conflict.rdx657 = or i1 %conflict.rdx653, %found.conflict656
  %bound0658 = icmp ult ptr %.223.i, %i.ij
  %bound1659 = icmp ult ptr %i.ii, %i.ie
  %found.conflict660 = and i1 %bound0658, %bound1659
  %conflict.rdx661 = or i1 %conflict.rdx657, %found.conflict660
  %bound0662 = icmp ult ptr %i.if, %i.ij
  %bound1663 = icmp ult ptr %i.ii, %i.ih
  %found.conflict664 = and i1 %bound0662, %bound1663
  %conflict.rdx665 = or i1 %conflict.rdx661, %found.conflict664
  br i1 %conflict.rdx665, label %.lr.ph.i.i154.preheader709, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck642
  %n.vec667 = and i64 %i.ia, 4611686018427387902  ; 3 uses
  %i.ik = shl i64 %n.vec667, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %.226.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.ik
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next676, %vector.body668 ] ; 2 uses
  %i.in = shl i64 %index669, 3                    ; 2 uses
  %next.gep670 = getelementptr i8, ptr %.226.i, i64 %i.in
  %next.gep671 = getelementptr i8, ptr %.223.i, i64 %i.in ; 2 uses
  %wide.vec672 = load <4 x i32>, ptr %next.gep671, align 4, !tbaa !254
  store <4 x i32> %wide.vec672, ptr %next.gep670, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep671, align 4, !tbaa !254
  %index.next676 = add nuw i64 %index669, 2       ; 2 uses
  %i.io = icmp eq i64 %index.next676, %n.vec667
  br i1 %i.io, label %middle.block677, label %vector.body668, !llvm.loop !3796

middle.block677:                                  ; preds = %vector.body668
  %cmp.n678 = icmp eq i64 %i.ia, %n.vec667
  br i1 %cmp.n678, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader709

.lr.ph.i.i154.preheader709:                       ; preds = %vector.memcheck642, %.lr.ph.i.i154.preheader, %middle.block677
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck642 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.il, %middle.block677 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck642 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.im, %middle.block677 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader709, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.iu, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader709 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.it, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader709 ] ; 4 uses
  %i.ip = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ip, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !254
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !254
  store i32 0, ptr %i.iq, align 4, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.it, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !3797

bb.aj:                                            ; preds = %.thread
  br i1 %i.fu, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iv = phi ptr [ %i.ft, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 11 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.iw = phi ptr [ %i.fv, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.ix = ptrtoaddr ptr %.0108266 to i64
  %i.iy = ptrtoaddr ptr %.0216268 to i64
  %i.iz = add i64 %i.ix, -8
  %i.ja = sub i64 %i.iz, %i.iy                    ; 3 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %min.iters.check497 = icmp ult i64 %i.ja, 312
  br i1 %min.iters.check497, label %.lr.ph.i.i161.preheader722, label %vector.memcheck498

vector.memcheck498:                               ; preds = %.lr.ph.i.i161.preheader
  %i.jd = and i64 %i.ja, -8                       ; 2 uses
  %i.je = or disjoint i64 %i.jd, 4                ; 2 uses
  %i.jf = getelementptr i8, ptr %.0222270, i64 %i.je ; 3 uses
  %i.jg = getelementptr i8, ptr %.0216268, i64 %i.je ; 3 uses
  %i.jh = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.ji = add i64 %i.jd, 8                        ; 2 uses
  %i.jj = getelementptr i8, ptr %.0222270, i64 %i.ji ; 3 uses
  %i.jk = getelementptr i8, ptr %.0216268, i64 4  ; 3 uses
  %i.jl = getelementptr i8, ptr %.0216268, i64 %i.ji ; 3 uses
  %bound0499 = icmp ult ptr %.0222270, %i.jg
  %bound1500 = icmp ult ptr %.0216268, %i.jf
  %found.conflict501 = and i1 %bound0499, %bound1500
  %bound0502 = icmp ult ptr %.0222270, %i.jj
  %bound1503 = icmp ult ptr %i.jh, %i.jf
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %found.conflict501, %found.conflict504
  %bound0506 = icmp ult ptr %.0222270, %i.jl
  %bound1507 = icmp ult ptr %i.jk, %i.jf
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %.0216268, %i.jj
  %bound1511 = icmp ult ptr %i.jh, %i.jg
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %.0216268, %i.jl
  %bound1515 = icmp ult ptr %i.jk, %i.jg
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %i.jh, %i.jl
  %bound1519 = icmp ult ptr %i.jk, %i.jj
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  br i1 %conflict.rdx521, label %.lr.ph.i.i161.preheader722, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck498
  %n.vec523 = and i64 %i.jc, 4611686018427387902  ; 3 uses
  %i.jm = shl i64 %n.vec523, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0222270, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %.0216268, i64 %i.jm
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next532, %vector.body524 ] ; 2 uses
  %i.jp = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.0222270, i64 %i.jp
  %next.gep527 = getelementptr i8, ptr %.0216268, i64 %i.jp ; 2 uses
  %wide.vec528 = load <4 x i32>, ptr %next.gep527, align 4, !tbaa !254
  store <4 x i32> %wide.vec528, ptr %next.gep526, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep527, align 4, !tbaa !254
  %index.next532 = add nuw i64 %index525, 2       ; 2 uses
  %i.jq = icmp eq i64 %index.next532, %n.vec523
  br i1 %i.jq, label %middle.block533, label %vector.body524, !llvm.loop !3798

middle.block533:                                  ; preds = %vector.body524
  %cmp.n534 = icmp eq i64 %i.jc, %n.vec523
  br i1 %cmp.n534, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader722

.lr.ph.i.i161.preheader722:                       ; preds = %vector.memcheck498, %.lr.ph.i.i161.preheader, %middle.block533
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck498 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jn, %middle.block533 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck498 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jo, %middle.block533 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader722, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jw, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader722 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jv, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader722 ] ; 4 uses
  %i.jr = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jr, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !254
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !254
  store i32 0, ptr %i.js, align 4, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jv, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !3799

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block533, %middle.block677, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jx = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.ae, %.thread.thread ], [ %i.ft, %bb.aj ], [ %i.iv, %bb.ak ], [ %i.ft, %middle.block677 ], [ %i.iv, %middle.block533 ], [ %i.ft, %.lr.ph.i.i154 ], [ %i.iv, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block677 ], [ %.2, %middle.block533 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block677 ], [ %.0234275, %middle.block533 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block677 ], [ %.0228272, %middle.block533 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block677 ], [ %.0102262, %middle.block533 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block677 ], [ %.099259, %middle.block533 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.jy = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fv, %bb.aj ], [ %i.iw, %bb.ak ], [ %i.fv, %middle.block677 ], [ %i.iw, %middle.block533 ], [ %i.fv, %.lr.ph.i.i154 ], [ %i.iw, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.il, %middle.block677 ], [ %i.jn, %middle.block533 ], [ %i.iu, %.lr.ph.i.i154 ], [ %i.jw, %.lr.ph.i.i161 ]
  %i.jz = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_S8_S8_SF_NS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jy, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.ka, %i.jy
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.kb = ptrtoaddr ptr %i.jy to i64
  %i.kc = ptrtoaddr ptr %i.ka to i64
  %i.kd = add i64 %i.kb, -8
  %i.ke = sub i64 %i.kd, %i.kc                    ; 3 uses
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check688 = icmp ult i64 %i.ke, 72
  br i1 %min.iters.check688, label %.lr.ph.i.i168.preheader708, label %vector.memcheck689

vector.memcheck689:                               ; preds = %.lr.ph.i.i168.preheader
  %i.kh = and i64 %i.ke, -8
  %i.ki = add i64 %i.kh, 8                        ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jz, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.ki
  %bound0690 = icmp ult ptr %i.jz, %i.kk
  %bound1691 = icmp ult ptr %i.ka, %i.kj
  %found.conflict692 = and i1 %bound0690, %bound1691
  br i1 %found.conflict692, label %.lr.ph.i.i168.preheader708, label %vector.ph693

vector.ph693:                                     ; preds = %vector.memcheck689
  %n.vec694 = and i64 %i.kg, 4611686018427387902  ; 3 uses
  %i.kl = shl i64 %n.vec694, 3                    ; 2 uses
  %i.km = getelementptr i8, ptr %i.jz, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.ka, i64 %i.kl
  br label %vector.body695

vector.body695:                                   ; preds = %vector.body695, %vector.ph693
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next703, %vector.body695 ] ; 2 uses
  %i.ko = shl i64 %index696, 3                    ; 2 uses
  %next.gep697 = getelementptr i8, ptr %i.jz, i64 %i.ko
  %next.gep698 = getelementptr i8, ptr %i.ka, i64 %i.ko ; 2 uses
  %wide.vec699 = load <4 x i32>, ptr %next.gep698, align 4, !tbaa !254, !alias.scope !3805
  store <4 x i32> %wide.vec699, ptr %next.gep697, align 4, !tbaa !254, !alias.scope !3806, !noalias !3805
  store <4 x i32> zeroinitializer, ptr %next.gep698, align 4, !tbaa !254, !alias.scope !3805
  %index.next703 = add nuw i64 %index696, 2       ; 2 uses
  %i.kp = icmp eq i64 %index.next703, %n.vec694
  br i1 %i.kp, label %middle.block704, label %vector.body695, !llvm.loop !3803

middle.block704:                                  ; preds = %vector.body695
  %cmp.n705 = icmp eq i64 %i.kg, %n.vec694
  br i1 %cmp.n705, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader708

.lr.ph.i.i168.preheader708:                       ; preds = %vector.memcheck689, %.lr.ph.i.i168.preheader, %middle.block704
  %.010.i.i169.ph = phi ptr [ %i.jz, %vector.memcheck689 ], [ %i.jz, %.lr.ph.i.i168.preheader ], [ %i.km, %middle.block704 ]
  %.079.i.i170.ph = phi ptr [ %i.ka, %vector.memcheck689 ], [ %i.ka, %.lr.ph.i.i168.preheader ], [ %i.kn, %middle.block704 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader708, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.kv, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader708 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ku, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader708 ] ; 4 uses
  %i.kq = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kq, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !254
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !254
  store i32 0, ptr %i.kr, align 4, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ku, %i.jy
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !3804

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block704, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 3 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = mul i64 %2, %i.e
  %i.q = shl i64 %3, 3                            ; 2 uses
  %i.r = add i64 %i.p, %3
  %i.s = shl i64 %i.r, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -4   ; 3 uses
  %i.u = shl i64 %2, 3
  %i.v = or disjoint i64 %i.q, 4                  ; 2 uses
  %scevgep380 = getelementptr i8, ptr %1, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = add i64 %.idx254, -8                     ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  %bound0383 = icmp ult ptr %i.i, %i.k
  %bound1384 = icmp ult ptr %scevgep380, %scevgep
  %found.conflict385 = and i1 %bound0383, %bound1384
  %stride.check386 = icmp slt i64 %.idx254, 0
  %i.ac = or i1 %found.conflict385, %stride.check386
  %n.vec = and i64 %i.ab, 4611686018427387902     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %i.i, %.lr.ph ], [ %i.bb, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fr, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.fp, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.fn, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 20 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.fs, %.sink.split.i ] ; 5 uses
  %.0108286416 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285417 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %scevgep378 = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep381 = getelementptr i8, ptr %i.y, i64 %i.af
  %i.ag = icmp ult i64 %.099290, %.0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.av, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.au, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ah = mul i64 %.02226.i, %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = mul i64 %.027.i, %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !254 ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !254 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = icmp slt i32 %i.ao, %i.an
  br i1 %i.aq, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !254
  %i.as = load i32, ptr %i.al, align 4, !tbaa !254
  %i.at = icmp slt i32 %i.ar, %i.as
  %cond.fr.i = freeze i1 %i.at
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.au = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.av = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !55

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.au, %.thread24.i ] ; 6 uses
  %i.aw = add i64 %.022.lcssa.i, 2
  %i.ax = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aw) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ax, i64 %.0238282) ; 4 uses
  %i.ay = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ay, 3                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %.idx  ; 13 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %2 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !254
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !254
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.thread.loopexit, label %bb.h

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %storemerge122 = phi ptr [ %i.fk, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  %.1106 = phi i8 [ %i.eo, %bb.aa ], [ %.0105287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.fl = phi i1 [ %i.en, %bb.ab ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bs, %bb.n ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %.0102288, %bb.m ], [ %.0232283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.1227, %bb.n ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ae, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bb, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105287, %bb.m ], [ %.0105287, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0105287, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fl, true
  %i.fm = sext i1 %not. to i64
  %.1 = add i64 %.0291, %i.fm
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fn = getelementptr inbounds nuw i8, ptr %.0102288, i64 8 ; 2 uses
  %i.fo = icmp ne i64 %.099290, 0
  %.neg = sext i1 %i.fo to i64
  %i.fp = add i64 %.099290, %.neg                 ; 2 uses
  %i.fq = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fq to i64
  %i.fr = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.fs = add i64 %.0238282, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3811

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ft = phi ptr [ %i.bb, %.sink.split.i ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fr, %.sink.split.i ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0238282, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %.sink.split.i ], [ %.0232283, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %.sink.split.i ], [ %.0226284, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %.sink.split.i ], [ %.0220285, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108286, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105287, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fn, %.sink.split.i ], [ %.0102288, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fp, %.sink.split.i ], [ %.099290, %bb.f ]
  %i.fu = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fv = phi ptr [ %i.i, %bb.a ], [ %i.ft, %.thread.loopexit ] ; 10 uses
  %.1324 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fu, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fw = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx256 = shl nuw nsw i64 %6, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx256 ; 7 uses
  %i.fy = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fy, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fz = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.gc, %bb.af ] ; 3 uses
  %i.ga = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.gc, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.gc, %bb.af ] ; 12 uses
  %i.gd = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.ge = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = ashr exact i64 %i.gf, 3
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.fv, i64 %i.gh ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gj = add i64 %i.gd, -8
  %i.gk = sub i64 %i.gj, %i.ge                    ; 3 uses
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check578 = icmp ult i64 %i.gk, 232
  br i1 %min.iters.check578, label %.lr.ph.i.i146.preheader711, label %vector.memcheck579

vector.memcheck579:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gn = and i64 %i.gk, -8                       ; 2 uses
  %i.go = or disjoint i64 %i.gn, 4                ; 2 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.go ; 3 uses
  %i.gq = sub i64 %i.go, %i.gf
  %i.gr = getelementptr i8, ptr %i.fv, i64 %i.gq  ; 3 uses
  %i.gs = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gt = add i64 %i.gn, 8                        ; 2 uses
  %i.gu = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gt ; 3 uses
  %i.gv = sub i64 4, %i.gf
  %i.gw = getelementptr i8, ptr %i.fv, i64 %i.gv  ; 3 uses
  %i.gx = sub i64 %i.gt, %i.gf
  %i.gy = getelementptr i8, ptr %i.fv, i64 %i.gx  ; 3 uses
  %bound0580 = icmp ult ptr %.0.lcssa.i, %i.gr
  %bound1581 = icmp ult ptr %i.gi, %i.gp
  %found.conflict582 = and i1 %bound0580, %bound1581
  %bound0583 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1584 = icmp ult ptr %i.gs, %i.gp
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %found.conflict582, %found.conflict585
  %bound0587 = icmp ult ptr %.0.lcssa.i, %i.gy
  %bound1588 = icmp ult ptr %i.gw, %i.gp
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %i.gi, %i.gu
  %bound1592 = icmp ult ptr %i.gs, %i.gr
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %i.gi, %i.gy
  %bound1596 = icmp ult ptr %i.gw, %i.gr
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %i.gs, %i.gy
  %bound1600 = icmp ult ptr %i.gw, %i.gu
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  br i1 %conflict.rdx602, label %.lr.ph.i.i146.preheader711, label %vector.ph603

vector.ph603:                                     ; preds = %vector.memcheck579
  %n.vec604 = and i64 %i.gm, 4611686018427387902  ; 3 uses
  %i.gz = shl i64 %n.vec604, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gi, i64 %i.gz
  %i.hb = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gz
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph603
  %index606 = phi i64 [ 0, %vector.ph603 ], [ %index.next617, %vector.body605 ] ; 2 uses
  %i.hc = shl i64 %index606, 3                    ; 2 uses
  %next.gep607 = getelementptr i8, ptr %i.gi, i64 %i.hc ; 2 uses
  %next.gep608 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hc ; 2 uses
  %wide.vec609 = load <4 x i32>, ptr %next.gep608, align 4, !tbaa !254
  %wide.vec612 = load <4 x i32>, ptr %next.gep607, align 4, !tbaa !254
  store <4 x i32> %wide.vec612, ptr %next.gep608, align 4, !tbaa !254
  store <4 x i32> %wide.vec609, ptr %next.gep607, align 4, !tbaa !254
  %index.next617 = add nuw i64 %index606, 2       ; 2 uses
  %i.hd = icmp eq i64 %index.next617, %n.vec604
  br i1 %i.hd, label %middle.block618, label %vector.body605, !llvm.loop !3812

middle.block618:                                  ; preds = %vector.body605
  %cmp.n619 = icmp eq i64 %i.gm, %n.vec604
  br i1 %cmp.n619, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader711

.lr.ph.i.i146.preheader711:                       ; preds = %vector.memcheck579, %.lr.ph.i.i146.preheader, %middle.block618
  %.010.i.i147.ph = phi ptr [ %i.gi, %vector.memcheck579 ], [ %i.gi, %.lr.ph.i.i146.preheader ], [ %i.ha, %middle.block618 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck579 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.hb, %middle.block618 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader711, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hl, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader711 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.hk, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader711 ] ; 5 uses
  %i.he = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hf = load i32, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 %i.hf, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.he, ptr %.010.i.i147, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !254
  store i32 0, ptr %i.hg, align 4, !tbaa !254
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !254
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !254
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !254
  %i.hk = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hk, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146, !llvm.loop !3813

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152: ; preds = %.lr.ph.i.i146, %middle.block618, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.hm, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.gi, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fv, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hq, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hz, %bb.ai ], [ %.5225, %bb.ag ] ; 6 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hq, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 6 uses
  %.0.i = phi ptr [ %i.ht, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 7 uses
  %i.hn = load i32, ptr %.0.i, align 4, !tbaa !254
  %i.ho = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = icmp slt i32 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hr = load i32, ptr %.024.i, align 4, !tbaa !254 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !254
  %i.hs = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 6 uses
  br i1 %i.hp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.hu = load i32, ptr %.0.i, align 4, !tbaa !254
  store i32 %i.hu, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.0.i, align 4, !tbaa !254
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !254
  store i32 %i.hx, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !254
  %i.hy = icmp eq ptr %i.ht, %i.fx
  br i1 %i.hy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  %i.ia = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  store i32 %i.ia, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !254
  store i32 %i.id, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !254
  %i.ie = icmp eq ptr %i.hz, %.5
  br i1 %i.ie, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.hq, %bb.ai ], [ %i.hq, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hz, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fx, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.if = ptrtoaddr ptr %.223.i to i64
  %i.ig = add i64 %11, -8
  %i.ih = sub i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check655 = icmp ult i64 %i.ih, 200
  br i1 %min.iters.check655, label %.lr.ph.i.i155.preheader699, label %vector.memcheck656

vector.memcheck656:                               ; preds = %.lr.ph.i.i155.preheader
  %i.ik = and i64 %i.ih, -8                       ; 2 uses
  %i.il = or disjoint i64 %i.ik, 4                ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.il ; 3 uses
  %i.in = getelementptr i8, ptr %.226.i, i64 %i.il ; 3 uses
  %i.io = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ip = add i64 %i.ik, 8                        ; 2 uses
  %i.iq = getelementptr i8, ptr %.223.i, i64 %i.ip ; 3 uses
  %i.ir = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.is = getelementptr i8, ptr %.226.i, i64 %i.ip ; 3 uses
  %bound0657 = icmp ult ptr %.223.i, %i.in
  %bound1658 = icmp ult ptr %.226.i, %i.im
  %found.conflict659 = and i1 %bound0657, %bound1658
  %bound0660 = icmp ult ptr %.223.i, %i.iq
  %bound1661 = icmp ult ptr %i.io, %i.im
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %found.conflict659, %found.conflict662
  %bound0664 = icmp ult ptr %.223.i, %i.is
  %bound1665 = icmp ult ptr %i.ir, %i.im
  %found.conflict666 = and i1 %bound0664, %bound1665
  %conflict.rdx667 = or i1 %conflict.rdx663, %found.conflict666
  %bound0668 = icmp ult ptr %.226.i, %i.iq
  %bound1669 = icmp ult ptr %i.io, %i.in
  %found.conflict670 = and i1 %bound0668, %bound1669
  %conflict.rdx671 = or i1 %conflict.rdx667, %found.conflict670
  %bound0672 = icmp ult ptr %.226.i, %i.is
  %bound1673 = icmp ult ptr %i.ir, %i.in
  %found.conflict674 = and i1 %bound0672, %bound1673
  %conflict.rdx675 = or i1 %conflict.rdx671, %found.conflict674
  %bound0676 = icmp ult ptr %i.io, %i.is
  %bound1677 = icmp ult ptr %i.ir, %i.iq
  %found.conflict678 = and i1 %bound0676, %bound1677
  %conflict.rdx679 = or i1 %conflict.rdx675, %found.conflict678
  br i1 %conflict.rdx679, label %.lr.ph.i.i155.preheader699, label %vector.ph680

vector.ph680:                                     ; preds = %vector.memcheck656
  %n.vec681 = and i64 %i.ij, 4611686018427387902  ; 3 uses
  %i.it = shl i64 %n.vec681, 3                    ; 2 uses
  %i.iu = getelementptr i8, ptr %.226.i, i64 %i.it ; 2 uses
  %i.iv = getelementptr i8, ptr %.223.i, i64 %i.it
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next694, %vector.body682 ] ; 2 uses
  %i.iw = shl i64 %index683, 3                    ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.226.i, i64 %i.iw ; 2 uses
  %next.gep685 = getelementptr i8, ptr %.223.i, i64 %i.iw ; 2 uses
  %wide.vec686 = load <4 x i32>, ptr %next.gep685, align 4, !tbaa !254
  %wide.vec689 = load <4 x i32>, ptr %next.gep684, align 4, !tbaa !254
  store <4 x i32> %wide.vec689, ptr %next.gep685, align 4, !tbaa !254
  store <4 x i32> %wide.vec686, ptr %next.gep684, align 4, !tbaa !254
  %index.next694 = add nuw i64 %index683, 2       ; 2 uses
  %i.ix = icmp eq i64 %index.next694, %n.vec681
  br i1 %i.ix, label %middle.block695, label %vector.body682, !llvm.loop !3814

middle.block695:                                  ; preds = %vector.body682
  %cmp.n696 = icmp eq i64 %i.ij, %n.vec681
  br i1 %cmp.n696, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader699

.lr.ph.i.i155.preheader699:                       ; preds = %vector.memcheck656, %.lr.ph.i.i155.preheader, %middle.block695
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck656 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.iu, %middle.block695 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck656 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.iv, %middle.block695 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader699, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.jf, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader699 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.je, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader699 ] ; 5 uses
  %i.iy = load i32, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !254
  %i.iz = load i32, ptr %.010.i.i156, align 4, !tbaa !254
  store i32 %i.iz, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 %i.iy, ptr %.010.i.i156, align 4, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !254
  store i32 0, ptr %i.ja, align 4, !tbaa !254
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !254
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !254
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.je, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155, !llvm.loop !3815

bb.aj:                                            ; preds = %.thread
  br i1 %i.fw, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jg = phi ptr [ %i.fv, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 3 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 3 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 11 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 12 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 3 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 3 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 3 uses
  %i.jh = phi ptr [ %i.fx, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.ji = ptrtoaddr ptr %.0108270 to i64
  %i.jj = ptrtoaddr ptr %.0220272 to i64
  %i.jk = add i64 %i.ji, -8
  %i.jl = sub i64 %i.jk, %i.jj                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check503 = icmp ult i64 %i.jl, 200
  br i1 %min.iters.check503, label %.lr.ph.i.i163.preheader712, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph.i.i163.preheader
  %i.jo = and i64 %i.jl, -8                       ; 2 uses
  %i.jp = or disjoint i64 %i.jo, 4                ; 2 uses
  %i.jq = getelementptr i8, ptr %.0220272, i64 %i.jp ; 3 uses
  %i.jr = getelementptr i8, ptr %.0226274, i64 %i.jp ; 3 uses
  %i.js = getelementptr i8, ptr %.0220272, i64 4  ; 3 uses
  %i.jt = add i64 %i.jo, 8                        ; 2 uses
  %i.ju = getelementptr i8, ptr %.0220272, i64 %i.jt ; 3 uses
  %i.jv = getelementptr i8, ptr %.0226274, i64 4  ; 3 uses
  %i.jw = getelementptr i8, ptr %.0226274, i64 %i.jt ; 3 uses
  %bound0505 = icmp ult ptr %.0220272, %i.jr
  %bound1506 = icmp ult ptr %.0226274, %i.jq
  %found.conflict507 = and i1 %bound0505, %bound1506
  %bound0508 = icmp ult ptr %.0220272, %i.ju
  %bound1509 = icmp ult ptr %i.js, %i.jq
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %found.conflict507, %found.conflict510
  %bound0512 = icmp ult ptr %.0220272, %i.jw
  %bound1513 = icmp ult ptr %i.jv, %i.jq
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %.0226274, %i.ju
  %bound1517 = icmp ult ptr %i.js, %i.jr
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %.0226274, %i.jw
  %bound1521 = icmp ult ptr %i.jv, %i.jr
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %i.js, %i.jw
  %bound1525 = icmp ult ptr %i.jv, %i.ju
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  br i1 %conflict.rdx527, label %.lr.ph.i.i163.preheader712, label %vector.ph528

vector.ph528:                                     ; preds = %vector.memcheck504
  %n.vec529 = and i64 %i.jn, 4611686018427387902  ; 3 uses
  %i.jx = shl i64 %n.vec529, 3                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0226274, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0220272, i64 %i.jx
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next542, %vector.body530 ] ; 2 uses
  %i.ka = shl i64 %index531, 3                    ; 2 uses
  %next.gep532 = getelementptr i8, ptr %.0226274, i64 %i.ka ; 2 uses
  %next.gep533 = getelementptr i8, ptr %.0220272, i64 %i.ka ; 2 uses
  %wide.vec534 = load <4 x i32>, ptr %next.gep533, align 4, !tbaa !254
  %wide.vec537 = load <4 x i32>, ptr %next.gep532, align 4, !tbaa !254
  store <4 x i32> %wide.vec537, ptr %next.gep533, align 4, !tbaa !254
  store <4 x i32> %wide.vec534, ptr %next.gep532, align 4, !tbaa !254
  %index.next542 = add nuw i64 %index531, 2       ; 2 uses
  %i.kb = icmp eq i64 %index.next542, %n.vec529
  br i1 %i.kb, label %middle.block543, label %vector.body530, !llvm.loop !3816

middle.block543:                                  ; preds = %vector.body530
  %cmp.n544 = icmp eq i64 %i.jn, %n.vec529
  br i1 %cmp.n544, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader712

.lr.ph.i.i163.preheader712:                       ; preds = %vector.memcheck504, %.lr.ph.i.i163.preheader, %middle.block543
  %.010.i.i164.ph = phi ptr [ %.0226274, %vector.memcheck504 ], [ %.0226274, %.lr.ph.i.i163.preheader ], [ %i.jy, %middle.block543 ]
  %.079.i.i165.ph = phi ptr [ %.0220272, %vector.memcheck504 ], [ %.0220272, %.lr.ph.i.i163.preheader ], [ %i.jz, %middle.block543 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader712, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.kj, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader712 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.ki, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader712 ] ; 5 uses
  %i.kc = load i32, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !254
  %i.kd = load i32, ptr %.010.i.i164, align 4, !tbaa !254
  store i32 %i.kd, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 %i.kc, ptr %.010.i.i164, align 4, !tbaa !254
  %i.ke = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !254
  store i32 0, ptr %i.ke, align 4, !tbaa !254
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !254
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !254
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !254
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ki, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163, !llvm.loop !3817
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.en, %bb.aa ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %storemerge122 = phi ptr [ %i.fi, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1106 = phi i8 [ %i.em, %bb.aa ], [ %.0105282, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.n, %bb.ab
  %i.fj = phi i1 [ %i.el, %bb.ab ], [ %i.bs, %bb.n ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102283, %bb.m ], [ %.0228278, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.n ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.n ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105282, %bb.n ], [ %.0105282, %bb.m ], [ %.0105282, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %not. = xor i1 %i.fj, true
  %i.fk = sext i1 %not. to i64
  %.1 = add i64 %.0286, %i.fk
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fl = getelementptr inbounds nuw i8, ptr %.0102283, i64 1 ; 2 uses
  %i.fm = icmp ne i64 %.099285, 0
  %.neg = sext i1 %i.fm to i64
  %i.fn = add i64 %.099285, %.neg                 ; 2 uses
  %i.fo = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fo to i64
  %i.fp = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fq = add i64 %.0234277, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4206

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.fr = phi ptr [ %i.bb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0234277, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0228278, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0222279, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0216280, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0108281, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0105282, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0102283, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.099285, %bb.f ]
  %i.fs = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ft = phi ptr [ %i.i, %bb.a ], [ %i.fr, %.thread.loopexit ] ; 10 uses
  %.1319 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fs, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fu = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx251 = shl nuw nsw i64 %6, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx251 ; 7 uses
  %i.fw = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fw, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ga, %bb.af ] ; 3 uses
  %i.fy = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ga, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ga, %bb.af ] ; 12 uses
  %i.gb = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.gc = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.ft, i64 %i.gf ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gh = add i64 %i.gb, -8
  %i.gi = sub i64 %i.gh, %i.gc                    ; 3 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check567 = icmp ult i64 %i.gi, 360
  br i1 %min.iters.check567, label %.lr.ph.i.i146.preheader720, label %vector.memcheck568

vector.memcheck568:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gl = and i64 %i.gi, -8                       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 4                ; 2 uses
  %i.gn = sub i64 %i.gm, %i.gd
  %i.go = getelementptr i8, ptr %i.ft, i64 %i.gn  ; 3 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gm ; 3 uses
  %i.gq = sub i64 4, %i.gd
  %i.gr = getelementptr i8, ptr %i.ft, i64 %i.gq  ; 3 uses
  %i.gs = add i64 %i.gl, 8                        ; 2 uses
  %i.gt = sub i64 %i.gs, %i.gd
  %i.gu = getelementptr i8, ptr %i.ft, i64 %i.gt  ; 3 uses
  %i.gv = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gs ; 3 uses
  %bound0569 = icmp ult ptr %i.gg, %i.gp
  %bound1570 = icmp ult ptr %.0.lcssa.i, %i.go
  %found.conflict571 = and i1 %bound0569, %bound1570
  %bound0572 = icmp ult ptr %i.gg, %i.gu
  %bound1573 = icmp ult ptr %i.gr, %i.go
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %found.conflict571, %found.conflict574
  %bound0576 = icmp ult ptr %i.gg, %i.gw
  %bound1577 = icmp ult ptr %i.gv, %i.go
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575, %found.conflict578
  %bound0580 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1581 = icmp ult ptr %i.gr, %i.gp
  %found.conflict582 = and i1 %bound0580, %bound1581
  %conflict.rdx583 = or i1 %conflict.rdx579, %found.conflict582
  %bound0584 = icmp ult ptr %.0.lcssa.i, %i.gw
  %bound1585 = icmp ult ptr %i.gv, %i.gp
  %found.conflict586 = and i1 %bound0584, %bound1585
  %conflict.rdx587 = or i1 %conflict.rdx583, %found.conflict586
  %bound0588 = icmp ult ptr %i.gr, %i.gw
  %bound1589 = icmp ult ptr %i.gv, %i.gu
  %found.conflict590 = and i1 %bound0588, %bound1589
  %conflict.rdx591 = or i1 %conflict.rdx587, %found.conflict590
  br i1 %conflict.rdx591, label %.lr.ph.i.i146.preheader720, label %vector.ph592

vector.ph592:                                     ; preds = %vector.memcheck568
  %n.vec593 = and i64 %i.gk, 4611686018427387902  ; 3 uses
  %i.gx = shl i64 %n.vec593, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gg, i64 %i.gx
  %i.gz = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gx
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph592
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next602, %vector.body594 ] ; 2 uses
  %i.ha = shl i64 %index595, 3                    ; 2 uses
  %next.gep596 = getelementptr i8, ptr %i.gg, i64 %i.ha
  %next.gep597 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ha ; 2 uses
  %wide.vec598 = load <4 x i32>, ptr %next.gep597, align 4, !tbaa !254
  store <4 x i32> %wide.vec598, ptr %next.gep596, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep597, align 4, !tbaa !254
  %index.next602 = add nuw i64 %index595, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next602, %n.vec593
  br i1 %i.hb, label %middle.block603, label %vector.body594, !llvm.loop !4207

middle.block603:                                  ; preds = %vector.body594
  %cmp.n604 = icmp eq i64 %i.gk, %n.vec593
  br i1 %cmp.n604, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader720

.lr.ph.i.i146.preheader720:                       ; preds = %vector.memcheck568, %.lr.ph.i.i146.preheader, %middle.block603
  %.010.i.i147.ph = phi ptr [ %i.gg, %vector.memcheck568 ], [ %i.gg, %.lr.ph.i.i146.preheader ], [ %i.gy, %middle.block603 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck568 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gz, %middle.block603 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader720, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hh, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader720 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hg, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader720 ] ; 4 uses
  %i.hc = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.hc, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !254
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !254
  store i32 0, ptr %i.hd, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hg, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !4208

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block603, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.hi, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gg, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ft, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hm, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hs, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hm, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ho, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hj = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hk = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hl = icmp slt i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hj, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %i.fv
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hk, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ht = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !254
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.ht, align 4, !tbaa !254
  %i.hv = icmp eq ptr %i.hs, %.5
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hm, %bb.ai ], [ %i.hm, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hs, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fv, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.hw = ptrtoaddr ptr %.223.i to i64
  %i.hx = add i64 %11, -8
  %i.hy = sub i64 %i.hx, %i.hw                    ; 3 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check640 = icmp ult i64 %i.hy, 312
  br i1 %min.iters.check640, label %.lr.ph.i.i154.preheader708, label %vector.memcheck641

vector.memcheck641:                               ; preds = %.lr.ph.i.i154.preheader
  %i.ib = and i64 %i.hy, -8                       ; 2 uses
  %i.ic = or disjoint i64 %i.ib, 4                ; 2 uses
  %i.id = getelementptr i8, ptr %.226.i, i64 %i.ic ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ic ; 3 uses
  %i.if = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ig = add i64 %i.ib, 8                        ; 2 uses
  %i.ih = getelementptr i8, ptr %.226.i, i64 %i.ig ; 3 uses
  %i.ii = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ij = getelementptr i8, ptr %.223.i, i64 %i.ig ; 3 uses
  %bound0642 = icmp ult ptr %.226.i, %i.ie
  %bound1643 = icmp ult ptr %.223.i, %i.id
  %found.conflict644 = and i1 %bound0642, %bound1643
  %bound0645 = icmp ult ptr %.226.i, %i.ih
  %bound1646 = icmp ult ptr %i.if, %i.id
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %found.conflict644, %found.conflict647
  %bound0649 = icmp ult ptr %.226.i, %i.ij
  %bound1650 = icmp ult ptr %i.ii, %i.id
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %.223.i, %i.ih
  %bound1654 = icmp ult ptr %i.if, %i.ie
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %.223.i, %i.ij
  %bound1658 = icmp ult ptr %i.ii, %i.ie
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %i.if, %i.ij
  %bound1662 = icmp ult ptr %i.ii, %i.ih
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  br i1 %conflict.rdx664, label %.lr.ph.i.i154.preheader708, label %vector.ph665

vector.ph665:                                     ; preds = %vector.memcheck641
  %n.vec666 = and i64 %i.ia, 4611686018427387902  ; 3 uses
  %i.ik = shl i64 %n.vec666, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %.226.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.ik
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph665
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next675, %vector.body667 ] ; 2 uses
  %i.in = shl i64 %index668, 3                    ; 2 uses
  %next.gep669 = getelementptr i8, ptr %.226.i, i64 %i.in
  %next.gep670 = getelementptr i8, ptr %.223.i, i64 %i.in ; 2 uses
  %wide.vec671 = load <4 x i32>, ptr %next.gep670, align 4, !tbaa !254
  store <4 x i32> %wide.vec671, ptr %next.gep669, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep670, align 4, !tbaa !254
  %index.next675 = add nuw i64 %index668, 2       ; 2 uses
  %i.io = icmp eq i64 %index.next675, %n.vec666
  br i1 %i.io, label %middle.block676, label %vector.body667, !llvm.loop !4209

middle.block676:                                  ; preds = %vector.body667
  %cmp.n677 = icmp eq i64 %i.ia, %n.vec666
  br i1 %cmp.n677, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader708

.lr.ph.i.i154.preheader708:                       ; preds = %vector.memcheck641, %.lr.ph.i.i154.preheader, %middle.block676
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck641 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.il, %middle.block676 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck641 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.im, %middle.block676 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader708, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.iu, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader708 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.it, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader708 ] ; 4 uses
  %i.ip = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ip, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !254
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !254
  store i32 0, ptr %i.iq, align 4, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.it, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !4210

bb.aj:                                            ; preds = %.thread
  br i1 %i.fu, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iv = phi ptr [ %i.ft, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 11 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 12 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.iw = phi ptr [ %i.fv, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.ix = ptrtoaddr ptr %.0108265 to i64
  %i.iy = ptrtoaddr ptr %.0216267 to i64
  %i.iz = add i64 %i.ix, -8
  %i.ja = sub i64 %i.iz, %i.iy                    ; 3 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %min.iters.check496 = icmp ult i64 %i.ja, 312
  br i1 %min.iters.check496, label %.lr.ph.i.i161.preheader721, label %vector.memcheck497

vector.memcheck497:                               ; preds = %.lr.ph.i.i161.preheader
  %i.jd = and i64 %i.ja, -8                       ; 2 uses
  %i.je = or disjoint i64 %i.jd, 4                ; 2 uses
  %i.jf = getelementptr i8, ptr %.0222269, i64 %i.je ; 3 uses
  %i.jg = getelementptr i8, ptr %.0216267, i64 %i.je ; 3 uses
  %i.jh = getelementptr i8, ptr %.0222269, i64 4  ; 3 uses
  %i.ji = add i64 %i.jd, 8                        ; 2 uses
  %i.jj = getelementptr i8, ptr %.0222269, i64 %i.ji ; 3 uses
  %i.jk = getelementptr i8, ptr %.0216267, i64 4  ; 3 uses
  %i.jl = getelementptr i8, ptr %.0216267, i64 %i.ji ; 3 uses
  %bound0498 = icmp ult ptr %.0222269, %i.jg
  %bound1499 = icmp ult ptr %.0216267, %i.jf
  %found.conflict500 = and i1 %bound0498, %bound1499
  %bound0501 = icmp ult ptr %.0222269, %i.jj
  %bound1502 = icmp ult ptr %i.jh, %i.jf
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %found.conflict500, %found.conflict503
  %bound0505 = icmp ult ptr %.0222269, %i.jl
  %bound1506 = icmp ult ptr %i.jk, %i.jf
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  %bound0509 = icmp ult ptr %.0216267, %i.jj
  %bound1510 = icmp ult ptr %i.jh, %i.jg
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %conflict.rdx508, %found.conflict511
  %bound0513 = icmp ult ptr %.0216267, %i.jl
  %bound1514 = icmp ult ptr %i.jk, %i.jg
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx516 = or i1 %conflict.rdx512, %found.conflict515
  %bound0517 = icmp ult ptr %i.jh, %i.jl
  %bound1518 = icmp ult ptr %i.jk, %i.jj
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx520 = or i1 %conflict.rdx516, %found.conflict519
  br i1 %conflict.rdx520, label %.lr.ph.i.i161.preheader721, label %vector.ph521

vector.ph521:                                     ; preds = %vector.memcheck497
  %n.vec522 = and i64 %i.jc, 4611686018427387902  ; 3 uses
  %i.jm = shl i64 %n.vec522, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0222269, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %.0216267, i64 %i.jm
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next531, %vector.body523 ] ; 2 uses
  %i.jp = shl i64 %index524, 3                    ; 2 uses
  %next.gep525 = getelementptr i8, ptr %.0222269, i64 %i.jp
  %next.gep526 = getelementptr i8, ptr %.0216267, i64 %i.jp ; 2 uses
  %wide.vec527 = load <4 x i32>, ptr %next.gep526, align 4, !tbaa !254
  store <4 x i32> %wide.vec527, ptr %next.gep525, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep526, align 4, !tbaa !254
  %index.next531 = add nuw i64 %index524, 2       ; 2 uses
  %i.jq = icmp eq i64 %index.next531, %n.vec522
  br i1 %i.jq, label %middle.block532, label %vector.body523, !llvm.loop !4211

middle.block532:                                  ; preds = %vector.body523
  %cmp.n533 = icmp eq i64 %i.jc, %n.vec522
  br i1 %cmp.n533, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader721

.lr.ph.i.i161.preheader721:                       ; preds = %vector.memcheck497, %.lr.ph.i.i161.preheader, %middle.block532
  %.010.i.i162.ph = phi ptr [ %.0222269, %vector.memcheck497 ], [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.jn, %middle.block532 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %vector.memcheck497 ], [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.jo, %middle.block532 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader721, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jw, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader721 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jv, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader721 ] ; 4 uses
  %i.jr = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jr, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !254
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !254
  store i32 0, ptr %i.js, align 4, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jv, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !4212

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block532, %middle.block676, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jx = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.ae, %.thread.thread ], [ %i.ft, %bb.aj ], [ %i.iv, %bb.ak ], [ %i.ft, %middle.block676 ], [ %i.iv, %middle.block532 ], [ %i.ft, %.lr.ph.i.i154 ], [ %i.iv, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block676 ], [ %.2, %middle.block532 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block676 ], [ %.0234274, %middle.block532 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block676 ], [ %.0228271, %middle.block532 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block676 ], [ %.0102261, %middle.block532 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block676 ], [ %.099258, %middle.block532 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.jy = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fv, %bb.aj ], [ %i.iw, %bb.ak ], [ %i.fv, %middle.block676 ], [ %i.iw, %middle.block532 ], [ %i.fv, %.lr.ph.i.i154 ], [ %i.iw, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.il, %middle.block676 ], [ %i.jn, %middle.block532 ], [ %i.iu, %.lr.ph.i.i154 ], [ %i.jw, %.lr.ph.i.i161 ]
  %i.jz = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ESA_SA_NS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jy, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.ka, %i.jy
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.kb = ptrtoaddr ptr %i.jy to i64
  %i.kc = ptrtoaddr ptr %i.ka to i64
  %i.kd = add i64 %i.kb, -8
  %i.ke = sub i64 %i.kd, %i.kc                    ; 3 uses
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check687 = icmp ult i64 %i.ke, 72
  br i1 %min.iters.check687, label %.lr.ph.i.i168.preheader707, label %vector.memcheck688

vector.memcheck688:                               ; preds = %.lr.ph.i.i168.preheader
  %i.kh = and i64 %i.ke, -8
  %i.ki = add i64 %i.kh, 8                        ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jz, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.ki
  %bound0689 = icmp ult ptr %i.jz, %i.kk
  %bound1690 = icmp ult ptr %i.ka, %i.kj
  %found.conflict691 = and i1 %bound0689, %bound1690
  br i1 %found.conflict691, label %.lr.ph.i.i168.preheader707, label %vector.ph692

vector.ph692:                                     ; preds = %vector.memcheck688
  %n.vec693 = and i64 %i.kg, 4611686018427387902  ; 3 uses
  %i.kl = shl i64 %n.vec693, 3                    ; 2 uses
  %i.km = getelementptr i8, ptr %i.jz, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.ka, i64 %i.kl
  br label %vector.body694

vector.body694:                                   ; preds = %vector.body694, %vector.ph692
  %index695 = phi i64 [ 0, %vector.ph692 ], [ %index.next702, %vector.body694 ] ; 2 uses
  %i.ko = shl i64 %index695, 3                    ; 2 uses
  %next.gep696 = getelementptr i8, ptr %i.jz, i64 %i.ko
  %next.gep697 = getelementptr i8, ptr %i.ka, i64 %i.ko ; 2 uses
  %wide.vec698 = load <4 x i32>, ptr %next.gep697, align 4, !tbaa !254, !alias.scope !4218
  store <4 x i32> %wide.vec698, ptr %next.gep696, align 4, !tbaa !254, !alias.scope !4219, !noalias !4218
  store <4 x i32> zeroinitializer, ptr %next.gep697, align 4, !tbaa !254, !alias.scope !4218
  %index.next702 = add nuw i64 %index695, 2       ; 2 uses
  %i.kp = icmp eq i64 %index.next702, %n.vec693
  br i1 %i.kp, label %middle.block703, label %vector.body694, !llvm.loop !4216

middle.block703:                                  ; preds = %vector.body694
  %cmp.n704 = icmp eq i64 %i.kg, %n.vec693
  br i1 %cmp.n704, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader707

.lr.ph.i.i168.preheader707:                       ; preds = %vector.memcheck688, %.lr.ph.i.i168.preheader, %middle.block703
  %.010.i.i169.ph = phi ptr [ %i.jz, %vector.memcheck688 ], [ %i.jz, %.lr.ph.i.i168.preheader ], [ %i.km, %middle.block703 ]
  %.079.i.i170.ph = phi ptr [ %i.ka, %vector.memcheck688 ], [ %i.ka, %.lr.ph.i.i168.preheader ], [ %i.kn, %middle.block703 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader707, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.kv, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader707 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ku, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader707 ] ; 4 uses
  %i.kq = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kq, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !254
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !254
  store i32 0, ptr %i.kr, align 4, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ku, %i.jy
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !4217

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block703, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 3 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = mul i64 %2, %i.e
  %i.q = shl i64 %3, 3                            ; 2 uses
  %i.r = add i64 %i.p, %3
  %i.s = shl i64 %i.r, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -4   ; 3 uses
  %i.u = shl i64 %2, 3
  %i.v = or disjoint i64 %i.q, 4                  ; 2 uses
  %scevgep379 = getelementptr i8, ptr %1, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = add i64 %.idx254, -8                     ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  %bound0382 = icmp ult ptr %i.i, %i.k
  %bound1383 = icmp ult ptr %scevgep379, %scevgep
  %found.conflict384 = and i1 %bound0382, %bound1383
  %stride.check385 = icmp slt i64 %.idx254, 0
  %i.ac = or i1 %found.conflict384, %stride.check385
  %n.vec = and i64 %i.ab, 4611686018427387902     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.i, %.lr.ph ], [ %i.bb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.m, %.lr.ph ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.fn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 16 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 22 uses
  %.0226283 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 20 uses
  %.0232282 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.e, %.lr.ph ], [ %i.fs, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 5 uses
  %.0108285415 = ptrtoaddr ptr %.0108285 to i64   ; 2 uses
  %.0220284416 = ptrtoaddr ptr %.0220284 to i64   ; 2 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %scevgep377 = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep380 = getelementptr i8, ptr %i.y, i64 %i.af
  %i.ag = icmp ult i64 %.099289, %.0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.av, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.au, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ah = mul i64 %.02226.i, %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = mul i64 %.027.i, %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.02226.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.027.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !254 ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !254 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = icmp slt i32 %i.ao, %i.an
  br i1 %i.aq, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load i8, ptr %i.am, align 1, !tbaa !336
  %i.as = load i8, ptr %i.al, align 1, !tbaa !336
  %i.at = icmp ult i8 %i.ar, %i.as
  %cond.fr.i = freeze i1 %i.at
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.au = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.av = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !85

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.au, %.thread24.i ] ; 6 uses
  %i.aw = add i64 %.022.lcssa.i, 2
  %i.ax = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aw) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ax, i64 %.0238281) ; 4 uses
  %i.ay = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ay, 3                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %.idx  ; 13 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %2 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0290, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !254
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !254
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.thread.loopexit, label %bb.h

end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %storemerge122 = phi ptr [ %i.fk, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1106 = phi i8 [ %i.eo, %bb.aa ], [ %.0105286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.n, %bb.ab
  %i.fl = phi i1 [ %i.en, %bb.ab ], [ %i.bs, %bb.n ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102287, %bb.m ], [ %.0232282, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.n ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.n ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105286, %bb.n ], [ %.0105286, %bb.m ], [ %.0105286, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %not. = xor i1 %i.fl, true
  %i.fm = sext i1 %not. to i64
  %.1 = add i64 %.0290, %i.fm
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fn = getelementptr inbounds nuw i8, ptr %.0102287, i64 1 ; 2 uses
  %i.fo = icmp ne i64 %.099289, 0
  %.neg = sext i1 %i.fo to i64
  %i.fp = add i64 %.099289, %.neg                 ; 2 uses
  %i.fq = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fq to i64
  %i.fr = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.fs = add i64 %.0238281, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4224

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.ft = phi ptr [ %i.bb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0238281, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0232282, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0226283, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0220284, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0108285, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0105286, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.0102287, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ], [ %.099289, %bb.f ]
  %i.fu = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fv = phi ptr [ %i.i, %bb.a ], [ %i.ft, %.thread.loopexit ] ; 10 uses
  %.1323 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fu, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fw = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx255 = shl nuw nsw i64 %6, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx255 ; 7 uses
  %i.fy = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fy, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fz = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.gc, %bb.af ] ; 3 uses
  %i.ga = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.gc, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.gc, %bb.af ] ; 12 uses
  %i.gd = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.ge = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = ashr exact i64 %i.gf, 3
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.fv, i64 %i.gh ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gj = add i64 %i.gd, -8
  %i.gk = sub i64 %i.gj, %i.ge                    ; 3 uses
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check577 = icmp ult i64 %i.gk, 232
  br i1 %min.iters.check577, label %.lr.ph.i.i146.preheader710, label %vector.memcheck578

vector.memcheck578:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gn = and i64 %i.gk, -8                       ; 2 uses
  %i.go = or disjoint i64 %i.gn, 4                ; 2 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.go ; 3 uses
  %i.gq = sub i64 %i.go, %i.gf
  %i.gr = getelementptr i8, ptr %i.fv, i64 %i.gq  ; 3 uses
  %i.gs = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gt = add i64 %i.gn, 8                        ; 2 uses
  %i.gu = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gt ; 3 uses
  %i.gv = sub i64 4, %i.gf
  %i.gw = getelementptr i8, ptr %i.fv, i64 %i.gv  ; 3 uses
  %i.gx = sub i64 %i.gt, %i.gf
  %i.gy = getelementptr i8, ptr %i.fv, i64 %i.gx  ; 3 uses
  %bound0579 = icmp ult ptr %.0.lcssa.i, %i.gr
  %bound1580 = icmp ult ptr %i.gi, %i.gp
  %found.conflict581 = and i1 %bound0579, %bound1580
  %bound0582 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1583 = icmp ult ptr %i.gs, %i.gp
  %found.conflict584 = and i1 %bound0582, %bound1583
  %conflict.rdx585 = or i1 %found.conflict581, %found.conflict584
  %bound0586 = icmp ult ptr %.0.lcssa.i, %i.gy
  %bound1587 = icmp ult ptr %i.gw, %i.gp
  %found.conflict588 = and i1 %bound0586, %bound1587
  %conflict.rdx589 = or i1 %conflict.rdx585, %found.conflict588
  %bound0590 = icmp ult ptr %i.gi, %i.gu
  %bound1591 = icmp ult ptr %i.gs, %i.gr
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx593 = or i1 %conflict.rdx589, %found.conflict592
  %bound0594 = icmp ult ptr %i.gi, %i.gy
  %bound1595 = icmp ult ptr %i.gw, %i.gr
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict596
  %bound0598 = icmp ult ptr %i.gs, %i.gy
  %bound1599 = icmp ult ptr %i.gw, %i.gu
  %found.conflict600 = and i1 %bound0598, %bound1599
  %conflict.rdx601 = or i1 %conflict.rdx597, %found.conflict600
  br i1 %conflict.rdx601, label %.lr.ph.i.i146.preheader710, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck578
  %n.vec603 = and i64 %i.gm, 4611686018427387902  ; 3 uses
  %i.gz = shl i64 %n.vec603, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gi, i64 %i.gz
  %i.hb = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gz
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next616, %vector.body604 ] ; 2 uses
  %i.hc = shl i64 %index605, 3                    ; 2 uses
  %next.gep606 = getelementptr i8, ptr %i.gi, i64 %i.hc ; 2 uses
  %next.gep607 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hc ; 2 uses
  %wide.vec608 = load <4 x i32>, ptr %next.gep607, align 4, !tbaa !254
  %wide.vec611 = load <4 x i32>, ptr %next.gep606, align 4, !tbaa !254
  store <4 x i32> %wide.vec611, ptr %next.gep607, align 4, !tbaa !254
  store <4 x i32> %wide.vec608, ptr %next.gep606, align 4, !tbaa !254
  %index.next616 = add nuw i64 %index605, 2       ; 2 uses
  %i.hd = icmp eq i64 %index.next616, %n.vec603
  br i1 %i.hd, label %middle.block617, label %vector.body604, !llvm.loop !4225

middle.block617:                                  ; preds = %vector.body604
  %cmp.n618 = icmp eq i64 %i.gm, %n.vec603
  br i1 %cmp.n618, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader710

.lr.ph.i.i146.preheader710:                       ; preds = %vector.memcheck578, %.lr.ph.i.i146.preheader, %middle.block617
  %.010.i.i147.ph = phi ptr [ %i.gi, %vector.memcheck578 ], [ %i.gi, %.lr.ph.i.i146.preheader ], [ %i.ha, %middle.block617 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck578 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.hb, %middle.block617 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader710, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hl, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader710 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.hk, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader710 ] ; 5 uses
  %i.he = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hf = load i32, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 %i.hf, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.he, ptr %.010.i.i147, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !254
  store i32 0, ptr %i.hg, align 4, !tbaa !254
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !254
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !254
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !254
  %i.hk = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hk, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146, !llvm.loop !4226

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152: ; preds = %.lr.ph.i.i146, %middle.block617, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.hm, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.gi, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fv, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hq, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hz, %bb.ai ], [ %.5225, %bb.ag ] ; 6 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hq, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 6 uses
  %.0.i = phi ptr [ %i.ht, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 7 uses
  %i.hn = load i32, ptr %.0.i, align 4, !tbaa !254
  %i.ho = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = icmp slt i32 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hr = load i32, ptr %.024.i, align 4, !tbaa !254 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !254
  %i.hs = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 6 uses
  br i1 %i.hp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.hu = load i32, ptr %.0.i, align 4, !tbaa !254
  store i32 %i.hu, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.0.i, align 4, !tbaa !254
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !254
  store i32 %i.hx, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !254
  %i.hy = icmp eq ptr %i.ht, %i.fx
  br i1 %i.hy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  %i.ia = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  store i32 %i.ia, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !254
  store i32 %i.id, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !254
  %i.ie = icmp eq ptr %i.hz, %.5
  br i1 %i.ie, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.hq, %bb.ai ], [ %i.hq, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hz, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fx, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.if = ptrtoaddr ptr %.223.i to i64
  %i.ig = add i64 %11, -8
  %i.ih = sub i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check654 = icmp ult i64 %i.ih, 200
  br i1 %min.iters.check654, label %.lr.ph.i.i155.preheader698, label %vector.memcheck655

vector.memcheck655:                               ; preds = %.lr.ph.i.i155.preheader
  %i.ik = and i64 %i.ih, -8                       ; 2 uses
  %i.il = or disjoint i64 %i.ik, 4                ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.il ; 3 uses
  %i.in = getelementptr i8, ptr %.226.i, i64 %i.il ; 3 uses
  %i.io = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ip = add i64 %i.ik, 8                        ; 2 uses
  %i.iq = getelementptr i8, ptr %.223.i, i64 %i.ip ; 3 uses
  %i.ir = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.is = getelementptr i8, ptr %.226.i, i64 %i.ip ; 3 uses
  %bound0656 = icmp ult ptr %.223.i, %i.in
  %bound1657 = icmp ult ptr %.226.i, %i.im
  %found.conflict658 = and i1 %bound0656, %bound1657
  %bound0659 = icmp ult ptr %.223.i, %i.iq
  %bound1660 = icmp ult ptr %i.io, %i.im
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %found.conflict658, %found.conflict661
  %bound0663 = icmp ult ptr %.223.i, %i.is
  %bound1664 = icmp ult ptr %i.ir, %i.im
  %found.conflict665 = and i1 %bound0663, %bound1664
  %conflict.rdx666 = or i1 %conflict.rdx662, %found.conflict665
  %bound0667 = icmp ult ptr %.226.i, %i.iq
  %bound1668 = icmp ult ptr %i.io, %i.in
  %found.conflict669 = and i1 %bound0667, %bound1668
  %conflict.rdx670 = or i1 %conflict.rdx666, %found.conflict669
  %bound0671 = icmp ult ptr %.226.i, %i.is
  %bound1672 = icmp ult ptr %i.ir, %i.in
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %conflict.rdx670, %found.conflict673
  %bound0675 = icmp ult ptr %i.io, %i.is
  %bound1676 = icmp ult ptr %i.ir, %i.iq
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  br i1 %conflict.rdx678, label %.lr.ph.i.i155.preheader698, label %vector.ph679

vector.ph679:                                     ; preds = %vector.memcheck655
  %n.vec680 = and i64 %i.ij, 4611686018427387902  ; 3 uses
  %i.it = shl i64 %n.vec680, 3                    ; 2 uses
  %i.iu = getelementptr i8, ptr %.226.i, i64 %i.it ; 2 uses
  %i.iv = getelementptr i8, ptr %.223.i, i64 %i.it
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph679
  %index682 = phi i64 [ 0, %vector.ph679 ], [ %index.next693, %vector.body681 ] ; 2 uses
  %i.iw = shl i64 %index682, 3                    ; 2 uses
  %next.gep683 = getelementptr i8, ptr %.226.i, i64 %i.iw ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.223.i, i64 %i.iw ; 2 uses
  %wide.vec685 = load <4 x i32>, ptr %next.gep684, align 4, !tbaa !254
  %wide.vec688 = load <4 x i32>, ptr %next.gep683, align 4, !tbaa !254
  store <4 x i32> %wide.vec688, ptr %next.gep684, align 4, !tbaa !254
  store <4 x i32> %wide.vec685, ptr %next.gep683, align 4, !tbaa !254
  %index.next693 = add nuw i64 %index682, 2       ; 2 uses
  %i.ix = icmp eq i64 %index.next693, %n.vec680
  br i1 %i.ix, label %middle.block694, label %vector.body681, !llvm.loop !4227

middle.block694:                                  ; preds = %vector.body681
  %cmp.n695 = icmp eq i64 %i.ij, %n.vec680
  br i1 %cmp.n695, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader698

.lr.ph.i.i155.preheader698:                       ; preds = %vector.memcheck655, %.lr.ph.i.i155.preheader, %middle.block694
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck655 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.iu, %middle.block694 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck655 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.iv, %middle.block694 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader698, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.jf, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader698 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.je, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader698 ] ; 5 uses
  %i.iy = load i32, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !254
  %i.iz = load i32, ptr %.010.i.i156, align 4, !tbaa !254
  store i32 %i.iz, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 %i.iy, ptr %.010.i.i156, align 4, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !254
  store i32 0, ptr %i.ja, align 4, !tbaa !254
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !254
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !254
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.je, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155, !llvm.loop !4228

bb.aj:                                            ; preds = %.thread
  br i1 %i.fw, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jg = phi ptr [ %i.fv, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1323, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238278 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238281, %.thread.thread ] ; 3 uses
  %.0232275 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232282, %.thread.thread ] ; 3 uses
  %.0226273 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226283, %.thread.thread ] ; 11 uses
  %.0220271 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220284, %.thread.thread ] ; 12 uses
  %.0108269 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108285, %.thread.thread ] ; 3 uses
  %.0102265 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102287, %.thread.thread ] ; 3 uses
  %.099262 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099289, %.thread.thread ] ; 3 uses
  %i.jh = phi ptr [ %i.fx, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220271, %.0108269
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.ji = ptrtoaddr ptr %.0108269 to i64
  %i.jj = ptrtoaddr ptr %.0220271 to i64
  %i.jk = add i64 %i.ji, -8
  %i.jl = sub i64 %i.jk, %i.jj                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.jl, 200
  br i1 %min.iters.check502, label %.lr.ph.i.i163.preheader711, label %vector.memcheck503

vector.memcheck503:                               ; preds = %.lr.ph.i.i163.preheader
  %i.jo = and i64 %i.jl, -8                       ; 2 uses
  %i.jp = or disjoint i64 %i.jo, 4                ; 2 uses
  %i.jq = getelementptr i8, ptr %.0220271, i64 %i.jp ; 3 uses
  %i.jr = getelementptr i8, ptr %.0226273, i64 %i.jp ; 3 uses
  %i.js = getelementptr i8, ptr %.0220271, i64 4  ; 3 uses
  %i.jt = add i64 %i.jo, 8                        ; 2 uses
  %i.ju = getelementptr i8, ptr %.0220271, i64 %i.jt ; 3 uses
  %i.jv = getelementptr i8, ptr %.0226273, i64 4  ; 3 uses
  %i.jw = getelementptr i8, ptr %.0226273, i64 %i.jt ; 3 uses
  %bound0504 = icmp ult ptr %.0220271, %i.jr
  %bound1505 = icmp ult ptr %.0226273, %i.jq
  %found.conflict506 = and i1 %bound0504, %bound1505
  %bound0507 = icmp ult ptr %.0220271, %i.ju
  %bound1508 = icmp ult ptr %i.js, %i.jq
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %found.conflict506, %found.conflict509
  %bound0511 = icmp ult ptr %.0220271, %i.jw
  %bound1512 = icmp ult ptr %i.jv, %i.jq
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  %bound0515 = icmp ult ptr %.0226273, %i.ju
  %bound1516 = icmp ult ptr %i.js, %i.jr
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0519 = icmp ult ptr %.0226273, %i.jw
  %bound1520 = icmp ult ptr %i.jv, %i.jr
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %i.js, %i.jw
  %bound1524 = icmp ult ptr %i.jv, %i.ju
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  br i1 %conflict.rdx526, label %.lr.ph.i.i163.preheader711, label %vector.ph527

vector.ph527:                                     ; preds = %vector.memcheck503
  %n.vec528 = and i64 %i.jn, 4611686018427387902  ; 3 uses
  %i.jx = shl i64 %n.vec528, 3                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0226273, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0220271, i64 %i.jx
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next541, %vector.body529 ] ; 2 uses
  %i.ka = shl i64 %index530, 3                    ; 2 uses
  %next.gep531 = getelementptr i8, ptr %.0226273, i64 %i.ka ; 2 uses
  %next.gep532 = getelementptr i8, ptr %.0220271, i64 %i.ka ; 2 uses
  %wide.vec533 = load <4 x i32>, ptr %next.gep532, align 4, !tbaa !254
  %wide.vec536 = load <4 x i32>, ptr %next.gep531, align 4, !tbaa !254
  store <4 x i32> %wide.vec536, ptr %next.gep532, align 4, !tbaa !254
  store <4 x i32> %wide.vec533, ptr %next.gep531, align 4, !tbaa !254
  %index.next541 = add nuw i64 %index530, 2       ; 2 uses
  %i.kb = icmp eq i64 %index.next541, %n.vec528
  br i1 %i.kb, label %middle.block542, label %vector.body529, !llvm.loop !4229

middle.block542:                                  ; preds = %vector.body529
  %cmp.n543 = icmp eq i64 %i.jn, %n.vec528
  br i1 %cmp.n543, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader711

.lr.ph.i.i163.preheader711:                       ; preds = %vector.memcheck503, %.lr.ph.i.i163.preheader, %middle.block542
  %.010.i.i164.ph = phi ptr [ %.0226273, %vector.memcheck503 ], [ %.0226273, %.lr.ph.i.i163.preheader ], [ %i.jy, %middle.block542 ]
  %.079.i.i165.ph = phi ptr [ %.0220271, %vector.memcheck503 ], [ %.0220271, %.lr.ph.i.i163.preheader ], [ %i.jz, %middle.block542 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader711, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.kj, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader711 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.ki, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader711 ] ; 5 uses
  %i.kc = load i32, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !254
  %i.kd = load i32, ptr %.010.i.i164, align 4, !tbaa !254
  store i32 %i.kd, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 %i.kc, ptr %.010.i.i164, align 4, !tbaa !254
  %i.ke = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !254
  store i32 0, ptr %i.ke, align 4, !tbaa !254
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !254
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !254
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !254
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ki, %.0108269
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163, !llvm.loop !4230
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.en, %bb.aa ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %storemerge122 = phi ptr [ %i.fi, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1106 = phi i8 [ %i.em, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.fj = phi i1 [ %i.el, %bb.ab ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bs, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ae, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bb, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fj, true
  %i.fk = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.fk
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fl = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.fm = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.fm to i64
  %i.fn = add i64 %.099286, %.neg                 ; 2 uses
  %i.fo = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fo to i64
  %i.fp = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fq = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4391

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.fr = phi ptr [ %i.bb, %.sink.split.i ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fp, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fl, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fn, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.fs = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ft = phi ptr [ %i.i, %bb.a ], [ %i.fr, %.thread.loopexit ] ; 10 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fs, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fu = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx252 = shl nuw nsw i64 %6, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.fw = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fw, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ga, %bb.af ] ; 3 uses
  %i.fy = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ga, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ga, %bb.af ] ; 12 uses
  %i.gb = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.gc = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.ft, i64 %i.gf ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gh = add i64 %i.gb, -8
  %i.gi = sub i64 %i.gh, %i.gc                    ; 3 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check568 = icmp ult i64 %i.gi, 360
  br i1 %min.iters.check568, label %.lr.ph.i.i146.preheader721, label %vector.memcheck569

vector.memcheck569:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gl = and i64 %i.gi, -8                       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 4                ; 2 uses
  %i.gn = sub i64 %i.gm, %i.gd
  %i.go = getelementptr i8, ptr %i.ft, i64 %i.gn  ; 3 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gm ; 3 uses
  %i.gq = sub i64 4, %i.gd
  %i.gr = getelementptr i8, ptr %i.ft, i64 %i.gq  ; 3 uses
  %i.gs = add i64 %i.gl, 8                        ; 2 uses
  %i.gt = sub i64 %i.gs, %i.gd
  %i.gu = getelementptr i8, ptr %i.ft, i64 %i.gt  ; 3 uses
  %i.gv = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gs ; 3 uses
  %bound0570 = icmp ult ptr %i.gg, %i.gp
  %bound1571 = icmp ult ptr %.0.lcssa.i, %i.go
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0573 = icmp ult ptr %i.gg, %i.gu
  %bound1574 = icmp ult ptr %i.gr, %i.go
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %found.conflict572, %found.conflict575
  %bound0577 = icmp ult ptr %i.gg, %i.gw
  %bound1578 = icmp ult ptr %i.gv, %i.go
  %found.conflict579 = and i1 %bound0577, %bound1578
  %conflict.rdx580 = or i1 %conflict.rdx576, %found.conflict579
  %bound0581 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1582 = icmp ult ptr %i.gr, %i.gp
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %conflict.rdx580, %found.conflict583
  %bound0585 = icmp ult ptr %.0.lcssa.i, %i.gw
  %bound1586 = icmp ult ptr %i.gv, %i.gp
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %conflict.rdx584, %found.conflict587
  %bound0589 = icmp ult ptr %i.gr, %i.gw
  %bound1590 = icmp ult ptr %i.gv, %i.gu
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx588, %found.conflict591
  br i1 %conflict.rdx592, label %.lr.ph.i.i146.preheader721, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck569
  %n.vec594 = and i64 %i.gk, 4611686018427387902  ; 3 uses
  %i.gx = shl i64 %n.vec594, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gg, i64 %i.gx
  %i.gz = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gx
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next603, %vector.body595 ] ; 2 uses
  %i.ha = shl i64 %index596, 3                    ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.gg, i64 %i.ha
  %next.gep598 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ha ; 2 uses
  %wide.vec599 = load <4 x i32>, ptr %next.gep598, align 4, !tbaa !254
  store <4 x i32> %wide.vec599, ptr %next.gep597, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep598, align 4, !tbaa !254
  %index.next603 = add nuw i64 %index596, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next603, %n.vec594
  br i1 %i.hb, label %middle.block604, label %vector.body595, !llvm.loop !4392

middle.block604:                                  ; preds = %vector.body595
  %cmp.n605 = icmp eq i64 %i.gk, %n.vec594
  br i1 %cmp.n605, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader721

.lr.ph.i.i146.preheader721:                       ; preds = %vector.memcheck569, %.lr.ph.i.i146.preheader, %middle.block604
  %.010.i.i147.ph = phi ptr [ %i.gg, %vector.memcheck569 ], [ %i.gg, %.lr.ph.i.i146.preheader ], [ %i.gy, %middle.block604 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck569 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gz, %middle.block604 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader721, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hh, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader721 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hg, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader721 ] ; 4 uses
  %i.hc = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.hc, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !254
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !254
  store i32 0, ptr %i.hd, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hg, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !4393

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block604, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.hi, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gg, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ft, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hm, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hs, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hm, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ho, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hj = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hk = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hl = icmp slt i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hj, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %i.fv
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hk, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ht = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !254
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !254
  store i32 0, ptr %i.ht, align 4, !tbaa !254
  %i.hv = icmp eq ptr %i.hs, %.5
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hm, %bb.ai ], [ %i.hm, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hs, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fv, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.hw = ptrtoaddr ptr %.223.i to i64
  %i.hx = add i64 %11, -8
  %i.hy = sub i64 %i.hx, %i.hw                    ; 3 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check641 = icmp ult i64 %i.hy, 312
  br i1 %min.iters.check641, label %.lr.ph.i.i154.preheader709, label %vector.memcheck642

vector.memcheck642:                               ; preds = %.lr.ph.i.i154.preheader
  %i.ib = and i64 %i.hy, -8                       ; 2 uses
  %i.ic = or disjoint i64 %i.ib, 4                ; 2 uses
  %i.id = getelementptr i8, ptr %.226.i, i64 %i.ic ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ic ; 3 uses
  %i.if = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ig = add i64 %i.ib, 8                        ; 2 uses
  %i.ih = getelementptr i8, ptr %.226.i, i64 %i.ig ; 3 uses
  %i.ii = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ij = getelementptr i8, ptr %.223.i, i64 %i.ig ; 3 uses
  %bound0643 = icmp ult ptr %.226.i, %i.ie
  %bound1644 = icmp ult ptr %.223.i, %i.id
  %found.conflict645 = and i1 %bound0643, %bound1644
  %bound0646 = icmp ult ptr %.226.i, %i.ih
  %bound1647 = icmp ult ptr %i.if, %i.id
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %found.conflict645, %found.conflict648
  %bound0650 = icmp ult ptr %.226.i, %i.ij
  %bound1651 = icmp ult ptr %i.ii, %i.id
  %found.conflict652 = and i1 %bound0650, %bound1651
  %conflict.rdx653 = or i1 %conflict.rdx649, %found.conflict652
  %bound0654 = icmp ult ptr %.223.i, %i.ih
  %bound1655 = icmp ult ptr %i.if, %i.ie
  %found.conflict656 = and i1 %bound0654, %bound1655
  %conflict.rdx657 = or i1 %conflict.rdx653, %found.conflict656
  %bound0658 = icmp ult ptr %.223.i, %i.ij
  %bound1659 = icmp ult ptr %i.ii, %i.ie
  %found.conflict660 = and i1 %bound0658, %bound1659
  %conflict.rdx661 = or i1 %conflict.rdx657, %found.conflict660
  %bound0662 = icmp ult ptr %i.if, %i.ij
  %bound1663 = icmp ult ptr %i.ii, %i.ih
  %found.conflict664 = and i1 %bound0662, %bound1663
  %conflict.rdx665 = or i1 %conflict.rdx661, %found.conflict664
  br i1 %conflict.rdx665, label %.lr.ph.i.i154.preheader709, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck642
  %n.vec667 = and i64 %i.ia, 4611686018427387902  ; 3 uses
  %i.ik = shl i64 %n.vec667, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %.226.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.ik
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next676, %vector.body668 ] ; 2 uses
  %i.in = shl i64 %index669, 3                    ; 2 uses
  %next.gep670 = getelementptr i8, ptr %.226.i, i64 %i.in
  %next.gep671 = getelementptr i8, ptr %.223.i, i64 %i.in ; 2 uses
  %wide.vec672 = load <4 x i32>, ptr %next.gep671, align 4, !tbaa !254
  store <4 x i32> %wide.vec672, ptr %next.gep670, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep671, align 4, !tbaa !254
  %index.next676 = add nuw i64 %index669, 2       ; 2 uses
  %i.io = icmp eq i64 %index.next676, %n.vec667
  br i1 %i.io, label %middle.block677, label %vector.body668, !llvm.loop !4394

middle.block677:                                  ; preds = %vector.body668
  %cmp.n678 = icmp eq i64 %i.ia, %n.vec667
  br i1 %cmp.n678, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader709

.lr.ph.i.i154.preheader709:                       ; preds = %vector.memcheck642, %.lr.ph.i.i154.preheader, %middle.block677
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck642 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.il, %middle.block677 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck642 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.im, %middle.block677 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader709, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.iu, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader709 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.it, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader709 ] ; 4 uses
  %i.ip = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ip, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !254
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !254
  store i32 0, ptr %i.iq, align 4, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.it, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !4395

bb.aj:                                            ; preds = %.thread
  br i1 %i.fu, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iv = phi ptr [ %i.ft, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 11 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.iw = phi ptr [ %i.fv, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.ix = ptrtoaddr ptr %.0108266 to i64
  %i.iy = ptrtoaddr ptr %.0216268 to i64
  %i.iz = add i64 %i.ix, -8
  %i.ja = sub i64 %i.iz, %i.iy                    ; 3 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %min.iters.check497 = icmp ult i64 %i.ja, 312
  br i1 %min.iters.check497, label %.lr.ph.i.i161.preheader722, label %vector.memcheck498

vector.memcheck498:                               ; preds = %.lr.ph.i.i161.preheader
  %i.jd = and i64 %i.ja, -8                       ; 2 uses
  %i.je = or disjoint i64 %i.jd, 4                ; 2 uses
  %i.jf = getelementptr i8, ptr %.0222270, i64 %i.je ; 3 uses
  %i.jg = getelementptr i8, ptr %.0216268, i64 %i.je ; 3 uses
  %i.jh = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.ji = add i64 %i.jd, 8                        ; 2 uses
  %i.jj = getelementptr i8, ptr %.0222270, i64 %i.ji ; 3 uses
  %i.jk = getelementptr i8, ptr %.0216268, i64 4  ; 3 uses
  %i.jl = getelementptr i8, ptr %.0216268, i64 %i.ji ; 3 uses
  %bound0499 = icmp ult ptr %.0222270, %i.jg
  %bound1500 = icmp ult ptr %.0216268, %i.jf
  %found.conflict501 = and i1 %bound0499, %bound1500
  %bound0502 = icmp ult ptr %.0222270, %i.jj
  %bound1503 = icmp ult ptr %i.jh, %i.jf
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %found.conflict501, %found.conflict504
  %bound0506 = icmp ult ptr %.0222270, %i.jl
  %bound1507 = icmp ult ptr %i.jk, %i.jf
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %.0216268, %i.jj
  %bound1511 = icmp ult ptr %i.jh, %i.jg
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %.0216268, %i.jl
  %bound1515 = icmp ult ptr %i.jk, %i.jg
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %i.jh, %i.jl
  %bound1519 = icmp ult ptr %i.jk, %i.jj
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  br i1 %conflict.rdx521, label %.lr.ph.i.i161.preheader722, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck498
  %n.vec523 = and i64 %i.jc, 4611686018427387902  ; 3 uses
  %i.jm = shl i64 %n.vec523, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0222270, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %.0216268, i64 %i.jm
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next532, %vector.body524 ] ; 2 uses
  %i.jp = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.0222270, i64 %i.jp
  %next.gep527 = getelementptr i8, ptr %.0216268, i64 %i.jp ; 2 uses
  %wide.vec528 = load <4 x i32>, ptr %next.gep527, align 4, !tbaa !254
  store <4 x i32> %wide.vec528, ptr %next.gep526, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep527, align 4, !tbaa !254
  %index.next532 = add nuw i64 %index525, 2       ; 2 uses
  %i.jq = icmp eq i64 %index.next532, %n.vec523
  br i1 %i.jq, label %middle.block533, label %vector.body524, !llvm.loop !4396

middle.block533:                                  ; preds = %vector.body524
  %cmp.n534 = icmp eq i64 %i.jc, %n.vec523
  br i1 %cmp.n534, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader722

.lr.ph.i.i161.preheader722:                       ; preds = %vector.memcheck498, %.lr.ph.i.i161.preheader, %middle.block533
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck498 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jn, %middle.block533 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck498 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jo, %middle.block533 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader722, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jw, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader722 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jv, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader722 ] ; 4 uses
  %i.jr = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jr, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !254
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !254
  store i32 0, ptr %i.js, align 4, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jv, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !4397

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block533, %middle.block677, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jx = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.ae, %.thread.thread ], [ %i.ft, %bb.aj ], [ %i.iv, %bb.ak ], [ %i.ft, %middle.block677 ], [ %i.iv, %middle.block533 ], [ %i.ft, %.lr.ph.i.i154 ], [ %i.iv, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block677 ], [ %.2, %middle.block533 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block677 ], [ %.0234275, %middle.block533 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block677 ], [ %.0228272, %middle.block533 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block677 ], [ %.0102262, %middle.block533 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block677 ], [ %.099259, %middle.block533 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.jy = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fv, %bb.aj ], [ %i.iw, %bb.ak ], [ %i.fv, %middle.block677 ], [ %i.iw, %middle.block533 ], [ %i.fv, %.lr.ph.i.i154 ], [ %i.iw, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.il, %middle.block677 ], [ %i.jn, %middle.block533 ], [ %i.iu, %.lr.ph.i.i154 ], [ %i.jw, %.lr.ph.i.i161 ]
  %i.jz = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ESA_SA_NS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jy, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.ka, %i.jy
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.kb = ptrtoaddr ptr %i.jy to i64
  %i.kc = ptrtoaddr ptr %i.ka to i64
  %i.kd = add i64 %i.kb, -8
  %i.ke = sub i64 %i.kd, %i.kc                    ; 3 uses
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check688 = icmp ult i64 %i.ke, 72
  br i1 %min.iters.check688, label %.lr.ph.i.i168.preheader708, label %vector.memcheck689

vector.memcheck689:                               ; preds = %.lr.ph.i.i168.preheader
  %i.kh = and i64 %i.ke, -8
  %i.ki = add i64 %i.kh, 8                        ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jz, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.ki
  %bound0690 = icmp ult ptr %i.jz, %i.kk
  %bound1691 = icmp ult ptr %i.ka, %i.kj
  %found.conflict692 = and i1 %bound0690, %bound1691
  br i1 %found.conflict692, label %.lr.ph.i.i168.preheader708, label %vector.ph693

vector.ph693:                                     ; preds = %vector.memcheck689
  %n.vec694 = and i64 %i.kg, 4611686018427387902  ; 3 uses
  %i.kl = shl i64 %n.vec694, 3                    ; 2 uses
  %i.km = getelementptr i8, ptr %i.jz, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.ka, i64 %i.kl
  br label %vector.body695

vector.body695:                                   ; preds = %vector.body695, %vector.ph693
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next703, %vector.body695 ] ; 2 uses
  %i.ko = shl i64 %index696, 3                    ; 2 uses
  %next.gep697 = getelementptr i8, ptr %i.jz, i64 %i.ko
  %next.gep698 = getelementptr i8, ptr %i.ka, i64 %i.ko ; 2 uses
  %wide.vec699 = load <4 x i32>, ptr %next.gep698, align 4, !tbaa !254, !alias.scope !4403
  store <4 x i32> %wide.vec699, ptr %next.gep697, align 4, !tbaa !254, !alias.scope !4404, !noalias !4403
  store <4 x i32> zeroinitializer, ptr %next.gep698, align 4, !tbaa !254, !alias.scope !4403
  %index.next703 = add nuw i64 %index696, 2       ; 2 uses
  %i.kp = icmp eq i64 %index.next703, %n.vec694
  br i1 %i.kp, label %middle.block704, label %vector.body695, !llvm.loop !4401

middle.block704:                                  ; preds = %vector.body695
  %cmp.n705 = icmp eq i64 %i.kg, %n.vec694
  br i1 %cmp.n705, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader708

.lr.ph.i.i168.preheader708:                       ; preds = %vector.memcheck689, %.lr.ph.i.i168.preheader, %middle.block704
  %.010.i.i169.ph = phi ptr [ %i.jz, %vector.memcheck689 ], [ %i.jz, %.lr.ph.i.i168.preheader ], [ %i.km, %middle.block704 ]
  %.079.i.i170.ph = phi ptr [ %i.ka, %vector.memcheck689 ], [ %i.ka, %.lr.ph.i.i168.preheader ], [ %i.kn, %middle.block704 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader708, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.kv, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader708 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ku, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader708 ] ; 4 uses
  %i.kq = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kq, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !254
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !254
  store i32 0, ptr %i.kr, align 4, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ku, %i.jy
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !4402

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block704, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 3 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = mul i64 %2, %i.e
  %i.q = shl i64 %3, 3                            ; 2 uses
  %i.r = add i64 %i.p, %3
  %i.s = shl i64 %i.r, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -4   ; 3 uses
  %i.u = shl i64 %2, 3
  %i.v = or disjoint i64 %i.q, 4                  ; 2 uses
  %scevgep380 = getelementptr i8, ptr %1, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = add i64 %.idx254, -8                     ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  %bound0383 = icmp ult ptr %i.i, %i.k
  %bound1384 = icmp ult ptr %scevgep380, %scevgep
  %found.conflict385 = and i1 %bound0383, %bound1384
  %stride.check386 = icmp slt i64 %.idx254, 0
  %i.ac = or i1 %found.conflict385, %stride.check386
  %n.vec = and i64 %i.ab, 4611686018427387902     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %i.i, %.lr.ph ], [ %i.bb, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fr, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.fp, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.fn, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 20 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.fs, %.sink.split.i ] ; 5 uses
  %.0108286416 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285417 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %scevgep378 = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep381 = getelementptr i8, ptr %i.y, i64 %i.af
  %i.ag = icmp ult i64 %.099290, %.0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.av, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.au, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ah = mul i64 %.02226.i, %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = mul i64 %.027.i, %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !254 ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !254 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = icmp slt i32 %i.ao, %i.an
  br i1 %i.aq, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !226
  %i.as = load i64, ptr %i.al, align 8, !tbaa !226
  %i.at = icmp ult i64 %i.ar, %i.as
  %cond.fr.i = freeze i1 %i.at
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.au = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.av = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.au, %.thread24.i ] ; 6 uses
  %i.aw = add i64 %.022.lcssa.i, 2
  %i.ax = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aw) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ax, i64 %.0238282) ; 4 uses
  %i.ay = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ay, 3                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.ae, i64 %.idx  ; 13 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %2 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !254
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !254
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.thread.loopexit, label %bb.h

end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %storemerge122 = phi ptr [ %i.fk, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1109 = phi ptr [ %i.bb, %bb.aa ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  %.1106 = phi i8 [ %i.eo, %bb.aa ], [ %.0105287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.fl = phi i1 [ %i.en, %bb.ab ], [ %i.bs, %bb.m ], [ %i.bs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bs, %bb.n ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %.0102288, %bb.m ], [ %.0232283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.1227, %bb.n ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.ae, %bb.m ], [ %i.ae, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ae, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bb, %bb.m ], [ %i.bb, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bb, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105287, %bb.m ], [ %.0105287, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0105287, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fl, true
  %i.fm = sext i1 %not. to i64
  %.1 = add i64 %.0291, %i.fm
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !262
  %i.fn = getelementptr inbounds nuw i8, ptr %.0102288, i64 8 ; 2 uses
  %i.fo = icmp ne i64 %.099290, 0
  %.neg = sext i1 %i.fo to i64
  %i.fp = add i64 %.099290, %.neg                 ; 2 uses
  %i.fq = icmp ne i64 %i.ax, 0
  %.neg123 = sext i1 %i.fq to i64
  %i.fr = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.fs = add i64 %.0238282, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4409

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ft = phi ptr [ %i.bb, %.sink.split.i ], [ %i.ae, %bb.f ]
  %.4 = phi i64 [ %i.fr, %.sink.split.i ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0238282, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %.sink.split.i ], [ %.0232283, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %.sink.split.i ], [ %.0226284, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %.sink.split.i ], [ %.0220285, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108286, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105287, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fn, %.sink.split.i ], [ %.0102288, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fp, %.sink.split.i ], [ %.099290, %bb.f ]
  %i.fu = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fv = phi ptr [ %i.i, %bb.a ], [ %i.ft, %.thread.loopexit ] ; 10 uses
  %.1324 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fu, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fw = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !262
  %.idx256 = shl nuw nsw i64 %6, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx256 ; 7 uses
  %i.fy = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fy, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fz = load i32, ptr %i.k, align 4, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.gc, %bb.af ] ; 3 uses
  %i.ga = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.gc, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.gc, %bb.af ] ; 12 uses
  %i.gd = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.ge = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = ashr exact i64 %i.gf, 3
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.fv, i64 %i.gh ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.gj = add i64 %i.gd, -8
  %i.gk = sub i64 %i.gj, %i.ge                    ; 3 uses
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check578 = icmp ult i64 %i.gk, 232
  br i1 %min.iters.check578, label %.lr.ph.i.i146.preheader711, label %vector.memcheck579

vector.memcheck579:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gn = and i64 %i.gk, -8                       ; 2 uses
  %i.go = or disjoint i64 %i.gn, 4                ; 2 uses
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.go ; 3 uses
  %i.gq = sub i64 %i.go, %i.gf
  %i.gr = getelementptr i8, ptr %i.fv, i64 %i.gq  ; 3 uses
  %i.gs = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.gt = add i64 %i.gn, 8                        ; 2 uses
  %i.gu = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gt ; 3 uses
  %i.gv = sub i64 4, %i.gf
  %i.gw = getelementptr i8, ptr %i.fv, i64 %i.gv  ; 3 uses
  %i.gx = sub i64 %i.gt, %i.gf
  %i.gy = getelementptr i8, ptr %i.fv, i64 %i.gx  ; 3 uses
  %bound0580 = icmp ult ptr %.0.lcssa.i, %i.gr
  %bound1581 = icmp ult ptr %i.gi, %i.gp
  %found.conflict582 = and i1 %bound0580, %bound1581
  %bound0583 = icmp ult ptr %.0.lcssa.i, %i.gu
  %bound1584 = icmp ult ptr %i.gs, %i.gp
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %found.conflict582, %found.conflict585
  %bound0587 = icmp ult ptr %.0.lcssa.i, %i.gy
  %bound1588 = icmp ult ptr %i.gw, %i.gp
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %i.gi, %i.gu
  %bound1592 = icmp ult ptr %i.gs, %i.gr
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %i.gi, %i.gy
  %bound1596 = icmp ult ptr %i.gw, %i.gr
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %i.gs, %i.gy
  %bound1600 = icmp ult ptr %i.gw, %i.gu
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  br i1 %conflict.rdx602, label %.lr.ph.i.i146.preheader711, label %vector.ph603

vector.ph603:                                     ; preds = %vector.memcheck579
  %n.vec604 = and i64 %i.gm, 4611686018427387902  ; 3 uses
  %i.gz = shl i64 %n.vec604, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gi, i64 %i.gz
  %i.hb = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gz
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph603
  %index606 = phi i64 [ 0, %vector.ph603 ], [ %index.next617, %vector.body605 ] ; 2 uses
  %i.hc = shl i64 %index606, 3                    ; 2 uses
  %next.gep607 = getelementptr i8, ptr %i.gi, i64 %i.hc ; 2 uses
  %next.gep608 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hc ; 2 uses
  %wide.vec609 = load <4 x i32>, ptr %next.gep608, align 4, !tbaa !254
  %wide.vec612 = load <4 x i32>, ptr %next.gep607, align 4, !tbaa !254
  store <4 x i32> %wide.vec612, ptr %next.gep608, align 4, !tbaa !254
  store <4 x i32> %wide.vec609, ptr %next.gep607, align 4, !tbaa !254
  %index.next617 = add nuw i64 %index606, 2       ; 2 uses
  %i.hd = icmp eq i64 %index.next617, %n.vec604
  br i1 %i.hd, label %middle.block618, label %vector.body605, !llvm.loop !4410

middle.block618:                                  ; preds = %vector.body605
  %cmp.n619 = icmp eq i64 %i.gm, %n.vec604
  br i1 %cmp.n619, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146.preheader711

.lr.ph.i.i146.preheader711:                       ; preds = %vector.memcheck579, %.lr.ph.i.i146.preheader, %middle.block618
  %.010.i.i147.ph = phi ptr [ %i.gi, %vector.memcheck579 ], [ %i.gi, %.lr.ph.i.i146.preheader ], [ %i.ha, %middle.block618 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck579 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.hb, %middle.block618 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader711, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hl, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader711 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.hk, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader711 ] ; 5 uses
  %i.he = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.hf = load i32, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 %i.hf, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.he, ptr %.010.i.i147, align 4, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !254
  store i32 0, ptr %i.hg, align 4, !tbaa !254
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !254
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !254
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !254
  %i.hk = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hk, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, label %.lr.ph.i.i146, !llvm.loop !4411

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152: ; preds = %.lr.ph.i.i146, %middle.block618, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.hm, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.gi, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fv, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hq, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hz, %bb.ai ], [ %.5225, %bb.ag ] ; 6 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hq, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 6 uses
  %.0.i = phi ptr [ %i.ht, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 7 uses
  %i.hn = load i32, ptr %.0.i, align 4, !tbaa !254
  %i.ho = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = icmp slt i32 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hr = load i32, ptr %.024.i, align 4, !tbaa !254 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !254
  %i.hs = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 6 uses
  br i1 %i.hp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.hu = load i32, ptr %.0.i, align 4, !tbaa !254
  store i32 %i.hu, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.0.i, align 4, !tbaa !254
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !254
  store i32 %i.hx, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !254
  %i.hy = icmp eq ptr %i.ht, %i.fx
  br i1 %i.hy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  %i.ia = load i32, ptr %.021.i.ph, align 4, !tbaa !254
  store i32 %i.ia, ptr %.024.i, align 4, !tbaa !254
  store i32 %i.hr, ptr %.021.i.ph, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hs, align 4, !tbaa !254
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !254
  store i32 %i.id, ptr %i.hs, align 4, !tbaa !254
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !254
  %i.ie = icmp eq ptr %i.hz, %.5
  br i1 %i.ie, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.hq, %bb.ai ], [ %i.hq, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hz, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fx, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7swap_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.if = ptrtoaddr ptr %.223.i to i64
  %i.ig = add i64 %11, -8
  %i.ih = sub i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check655 = icmp ult i64 %i.ih, 200
  br i1 %min.iters.check655, label %.lr.ph.i.i155.preheader699, label %vector.memcheck656

vector.memcheck656:                               ; preds = %.lr.ph.i.i155.preheader
  %i.ik = and i64 %i.ih, -8                       ; 2 uses
  %i.il = or disjoint i64 %i.ik, 4                ; 2 uses
  %i.im = getelementptr i8, ptr %.223.i, i64 %i.il ; 3 uses
  %i.in = getelementptr i8, ptr %.226.i, i64 %i.il ; 3 uses
  %i.io = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ip = add i64 %i.ik, 8                        ; 2 uses
  %i.iq = getelementptr i8, ptr %.223.i, i64 %i.ip ; 3 uses
  %i.ir = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.is = getelementptr i8, ptr %.226.i, i64 %i.ip ; 3 uses
  %bound0657 = icmp ult ptr %.223.i, %i.in
  %bound1658 = icmp ult ptr %.226.i, %i.im
  %found.conflict659 = and i1 %bound0657, %bound1658
  %bound0660 = icmp ult ptr %.223.i, %i.iq
  %bound1661 = icmp ult ptr %i.io, %i.im
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %found.conflict659, %found.conflict662
  %bound0664 = icmp ult ptr %.223.i, %i.is
  %bound1665 = icmp ult ptr %i.ir, %i.im
  %found.conflict666 = and i1 %bound0664, %bound1665
  %conflict.rdx667 = or i1 %conflict.rdx663, %found.conflict666
  %bound0668 = icmp ult ptr %.226.i, %i.iq
  %bound1669 = icmp ult ptr %i.io, %i.in
  %found.conflict670 = and i1 %bound0668, %bound1669
  %conflict.rdx671 = or i1 %conflict.rdx667, %found.conflict670
  %bound0672 = icmp ult ptr %.226.i, %i.is
  %bound1673 = icmp ult ptr %i.ir, %i.in
  %found.conflict674 = and i1 %bound0672, %bound1673
  %conflict.rdx675 = or i1 %conflict.rdx671, %found.conflict674
  %bound0676 = icmp ult ptr %i.io, %i.is
  %bound1677 = icmp ult ptr %i.ir, %i.iq
  %found.conflict678 = and i1 %bound0676, %bound1677
  %conflict.rdx679 = or i1 %conflict.rdx675, %found.conflict678
  br i1 %conflict.rdx679, label %.lr.ph.i.i155.preheader699, label %vector.ph680

vector.ph680:                                     ; preds = %vector.memcheck656
  %n.vec681 = and i64 %i.ij, 4611686018427387902  ; 3 uses
  %i.it = shl i64 %n.vec681, 3                    ; 2 uses
  %i.iu = getelementptr i8, ptr %.226.i, i64 %i.it ; 2 uses
  %i.iv = getelementptr i8, ptr %.223.i, i64 %i.it
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next694, %vector.body682 ] ; 2 uses
  %i.iw = shl i64 %index683, 3                    ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.226.i, i64 %i.iw ; 2 uses
  %next.gep685 = getelementptr i8, ptr %.223.i, i64 %i.iw ; 2 uses
  %wide.vec686 = load <4 x i32>, ptr %next.gep685, align 4, !tbaa !254
  %wide.vec689 = load <4 x i32>, ptr %next.gep684, align 4, !tbaa !254
  store <4 x i32> %wide.vec689, ptr %next.gep685, align 4, !tbaa !254
  store <4 x i32> %wide.vec686, ptr %next.gep684, align 4, !tbaa !254
  %index.next694 = add nuw i64 %index683, 2       ; 2 uses
  %i.ix = icmp eq i64 %index.next694, %n.vec681
  br i1 %i.ix, label %middle.block695, label %vector.body682, !llvm.loop !4412

middle.block695:                                  ; preds = %vector.body682
  %cmp.n696 = icmp eq i64 %i.ij, %n.vec681
  br i1 %cmp.n696, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155.preheader699

.lr.ph.i.i155.preheader699:                       ; preds = %vector.memcheck656, %.lr.ph.i.i155.preheader, %middle.block695
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck656 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.iu, %middle.block695 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck656 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.iv, %middle.block695 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader699, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.jf, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader699 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.je, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader699 ] ; 5 uses
  %i.iy = load i32, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !254
  %i.iz = load i32, ptr %.010.i.i156, align 4, !tbaa !254
  store i32 %i.iz, ptr %.079.i.i157, align 4, !tbaa !254
  store i32 %i.iy, ptr %.010.i.i156, align 4, !tbaa !254
  %i.ja = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !254
  store i32 0, ptr %i.ja, align 4, !tbaa !254
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !254
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !254
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.je, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i155, !llvm.loop !4413

bb.aj:                                            ; preds = %.thread
  br i1 %i.fw, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jg = phi ptr [ %i.fv, %bb.aj ], [ %i.ae, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 3 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 3 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 11 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 12 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 3 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 3 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 3 uses
  %i.jh = phi ptr [ %i.fx, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.ji = ptrtoaddr ptr %.0108270 to i64
  %i.jj = ptrtoaddr ptr %.0220272 to i64
  %i.jk = add i64 %i.ji, -8
  %i.jl = sub i64 %i.jk, %i.jj                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check503 = icmp ult i64 %i.jl, 200
  br i1 %min.iters.check503, label %.lr.ph.i.i163.preheader712, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph.i.i163.preheader
  %i.jo = and i64 %i.jl, -8                       ; 2 uses
  %i.jp = or disjoint i64 %i.jo, 4                ; 2 uses
  %i.jq = getelementptr i8, ptr %.0220272, i64 %i.jp ; 3 uses
  %i.jr = getelementptr i8, ptr %.0226274, i64 %i.jp ; 3 uses
  %i.js = getelementptr i8, ptr %.0220272, i64 4  ; 3 uses
  %i.jt = add i64 %i.jo, 8                        ; 2 uses
  %i.ju = getelementptr i8, ptr %.0220272, i64 %i.jt ; 3 uses
  %i.jv = getelementptr i8, ptr %.0226274, i64 4  ; 3 uses
  %i.jw = getelementptr i8, ptr %.0226274, i64 %i.jt ; 3 uses
  %bound0505 = icmp ult ptr %.0220272, %i.jr
  %bound1506 = icmp ult ptr %.0226274, %i.jq
  %found.conflict507 = and i1 %bound0505, %bound1506
  %bound0508 = icmp ult ptr %.0220272, %i.ju
  %bound1509 = icmp ult ptr %i.js, %i.jq
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %found.conflict507, %found.conflict510
  %bound0512 = icmp ult ptr %.0220272, %i.jw
  %bound1513 = icmp ult ptr %i.jv, %i.jq
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %.0226274, %i.ju
  %bound1517 = icmp ult ptr %i.js, %i.jr
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %.0226274, %i.jw
  %bound1521 = icmp ult ptr %i.jv, %i.jr
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %i.js, %i.jw
  %bound1525 = icmp ult ptr %i.jv, %i.ju
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  br i1 %conflict.rdx527, label %.lr.ph.i.i163.preheader712, label %vector.ph528

vector.ph528:                                     ; preds = %vector.memcheck504
  %n.vec529 = and i64 %i.jn, 4611686018427387902  ; 3 uses
  %i.jx = shl i64 %n.vec529, 3                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0226274, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0220272, i64 %i.jx
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next542, %vector.body530 ] ; 2 uses
  %i.ka = shl i64 %index531, 3                    ; 2 uses
  %next.gep532 = getelementptr i8, ptr %.0226274, i64 %i.ka ; 2 uses
  %next.gep533 = getelementptr i8, ptr %.0220272, i64 %i.ka ; 2 uses
  %wide.vec534 = load <4 x i32>, ptr %next.gep533, align 4, !tbaa !254
  %wide.vec537 = load <4 x i32>, ptr %next.gep532, align 4, !tbaa !254
  store <4 x i32> %wide.vec537, ptr %next.gep533, align 4, !tbaa !254
  store <4 x i32> %wide.vec534, ptr %next.gep532, align 4, !tbaa !254
  %index.next542 = add nuw i64 %index531, 2       ; 2 uses
  %i.kb = icmp eq i64 %index.next542, %n.vec529
  br i1 %i.kb, label %middle.block543, label %vector.body530, !llvm.loop !4414

middle.block543:                                  ; preds = %vector.body530
  %cmp.n544 = icmp eq i64 %i.jn, %n.vec529
  br i1 %cmp.n544, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163.preheader712

.lr.ph.i.i163.preheader712:                       ; preds = %vector.memcheck504, %.lr.ph.i.i163.preheader, %middle.block543
  %.010.i.i164.ph = phi ptr [ %.0226274, %vector.memcheck504 ], [ %.0226274, %.lr.ph.i.i163.preheader ], [ %i.jy, %middle.block543 ]
  %.079.i.i165.ph = phi ptr [ %.0220272, %vector.memcheck504 ], [ %.0220272, %.lr.ph.i.i163.preheader ], [ %i.jz, %middle.block543 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader712, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.kj, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader712 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.ki, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader712 ] ; 5 uses
  %i.kc = load i32, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !254
  %i.kd = load i32, ptr %.010.i.i164, align 4, !tbaa !254
  store i32 %i.kd, ptr %.079.i.i165, align 4, !tbaa !254
  store i32 %i.kc, ptr %.010.i.i164, align 4, !tbaa !254
  %i.ke = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !254
  store i32 0, ptr %i.ke, align 4, !tbaa !254
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !254
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !254
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !254
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ki, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit161, label %.lr.ph.i.i163, !llvm.loop !4415
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  store ptr %i.dy, ptr %0, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.c, ptr %4, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254
  store i32 %i.g, ptr %i.e, align 4, !tbaa !254
  store i32 0, ptr %i.f, align 4, !tbaa !254
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %5, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  store i32 %i.l, ptr %i.j, align 4, !tbaa !254
  store i32 0, ptr %i.k, align 4, !tbaa !254
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.n, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  store i32 %i.s, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.r, align 4, !tbaa !254
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.w, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.v, align 4, !tbaa !254
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.z, ptr %i.x, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !254
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !254
  store i32 0, ptr %i.ac, align 4, !tbaa !254
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.af, ptr %0, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !349, !nonnull !333
  store ptr %i.ap, ptr %7, align 8, !tbaa !342
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !349, !nonnull !333
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !342
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 20 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i180.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !266  ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !267    ; 6 uses
  %5 = ptrtoaddr ptr %.114.i to i64
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %5                         ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.y = and i64 %i.v, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %.114.i, i64 %i.z
  %bound0 = icmp ult ptr %i.t, %i.ab
  %bound1 = icmp ult ptr %.114.i, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %.114.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep151 = getelementptr i8, ptr %.114.i, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !254, !alias.scope !4592
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4593, !noalias !4592
  store <4 x i32> zeroinitializer, ptr %next.gep151, align 4, !tbaa !254, !alias.scope !4592
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !254
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.ai, align 4, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4571

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1731.i = icmp eq i64 %i.s, %i.q
  br i1 %.not1731.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.an = trunc i64 %i.q to i32
  %i.ao = trunc i64 %i.s to i32
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = shl i32 %i.ap, 1
  %i.ar = add i32 %i.aq, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.s, 3                     ; 4 uses
  %i.as = getelementptr i8, ptr %.114.i, i64 %.idx28.i ; 3 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.au = add i64 %.idx28.i, -8                   ; 2 uses
  %i.av = lshr exact i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.au, 40
  br i1 %min.iters.check159, label %.lr.ph.i19.i.preheader272, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph.i19.i.preheader
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx28.i
  %bound0161 = icmp ult ptr %i.at, %i.as
  %bound1162 = icmp ult ptr %.114.i, %i.ax
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i19.i.preheader272, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck160
  %n.vec165 = and i64 %i.aw, 4611686018427387902  ; 3 uses
  %i.ay = shl i64 %n.vec165, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.at, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %.114.i, i64 %i.ay
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %i.bb = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.at, i64 %i.bb
  %next.gep169 = getelementptr i8, ptr %.114.i, i64 %i.bb ; 2 uses
  %wide.vec170 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4594
  store <4 x i32> %wide.vec170, ptr %next.gep168, align 4, !tbaa !254, !alias.scope !4595, !noalias !4594
  store <4 x i32> zeroinitializer, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4594
  %index.next174 = add nuw i64 %index167, 2       ; 2 uses
  %i.bc = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.bc, label %middle.block175, label %vector.body166, !llvm.loop !4575

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.aw, %n.vec165
  br i1 %cmp.n176, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader272

.lr.ph.i19.i.preheader272:                        ; preds = %vector.memcheck160, %.lr.ph.i19.i.preheader, %middle.block175
  %.010.i20.i.ph = phi ptr [ %i.at, %vector.memcheck160 ], [ %i.at, %.lr.ph.i19.i.preheader ], [ %i.az, %middle.block175 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck160 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.ba, %middle.block175 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader272, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bi, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader272 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.bh, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader272 ] ; 4 uses
  %i.bd = load i32, ptr %.079.i21.i, align 4, !tbaa !254
  store i32 %i.bd, ptr %.010.i20.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !254
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !254
  store i32 0, ptr %i.be, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not.i22.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !4576

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block175, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.at, %bb.f ], [ %i.az, %middle.block175 ], [ %i.bi, %.lr.ph.i19.i ]
  %.not16.i.i = icmp eq i64 %.idx28.i, %i.p
  br i1 %.not16.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bq, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.bp, %.lr.ph.i25.i ], [ %i.as, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 4 uses
  %i.bj = load i32, ptr %.01217.i.i, align 4, !tbaa !254
  store i32 %i.bj, ptr %.018.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !254
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bo = add i32 %i.bk, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bp = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.bp, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !266
  %i.br = load ptr, ptr %4, align 8, !tbaa !267   ; 3 uses
  %i.bs = ptrtoaddr ptr %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i41, %bb.j ], [ %i.br, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 12 uses
  %.01626.i = phi ptr [ %i.dc, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 9 uses
  %.01725.i = phi ptr [ %.118.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 6 uses
  %i.bu = icmp eq ptr %.01725.i, %2
  br i1 %i.bu, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.027.i181.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.bv = add i64 %i.bs, %i.d
  %i.bw = add i64 %i.bv, -8
  %i.bx = add i64 %.114.i180.le, %.027.i181.le
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.by, 120
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader265, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cb = shl i64 %indvar, 3
  %i.cc = getelementptr i8, ptr %.114.i, i64 %i.cb
  %scevgep = getelementptr i8, ptr %i.cc, i64 8
  %i.cd = add i64 %i.bs, %i.d
  %i.ce = add i64 %i.cd, -8
  %i.cf = add i64 %.114.i180.le, %.027.i181.le
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %scevgep182 = getelementptr i8, ptr %scevgep, i64 %i.ch
  %scevgep183 = getelementptr i8, ptr %.027.i, i64 8
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.ch
  %bound0185 = icmp ult ptr %.01626.i, %scevgep184
  %bound1186 = icmp ult ptr %.027.i, %scevgep182
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i.i.i.preheader265, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck179
  %n.vec191 = and i64 %i.ca, 4611686018427387902  ; 3 uses
  %i.ci = shl i64 %n.vec191, 3                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.01626.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %.027.i, i64 %i.ci
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 2 uses
  %i.cl = shl i64 %index193, 3                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.01626.i, i64 %i.cl
  %next.gep195 = getelementptr i8, ptr %.027.i, i64 %i.cl ; 2 uses
  %wide.vec196 = load <4 x i32>, ptr %next.gep195, align 4, !tbaa !254, !alias.scope !4596
  store <4 x i32> %wide.vec196, ptr %next.gep194, align 4, !tbaa !254, !alias.scope !4597, !noalias !4596
  store <4 x i32> zeroinitializer, ptr %next.gep195, align 4, !tbaa !254, !alias.scope !4596
  %index.next200 = add nuw i64 %index193, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.cm, label %middle.block201, label %vector.body192, !llvm.loop !4580

middle.block201:                                  ; preds = %vector.body192
  %cmp.n202 = icmp eq i64 %i.ca, %n.vec191
  br i1 %cmp.n202, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i.preheader265

.lr.ph.i.i.i.preheader265:                        ; preds = %vector.memcheck179, %.lr.ph.i.i.i.preheader, %middle.block201
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck179 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.cj, %middle.block201 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck179 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.ck, %middle.block201 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader265, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.cn, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.co, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cr, %i.bt
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4581

bb.g:                                             ; preds = %.lr.ph.i40
  %i.ct = load i32, ptr %.027.i, align 4, !tbaa !254 ; 2 uses
  %i.cu = load i32, ptr %.01725.i, align 4, !tbaa !254 ; 2 uses
  %.not20.i = icmp slt i32 %i.ct, %i.cu
  %i.cv = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4 ; 2 uses
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.cu, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.01725.i, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !254
  store i32 0, ptr %i.cw, align 4, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.ct, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.027.i, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %.027.i, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !254
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !254
  store i32 0, ptr %i.cz, align 4, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.118.i = phi ptr [ %i.cy, %bb.h ], [ %.01725.i, %bb.i ]
  %.1.i41 = phi ptr [ %.027.i, %bb.h ], [ %i.db, %bb.i ] ; 2 uses
  %i.dc = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !43

.lr.ph.i44:                                       ; preds = %bb.c
  %i.dd = ashr exact i64 %i.h, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.018.i45 = phi i64 [ %i.dd, %.lr.ph.i44 ], [ %.1.i50, %bb.k ] ; 2 uses
  %.01317.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i49, %bb.k ] ; 2 uses
  %i.de = lshr i64 %.018.i45, 1                   ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.01317.i46, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !254
  %.not15.i47 = icmp slt i32 %i.b, %i.dg          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.neg.i48 = xor i64 %i.de, -1
  %i.di = add i64 %.018.i45, %.neg.i48
  %.114.i49 = select i1 %.not15.i47, ptr %.01317.i46, ptr %i.dh ; 8 uses
  %.1.i50 = select i1 %.not15.i47, i64 %i.de, i64 %i.di ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.k, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.k
  %i.dj = ptrtoint ptr %.114.i49 to i64
  %i.dk = sub i64 %i.dj, %i.d                     ; 3 uses
  %i.dl = ashr exact i64 %i.dk, 3                 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !266 ; 5 uses
  %.not.i53 = icmp ugt i64 %i.dl, %i.dn
  br i1 %.not.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  br i1 %.not8.i.i54, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.preheader.i55

.lr.ph.i.preheader.i55:                           ; preds = %bb.l
  %i.do = load ptr, ptr %4, align 8, !tbaa !267   ; 6 uses
  %6 = ptrtoaddr ptr %.114.i49 to i64
  %i.dp = add i64 %6, -8
  %i.dq = sub i64 %i.dp, %i.d                     ; 3 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.dq, 72
  br i1 %min.iters.check215, label %.lr.ph.i.i56.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %.lr.ph.i.preheader.i55
  %i.dt = and i64 %i.dq, -8
  %i.du = add i64 %i.dt, 8                        ; 2 uses
  %i.dv = getelementptr i8, ptr %i.do, i64 %i.du
  %i.dw = getelementptr i8, ptr %1, i64 %i.du
  %bound0217 = icmp ult ptr %i.do, %i.dw
  %bound1218 = icmp ult ptr %1, %i.dv
  %found.conflict219 = and i1 %bound0217, %bound1218
  br i1 %found.conflict219, label %.lr.ph.i.i56.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck216
  %n.vec221 = and i64 %i.ds, 4611686018427387902  ; 3 uses
  %i.dx = shl i64 %n.vec221, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next230, %vector.body222 ] ; 2 uses
  %i.ea = shl i64 %index223, 3                    ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.do, i64 %i.ea
  %next.gep225 = getelementptr i8, ptr %1, i64 %i.ea ; 2 uses
  %wide.vec226 = load <4 x i32>, ptr %next.gep225, align 4, !tbaa !254, !alias.scope !4598
  store <4 x i32> %wide.vec226, ptr %next.gep224, align 4, !tbaa !254, !alias.scope !4599, !noalias !4598
  store <4 x i32> zeroinitializer, ptr %next.gep225, align 4, !tbaa !254, !alias.scope !4598
  %index.next230 = add nuw i64 %index223, 2       ; 2 uses
  %i.eb = icmp eq i64 %index.next230, %n.vec221
  br i1 %i.eb, label %middle.block231, label %vector.body222, !llvm.loop !4585

middle.block231:                                  ; preds = %vector.body222
  %cmp.n232 = icmp eq i64 %i.ds, %n.vec221
  br i1 %cmp.n232, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %vector.memcheck216, %.lr.ph.i.preheader.i55, %middle.block231
  %.010.i.i57.ph = phi ptr [ %i.do, %vector.memcheck216 ], [ %i.do, %.lr.ph.i.preheader.i55 ], [ %i.dy, %middle.block231 ]
  %.079.i.i58.ph = phi ptr [ %1, %vector.memcheck216 ], [ %1, %.lr.ph.i.preheader.i55 ], [ %i.dz, %middle.block231 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.eh, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader ] ; 3 uses
  %.079.i.i58 = phi ptr [ %i.eg, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader ] ; 4 uses
  %i.ec = load i32, ptr %.079.i.i58, align 4, !tbaa !254
  store i32 %i.ec, ptr %.010.i.i57, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i58, align 4, !tbaa !254
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !254
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !254
  store i32 0, ptr %i.ed, align 4, !tbaa !254
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 8
  %.not.i.i59 = icmp eq ptr %i.eg, %.114.i49
  br i1 %.not.i.i59, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.i56, !llvm.loop !4586

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60: ; preds = %.lr.ph.i.i56, %middle.block231, %bb.l
  %.not1731.i61 = icmp eq i64 %i.dn, %i.dl
  br i1 %.not1731.i61, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77, label %.lr.ph.preheader.i62

.lr.ph.preheader.i62:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i63 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ei = trunc i64 %i.dl to i32
  %i.ej = trunc i64 %i.dn to i32
  %i.ek = sub i32 %i.ei, %i.ej
  %i.el = shl i32 %i.ek, 1
  %i.em = add i32 %i.el, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i63
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.idx28.i64 = shl i64 %i.dn, 3                  ; 4 uses
  %i.en = getelementptr i8, ptr %1, i64 %.idx28.i64 ; 3 uses
  %i.eo = load ptr, ptr %4, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i65 = icmp eq i64 %i.dn, 0
  br i1 %.not8.i18.i65, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70, label %.lr.ph.i19.i66.preheader

.lr.ph.i19.i66.preheader:                         ; preds = %bb.m
  %i.ep = add i64 %.idx28.i64, -8                 ; 2 uses
  %i.eq = lshr exact i64 %i.ep, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check241 = icmp ult i64 %i.ep, 40
  br i1 %min.iters.check241, label %.lr.ph.i19.i66.preheader264, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i19.i66.preheader
  %i.es = getelementptr i8, ptr %i.eo, i64 %.idx28.i64
  %bound0243 = icmp ult ptr %i.eo, %i.en
  %bound1244 = icmp ult ptr %1, %i.es
  %found.conflict245 = and i1 %bound0243, %bound1244
  br i1 %found.conflict245, label %.lr.ph.i19.i66.preheader264, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck242
  %n.vec247 = and i64 %i.er, 4611686018427387902  ; 3 uses
  %i.et = shl i64 %n.vec247, 3                    ; 2 uses
  %i.eu = getelementptr i8, ptr %i.eo, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %1, i64 %i.et
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next256, %vector.body248 ] ; 2 uses
  %i.ew = shl i64 %index249, 3                    ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.eo, i64 %i.ew
  %next.gep251 = getelementptr i8, ptr %1, i64 %i.ew ; 2 uses
  %wide.vec252 = load <4 x i32>, ptr %next.gep251, align 4, !tbaa !254, !alias.scope !4600
  store <4 x i32> %wide.vec252, ptr %next.gep250, align 4, !tbaa !254, !alias.scope !4601, !noalias !4600
  store <4 x i32> zeroinitializer, ptr %next.gep251, align 4, !tbaa !254, !alias.scope !4600
  %index.next256 = add nuw i64 %index249, 2       ; 2 uses
  %i.ex = icmp eq i64 %index.next256, %n.vec247
  br i1 %i.ex, label %middle.block257, label %vector.body248, !llvm.loop !4590

middle.block257:                                  ; preds = %vector.body248
  %cmp.n258 = icmp eq i64 %i.er, %n.vec247
  br i1 %cmp.n258, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70, label %.lr.ph.i19.i66.preheader264

.lr.ph.i19.i66.preheader264:                      ; preds = %vector.memcheck242, %.lr.ph.i19.i66.preheader, %middle.block257
  %.010.i20.i67.ph = phi ptr [ %i.eo, %vector.memcheck242 ], [ %i.eo, %.lr.ph.i19.i66.preheader ], [ %i.eu, %middle.block257 ]
  %.079.i21.i68.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i19.i66.preheader ], [ %i.ev, %middle.block257 ]
  br label %.lr.ph.i19.i66

.lr.ph.i19.i66:                                   ; preds = %.lr.ph.i19.i66.preheader264, %.lr.ph.i19.i66
  %.010.i20.i67 = phi ptr [ %i.fd, %.lr.ph.i19.i66 ], [ %.010.i20.i67.ph, %.lr.ph.i19.i66.preheader264 ] ; 3 uses
  %.079.i21.i68 = phi ptr [ %i.fc, %.lr.ph.i19.i66 ], [ %.079.i21.i68.ph, %.lr.ph.i19.i66.preheader264 ] ; 4 uses
  %i.ey = load i32, ptr %.079.i21.i68, align 4, !tbaa !254
  store i32 %i.ey, ptr %.010.i20.i67, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i68, align 4, !tbaa !254
  %i.ez = getelementptr inbounds nuw i8, ptr %.079.i21.i68, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i20.i67, i64 4
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !254
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !254
  store i32 0, ptr %i.ez, align 4, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i21.i68, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.010.i20.i67, i64 8 ; 2 uses
  %.not.i22.i69 = icmp eq ptr %i.fc, %i.en
  br i1 %.not.i22.i69, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70, label %.lr.ph.i19.i66, !llvm.loop !4591

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70: ; preds = %.lr.ph.i19.i66, %middle.block257, %bb.m
  %.0.lcssa.i23.i71 = phi ptr [ %i.eo, %bb.m ], [ %i.eu, %middle.block257 ], [ %i.fd, %.lr.ph.i19.i66 ]
  %.not16.i.i72 = icmp eq i64 %.idx28.i64, %i.dk
  br i1 %.not16.i.i72, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77, label %.lr.ph.i25.i73

.lr.ph.i25.i73:                                   ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70, %.lr.ph.i25.i73
  %.018.i.i74 = phi ptr [ %i.fl, %.lr.ph.i25.i73 ], [ %.0.lcssa.i23.i71, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70 ] ; 3 uses
  %.01217.i.i75 = phi ptr [ %i.fk, %.lr.ph.i25.i73 ], [ %i.en, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70 ] ; 4 uses
  %i.fe = load i32, ptr %.01217.i.i75, align 4, !tbaa !254
  store i32 %i.fe, ptr %.018.i.i74, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i75, align 4, !tbaa !254
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fg = getelementptr inbounds nuw i8, ptr %.018.i.i74, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.01217.i.i75, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !254
  store i32 0, ptr %i.fh, align 4, !tbaa !254
  %i.fj = add i32 %i.ff, 2
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fk = getelementptr inbounds nuw i8, ptr %.01217.i.i75, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.018.i.i74, i64 8
  %.not.i26.i76 = icmp eq ptr %i.fk, %.114.i49
  br i1 %.not.i26.i76, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77, label %.lr.ph.i25.i73, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77: ; preds = %.lr.ph.i25.i73, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, %.lr.ph.preheader.i62, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !266
  %i.fm = load ptr, ptr %4, align 8, !tbaa !267   ; 3 uses
  %.not28.i = icmp eq ptr %.114.i49, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.dk
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %bb.q
  %.031.i = phi ptr [ %.1.i80, %bb.q ], [ %1, %.lr.ph.i78.preheader ] ; 4 uses
  %.01930.i = phi ptr [ %.120.i, %bb.q ], [ %i.fn, %.lr.ph.i78.preheader ] ; 4 uses
  %.02129.i = phi ptr [ %i.fz, %bb.q ], [ %.114.i49, %.lr.ph.i78.preheader ] ; 3 uses
  %i.fo = icmp eq ptr %0, %.031.i
  br i1 %i.fo, label %.lr.ph.i.i.i82, label %bb.n

.lr.ph.i.i.i82:                                   ; preds = %.lr.ph.i78, %.lr.ph.i.i.i82
  %.010.i.i.i83 = phi ptr [ %i.fq, %.lr.ph.i.i.i82 ], [ %.02129.i, %.lr.ph.i78 ] ; 2 uses
  %.079.i.i.i84 = phi ptr [ %i.fp, %.lr.ph.i.i.i82 ], [ %.01930.i, %.lr.ph.i78 ] ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.079.i.i.i84, i64 -8 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %.010.i.i.i83, i64 -8 ; 2 uses
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !254
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !254
  store i32 0, ptr %i.fp, align 4, !tbaa !254
  %i.fs = getelementptr inbounds i8, ptr %.079.i.i.i84, i64 -4 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.010.i.i.i83, i64 -4
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !254
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !254
  store i32 0, ptr %i.fs, align 4, !tbaa !254
  %.not.i.i.i85 = icmp eq ptr %i.fm, %i.fp
  br i1 %.not.i.i.i85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i82, !llvm.loop !45

bb.n:                                             ; preds = %.lr.ph.i78
  %i.fv = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !254 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_:bb.a
_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi94 = phi i64 [ %.pre93, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %1, %bb.j ]
  %i.ad = sub i64 %.pre-phi94, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.af = lshr i64 %4, 1                          ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %.not16.i78 = icmp eq ptr %1, %0
  %.pre91 = ptrtoint ptr %0 to i64                ; 3 uses
  br i1 %.not16.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.l
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ah, %.pre91
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i79
  %.018.i80 = phi i64 [ %i.aj, %.lr.ph.i79 ], [ %.1.i85, %bb.m ] ; 2 uses
  %.01317.i81 = phi ptr [ %0, %.lr.ph.i79 ], [ %.114.i84, %bb.m ] ; 2 uses
  %i.al = lshr i64 %.018.i80, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.01317.i81, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !254
  %.not15.i82 = icmp slt i32 %i.an, %i.ak         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.neg.i83 = xor i64 %i.al, -1
  %i.ap = add i64 %.018.i80, %.neg.i83
  %.114.i84 = select i1 %.not15.i82, ptr %i.ao, ptr %.01317.i81 ; 3 uses
  %.1.i85 = select i1 %.not15.i82, i64 %i.ap, i64 %i.al ; 2 uses
  %.not.i86 = icmp eq i64 %.1.i85, 0
  br i1 %.not.i86, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre95 = ptrtoint ptr %.114.i84 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi96 = phi i64 [ %.pre95, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre91, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.aq = sub i64 %.pre-phi96, %.pre91
  %i.ar = ashr exact i64 %i.aq, 3
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ae, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.t, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %i.as = sub i64 %3, %.070                       ; 2 uses
  %i.at = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071, i64 noundef %i.as, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !349, !nonnull !333
  store ptr %i.au, ptr %11, align 8, !tbaa !342
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %i.at, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %11)
  %i.av = sub i64 %4, %.069
  %i.aw = load ptr, ptr %7, align 8, !tbaa !349, !nonnull !333
  store ptr %i.aw, ptr %12, align 8, !tbaa !342
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef %i.at, ptr noundef %.071, ptr noundef %2, i64 noundef %i.as, i64 noundef %i.av, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.h, %bb.n, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader74, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not80 = icmp eq ptr %1, %2
  br i1 %.not80, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.not16.i54117 = icmp eq ptr %1, %0
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !4602

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = load i32, ptr %.04085, align 4, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.b, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !254
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !4602

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !4603

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -8
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 3
  %i.z = load i32, ptr %i.v, align 4, !tbaa !254
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !254
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -8 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -16
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !254
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !254
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !4603

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ule i64 %3, %4
  %.not = icmp ugt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not8.i = icmp eq ptr %1, %2
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.b = add i64 %7, -8
  %i.c = sub i64 %i.b, %8                         ; 3 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 72
  br i1 %min.iters.check, label %.lr.ph.i.preheader213, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.f = and i64 %i.c, -8
  %i.g = add i64 %i.f, 8                          ; 2 uses
  %i.h = getelementptr i8, ptr %5, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %5, %i.i
  %bound1 = icmp ult ptr %1, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader213, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387902      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 %i.j       ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.m
  %next.gep97 = getelementptr i8, ptr %1, i64 %i.m ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !254, !alias.scope !4629
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4630, !noalias !4629
  store <4 x i32> zeroinitializer, ptr %next.gep97, align 4, !tbaa !254, !alias.scope !4629
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !4607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader213

.lr.ph.i.preheader213:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.079.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader213, %.lr.ph.i
  %.010.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader213 ] ; 3 uses
  %.079.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader213 ] ; 4 uses
  %i.o = load i32, ptr %.079.i, align 4, !tbaa !254
  store i32 %i.o, ptr %.010.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.r = load i32, ptr %i.p, align 4, !tbaa !254
  store i32 %i.r, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %i.s = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %2
  br i1 %.not.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !4608

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %5, %bb.c ], [ %i.k, %middle.block ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.not8.i37 = icmp eq ptr %0, %1
  br i1 %.not8.i37, label %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %.lr.ph.i38
  %.010.i39 = phi ptr [ %i.v, %.lr.ph.i38 ], [ %2, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ] ; 2 uses
  %.079.i40 = phi ptr [ %i.u, %.lr.ph.i38 ], [ %1, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079.i40, i64 -8 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %.010.i39, i64 -8 ; 2 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !254
  store i32 %i.w, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.u, align 4, !tbaa !254
  %i.x = getelementptr inbounds i8, ptr %.079.i40, i64 -4 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.010.i39, i64 -4
  %i.z = load i32, ptr %i.x, align 4, !tbaa !254
  store i32 %i.z, ptr %i.y, align 4, !tbaa !254
  store i32 0, ptr %i.x, align 4, !tbaa !254
  %.not.i41 = icmp eq ptr %0, %i.u
  br i1 %.not.i41, label %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i38, !llvm.loop !45

_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i38, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %.not8.i43 = icmp eq ptr %5, %.0.lcssa.i
  br i1 %.not8.i43, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %9 = ptrtoaddr ptr %.0.lcssa.i to i64
  %10 = ptrtoaddr ptr %5 to i64
  %i.aa = add i64 %9, -8
  %i.ab = sub i64 %i.aa, %10                      ; 3 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.ab, 72
  br i1 %min.iters.check107, label %.lr.ph.i44.preheader210, label %vector.memcheck108

vector.memcheck108:                               ; preds = %.lr.ph.i44.preheader
  %i.ae = and i64 %i.ab, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %5, i64 %i.af
  %bound0109 = icmp ult ptr %0, %i.ah
  %bound1110 = icmp ult ptr %5, %i.ag
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i44.preheader210, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck108
  %n.vec113 = and i64 %i.ad, 4611686018427387902  ; 3 uses
  %i.ai = shl i64 %n.vec113, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai     ; 2 uses
  %i.ak = getelementptr i8, ptr %5, i64 %i.ai
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body114 ] ; 2 uses
  %i.al = shl i64 %index115, 3                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %0, i64 %i.al
  %next.gep117 = getelementptr i8, ptr %5, i64 %i.al ; 2 uses
  %wide.vec118 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !254, !alias.scope !4631
  store <4 x i32> %wide.vec118, ptr %next.gep116, align 4, !tbaa !254, !alias.scope !4632, !noalias !4631
  store <4 x i32> zeroinitializer, ptr %next.gep117, align 4, !tbaa !254, !alias.scope !4631
  %index.next122 = add nuw i64 %index115, 2       ; 2 uses
  %i.am = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.am, label %middle.block123, label %vector.body114, !llvm.loop !4612

middle.block123:                                  ; preds = %vector.body114
  %cmp.n124 = icmp eq i64 %i.ad, %n.vec113
  br i1 %cmp.n124, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44.preheader210

.lr.ph.i44.preheader210:                          ; preds = %vector.memcheck108, %.lr.ph.i44.preheader, %middle.block123
  %.010.i45.ph = phi ptr [ %0, %vector.memcheck108 ], [ %0, %.lr.ph.i44.preheader ], [ %i.aj, %middle.block123 ]
  %.079.i46.ph = phi ptr [ %5, %vector.memcheck108 ], [ %5, %.lr.ph.i44.preheader ], [ %i.ak, %middle.block123 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader210, %.lr.ph.i44
  %.010.i45 = phi ptr [ %i.as, %.lr.ph.i44 ], [ %.010.i45.ph, %.lr.ph.i44.preheader210 ] ; 3 uses
  %.079.i46 = phi ptr [ %i.ar, %.lr.ph.i44 ], [ %.079.i46.ph, %.lr.ph.i44.preheader210 ] ; 4 uses
  %i.an = load i32, ptr %.079.i46, align 4, !tbaa !254
  store i32 %i.an, ptr %.010.i45, align 4, !tbaa !254
  store i32 0, ptr %.079.i46, align 4, !tbaa !254
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i46, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i45, i64 4
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !254
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !254
  store i32 0, ptr %i.ao, align 4, !tbaa !254
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i46, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i45, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ar, %.0.lcssa.i
  br i1 %.not.i47, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44, !llvm.loop !4613

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp ugt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not8.i50 = icmp eq ptr %0, %1
  br i1 %.not8.i50, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %bb.f
  %11 = ptrtoaddr ptr %1 to i64
  %12 = ptrtoaddr ptr %0 to i64
  %i.at = add i64 %11, -8
  %i.au = sub i64 %i.at, %12                      ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %i.au, 72
  br i1 %min.iters.check133, label %.lr.ph.i51.preheader208, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.i51.preheader
  %i.ax = and i64 %i.au, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %i.az = getelementptr i8, ptr %5, i64 %i.ay
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay
  %bound0135 = icmp ult ptr %5, %i.ba
  %bound1136 = icmp ult ptr %0, %i.az
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %.lr.ph.i51.preheader208, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec139 = and i64 %i.aw, 4611686018427387902  ; 3 uses
  %i.bb = shl i64 %n.vec139, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %i.bb     ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 %i.bb
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next148, %vector.body140 ] ; 2 uses
  %i.be = shl i64 %index141, 3                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %5, i64 %i.be
  %next.gep143 = getelementptr i8, ptr %0, i64 %i.be ; 2 uses
  %wide.vec144 = load <4 x i32>, ptr %next.gep143, align 4, !tbaa !254, !alias.scope !4633
  store <4 x i32> %wide.vec144, ptr %next.gep142, align 4, !tbaa !254, !alias.scope !4634, !noalias !4633
  store <4 x i32> zeroinitializer, ptr %next.gep143, align 4, !tbaa !254, !alias.scope !4633
  %index.next148 = add nuw i64 %index141, 2       ; 2 uses
  %i.bf = icmp eq i64 %index.next148, %n.vec139
  br i1 %i.bf, label %middle.block149, label %vector.body140, !llvm.loop !4617

middle.block149:                                  ; preds = %vector.body140
  %cmp.n150 = icmp eq i64 %i.aw, %n.vec139
  br i1 %cmp.n150, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51.preheader208

.lr.ph.i51.preheader208:                          ; preds = %vector.memcheck134, %.lr.ph.i51.preheader, %middle.block149
  %.010.i52.ph = phi ptr [ %5, %vector.memcheck134 ], [ %5, %.lr.ph.i51.preheader ], [ %i.bc, %middle.block149 ]
  %.079.i53.ph = phi ptr [ %0, %vector.memcheck134 ], [ %0, %.lr.ph.i51.preheader ], [ %i.bd, %middle.block149 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader208, %.lr.ph.i51
  %.010.i52 = phi ptr [ %i.bl, %.lr.ph.i51 ], [ %.010.i52.ph, %.lr.ph.i51.preheader208 ] ; 3 uses
  %.079.i53 = phi ptr [ %i.bk, %.lr.ph.i51 ], [ %.079.i53.ph, %.lr.ph.i51.preheader208 ] ; 4 uses
  %i.bg = load i32, ptr %.079.i53, align 4, !tbaa !254
  store i32 %i.bg, ptr %.010.i52, align 4, !tbaa !254
  store i32 0, ptr %.079.i53, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i53, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i52, i64 4
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !254
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !254
  store i32 0, ptr %i.bh, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i53, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i52, i64 8 ; 2 uses
  %.not.i54 = icmp eq ptr %i.bk, %1
  br i1 %.not.i54, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51, !llvm.loop !4618

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56: ; preds = %.lr.ph.i51, %middle.block149, %bb.f
  %.0.lcssa.i55 = phi ptr [ %5, %bb.f ], [ %i.bc, %middle.block149 ], [ %i.bl, %.lr.ph.i51 ] ; 3 uses
  %.not8.i57 = icmp eq ptr %1, %2
  br i1 %.not8.i57, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56
  %13 = ptrtoaddr ptr %2 to i64
  %14 = ptrtoaddr ptr %1 to i64
  %i.bm = add i64 %13, -8
  %i.bn = sub i64 %i.bm, %14                      ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.bn, 72
  br i1 %min.iters.check159, label %.lr.ph.i58.preheader207, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph.i58.preheader
  %i.bq = and i64 %i.bn, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %1, i64 %i.br
  %bound0161 = icmp ult ptr %0, %i.bt
  %bound1162 = icmp ult ptr %1, %i.bs
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i58.preheader207, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck160
  %n.vec165 = and i64 %i.bp, 4611686018427387902  ; 3 uses
  %i.bu = shl i64 %n.vec165, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %i.bx = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %0, i64 %i.bx
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  %wide.vec170 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4635
  store <4 x i32> %wide.vec170, ptr %next.gep168, align 4, !tbaa !254, !alias.scope !4636, !noalias !4635
  store <4 x i32> zeroinitializer, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4635
  %index.next174 = add nuw i64 %index167, 2       ; 2 uses
  %i.by = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.by, label %middle.block175, label %vector.body166, !llvm.loop !4622

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.bp, %n.vec165
  br i1 %cmp.n176, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58.preheader207

.lr.ph.i58.preheader207:                          ; preds = %vector.memcheck160, %.lr.ph.i58.preheader, %middle.block175
  %.010.i59.ph = phi ptr [ %0, %vector.memcheck160 ], [ %0, %.lr.ph.i58.preheader ], [ %i.bv, %middle.block175 ]
  %.079.i60.ph = phi ptr [ %1, %vector.memcheck160 ], [ %1, %.lr.ph.i58.preheader ], [ %i.bw, %middle.block175 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader207, %.lr.ph.i58
  %.010.i59 = phi ptr [ %i.ce, %.lr.ph.i58 ], [ %.010.i59.ph, %.lr.ph.i58.preheader207 ] ; 3 uses
  %.079.i60 = phi ptr [ %i.cd, %.lr.ph.i58 ], [ %.079.i60.ph, %.lr.ph.i58.preheader207 ] ; 4 uses
  %i.bz = load i32, ptr %.079.i60, align 4, !tbaa !254
  store i32 %i.bz, ptr %.010.i59, align 4, !tbaa !254
  store i32 0, ptr %.079.i60, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i60, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i59, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !254
  store i32 0, ptr %i.ca, align 4, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i60, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i59, i64 8 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cd, %2
  br i1 %.not.i61, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58, !llvm.loop !4623

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63: ; preds = %.lr.ph.i58, %middle.block175, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56
  %.0.lcssa.i62 = phi ptr [ %0, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56 ], [ %i.bv, %middle.block175 ], [ %i.ce, %.lr.ph.i58 ] ; 9 uses
  %.not8.i64 = icmp eq ptr %5, %.0.lcssa.i55
  br i1 %.not8.i64, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63
  %15 = ptrtoaddr ptr %.0.lcssa.i55 to i64
  %16 = ptrtoaddr ptr %5 to i64
  %i.cf = add i64 %15, -8
  %i.cg = sub i64 %i.cf, %16                      ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.cg, 72
  br i1 %min.iters.check186, label %.lr.ph.i65.preheader206, label %vector.memcheck187

vector.memcheck187:                               ; preds = %.lr.ph.i65.preheader
  %i.cj = and i64 %i.cg, -8
  %i.ck = add i64 %i.cj, 8                        ; 2 uses
  %i.cl = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.ck
  %i.cm = getelementptr i8, ptr %5, i64 %i.ck
  %bound0188 = icmp ult ptr %.0.lcssa.i62, %i.cm
  %bound1189 = icmp ult ptr %5, %i.cl
  %found.conflict190 = and i1 %bound0188, %bound1189
  br i1 %found.conflict190, label %.lr.ph.i65.preheader206, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck187
  %n.vec192 = and i64 %i.ci, 4611686018427387902  ; 3 uses
  %i.cn = shl i64 %n.vec192, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cn
  %i.cp = getelementptr i8, ptr %5, i64 %i.cn
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next201, %vector.body193 ] ; 2 uses
  %i.cq = shl i64 %index194, 3                    ; 2 uses
  %next.gep195 = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cq
  %next.gep196 = getelementptr i8, ptr %5, i64 %i.cq ; 2 uses
  %wide.vec197 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !254, !alias.scope !4637
  store <4 x i32> %wide.vec197, ptr %next.gep195, align 4, !tbaa !254, !alias.scope !4638, !noalias !4637
  store <4 x i32> zeroinitializer, ptr %next.gep196, align 4, !tbaa !254, !alias.scope !4637
  %index.next201 = add nuw i64 %index194, 2       ; 2 uses
  %i.cr = icmp eq i64 %index.next201, %n.vec192
  br i1 %i.cr, label %middle.block202, label %vector.body193, !llvm.loop !4627

middle.block202:                                  ; preds = %vector.body193
  %cmp.n203 = icmp eq i64 %i.ci, %n.vec192
  br i1 %cmp.n203, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65.preheader206

.lr.ph.i65.preheader206:                          ; preds = %vector.memcheck187, %.lr.ph.i65.preheader, %middle.block202
  %.010.i66.ph = phi ptr [ %.0.lcssa.i62, %vector.memcheck187 ], [ %.0.lcssa.i62, %.lr.ph.i65.preheader ], [ %i.co, %middle.block202 ]
  %.079.i67.ph = phi ptr [ %5, %vector.memcheck187 ], [ %5, %.lr.ph.i65.preheader ], [ %i.cp, %middle.block202 ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader206, %.lr.ph.i65
  %.010.i66 = phi ptr [ %i.cx, %.lr.ph.i65 ], [ %.010.i66.ph, %.lr.ph.i65.preheader206 ] ; 3 uses
  %.079.i67 = phi ptr [ %i.cw, %.lr.ph.i65 ], [ %.079.i67.ph, %.lr.ph.i65.preheader206 ] ; 4 uses
  %i.cs = load i32, ptr %.079.i67, align 4, !tbaa !254
  store i32 %i.cs, ptr %.010.i66, align 4, !tbaa !254
  store i32 0, ptr %.079.i67, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.079.i67, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i66, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.079.i67, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i66, i64 8
  %.not.i68 = icmp eq ptr %i.cw, %.0.lcssa.i55
  br i1 %.not.i68, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65, !llvm.loop !4628

bb.g:                                             ; preds = %bb.d
  %i.cy = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49: ; preds = %.lr.ph.i44, %.lr.ph.i65, %middle.block123, %middle.block202, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %bb.e, %bb.b, %bb.g
  %.0 = phi ptr [ %2, %bb.e ], [ %i.cy, %bb.g ], [ %.0.lcssa.i62, %middle.block202 ], [ %0, %bb.b ], [ %0, %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ], [ %.0.lcssa.i62, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63 ], [ %.0.lcssa.i62, %.lr.ph.i65 ], [ %i.aj, %middle.block123 ], [ %i.as, %.lr.ph.i44 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_10range_xbufIS7_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %.not78 = icmp slt i32 %i.b, %i.c
  br i1 %.not78, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 11 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !355    ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %5 = ptrtoaddr ptr %.114.i to i64               ; 3 uses
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %5                         ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader203, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %.114.i, i64 %i.v
  %bound0 = icmp ult ptr %i.o, %i.x
  %bound1 = icmp ult ptr %.114.i, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387902      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab
  %next.gep133 = getelementptr i8, ptr %.114.i, i64 %i.ab ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !254, !alias.scope !4655
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4656, !noalias !4655
  store <4 x i32> zeroinitializer, ptr %next.gep133, align 4, !tbaa !254, !alias.scope !4655
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !4642

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.z, i64 -8
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i.preheader203

.lr.ph.i.i.i.preheader203:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader203, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader203 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader203 ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.ad, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !4643

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa128 = phi ptr [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa206 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa128, ptr %i.aj, align 8, !tbaa !356
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.027.i = phi ptr [ %i.o, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01626.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %i.cw, %bb.h ] ; 9 uses
  %.01725.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.118.i, %bb.h ] ; 6 uses
  %i.ak = icmp eq ptr %.01725.i, %2
  br i1 %i.ak, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.027.i137.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.al = add i64 %i.d, -8
  %i.am = sub i64 %i.al, %5
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, %i.p
  %i.ap = sub i64 %i.ao, %.027.i137.le            ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.ap, 120
  br i1 %min.iters.check145, label %.lr.ph.i.i.i42.preheader196, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.as = shl i64 %indvar, 3
  %i.at = getelementptr i8, ptr %.114.i, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.at, i64 8
  %i.au = add i64 %i.d, -8
  %i.av = sub i64 %i.au, %5
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, %i.p
  %i.ay = sub i64 %i.ax, %.027.i137.le
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %scevgep138 = getelementptr i8, ptr %scevgep, i64 %i.az
  %scevgep139 = getelementptr i8, ptr %.027.i, i64 8
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.az
  %bound0141 = icmp ult ptr %.01626.i, %scevgep140
  %bound1142 = icmp ult ptr %.027.i, %scevgep138
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph.i.i.i42.preheader196, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck136
  %n.vec147 = and i64 %i.ar, 4611686018427387902  ; 3 uses
  %i.ba = shl i64 %n.vec147, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %.01626.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.027.i, i64 %i.ba
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body148 ] ; 2 uses
  %i.bd = shl i64 %index149, 3                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %.01626.i, i64 %i.bd
  %next.gep151 = getelementptr i8, ptr %.027.i, i64 %i.bd ; 2 uses
  %wide.vec152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !254, !alias.scope !4657
  store <4 x i32> %wide.vec152, ptr %next.gep150, align 4, !tbaa !254, !alias.scope !4658, !noalias !4657
  store <4 x i32> zeroinitializer, ptr %next.gep151, align 4, !tbaa !254, !alias.scope !4657
  %index.next156 = add nuw i64 %index149, 2       ; 2 uses
  %i.be = icmp eq i64 %index.next156, %n.vec147
  br i1 %i.be, label %middle.block157, label %vector.body148, !llvm.loop !4647

middle.block157:                                  ; preds = %vector.body148
  %cmp.n158 = icmp eq i64 %i.ar, %n.vec147
  br i1 %cmp.n158, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42.preheader196

.lr.ph.i.i.i42.preheader196:                      ; preds = %vector.memcheck136, %.lr.ph.i.i.i42.preheader, %middle.block157
  %.010.i.i.i43.ph = phi ptr [ %.01626.i, %vector.memcheck136 ], [ %.01626.i, %.lr.ph.i.i.i42.preheader ], [ %i.bb, %middle.block157 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.027.i, %vector.memcheck136 ], [ %.027.i, %.lr.ph.i.i.i42.preheader ], [ %i.bc, %middle.block157 ] ; 3 uses
  %.079.i.i.i44.ph207 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bf = sub i64 %.010.i.i.i.lcssa206, %.079.i.i.i44.ph207 ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader196, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader196 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader196 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader196 ]
  %i.bi = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  store i32 %i.bi, ptr %.010.i.i.i43.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !254
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !254
  store i32 0, ptr %i.bj, align 4, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !4648

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader196
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader196 ], [ %i.bn, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader196 ], [ %i.bm, %.lr.ph.i.i.i42.prol ]
  %i.bo = icmp ult i64 %i.bf, 24
  br i1 %i.bo, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.cm, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cl, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.bp = load i32, ptr %.079.i.i.i44, align 4, !tbaa !254
  store i32 %i.bp, ptr %.010.i.i.i43, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !254
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !254
  store i32 0, ptr %i.bq, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !254
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !254
  store i32 0, ptr %i.bt, align 4, !tbaa !254
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !254
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !254
  store i32 0, ptr %i.bw, align 4, !tbaa !254
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !254
  store i32 0, ptr %i.bz, align 4, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !254
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !254
  store i32 0, ptr %i.cc, align 4, !tbaa !254
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !254
  store i32 0, ptr %i.cf, align 4, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !254
  store i32 0, ptr %i.ci, align 4, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.cf, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !4649

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cn = load i32, ptr %.027.i, align 4, !tbaa !254 ; 2 uses
  %i.co = load i32, ptr %.01725.i, align 4, !tbaa !254 ; 2 uses
  %.not20.i = icmp slt i32 %i.cn, %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4 ; 2 uses
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.co, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.01725.i, align 4, !tbaa !254
  %i.cq = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !254
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.cq, align 4, !tbaa !254
  %i.cs = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.cn, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.027.i, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.027.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.118.i = phi ptr [ %i.cs, %bb.f ], [ %.01725.i, %bb.g ]
  %.1.i40 = phi ptr [ %.027.i, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !43

.lr.ph.i47:                                       ; preds = %bb.c
  %i.cx = ashr exact i64 %i.h, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.018.i48 = phi i64 [ %i.cx, %.lr.ph.i47 ], [ %.1.i53, %bb.i ] ; 2 uses
  %.01317.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i52, %bb.i ] ; 2 uses
  %i.cy = lshr i64 %.018.i48, 1                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.01317.i49, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !254
  %.not15.i50 = icmp slt i32 %i.b, %i.da          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.neg.i51 = xor i64 %i.cy, -1
  %i.dc = add i64 %.018.i48, %.neg.i51
  %.114.i52 = select i1 %.not15.i50, ptr %.01317.i49, ptr %i.db ; 5 uses
  %.1.i53 = select i1 %.not15.i50, i64 %i.cy, i64 %i.dc ; 2 uses
  %.not.i54 = icmp eq i64 %.1.i53, 0
  br i1 %.not.i54, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.i, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.i
  %i.dd = load ptr, ptr %4, align 8, !tbaa !355   ; 9 uses
  %.not8.i.i.i56 = icmp eq ptr %.114.i52, %1
  br i1 %.not8.i.i.i56, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i57.preheader

.lr.ph.i.i.i57.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %6 = ptrtoaddr ptr %.114.i52 to i64
  %i.de = add i64 %6, -8
  %i.df = sub i64 %i.de, %i.d                     ; 3 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.df, 72
  br i1 %min.iters.check171, label %.lr.ph.i.i.i57.preheader194, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i.i.i57.preheader
  %i.di = and i64 %i.df, -8
  %i.dj = add i64 %i.di, 8                        ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dd, i64 %i.dj
  %i.dl = getelementptr i8, ptr %1, i64 %i.dj
  %bound0173 = icmp ult ptr %i.dd, %i.dl
  %bound1174 = icmp ult ptr %1, %i.dk
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i57.preheader194, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck172
  %n.vec177 = and i64 %i.dh, 4611686018427387902  ; 3 uses
  %i.dm = shl i64 %n.vec177, 3                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dd, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 %i.dm
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 2 uses
  %i.dp = shl i64 %index179, 3                    ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.dd, i64 %i.dp
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.dp ; 2 uses
  %wide.vec182 = load <4 x i32>, ptr %next.gep181, align 4, !tbaa !254, !alias.scope !4659
  store <4 x i32> %wide.vec182, ptr %next.gep180, align 4, !tbaa !254, !alias.scope !4660, !noalias !4659
  store <4 x i32> zeroinitializer, ptr %next.gep181, align 4, !tbaa !254, !alias.scope !4659
  %index.next186 = add nuw i64 %index179, 2       ; 2 uses
  %i.dq = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.dq, label %middle.block187, label %vector.body178, !llvm.loop !4653

middle.block187:                                  ; preds = %vector.body178
  %cmp.n188 = icmp eq i64 %i.dh, %n.vec177
  br i1 %cmp.n188, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62, label %.lr.ph.i.i.i57.preheader194

.lr.ph.i.i.i57.preheader194:                      ; preds = %vector.memcheck172, %.lr.ph.i.i.i57.preheader, %middle.block187
  %.010.i.i.i58.ph = phi ptr [ %i.dd, %vector.memcheck172 ], [ %i.dd, %.lr.ph.i.i.i57.preheader ], [ %i.dn, %middle.block187 ]
  %.079.i.i.i59.ph = phi ptr [ %1, %vector.memcheck172 ], [ %1, %.lr.ph.i.i.i57.preheader ], [ %i.do, %middle.block187 ]
  br label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i57.preheader194, %.lr.ph.i.i.i57
  %.010.i.i.i58 = phi ptr [ %i.dw, %.lr.ph.i.i.i57 ], [ %.010.i.i.i58.ph, %.lr.ph.i.i.i57.preheader194 ] ; 3 uses
  %.079.i.i.i59 = phi ptr [ %i.dv, %.lr.ph.i.i.i57 ], [ %.079.i.i.i59.ph, %.lr.ph.i.i.i57.preheader194 ] ; 4 uses
  %i.dr = load i32, ptr %.079.i.i.i59, align 4, !tbaa !254
  store i32 %i.dr, ptr %.010.i.i.i58, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i59, align 4, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i.i59, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i58, i64 4
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !254
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !254
  store i32 0, ptr %i.ds, align 4, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i.i59, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.dv, %.114.i52
  br i1 %.not.i.i.i60, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62, label %.lr.ph.i.i.i57, !llvm.loop !4654

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62: ; preds = %.lr.ph.i.i.i57, %middle.block187
  %.lcssa = phi ptr [ %i.dn, %middle.block187 ], [ %i.dw, %.lr.ph.i.i.i57 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa, ptr %i.dx, align 8, !tbaa !356
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62, %bb.m
  %.031.i = phi ptr [ %.1.i65, %bb.m ], [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62 ] ; 4 uses
  %.01930.i = phi ptr [ %.120.i, %bb.m ], [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62 ] ; 4 uses
  %.02129.i = phi ptr [ %i.ej, %bb.m ], [ %.114.i52, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit62 ] ; 3 uses
  %i.dy = icmp eq ptr %0, %.031.i
  br i1 %i.dy, label %.lr.ph.i.i.i67, label %bb.j

.lr.ph.i.i.i67:                                   ; preds = %.lr.ph.i63, %.lr.ph.i.i.i67
  %.010.i.i.i68 = phi ptr [ %i.ea, %.lr.ph.i.i.i67 ], [ %.02129.i, %.lr.ph.i63 ] ; 2 uses
  %.079.i.i.i69 = phi ptr [ %i.dz, %.lr.ph.i.i.i67 ], [ %.01930.i, %.lr.ph.i63 ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.079.i.i.i69, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.010.i.i.i68, i64 -8 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !254
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !254
  store i32 0, ptr %i.dz, align 4, !tbaa !254
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i.i69, i64 -4 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i.i68, i64 -4
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !254
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !254
  store i32 0, ptr %i.ec, align 4, !tbaa !254
  %.not.i.i.i70 = icmp eq ptr %i.dd, %i.dz
  br i1 %.not.i.i.i70, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i67, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph.i63
  %i.ef = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !254 ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !254 ; 2 uses
  %.not24.i64 = icmp slt i32 %i.eh, %i.ei
  %i.ej = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.02129.i, i64 -4
  br i1 %.not24.i64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !254
  store i32 0, ptr %i.eg, align 4, !tbaa !254
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !254
  store i32 0, ptr %i.ef, align 4, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.01930.sink.i = phi ptr [ %.01930.i, %bb.l ], [ %.031.i, %bb.k ]
  %.120.i = phi ptr [ %i.ef, %bb.l ], [ %.01930.i, %bb.k ] ; 2 uses
  %.1.i65 = phi ptr [ %.031.i, %bb.l ], [ %i.eg, %bb.k ]
  %i.el = getelementptr inbounds i8, ptr %.01930.sink.i, i64 -4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !254
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !254
  store i32 0, ptr %i.el, align 4, !tbaa !254
  %.not.i66 = icmp eq ptr %i.dd, %.120.i
  br i1 %.not.i66, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i63, !llvm.loop !90

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.sink = phi ptr [ %i.o, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.dd, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sink, ptr %i.en, align 8, !tbaa !356
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.m, %.lr.ph.i.i.i67, %middle.block157, %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef align 8 dead_on_return %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %7 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond94 = and i1 %i.a, %i.b
  br i1 %or.cond94, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.067101 = phi ptr [ %.1, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %.068100 = phi i64 [ %.169, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.07099 = phi i64 [ %.171, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07297 = phi ptr [ %.173, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07495 = phi ptr [ %.175, %bb.n ], [ %1, %bb.a ] ; 13 uses
  %i.c = or i64 %.068100, %.07099
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.067101, align 4, !tbaa !254 ; 2 uses
  %i.f = load i32, ptr %.07495, align 4, !tbaa !254
  %.not = icmp slt i32 %i.e, %i.f
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.067101, align 4, !tbaa !254
  %i.g = load i32, ptr %.07495, align 4, !tbaa !254
  store i32 %i.g, ptr %.067101, align 4, !tbaa !254
  store i32 %i.e, ptr %.07495, align 4, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %.067101, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07495, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !254
  store i32 0, ptr %i.h, align 4, !tbaa !254
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.h, align 4, !tbaa !254
  store i32 %i.j, ptr %i.i, align 4, !tbaa !254
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.l = add i64 %.068100, %.07099                ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %5, align 8, !tbaa !349, !nonnull !333
  store ptr %i.n, ptr %6, align 8, !tbaa !342
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_T0_(ptr noundef %.067101, ptr noundef %.07495, ptr noundef %.07297, ptr noundef nonnull align 8 dead_on_return %6)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.07099, %.068100
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.07099, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.067101, i64 %i.p ; 2 uses
  %.not16.i = icmp eq ptr %.07297, %.07495
  %.pre = ptrtoint ptr %.07495 to i64             ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07297 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 3
  %i.u = load i32, ptr %i.q, align 4, !tbaa !254
  br label %bb.h

end_hunk_10
begin_hunk_11_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_:bb.a
bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.at, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 14 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.au, %tailrecurse ] ; 12 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !356
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !357
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !254
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !254 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !254
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !254
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !254
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.p, ptr %i.m, align 4, !tbaa !254
  store i32 %i.o, ptr %i.n, align 4, !tbaa !254
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !254
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !254
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !50

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
  %i.ai = sub i64 %i.ah, %.pre110
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.aj, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.al = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !254
  %i.ao = icmp slt i32 %i.ak, %i.an               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.neg.i82 = xor i64 %i.al, -1
  %i.aq = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ao, ptr %.01316.i81, ptr %i.ap ; 3 uses
  %.1.i84 = select i1 %i.ao, i64 %i.al, i64 %i.aq ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre114 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi115 = phi i64 [ %.pre114, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre110, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr100, %bb.k ]
  %i.ar = sub i64 %.pre-phi115, %.pre110
  %i.as = ashr exact i64 %i.ar, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.as, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ae, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.t, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.at = sub i64 %.tr89102, %.070                ; 3 uses
  %i.au = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %.0, ptr noundef %.tr87101, ptr noundef %.071, i64 noundef %i.at, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %.tr100, ptr noundef %.0, ptr noundef %i.au, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.av = sub i64 %.tr90103, %.069                ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = icmp ne i64 %i.at, 0
  %or.cond = and i1 %i.ax, %i.aw
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 11 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !355    ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %4 = ptrtoaddr ptr %.114.i to i64               ; 3 uses
  %i.s = add i64 %i.e, -8
  %i.t = sub i64 %i.s, %4                         ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %.114.i, i64 %i.x
  %bound0 = icmp ult ptr %i.q, %i.z
  %bound1 = icmp ult ptr %.114.i, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387902      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 3 uses
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad
  %next.gep127 = getelementptr i8, ptr %.114.i, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep127, align 4, !tbaa !254, !alias.scope !4678
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4679, !noalias !4678
  store <4 x i32> zeroinitializer, ptr %next.gep127, align 4, !tbaa !254, !alias.scope !4678
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4665

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ab, i64 -8
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i.preheader197

.lr.ph.i.i.i.preheader197:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader197, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.af, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !4666

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa122 = phi ptr [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa200 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa122, ptr %i.al, align 8, !tbaa !356
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.026.i = phi ptr [ %i.q, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01625.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.117.i, %bb.h ] ; 6 uses
  %.01824.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %i.cz, %bb.h ] ; 9 uses
  %i.am = icmp eq ptr %.01625.i, %2
  br i1 %i.am, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.026.i131.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.an = add i64 %i.e, -8
  %i.ao = sub i64 %i.an, %4
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, %i.r
  %i.ar = sub i64 %i.aq, %.026.i131.le            ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ar, 120
  br i1 %min.iters.check139, label %.lr.ph.i.i.i42.preheader190, label %vector.memcheck130

vector.memcheck130:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.au = shl i64 %indvar, 3
  %i.av = getelementptr i8, ptr %.114.i, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.av, i64 8
  %i.aw = add i64 %i.e, -8
  %i.ax = sub i64 %i.aw, %4
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, %i.r
  %i.ba = sub i64 %i.az, %.026.i131.le
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %scevgep132 = getelementptr i8, ptr %scevgep, i64 %i.bb
  %scevgep133 = getelementptr i8, ptr %.026.i, i64 8
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.bb
  %bound0135 = icmp ult ptr %.01824.i, %scevgep134
  %bound1136 = icmp ult ptr %.026.i, %scevgep132
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %.lr.ph.i.i.i42.preheader190, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck130
  %n.vec141 = and i64 %i.at, 4611686018427387902  ; 3 uses
  %i.bc = shl i64 %n.vec141, 3                    ; 2 uses
  %i.bd = getelementptr i8, ptr %.01824.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %.026.i, i64 %i.bc
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next150, %vector.body142 ] ; 2 uses
  %i.bf = shl i64 %index143, 3                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.01824.i, i64 %i.bf
  %next.gep145 = getelementptr i8, ptr %.026.i, i64 %i.bf ; 2 uses
  %wide.vec146 = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !254, !alias.scope !4680
  store <4 x i32> %wide.vec146, ptr %next.gep144, align 4, !tbaa !254, !alias.scope !4681, !noalias !4680
  store <4 x i32> zeroinitializer, ptr %next.gep145, align 4, !tbaa !254, !alias.scope !4680
  %index.next150 = add nuw i64 %index143, 2       ; 2 uses
  %i.bg = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.bg, label %middle.block151, label %vector.body142, !llvm.loop !4670

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.at, %n.vec141
  br i1 %cmp.n152, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42.preheader190

.lr.ph.i.i.i42.preheader190:                      ; preds = %vector.memcheck130, %.lr.ph.i.i.i42.preheader, %middle.block151
  %.010.i.i.i43.ph = phi ptr [ %.01824.i, %vector.memcheck130 ], [ %.01824.i, %.lr.ph.i.i.i42.preheader ], [ %i.bd, %middle.block151 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.026.i, %vector.memcheck130 ], [ %.026.i, %.lr.ph.i.i.i42.preheader ], [ %i.be, %middle.block151 ] ; 3 uses
  %.079.i.i.i44.ph201 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bh = sub i64 %.010.i.i.i.lcssa200, %.079.i.i.i44.ph201 ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader190, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader190 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader190 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader190 ]
  %i.bk = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  store i32 %i.bk, ptr %.010.i.i.i43.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !254
  store i32 0, ptr %i.bl, align 4, !tbaa !254
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !4671

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader190
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader190 ], [ %i.bp, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader190 ], [ %i.bo, %.lr.ph.i.i.i42.prol ]
  %i.bq = icmp ult i64 %i.bh, 24
  br i1 %i.bq, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.co, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cn, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.br = load i32, ptr %.079.i.i.i44, align 4, !tbaa !254
  store i32 %i.br, ptr %.010.i.i.i43, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !254
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !254
  store i32 0, ptr %i.bs, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  store i32 0, ptr %i.bv, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !254
  store i32 0, ptr %i.cb, align 4, !tbaa !254
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !254
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !254
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !254
  store i32 0, ptr %i.ch, align 4, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !254
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.ck, align 4, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.ch, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !4672

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cp = load i32, ptr %.01625.i, align 4, !tbaa !254 ; 2 uses
  %i.cq = load i32, ptr %.026.i, align 4, !tbaa !254 ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.cp, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.cq, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.cw, align 4, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i = phi ptr [ %i.cv, %bb.f ], [ %.01625.i, %bb.g ]
  %.1.i40 = phi ptr [ %.026.i, %bb.f ], [ %i.cy, %bb.g ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa122
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !49

.lr.ph.i47:                                       ; preds = %bb.c
  %i.da = ashr exact i64 %i.i, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.017.i48 = phi i64 [ %i.da, %.lr.ph.i47 ], [ %.1.i52, %bb.i ] ; 2 uses
  %.01316.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i51, %bb.i ] ; 2 uses
  %i.db = lshr i64 %.017.i48, 1                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.01316.i49, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !254
  %i.de = icmp slt i32 %i.dd, %i.c                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.neg.i50 = xor i64 %i.db, -1
  %i.dg = add i64 %.017.i48, %.neg.i50
  %.114.i51 = select i1 %i.de, ptr %i.df, ptr %.01316.i49 ; 5 uses
  %.1.i52 = select i1 %i.de, i64 %i.dg, i64 %i.db ; 2 uses
  %.not.i53 = icmp eq i64 %.1.i52, 0
  br i1 %.not.i53, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.i, !llvm.loop !50

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i
  %i.dh = load ptr, ptr %3, align 8, !tbaa !355   ; 9 uses
  %.not8.i.i.i55 = icmp eq ptr %.114.i51, %1
  br i1 %.not8.i.i.i55, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %5 = ptrtoaddr ptr %.114.i51 to i64
  %i.di = add i64 %5, -8
  %i.dj = sub i64 %i.di, %i.e                     ; 3 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.dj, 72
  br i1 %min.iters.check165, label %.lr.ph.i.i.i56.preheader188, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.i.i56.preheader
  %i.dm = and i64 %i.dj, -8
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  %i.do = getelementptr i8, ptr %i.dh, i64 %i.dn
  %i.dp = getelementptr i8, ptr %1, i64 %i.dn
  %bound0167 = icmp ult ptr %i.dh, %i.dp
  %bound1168 = icmp ult ptr %1, %i.do
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.i.i56.preheader188, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck166
  %n.vec171 = and i64 %i.dl, 4611686018427387902  ; 3 uses
  %i.dq = shl i64 %n.vec171, 3                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dh, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %1, i64 %i.dq
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next180, %vector.body172 ] ; 2 uses
  %i.dt = shl i64 %index173, 3                    ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.dh, i64 %i.dt
  %next.gep175 = getelementptr i8, ptr %1, i64 %i.dt ; 2 uses
  %wide.vec176 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !254, !alias.scope !4682
  store <4 x i32> %wide.vec176, ptr %next.gep174, align 4, !tbaa !254, !alias.scope !4683, !noalias !4682
  store <4 x i32> zeroinitializer, ptr %next.gep175, align 4, !tbaa !254, !alias.scope !4682
  %index.next180 = add nuw i64 %index173, 2       ; 2 uses
  %i.du = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.du, label %middle.block181, label %vector.body172, !llvm.loop !4676

middle.block181:                                  ; preds = %vector.body172
  %cmp.n182 = icmp eq i64 %i.dl, %n.vec171
  br i1 %cmp.n182, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, label %.lr.ph.i.i.i56.preheader188

.lr.ph.i.i.i56.preheader188:                      ; preds = %vector.memcheck166, %.lr.ph.i.i.i56.preheader, %middle.block181
  %.010.i.i.i57.ph = phi ptr [ %i.dh, %vector.memcheck166 ], [ %i.dh, %.lr.ph.i.i.i56.preheader ], [ %i.dr, %middle.block181 ]
  %.079.i.i.i58.ph = phi ptr [ %1, %vector.memcheck166 ], [ %1, %.lr.ph.i.i.i56.preheader ], [ %i.ds, %middle.block181 ]
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56.preheader188, %.lr.ph.i.i.i56
  %.010.i.i.i57 = phi ptr [ %i.ea, %.lr.ph.i.i.i56 ], [ %.010.i.i.i57.ph, %.lr.ph.i.i.i56.preheader188 ] ; 3 uses
  %.079.i.i.i58 = phi ptr [ %i.dz, %.lr.ph.i.i.i56 ], [ %.079.i.i.i58.ph, %.lr.ph.i.i.i56.preheader188 ] ; 4 uses
  %i.dv = load i32, ptr %.079.i.i.i58, align 4, !tbaa !254
  store i32 %i.dv, ptr %.010.i.i.i57, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i58, align 4, !tbaa !254
  %i.dw = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 4
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !254
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !254
  store i32 0, ptr %i.dw, align 4, !tbaa !254
  %i.dz = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dz, %.114.i51
  br i1 %.not.i.i.i59, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, label %.lr.ph.i.i.i56, !llvm.loop !4677

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61: ; preds = %.lr.ph.i.i.i56, %middle.block181
  %.lcssa = phi ptr [ %i.dr, %middle.block181 ], [ %i.ea, %.lr.ph.i.i.i56 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.eb, align 8, !tbaa !356
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, %bb.m
  %.030.i = phi ptr [ %.1.i63, %bb.m ], [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.m ], [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 4 uses
  %.02128.i = phi ptr [ %i.eo, %bb.m ], [ %.114.i51, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 3 uses
  %i.ec = icmp eq ptr %0, %.01929.i
  br i1 %i.ec, label %.lr.ph.i.i.i65, label %bb.j

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i62, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.ee, %.lr.ph.i.i.i65 ], [ %.02128.i, %.lr.ph.i62 ] ; 2 uses
  %.079.i.i.i67 = phi ptr [ %i.ed, %.lr.ph.i.i.i65 ], [ %.030.i, %.lr.ph.i62 ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.079.i.i.i67, i64 -8 ; 4 uses
  %i.ee = getelementptr inbounds i8, ptr %.010.i.i.i66, i64 -8 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !254
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !254
  store i32 0, ptr %i.ed, align 4, !tbaa !254
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i.i67, i64 -4 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i.i66, i64 -4
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !254
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !254
  store i32 0, ptr %i.eg, align 4, !tbaa !254
  %.not.i.i.i68 = icmp eq ptr %i.dh, %i.ed
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i65, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph.i62
  %i.ej = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !254 ; 2 uses
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !254 ; 2 uses
  %i.en = icmp slt i32 %i.el, %i.em
  %i.eo = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.en, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !254
  store i32 0, ptr %i.ek, align 4, !tbaa !254
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !254
  store i32 0, ptr %i.ej, align 4, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.030.sink.i = phi ptr [ %.030.i, %bb.l ], [ %.01929.i, %bb.k ]
  %.120.i = phi ptr [ %.01929.i, %bb.l ], [ %i.ek, %bb.k ]
  %.1.i63 = phi ptr [ %i.ej, %bb.l ], [ %.030.i, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !254
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !254
  store i32 0, ptr %i.eq, align 4, !tbaa !254
  %.not.i64 = icmp eq ptr %i.dh, %.1.i63
  br i1 %.not.i64, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i62, !llvm.loop !91

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.sink = phi ptr [ %i.q, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.dh, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.es, align 8, !tbaa !356
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.m, %.lr.ph.i.i.i65, %middle.block151, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 20 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i174.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !267    ; 6 uses
  %4 = ptrtoaddr ptr %.114.i to i64
  %i.w = add i64 %i.e, -8
  %i.x = sub i64 %i.w, %4                         ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.aa = and i64 %i.x, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.v, %i.ad
  %bound1 = icmp ult ptr %.114.i, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387902      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.ag = getelementptr i8, ptr %.114.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah
  %next.gep145 = getelementptr i8, ptr %.114.i, i64 %i.ah ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !254, !alias.scope !4709
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4710, !noalias !4709
  store <4 x i32> zeroinitializer, ptr %next.gep145, align 4, !tbaa !254, !alias.scope !4709
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !4687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.preheader.i ], [ %i.af, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.aj = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.aj, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !254
  store i32 %i.am, ptr %i.al, align 4, !tbaa !254
  store i32 0, ptr %i.ak, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4688

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1731.i = icmp eq i64 %i.u, %i.s
  br i1 %.not1731.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %i.s to i32
  %i.aq = trunc i64 %i.u to i32
  %i.ar = sub i32 %i.ap, %i.aq
  %i.as = shl i32 %i.ar, 1
  %i.at = add i32 %i.as, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.u, 3                     ; 4 uses
  %i.au = getelementptr i8, ptr %.114.i, i64 %.idx28.i ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.aw = add i64 %.idx28.i, -8                   ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.aw, 40
  br i1 %min.iters.check153, label %.lr.ph.i19.i.preheader266, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i19.i.preheader
  %i.az = getelementptr i8, ptr %i.av, i64 %.idx28.i
  %bound0155 = icmp ult ptr %i.av, %i.au
  %bound1156 = icmp ult ptr %.114.i, %i.az
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.i19.i.preheader266, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck154
  %n.vec159 = and i64 %i.ay, 4611686018427387902  ; 3 uses
  %i.ba = shl i64 %n.vec159, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %.114.i, i64 %i.ba
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body160 ] ; 2 uses
  %i.bd = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.av, i64 %i.bd
  %next.gep163 = getelementptr i8, ptr %.114.i, i64 %i.bd ; 2 uses
  %wide.vec164 = load <4 x i32>, ptr %next.gep163, align 4, !tbaa !254, !alias.scope !4711
  store <4 x i32> %wide.vec164, ptr %next.gep162, align 4, !tbaa !254, !alias.scope !4712, !noalias !4711
  store <4 x i32> zeroinitializer, ptr %next.gep163, align 4, !tbaa !254, !alias.scope !4711
  %index.next168 = add nuw i64 %index161, 2       ; 2 uses
  %i.be = icmp eq i64 %index.next168, %n.vec159
  br i1 %i.be, label %middle.block169, label %vector.body160, !llvm.loop !4692

middle.block169:                                  ; preds = %vector.body160
  %cmp.n170 = icmp eq i64 %i.ay, %n.vec159
  br i1 %cmp.n170, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader266

.lr.ph.i19.i.preheader266:                        ; preds = %vector.memcheck154, %.lr.ph.i19.i.preheader, %middle.block169
  %.010.i20.i.ph = phi ptr [ %i.av, %vector.memcheck154 ], [ %i.av, %.lr.ph.i19.i.preheader ], [ %i.bb, %middle.block169 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck154 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.bc, %middle.block169 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader266, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bk, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader266 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.bj, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader266 ] ; 4 uses
  %i.bf = load i32, ptr %.079.i21.i, align 4, !tbaa !254
  store i32 %i.bf, ptr %.010.i20.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i22.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !4693

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block169, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.av, %bb.f ], [ %i.bb, %middle.block169 ], [ %i.bk, %.lr.ph.i19.i ]
  %.not16.i.i = icmp eq i64 %.idx28.i, %i.r
  br i1 %.not16.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.br, %.lr.ph.i25.i ], [ %i.au, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 4 uses
  %i.bl = load i32, ptr %.01217.i.i, align 4, !tbaa !254
  store i32 %i.bl, ptr %.018.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !254
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !254
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !254
  store i32 0, ptr %i.bo, align 4, !tbaa !254
  %i.bq = add i32 %i.bm, 2
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.br = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.br, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !266
  %i.bt = load ptr, ptr %3, align 8, !tbaa !267   ; 3 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bt, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 12 uses
  %.01625.i = phi ptr [ %.117.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 6 uses
  %.01824.i = phi ptr [ %i.df, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 9 uses
  %i.bw = icmp eq ptr %.01625.i, %2
  br i1 %i.bw, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.026.i175.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.bx = add i64 %i.bu, %i.e
  %i.by = add i64 %i.bx, -8
  %i.bz = add i64 %.114.i174.le, %.026.i175.le
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.ca, 120
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.preheader259, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cd = shl i64 %indvar, 3
  %i.ce = getelementptr i8, ptr %.114.i, i64 %i.cd
  %scevgep = getelementptr i8, ptr %i.ce, i64 8
  %i.cf = add i64 %i.bu, %i.e
  %i.cg = add i64 %i.cf, -8
  %i.ch = add i64 %.114.i174.le, %.026.i175.le
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %scevgep177 = getelementptr i8, ptr %.026.i, i64 8
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.cj
  %bound0179 = icmp ult ptr %.01824.i, %scevgep178
  %bound1180 = icmp ult ptr %.026.i, %scevgep176
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.preheader259, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck173
  %n.vec185 = and i64 %i.cc, 4611686018427387902  ; 3 uses
  %i.ck = shl i64 %n.vec185, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.01824.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.026.i, i64 %i.ck
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body186 ] ; 2 uses
  %i.cn = shl i64 %index187, 3                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %.01824.i, i64 %i.cn
  %next.gep189 = getelementptr i8, ptr %.026.i, i64 %i.cn ; 2 uses
  %wide.vec190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !254, !alias.scope !4713
  store <4 x i32> %wide.vec190, ptr %next.gep188, align 4, !tbaa !254, !alias.scope !4714, !noalias !4713
  store <4 x i32> zeroinitializer, ptr %next.gep189, align 4, !tbaa !254, !alias.scope !4713
  %index.next194 = add nuw i64 %index187, 2       ; 2 uses
  %i.co = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.co, label %middle.block195, label %vector.body186, !llvm.loop !4697

middle.block195:                                  ; preds = %vector.body186
  %cmp.n196 = icmp eq i64 %i.cc, %n.vec185
  br i1 %cmp.n196, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader259

.lr.ph.i.i.i.preheader259:                        ; preds = %vector.memcheck173, %.lr.ph.i.i.i.preheader, %middle.block195
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck173 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.cl, %middle.block195 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck173 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.cm, %middle.block195 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader259, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ] ; 4 uses
  %i.cp = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.cp, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.cq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !254
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !254
  store i32 0, ptr %i.cq, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ct, %i.bv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4698

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cv = load i32, ptr %.01625.i, align 4, !tbaa !254 ; 2 uses
  %i.cw = load i32, ptr %.026.i, align 4, !tbaa !254 ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4 ; 2 uses
  br i1 %i.cx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.cv, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !254
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !254
  store i32 0, ptr %i.cz, align 4, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.cw, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.dc = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !254
  store i32 %i.dd, ptr %i.cy, align 4, !tbaa !254
  store i32 0, ptr %i.dc, align 4, !tbaa !254
  %i.de = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i = phi ptr [ %i.db, %bb.h ], [ %.01625.i, %bb.i ]
  %.1.i41 = phi ptr [ %.026.i, %bb.h ], [ %i.de, %bb.i ] ; 2 uses
  %i.df = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bv
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !49

.lr.ph.i44:                                       ; preds = %bb.c
  %i.dg = ashr exact i64 %i.i, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.017.i45 = phi i64 [ %i.dg, %.lr.ph.i44 ], [ %.1.i49, %bb.k ] ; 2 uses
  %.01316.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i48, %bb.k ] ; 2 uses
  %i.dh = lshr i64 %.017.i45, 1                   ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.01316.i46, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !254
  %i.dk = icmp slt i32 %i.dj, %i.c                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.neg.i47 = xor i64 %i.dh, -1
  %i.dm = add i64 %.017.i45, %.neg.i47
  %.114.i48 = select i1 %i.dk, ptr %i.dl, ptr %.01316.i46 ; 8 uses
  %.1.i49 = select i1 %i.dk, i64 %i.dm, i64 %i.dh ; 2 uses
  %.not.i50 = icmp eq i64 %.1.i49, 0
  br i1 %.not.i50, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.k, !llvm.loop !50

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k
  %i.dn = ptrtoint ptr %.114.i48 to i64
  %i.do = sub i64 %i.dn, %i.e                     ; 3 uses
  %i.dp = ashr exact i64 %i.do, 3                 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !266 ; 5 uses
  %.not.i52 = icmp ugt i64 %i.dp, %i.dr
  br i1 %.not.i52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i53 = icmp eq ptr %.114.i48, %1
  br i1 %.not8.i.i53, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.preheader.i54

.lr.ph.i.preheader.i54:                           ; preds = %bb.l
  %i.ds = load ptr, ptr %3, align 8, !tbaa !267   ; 6 uses
  %5 = ptrtoaddr ptr %.114.i48 to i64
  %i.dt = add i64 %5, -8
  %i.du = sub i64 %i.dt, %i.e                     ; 3 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check209 = icmp ult i64 %i.du, 72
  br i1 %min.iters.check209, label %.lr.ph.i.i55.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.i.preheader.i54
  %i.dx = and i64 %i.du, -8
  %i.dy = add i64 %i.dx, 8                        ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ds, i64 %i.dy
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  %bound0211 = icmp ult ptr %i.ds, %i.ea
  %bound1212 = icmp ult ptr %1, %i.dz
  %found.conflict213 = and i1 %bound0211, %bound1212
  br i1 %found.conflict213, label %.lr.ph.i.i55.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck210
  %n.vec215 = and i64 %i.dw, 4611686018427387902  ; 3 uses
  %i.eb = shl i64 %n.vec215, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ds, i64 %i.eb
  %i.ed = getelementptr i8, ptr %1, i64 %i.eb
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body216 ] ; 2 uses
  %i.ee = shl i64 %index217, 3                    ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.ds, i64 %i.ee
  %next.gep219 = getelementptr i8, ptr %1, i64 %i.ee ; 2 uses
  %wide.vec220 = load <4 x i32>, ptr %next.gep219, align 4, !tbaa !254, !alias.scope !4715
  store <4 x i32> %wide.vec220, ptr %next.gep218, align 4, !tbaa !254, !alias.scope !4716, !noalias !4715
  store <4 x i32> zeroinitializer, ptr %next.gep219, align 4, !tbaa !254, !alias.scope !4715
  %index.next224 = add nuw i64 %index217, 2       ; 2 uses
  %i.ef = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.ef, label %middle.block225, label %vector.body216, !llvm.loop !4702

middle.block225:                                  ; preds = %vector.body216
  %cmp.n226 = icmp eq i64 %i.dw, %n.vec215
  br i1 %cmp.n226, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %vector.memcheck210, %.lr.ph.i.preheader.i54, %middle.block225
  %.010.i.i56.ph = phi ptr [ %i.ds, %vector.memcheck210 ], [ %i.ds, %.lr.ph.i.preheader.i54 ], [ %i.ec, %middle.block225 ]
  %.079.i.i57.ph = phi ptr [ %1, %vector.memcheck210 ], [ %1, %.lr.ph.i.preheader.i54 ], [ %i.ed, %middle.block225 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.el, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 3 uses
  %.079.i.i57 = phi ptr [ %i.ek, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader ] ; 4 uses
  %i.eg = load i32, ptr %.079.i.i57, align 4, !tbaa !254
  store i32 %i.eg, ptr %.010.i.i56, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i57, align 4, !tbaa !254
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !254
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !254
  store i32 0, ptr %i.eh, align 4, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 8
  %.not.i.i58 = icmp eq ptr %i.ek, %.114.i48
  br i1 %.not.i.i58, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.i55, !llvm.loop !4703

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59: ; preds = %.lr.ph.i.i55, %middle.block225, %bb.l
  %.not1731.i60 = icmp eq i64 %i.dr, %i.dp
  br i1 %.not1731.i60, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76, label %.lr.ph.preheader.i61

.lr.ph.preheader.i61:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i62 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.em = trunc i64 %i.dp to i32
  %i.en = trunc i64 %i.dr to i32
  %i.eo = sub i32 %i.em, %i.en
  %i.ep = shl i32 %i.eo, 1
  %i.eq = add i32 %i.ep, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i62
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i63 = shl i64 %i.dr, 3                  ; 4 uses
  %i.er = getelementptr i8, ptr %1, i64 %.idx28.i63 ; 3 uses
  %i.es = load ptr, ptr %3, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i64 = icmp eq i64 %i.dr, 0
  br i1 %.not8.i18.i64, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69, label %.lr.ph.i19.i65.preheader

.lr.ph.i19.i65.preheader:                         ; preds = %bb.m
  %i.et = add i64 %.idx28.i63, -8                 ; 2 uses
  %i.eu = lshr exact i64 %i.et, 3
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check235 = icmp ult i64 %i.et, 40
  br i1 %min.iters.check235, label %.lr.ph.i19.i65.preheader258, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph.i19.i65.preheader
  %i.ew = getelementptr i8, ptr %i.es, i64 %.idx28.i63
  %bound0237 = icmp ult ptr %i.es, %i.er
  %bound1238 = icmp ult ptr %1, %i.ew
  %found.conflict239 = and i1 %bound0237, %bound1238
  br i1 %found.conflict239, label %.lr.ph.i19.i65.preheader258, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck236
  %n.vec241 = and i64 %i.ev, 4611686018427387902  ; 3 uses
  %i.ex = shl i64 %n.vec241, 3                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.es, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %1, i64 %i.ex
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next250, %vector.body242 ] ; 2 uses
  %i.fa = shl i64 %index243, 3                    ; 2 uses
  %next.gep244 = getelementptr i8, ptr %i.es, i64 %i.fa
  %next.gep245 = getelementptr i8, ptr %1, i64 %i.fa ; 2 uses
  %wide.vec246 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !254, !alias.scope !4717
  store <4 x i32> %wide.vec246, ptr %next.gep244, align 4, !tbaa !254, !alias.scope !4718, !noalias !4717
  store <4 x i32> zeroinitializer, ptr %next.gep245, align 4, !tbaa !254, !alias.scope !4717
  %index.next250 = add nuw i64 %index243, 2       ; 2 uses
  %i.fb = icmp eq i64 %index.next250, %n.vec241
  br i1 %i.fb, label %middle.block251, label %vector.body242, !llvm.loop !4707

middle.block251:                                  ; preds = %vector.body242
  %cmp.n252 = icmp eq i64 %i.ev, %n.vec241
  br i1 %cmp.n252, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69, label %.lr.ph.i19.i65.preheader258

.lr.ph.i19.i65.preheader258:                      ; preds = %vector.memcheck236, %.lr.ph.i19.i65.preheader, %middle.block251
  %.010.i20.i66.ph = phi ptr [ %i.es, %vector.memcheck236 ], [ %i.es, %.lr.ph.i19.i65.preheader ], [ %i.ey, %middle.block251 ]
  %.079.i21.i67.ph = phi ptr [ %1, %vector.memcheck236 ], [ %1, %.lr.ph.i19.i65.preheader ], [ %i.ez, %middle.block251 ]
  br label %.lr.ph.i19.i65

.lr.ph.i19.i65:                                   ; preds = %.lr.ph.i19.i65.preheader258, %.lr.ph.i19.i65
  %.010.i20.i66 = phi ptr [ %i.fh, %.lr.ph.i19.i65 ], [ %.010.i20.i66.ph, %.lr.ph.i19.i65.preheader258 ] ; 3 uses
  %.079.i21.i67 = phi ptr [ %i.fg, %.lr.ph.i19.i65 ], [ %.079.i21.i67.ph, %.lr.ph.i19.i65.preheader258 ] ; 4 uses
  %i.fc = load i32, ptr %.079.i21.i67, align 4, !tbaa !254
  store i32 %i.fc, ptr %.010.i20.i66, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i67, align 4, !tbaa !254
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i21.i67, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i20.i66, i64 4
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !254
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !254
  store i32 0, ptr %i.fd, align 4, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i21.i67, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i20.i66, i64 8 ; 2 uses
  %.not.i22.i68 = icmp eq ptr %i.fg, %i.er
  br i1 %.not.i22.i68, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69, label %.lr.ph.i19.i65, !llvm.loop !4708

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69: ; preds = %.lr.ph.i19.i65, %middle.block251, %bb.m
  %.0.lcssa.i23.i70 = phi ptr [ %i.es, %bb.m ], [ %i.ey, %middle.block251 ], [ %i.fh, %.lr.ph.i19.i65 ]
  %.not16.i.i71 = icmp eq i64 %.idx28.i63, %i.do
  br i1 %.not16.i.i71, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76, label %.lr.ph.i25.i72

.lr.ph.i25.i72:                                   ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69, %.lr.ph.i25.i72
  %.018.i.i73 = phi ptr [ %i.fp, %.lr.ph.i25.i72 ], [ %.0.lcssa.i23.i70, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69 ] ; 3 uses
  %.01217.i.i74 = phi ptr [ %i.fo, %.lr.ph.i25.i72 ], [ %i.er, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69 ] ; 4 uses
  %i.fi = load i32, ptr %.01217.i.i74, align 4, !tbaa !254
  store i32 %i.fi, ptr %.018.i.i73, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i74, align 4, !tbaa !254
  %i.fj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fk = getelementptr inbounds nuw i8, ptr %.018.i.i73, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.01217.i.i74, i64 4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !254
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !254
  store i32 0, ptr %i.fl, align 4, !tbaa !254
  %i.fn = add i32 %i.fj, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fo = getelementptr inbounds nuw i8, ptr %.01217.i.i74, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.018.i.i73, i64 8
  %.not.i26.i75 = icmp eq ptr %i.fo, %.114.i48
  br i1 %.not.i26.i75, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76, label %.lr.ph.i25.i72, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76: ; preds = %.lr.ph.i25.i72, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, %.lr.ph.preheader.i61, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !266
  %i.fq = load ptr, ptr %3, align 8, !tbaa !267   ; 3 uses
  %.not27.i = icmp eq ptr %.114.i48, %1
  br i1 %.not27.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.do
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77.preheader, %bb.q
  %.030.i = phi ptr [ %.1.i78, %bb.q ], [ %i.fr, %.lr.ph.i77.preheader ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.q ], [ %1, %.lr.ph.i77.preheader ] ; 4 uses
  %.02128.i = phi ptr [ %i.ge, %bb.q ], [ %.114.i48, %.lr.ph.i77.preheader ] ; 3 uses
  %i.fs = icmp eq ptr %0, %.01929.i
  br i1 %i.fs, label %.lr.ph.i.i.i80, label %bb.n

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i77, %.lr.ph.i.i.i80
  %.010.i.i.i81 = phi ptr [ %i.fu, %.lr.ph.i.i.i80 ], [ %.02128.i, %.lr.ph.i77 ] ; 2 uses
  %.079.i.i.i82 = phi ptr [ %i.ft, %.lr.ph.i.i.i80 ], [ %.030.i, %.lr.ph.i77 ] ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.079.i.i.i82, i64 -8 ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %.010.i.i.i81, i64 -8 ; 2 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !254
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !254
  store i32 0, ptr %i.ft, align 4, !tbaa !254
  %i.fw = getelementptr inbounds i8, ptr %.079.i.i.i82, i64 -4 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.010.i.i.i81, i64 -4
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !254
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !254
  store i32 0, ptr %i.fw, align 4, !tbaa !254
  %.not.i.i.i83 = icmp eq ptr %i.fq, %i.ft
  br i1 %.not.i.i.i83, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i80, !llvm.loop !45

bb.n:                                             ; preds = %.lr.ph.i77
  %i.fz = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !254 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader476, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.jm, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader476 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.jl, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader476 ] ; 4 uses
  %i.jh = load i32, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 %i.jh, ptr %.010.i.i153, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !254
  %i.ji = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !254
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !254
  store i32 0, ptr %i.ji, align 4, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.jl, %i.ix
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !4825

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152, %middle.block469, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jn, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.jn, ptr %10, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %4
  store ptr %i.jp, ptr %12, align 8, !tbaa !332, !alias.scope !4848
  store ptr %.0191.lcssa284, ptr %13, align 8, !tbaa !332, !alias.scope !4849
  store ptr %i.h, ptr %14, align 8, !tbaa !345, !alias.scope !4850
  store ptr %7, ptr %15, align 8, !tbaa !345, !alias.scope !4851
  store ptr %i.ix, ptr %16, align 8, !tbaa !345, !alias.scope !4852
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.91") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa283, i64 noundef 0, i64 noundef %.0195.lcssa283, i1 noundef zeroext true)
  %i.jq = load ptr, ptr %11, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.jr = load ptr, ptr %10, align 8, !tbaa !345  ; 2 uses
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %.not27.i = icmp eq ptr %i.js, %i.jr
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.jr, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.kf, %bb.ab ], [ %i.jq, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.jt = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.jt, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 4 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !254
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !254
  store i32 0, ptr %i.ju, align 4, !tbaa !254
  %i.jx = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !254
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !254
  store i32 0, ptr %i.jx, align 4, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ka = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.kb = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !254 ; 2 uses
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !254 ; 2 uses
  %i.ke = icmp slt i32 %i.kc, %i.kd
  %i.kf = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.ke, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.kd, ptr %i.kf, align 4, !tbaa !254
  store i32 0, ptr %i.kb, align 4, !tbaa !254
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.kc, ptr %i.kf, align 4, !tbaa !254
  store i32 0, ptr %i.ka, align 4, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.kb, %bb.z ]
  %.1.i159 = phi ptr [ %i.ka, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !254
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !254
  store i32 0, ptr %i.kh, align 4, !tbaa !254
  %.not.i160 = icmp eq ptr %i.js, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !91

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit: ; preds = %.lr.ph.preheader.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !252  ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS0_12vec_iteratorIPS5_Lb1EEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262    ; 16 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !252  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 11 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.o = trunc i64 %i.n to i32
  %i.p = shl i32 %i.o, 1
  %i.q = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.p
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit
  %i.t = shl nuw i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #28
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !250
  store i64 %i.f, ptr %i.g, align 8, !tbaa !226
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %1, align 8, !tbaa !262    ; 10 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  %.not10.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = ptrtoaddr ptr %i.v to i64
  %i.z = add i64 %i.x, -8
  %i.aa = sub i64 %i.z, %i.y                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.aa, 168
  br i1 %min.iters.check99, label %.lr.ph.i.i.preheader133, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %bound0101 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1102 = icmp ugt ptr %i.af, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict103 = and i1 %bound0101, %bound1102
  %bound0104 = icmp ult ptr %i.k, %i.ag
  %bound1105 = icmp ult ptr %i.v, %i.af
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict103, %found.conflict106
  %bound0107 = icmp ugt ptr %i.ag, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1108 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx, %found.conflict109
  br i1 %conflict.rdx110, label %.lr.ph.i.i.preheader133, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck100
  %n.vec112 = and i64 %i.ac, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec112, 3                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ah   ; 2 uses
  %i.ak = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next128, %vector.body113 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ak, %vector.ph111 ], [ %i.an, %vector.body113 ]
  %vec.phi115 = phi <2 x i32> [ zeroinitializer, %vector.ph111 ], [ %i.ao, %vector.body113 ]
  %i.al = shl i64 %index114, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.v, i64 %i.al
  %next.gep117 = getelementptr i8, ptr %i.v, i64 %i.am
  %next.gep118 = getelementptr i8, ptr %i.k, i64 %i.al
  %next.gep119 = getelementptr i8, ptr %i.k, i64 %i.am
  %wide.vec120 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !254, !alias.scope !4874
  %wide.vec123 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !254, !alias.scope !4874
  store <4 x i32> %wide.vec120, ptr %next.gep118, align 4, !tbaa !254, !alias.scope !4875, !noalias !4876
  store <4 x i32> %wide.vec123, ptr %next.gep119, align 4, !tbaa !254, !alias.scope !4875, !noalias !4876
  %i.an = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ao = add <2 x i32> %vec.phi115, splat (i32 2) ; 2 uses
  %index.next128 = add nuw i64 %index114, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next128, %n.vec112
  br i1 %i.ap, label %middle.block129, label %vector.body113, !llvm.loop !4857

middle.block129:                                  ; preds = %vector.body113
  %bin.rdx = add <2 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !4877, !noalias !4874
  %cmp.n130 = icmp eq i64 %i.ac, %n.vec112
  br i1 %cmp.n130, label %.loopexit, label %.lr.ph.i.i.preheader133

.lr.ph.i.i.preheader133:                          ; preds = %vector.memcheck100, %.lr.ph.i.i.preheader, %middle.block129
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck100 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block129 ]
  %.ph134 = phi ptr [ %i.v, %vector.memcheck100 ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block129 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck100 ], [ %i.k, %.lr.ph.i.i.preheader ], [ %i.aj, %middle.block129 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader133, %.lr.ph.i.i
  %i.ar = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader133 ]
  %i.as = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.ph134, %.lr.ph.i.i.preheader133 ] ; 3 uses
  %.011.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader133 ] ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !254
  store i32 %i.at, ptr %.011.i.i, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !254
  %i.ax = add i32 %i.ar, 2                        ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.w
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !4858

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block129, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS6_m.exit ], [ %i.aj, %middle.block129 ], [ %i.az, %.lr.ph.i.i ]
  %i.ba = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bb = ptrtoint ptr %i.k to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  store i64 %i.bd, ptr %i.u, align 8, !tbaa !251
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %0, align 8, !tbaa !250   ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !259 ; 13 uses
  %i.bh = icmp ult i64 %i.bg, %i.f
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i14 = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i14, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader

.lr.ph.i.i15.preheader:                           ; preds = %bb.h
  %min.iters.check59 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i15.preheader137, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i15.preheader
  %i.bi = shl i64 %i.bg, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.be, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bi
  %bound061 = icmp ult ptr %i.be, %i.bk
  %bound162 = icmp ult ptr %i.a, %i.bj
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i15.preheader137, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck60
  %n.vec65 = and i64 %i.bg, -4                    ; 3 uses
  %i.bl = shl i64 %n.vec65, 3                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 %i.bl   ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bl  ; 2 uses
  %i.bo = and i64 %i.bg, 3
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next80, %vector.body66 ] ; 2 uses
  %i.bp = shl i64 %index67, 3                     ; 3 uses
  %i.bq = or disjoint i64 %i.bp, 16               ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.a, i64 %i.bp
  %next.gep69 = getelementptr i8, ptr %i.a, i64 %i.bq
  %next.gep70 = getelementptr i8, ptr %i.be, i64 %i.bp
  %next.gep71 = getelementptr i8, ptr %i.be, i64 %i.bq
  %wide.vec72 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !254, !alias.scope !4878, !noalias !4879
  %wide.vec75 = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !254, !alias.scope !4878, !noalias !4879
  store <4 x i32> %wide.vec72, ptr %next.gep70, align 4, !tbaa !254, !alias.scope !4880, !noalias !4879
  store <4 x i32> %wide.vec75, ptr %next.gep71, align 4, !tbaa !254, !alias.scope !4880, !noalias !4879
  %index.next80 = add nuw i64 %index67, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next80, %n.vec65
  br i1 %i.br, label %middle.block81, label %vector.body66, !llvm.loop !4864

middle.block81:                                   ; preds = %vector.body66
  %cmp.n82 = icmp eq i64 %i.bg, %n.vec65
  br i1 %cmp.n82, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader137

.lr.ph.i.i15.preheader137:                        ; preds = %vector.memcheck60, %.lr.ph.i.i15.preheader, %middle.block81
  %.sroa.019.0.i.ph = phi ptr [ %i.a, %vector.memcheck60 ], [ %i.a, %.lr.ph.i.i15.preheader ], [ %i.bm, %middle.block81 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.be, %vector.memcheck60 ], [ %i.be, %.lr.ph.i.i15.preheader ], [ %i.bn, %middle.block81 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bg, %vector.memcheck60 ], [ %i.bg, %.lr.ph.i.i15.preheader ], [ %i.bo, %middle.block81 ] ; 4 uses
  %i.bs = add i64 %.04.i.i.ph, -1
  %xtraiter142 = and i64 %.04.i.i.ph, 3           ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol

.lr.ph.i.i15.prol:                                ; preds = %.lr.ph.i.i15.preheader137, %.lr.ph.i.i15.prol
  %.sroa.019.0.i.prol = phi ptr [ %i.by, %.lr.ph.i.i15.prol ], [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader137 ] ; 3 uses
  %.0.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i15.prol ], [ %.0.i.ph, %.lr.ph.i.i15.preheader137 ] ; 3 uses
  %.04.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i15.prol ], [ %.04.i.i.ph, %.lr.ph.i.i15.preheader137 ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i15.prol ], [ 0, %.lr.ph.i.i15.preheader137 ]
  %i.bt = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.bu = load i32, ptr %.sroa.019.0.i.prol, align 4, !tbaa !254, !noalias !4879
  store i32 %i.bu, ptr %.0.i.prol, align 4, !tbaa !254, !noalias !4879
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254, !noalias !4879
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254, !noalias !4879
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 8 ; 3 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol, !llvm.loop !4865

.lr.ph.i.i15.prol.loopexit:                       ; preds = %.lr.ph.i.i15.prol, %.lr.ph.i.i15.preheader137
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader137 ], [ %i.by, %.lr.ph.i.i15.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader137 ], [ %i.bz, %.lr.ph.i.i15.prol ]
  %.sroa.019.0.i.unr = phi ptr [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader137 ], [ %i.by, %.lr.ph.i.i15.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i15.preheader137 ], [ %i.bz, %.lr.ph.i.i15.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i15.preheader137 ], [ %i.bt, %.lr.ph.i.i15.prol ]
  %i.ca = icmp ult i64 %i.bs, 3
  br i1 %i.ca, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES5_ELb1EEES7_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %.sroa.019.0.i = phi ptr [ %i.cy, %.lr.ph.i.i15 ], [ %.sroa.019.0.i.unr, %.lr.ph.i.i15.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.cz, %.lr.ph.i.i15 ], [ %.0.i.unr, %.lr.ph.i.i15.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.ct, %.lr.ph.i.i15 ], [ %.04.i.i.unr, %.lr.ph.i.i15.prol.loopexit ]
  %i.cb = load i32, ptr %.sroa.019.0.i, align 4, !tbaa !254, !noalias !4879
  store i32 %i.cb, ptr %.0.i, align 4, !tbaa !254, !noalias !4879
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !254, !noalias !4879
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !254, !noalias !4879
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !254, !noalias !4879
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !254, !noalias !4879
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !254, !noalias !4879
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !254, !noalias !4879
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
end_hunk_12
begin_hunk_13_@_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !254
  store i32 0, ptr %i.cb, align 4, !tbaa !254
  %i.cd = add i32 %i.by, 2
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ce = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.cg = add i64 %.020.i.i.i.i.i, -2             ; 2 uses
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !254
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 12 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !254
  store i32 0, ptr %i.cj, align 4, !tbaa !254
  %i.cl = add i32 %i.by, 4                        ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.i15.i.i.i.i.1, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i14.i.i.i.i, !llvm.loop !16667

bb.f:                                             ; preds = %bb.d
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.preheader:                     ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.preheader
  %i.co = shl i64 %i.s, 3                         ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.co
  %i.cq = getelementptr i8, ptr %1, i64 %i.co
  %bound0 = icmp ult ptr %0, %i.cq
  %bound1 = icmp ult ptr %1, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -2                       ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = and i64 %i.s, 1
  %i.cu = getelementptr i8, ptr %1, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cv
  %next.gep17 = getelementptr i8, ptr %1, i64 %i.cv ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 8, !tbaa !254, !alias.scope !16679
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !254, !alias.scope !16680, !noalias !16679
  store <4 x i32> zeroinitializer, ptr %next.gep17, align 8, !tbaa !254, !alias.scope !16679
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !16671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i.preheader103

.lr.ph.i17.i.i.i.i.preheader103:                  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.cs, %middle.block ] ; 4 uses
  %.0610.i.i.i.i.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.ct, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.cu, %middle.block ] ; 5 uses
  %xtraiter = and i64 %.0610.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.prol:                          ; preds = %.lr.ph.i17.i.i.i.i.preheader103
  %i.cx = add nsw i64 %.0610.i.i.i.i.i.ph, -1
  %i.cy = load i32, ptr %.079.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.cy, ptr %.011.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.ph, i64 4
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !254
  store i32 %i.db, ptr %i.da, align 4, !tbaa !254
  store i32 0, ptr %i.cz, align 4, !tbaa !254
  %i.dc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.ph, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i17.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i17.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.preheader103
  %.011.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.dd, %.lr.ph.i17.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.cx, %.lr.ph.i17.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.dc, %.lr.ph.i17.i.i.i.i.prol ]
  %i.de = icmp eq i64 %.0610.i.i.i.i.i.ph, 1
  br i1 %i.de, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.lr.ph.i17.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i17.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i17.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i17.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.df = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.df, ptr %.011.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i, align 4, !tbaa !254
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !254
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !254
  store i32 0, ptr %i.dg, align 4, !tbaa !254
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.dl = add i64 %.0610.i.i.i.i.i, -2            ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !254
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !254
  store i32 0, ptr %i.dj, align 4, !tbaa !254
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !254
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !254
  store i32 0, ptr %i.dn, align 4, !tbaa !254
  %i.dq = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i18.i.i.i.i.1 = icmp eq i64 %i.dl, 0
  br i1 %.not.i18.i.i.i.i.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i, !llvm.loop !16672

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i, %middle.block, %bb.f
  %.not3.i.i.i.i.i = icmp eq i64 %i.r, %i.s
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i
  %.neg.i.i.i.i = sub i64 %i.s, %i.r
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i4 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg21.i.i.i.i = trunc i64 %.neg.i.i.i.i to i32
  %.neg22.i.i.i.i = shl i32 %.neg21.i.i.i.i, 1
  %i.ds = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i4, %.neg22.i.i.i.i
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i, %middle.block93, %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i
  store i64 %i.s, ptr %i.a, align 8, !tbaa !317
  %i.dt = load i64, ptr %i.f, align 8, !tbaa !319 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_move_assignIS8_EEvONS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSE_13enable_if_natEE4typeE.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, 1
  %i.dw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.dv
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_move_assignIS8_EEvONS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSE_13enable_if_natEE4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_move_assignIS8_EEvONS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSE_13enable_if_natEE4typeE.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i
  store i64 0, ptr %i.f, align 8, !tbaa !319
  br label %_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEaSEOS6_.exit

_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEaSEOS6_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_move_assignIS8_EEvONS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSE_13enable_if_natEE4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !323    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 17179869176
  %sh.diff.i.i.i = lshr i64 %i.f, 2
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %tr.sh.diff.i.not.i.i = and i32 %tr.sh.diff.i.i.i, -2
  %i.g = xor i32 %tr.sh.diff.i.not.i.i, -2
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.a
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !324
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.m) #28
  br label %_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE15_M_range_insertIPKS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !322  ; 17 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 5 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.q = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.q, ptr %.013.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !254
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.u, ptr %i.s, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %i.v = add i32 %i.r, 2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !16681

_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.y, ptr %i.g, align 8, !tbaa !322
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = sub i64 %i.z, %i.l                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ad = and i64 %i.aa, 8
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ah = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !254
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !254
  store i32 0, ptr %i.ah, align 4, !tbaa !254
  %i.ak = add nsw i64 %i.ab, -1
  br label %.lr.ph.i.i.i.i.i55.prol.loopexit

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i55.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i55.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i55.prol ]
  %i.al = icmp eq i64 %i.aa, 8
  br i1 %i.al, label %_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i55 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i55 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i55 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !254
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !254
  store i32 0, ptr %i.am, align 4, !tbaa !254
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !254
  store i32 %i.au, ptr %i.at, align 4, !tbaa !254
  store i32 0, ptr %i.as, align 4, !tbaa !254
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -2
  %i.az = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit, !llvm.loop !31

_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ba = icmp sgt i64 %i.d, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit
  %min.iters.check154 = icmp ult i64 %i.d, 6
  br i1 %min.iters.check154, label %.lr.ph.i.i.i.i.i56.preheader220, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %i.bb = getelementptr i8, ptr %1, i64 %i.c
  %bound0156 = icmp ult ptr %1, %3
  %bound1157 = icmp ult ptr %2, %i.bb
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i.i.i.i.i56.preheader220, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.d, 9223372036854775804   ; 3 uses
  %i.bc = and i64 %i.d, 3
  %i.bd = shl i64 %n.vec160, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %2, i64 %i.bd
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next175, %vector.body161 ] ; 2 uses
  %i.bg = shl i64 %index162, 3                    ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.bg
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.bh
  %next.gep165 = getelementptr i8, ptr %2, i64 %i.bg
  %next.gep166 = getelementptr i8, ptr %2, i64 %i.bh
  %wide.vec167 = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !254, !alias.scope !16699
  %wide.vec170 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !254, !alias.scope !16699
  store <4 x i32> %wide.vec167, ptr %next.gep163, align 4, !tbaa !254, !alias.scope !16700, !noalias !16699
  store <4 x i32> %wide.vec170, ptr %next.gep164, align 4, !tbaa !254, !alias.scope !16700, !noalias !16699
  %index.next175 = add nuw i64 %index162, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next175, %n.vec160
  br i1 %i.bi, label %middle.block176, label %vector.body161, !llvm.loop !16685

middle.block176:                                  ; preds = %vector.body161
  %cmp.n177 = icmp eq i64 %i.d, %n.vec160
  br i1 %cmp.n177, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i.i56.preheader220

.lr.ph.i.i.i.i.i56.preheader220:                  ; preds = %vector.memcheck155, %.lr.ph.i.i.i.i.i56.preheader, %middle.block176
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck155 ], [ %i.d, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.bc, %middle.block176 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck155 ], [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.be, %middle.block176 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck155 ], [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.bf, %middle.block176 ]
  br label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader220, %.lr.ph.i.i.i.i.i56
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader220 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i56 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader220 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i56 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader220 ] ; 3 uses
  %i.bj = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bj, ptr %.0811.i.i.i.i.i, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !254
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit, !llvm.loop !16686

_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.br, %3
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.01214.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.br, %_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bs = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bs, ptr %.015.i.i.i.i, align 4, !tbaa !254
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !254
  %i.bx = add i32 %i.bt, 2
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.by, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !16687

_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_ElEvRT_T0_St26random_access_iterator_tag.exit
  %.not11.i.i.i.i.i57 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit63, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit
  %i.ca = sub nuw nsw i64 %i.d, %i.n
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ca
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader, %.lr.ph.i.i.i.i.i58
  %.013.i.i.i.i.i59 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i58 ], [ %i.cb, %.lr.ph.i.i.i.i.i58.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i60 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i58 ], [ %1, %.lr.ph.i.i.i.i.i58.preheader ] ; 4 uses
  %i.cc = load i32, ptr %.sroa.08.012.i.i.i.i.i60, align 4, !tbaa !254
  store i32 %i.cc, ptr %.013.i.i.i.i.i59, align 4, !tbaa !254
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i60, align 4, !tbaa !254
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !254
  store i32 0, ptr %i.cf, align 4, !tbaa !254
  %i.ch = add i32 %i.cd, 2
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 8
  %.not.i.i.i.i.i61 = icmp eq ptr %i.ci, %i.h
  br i1 %.not.i.i.i.i.i61, label %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit63, label %.lr.ph.i.i.i.i.i58, !llvm.loop !16681

_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit63: ; preds = %.lr.ph.i.i.i.i.i58, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !322
  %i.cl = ashr exact i64 %i.m, 3                  ; 7 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i65.preheader, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit63
  %min.iters.check = icmp ult i64 %i.cl, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i65.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i65.preheader
  %i.cn = getelementptr i8, ptr %2, i64 %i.m
  %bound0 = icmp ult ptr %1, %i.cn
  %bound1 = icmp ult ptr %2, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i65.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 9223372036854775804     ; 3 uses
  %i.co = and i64 %i.cl, 3
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr i8, ptr %2, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 3 uses
  %i.ct = or disjoint i64 %i.cs, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.cs
  %next.gep138 = getelementptr i8, ptr %1, i64 %i.ct
  %next.gep139 = getelementptr i8, ptr %2, i64 %i.cs
  %next.gep140 = getelementptr i8, ptr %2, i64 %i.ct
  %wide.vec = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !254, !alias.scope !16701
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !254, !alias.scope !16701
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !16702, !noalias !16701
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !254, !alias.scope !16702, !noalias !16701
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !16691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i.i65.preheader221

.lr.ph.i.i.i.i.i65.preheader221:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i65.preheader, %middle.block
  %.012.i.i.i.i.i66.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.co, %middle.block ]
  %.0811.i.i.i.i.i67.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.cq, %middle.block ]
  %.0910.i.i.i.i.i68.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader221, %.lr.ph.i.i.i.i.i65
  %.012.i.i.i.i.i66 = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i65 ], [ %.012.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader221 ] ; 2 uses
  %.0811.i.i.i.i.i67 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i65 ], [ %.0811.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader221 ] ; 3 uses
  %.0910.i.i.i.i.i68 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i65 ], [ %.0910.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i65.preheader221 ] ; 3 uses
  %i.cv = load i32, ptr %.0910.i.i.i.i.i68, align 4, !tbaa !254
  store i32 %i.cv, ptr %.0811.i.i.i.i.i67, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i68, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i67, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i68, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i67, i64 8
  %i.db = add nsw i64 %.012.i.i.i.i.i66, -1
  %i.dc = icmp samesign ugt i64 %.012.i.i.i.i.i66, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i65, label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit, !llvm.loop !16692

bb.e:                                             ; preds = %bb.b
  %i.dd = load ptr, ptr %0, align 8, !tbaa !323   ; 12 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 4 uses
  %i.df = sub i64 %i.j, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 4 uses
  %i.dh = sub nsw i64 1152921504606846975, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.d
  br i1 %i.di, label %bb.f, label %_ZNKSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.d)
  %i.dj = add nsw i64 %.sroa.speculated.i, %i.dg  ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.dg
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #27
  br label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dp = phi ptr [ %i.do, %bb.g ], [ null, %_ZNKSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.dd, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %4 = ptrtoaddr ptr %1 to i64
  %i.dq = add i64 %4, -8
  %i.dr = sub i64 %i.dq, %i.de                    ; 3 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.dr, 72
  br i1 %min.iters.check186, label %.lr.ph.i.i.i.i.i70.preheader216, label %vector.memcheck187

vector.memcheck187:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %i.du = and i64 %i.dr, -8
  %i.dv = getelementptr i8, ptr %i.dd, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %bound0188 = icmp ugt ptr %i.dw, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1189 = icmp ult ptr %i.dd, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict190 = and i1 %bound0188, %bound1189
  br i1 %found.conflict190, label %.lr.ph.i.i.i.i.i70.preheader216, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck187
  %n.vec192 = and i64 %i.dt, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec192, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dp, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dd, i64 %i.dx
  %i.ea = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next208, %vector.body193 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ea, %vector.ph191 ], [ %i.ed, %vector.body193 ]
  %vec.phi195 = phi <2 x i32> [ zeroinitializer, %vector.ph191 ], [ %i.ee, %vector.body193 ]
  %i.eb = shl i64 %index194, 3                    ; 3 uses
  %i.ec = or disjoint i64 %i.eb, 16               ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.dp, i64 %i.eb
  %next.gep197 = getelementptr i8, ptr %i.dp, i64 %i.ec
  %next.gep198 = getelementptr i8, ptr %i.dd, i64 %i.eb
  %next.gep199 = getelementptr i8, ptr %i.dd, i64 %i.ec
  %wide.vec200 = load <4 x i32>, ptr %next.gep198, align 4, !tbaa !254, !alias.scope !16703
  %wide.vec203 = load <4 x i32>, ptr %next.gep199, align 4, !tbaa !254, !alias.scope !16703
  store <4 x i32> %wide.vec200, ptr %next.gep196, align 4, !tbaa !254, !alias.scope !16704
  store <4 x i32> %wide.vec203, ptr %next.gep197, align 4, !tbaa !254, !alias.scope !16704
  %i.ed = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ee = add <2 x i32> %vec.phi195, splat (i32 2) ; 2 uses
  %index.next208 = add nuw i64 %index194, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next208, %n.vec192
  br i1 %i.ef, label %middle.block209, label %vector.body193, !llvm.loop !16696

middle.block209:                                  ; preds = %vector.body193
  %bin.rdx = add <2 x i32> %i.ee, %i.ed
  %i.eg = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !16705, !noalias !16703
  %cmp.n210 = icmp eq i64 %i.dt, %n.vec192
  br i1 %cmp.n210, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader216

.lr.ph.i.i.i.i.i70.preheader216:                  ; preds = %vector.memcheck187, %.lr.ph.i.i.i.i.i70.preheader, %middle.block209
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck187 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.eg, %middle.block209 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck187 ], [ %i.dp, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dy, %middle.block209 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck187 ], [ %i.dd, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dz, %middle.block209 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader216, %.lr.ph.i.i.i.i.i70
  %i.eh = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i70 ], [ %.ph, %.lr.ph.i.i.i.i.i70.preheader216 ]
  %.015.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i70 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader216 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i70 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader216 ] ; 3 uses
  %i.ei = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.ei, ptr %.015.i.i.i.i.i, align 4, !tbaa !254
  %i.ej = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !254
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !254
  %i.em = add i32 %i.eh, 2                        ; 2 uses
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.en = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %i.en, %1
  br i1 %.not.i.i.i.i.i71, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70, !llvm.loop !16698

.lr.ph.i.i.i.i74.preheader:                       ; preds = %.lr.ph.i.i.i.i.i70, %middle.block209, %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit
  %.015.i.i.i.i75.ph = phi ptr [ %i.dp, %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit ], [ %i.dy, %middle.block209 ], [ %i.eo, %.lr.ph.i.i.i.i.i70 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74
  %.015.i.i.i.i75 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i74 ], [ %.015.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader ] ; 3 uses
  %.01214.i.i.i.i76 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i74 ], [ %2, %.lr.ph.i.i.i.i74.preheader ] ; 3 uses
  %i.ep = load i32, ptr %.01214.i.i.i.i76, align 4, !tbaa !254
  store i32 %i.ep, ptr %.015.i.i.i.i75, align 4, !tbaa !254
  %i.eq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.er = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i75, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i76, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !254
  store i32 %i.et, ptr %i.er, align 4, !tbaa !254
  %i.eu = add i32 %i.eq, 2                        ; 2 uses
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i76, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i75, i64 8 ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.ev, %3
  br i1 %.not.i.i.i.i77, label %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79, label %.lr.ph.i.i.i.i74, !llvm.loop !16687

_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79: ; preds = %.lr.ph.i.i.i.i74
  %.not13.i.i.i.i.i80 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit86, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79, %.lr.ph.i.i.i.i.i81
  %.015.i.i.i.i.i82 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i81 ], [ %i.ew, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79 ] ; 3 uses
  %.01214.i.i.i.i.i83 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i81 ], [ %1, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79 ] ; 3 uses
  %i.ex = load i32, ptr %.01214.i.i.i.i.i83, align 4, !tbaa !254
  store i32 %i.ex, ptr %.015.i.i.i.i.i82, align 4, !tbaa !254
  %i.ey = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ez = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i82, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i83, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !254
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !254
  %i.fc = add i32 %i.ey, 2                        ; 2 uses
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i83, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i82, i64 8 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.fd, %i.h
  br i1 %.not.i.i.i.i.i84, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit86, label %.lr.ph.i.i.i.i.i81, !llvm.loop !16687

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit86: ; preds = %.lr.ph.i.i.i.i.i81, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = phi i32 [ %i.eu, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79 ], [ %i.fc, %.lr.ph.i.i.i.i.i81 ]
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.ew, %_ZSt22__uninitialized_copy_aIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit79 ], [ %i.fe, %.lr.ph.i.i.i.i.i81 ]
  %.not4.i.i = icmp eq ptr %i.dd, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_EEvT_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit86
  %reass.sub.i = add i64 %i.j, 17179869176
  %i.ff = sub i64 %reass.sub.i, %i.de
  %sh.diff.i.i = lshr i64 %i.ff, 2
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %tr.sh.diff.i.not.i = and i32 %tr.sh.diff.i.i, -2
  %i.fg = xor i32 %tr.sh.diff.i.not.i, -2
  %i.fh = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.fg
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_EEvT_S7_.exit

_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_EEvT_S7_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit86, %.lr.ph.preheader.i.i
  %.not.i87 = icmp eq ptr %i.dd, null
  br i1 %.not.i87, label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_EEvT_S7_.exit
  %i.fi = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.fk) #28
  br label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_EEvT_S7_.exit, %bb.h
  store ptr %i.dp, ptr %0, align 8, !tbaa !323
  store ptr %.0.lcssa.i.i.i.i.i85, ptr %i.g, align 8, !tbaa !322
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dm
  store ptr %i.fl, ptr %i.e, align 8, !tbaa !324
  br label %_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit

_ZSt4copyIPKSt4pairIN5boost9container4test24movable_and_copyable_intES4_EN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %.lr.ph.i.i.i.i.i56, %middle.block, %middle.block176, %_ZSt22__uninitialized_move_aIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit63, %_ZSt13move_backwardIPSt4pairIN5boost9container4test24movable_and_copyable_intES4_ES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !323    ; 24 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !324
  %i.j = load ptr, ptr %0, align 8, !tbaa !323    ; 19 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit.i, !prof !225

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 11 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIN5boost9container4test24movable_and_copyable_intES4_ESaIS5_EE11_M_allocateEm.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %i.e                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
end_hunk_13

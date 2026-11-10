Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE4treeEv:bb.a
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE4treeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ERKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ERKS5_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %0, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.d, align 8, !tbaa !252
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.e

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ESt16initializer_listIS8_ERKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ESt16initializer_listIS8_ERKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %0, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.d, align 8, !tbaa !252
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.e

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSC_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %0, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.d, align 8, !tbaa !252
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.e

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSA_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ESt16initializer_listIS8_ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ESt16initializer_listIS8_ERKS5_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %0, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.d, align 8, !tbaa !252
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSA_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.e

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EEbT_SI_RKSA_RKSC_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.16", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1130
  store i32 %i.d, ptr %i.a, align 8, !tbaa !254, !noalias !1130
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1130
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1130
  store i32 %i.h, ptr %i.f, align 4, !tbaa !254, !noalias !1130
  %i.i = add i32 %i.e, 2
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1130
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.n = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1130
  store i32 %i.n, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1130
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1130 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !1130
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254, !noalias !1130
  %i.s = add i32 %i.o, 2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1130
  %i.t = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254, !noalias !1130
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254, !noalias !1130
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254, !noalias !1130
  store i32 %i.y, ptr %i.w, align 4, !tbaa !254, !noalias !1130
  %i.z = add i32 %i.o, 4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1130
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.020.i.i.i.i.i.i.i, -2     ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.b, align 8, !tbaa !251, !noalias !1130
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_PKS5_EEEENS0_12vec_iteratorIPS5_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef %2, ptr %1)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.ad

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.16", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1135
  store i32 %i.d, ptr %i.a, align 8, !tbaa !254, !noalias !1135
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1135
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1135
  store i32 %i.h, ptr %i.f, align 4, !tbaa !254, !noalias !1135
  %i.i = add i32 %i.e, 2
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1135
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.n = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1135
  store i32 %i.n, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1135
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1135 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !1135
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254, !noalias !1135
  %i.s = add i32 %i.o, 2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1135
  %i.t = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254, !noalias !1135
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254, !noalias !1135
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254, !noalias !1135
  store i32 %i.y, ptr %i.w, align 4, !tbaa !254, !noalias !1135
  %i.z = add i32 %i.o, 4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1135
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.020.i.i.i.i.i.i.i, -2     ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.b, align 8, !tbaa !251, !noalias !1135
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_PKS5_EEEENS0_12vec_iteratorIPS5_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef %2, ptr %1)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.ad

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS8_ERKS5_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.16", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !1140
  store i32 %i.d, ptr %i.a, align 8, !tbaa !254, !noalias !1140
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1140
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1140
  store i32 %i.h, ptr %i.f, align 4, !tbaa !254, !noalias !1140
  %i.i = add i32 %i.e, 2
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1140
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.n = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1140
  store i32 %i.n, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !1140
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1140 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !1140
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254, !noalias !1140
  %i.s = add i32 %i.o, 2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1140
  %i.t = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254, !noalias !1140
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254, !noalias !1140
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254, !noalias !1140
  store i32 %i.y, ptr %i.w, align 4, !tbaa !254, !noalias !1140
  %i.z = add i32 %i.o, 4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !1140
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.020.i.i.i.i.i.i.i, -2     ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.b, align 8, !tbaa !251, !noalias !1140
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_RKSC_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_PKS5_EEEENS0_12vec_iteratorIPS5_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef %2, ptr %1)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_RKSC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.ad

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2IPKS6_EENS0_22ordered_unique_range_tET_SJ_RKSA_RKSC_.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ERKSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.d = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1145 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !257, !alias.scope !1145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !259, !noalias !1146
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %3, align 8, !tbaa !257, !alias.scope !1146
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS0_12vec_iteratorIPS5_Lb1EEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef null)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2ERKSE_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.h

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2ERKSE_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2EOSB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5EOSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  %i.d = load ptr, ptr %1, align 8, !tbaa !250    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !226
  store <2 x i64> %i.g, ptr %i.b, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !259  ; 6 uses
  %.not17.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.j = add nsw i64 %i.i, -1
  %i.k = load i32, ptr %i.d, align 4, !tbaa !254
  store i32 %i.k, ptr %i.a, align 8, !tbaa !254
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.n, align 4, !tbaa !254
  %i.p = add i32 %i.l, 2
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp eq i64 %i.i, 1
  br i1 %i.s, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.t, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ah = add i32 %i.ad, 2
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  store i64 %i.i, ptr %i.b, align 8, !tbaa !259
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !259 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.al = trunc i64 %i.ak to i32
  %i.am = shl i32 %i.al, 1
  %i.an = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  store i64 0, ptr %i.h, align 8, !tbaa !259
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2ERKSB_RKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5ERKSB_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.d = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1151 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !257, !alias.scope !1151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !259, !noalias !1152
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %4, align 8, !tbaa !257, !alias.scope !1152
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS0_12vec_iteratorIPS5_Lb1EEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef null)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2ERKSE_RKSC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(104) %0) #23
  resume { ptr, i32 } %i.h

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2ERKSE_RKSC_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2EOSB_RKS9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC5EOSB_RKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  %i.d = load ptr, ptr %1, align 8, !tbaa !250    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !226
  store <2 x i64> %i.g, ptr %i.b, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_RKSC_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !259  ; 6 uses
  %.not17.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.j = add nsw i64 %i.i, -1
  %i.k = load i32, ptr %i.d, align 4, !tbaa !254
  store i32 %i.k, ptr %i.a, align 8, !tbaa !254
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.n, align 4, !tbaa !254
  %i.p = add i32 %i.l, 2
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp eq i64 %i.i, 1
  br i1 %i.s, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.t, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ah = add i32 %i.ad, 2
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  store i64 %i.i, ptr %i.b, align 8, !tbaa !259
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !259 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.al = trunc i64 %i.ak to i32
  %i.am = shl i32 %i.al, 1
  %i.an = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  store i64 0, ptr %i.h, align 8, !tbaa !259
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_RKSC_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEC2EOSE_RKSC_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEaSERKSE_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !250    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c
  tail call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignIPS5_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef null)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEaSERKSE_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEaSERKSE_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEaSEOSB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE4DataaSEOSF_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEaSEOSE_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEEaSEOSE_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEaSESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5clearEv.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5clearEv.exit

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5clearEv.exit: ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i.i
  store i64 0, ptr %i.a, align 8, !tbaa !259
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE19insert_unique_rangeIPKS6_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.f)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5clearEv.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5clearEv.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE5clearEv.exit: ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i
  store i64 0, ptr %i.a, align 8, !tbaa !259
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1159
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !1159
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1169
  store ptr %i.a, ptr %0, align 8, !tbaa !257, !alias.scope !1169
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1176
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1176
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !261, !alias.scope !1176
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1189
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1189
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !257, !alias.scope !1189
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1197
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1197
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  store ptr %i.d, ptr %0, align 8, !tbaa !261, !alias.scope !1196
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1210
end_hunk_0
begin_hunk_1_@_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE11upper_boundERKS3_:bb.a
  %.not12.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11upper_boundERKS5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !254, !noalias !1684
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.e = phi ptr [ %i.a, %.lr.ph.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %.013.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %.1.i.i, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.013.i.i, 1                    ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !1684
  %i.i = icmp slt i32 %i.d, %i.h                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.neg.i.i = xor i64 %i.f, -1
  %i.k = add i64 %.013.i.i, %.neg.i.i
  %i.l = select i1 %i.i, ptr %i.e, ptr %i.j       ; 2 uses
  %.1.i.i = select i1 %i.i, i64 %i.f, i64 %i.k    ; 2 uses
  %.not.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11upper_boundERKS5_.exit, label %bb.b, !llvm.loop !11

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE11upper_boundERKS5_.exit: ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  store ptr %i.m, ptr %0, align 8, !tbaa !257, !alias.scope !1684
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE11equal_rangeERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.25") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1700 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1701 ; 3 uses
  %.idx.i = shl nsw i64 %i.c, 3
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !254, !noalias !1703
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.g = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !254, !noalias !1703
  %i.j = icmp slt i32 %i.i, %i.e                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.neg.i.i.i = xor i64 %i.g, -1
  %i.l = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.m = select i1 %i.j, ptr %i.k, ptr %i.f       ; 2 uses
  %.1.i.i.i = select i1 %i.j, i64 %i.l, i64 %i.g  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i, label %bb.b, !llvm.loop !5

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.a, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i
  %i.o = load i32, ptr %2, align 4, !tbaa !254, !noalias !1704
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !1704
  %i.q = icmp slt i32 %i.o, %i.p
  %spec.select.idx.i.i = select i1 %i.q, i64 0, i64 8
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.idx.i.i
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ %i.d, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SJ_SJ_RKT0_.exit.i.i ]
  store ptr %i.n, ptr %0, align 8, !tbaa !261, !alias.scope !1704
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.r, align 8, !tbaa !261, !alias.scope !1704
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE11equal_rangeERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.a = load ptr, ptr %1, align 8, !tbaa !250, !noalias !1722 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !259, !noalias !1723 ; 3 uses
  %.idx.i = shl nsw i64 %i.c, 3
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !254, !noalias !1725
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %i.g = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !254, !noalias !1725
  %i.j = icmp slt i32 %i.i, %i.e                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.neg.i.i.i = xor i64 %i.g, -1
  %i.l = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.m = select i1 %i.j, ptr %i.k, ptr %i.f       ; 2 uses
  %.1.i.i.i = select i1 %i.j, i64 %i.l, i64 %i.g  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i, label %bb.b, !llvm.loop !6

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.a, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i
  %i.o = load i32, ptr %2, align 4, !tbaa !254, !noalias !1726
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !1726
  %i.q = icmp slt i32 %i.o, %i.p
  %spec.select.idx.i.i = select i1 %i.q, i64 0, i64 8
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.idx.i.i
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE17lower_bound_rangeERKS5_.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ %i.d, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb1EEES5_EET_SJ_SJ_RKT0_.exit.i.i ]
  store ptr %i.n, ptr %0, align 8, !tbaa !257, !alias.scope !1726
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.r, align 8, !tbaa !257, !alias.scope !1726
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE16extract_sequenceEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::small_vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.c, align 8, !tbaa !252
  %i.d = load ptr, ptr %1, align 8, !tbaa !250    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !226
  store <2 x i64> %i.g, ptr %i.b, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEC2EOS7_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !259  ; 7 uses
  %.not17.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.thread, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = add nsw i64 %i.i, -1
  %i.k = load i32, ptr %i.d, align 4, !tbaa !254
  store i32 %i.k, ptr %i.a, align 8, !tbaa !254
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.n, align 4, !tbaa !254
  %i.p = add i32 %i.l, 2                          ; 2 uses
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp eq i64 %i.i, 1
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.thread: ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !259
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !254
  store i32 %i.t, ptr %.01618.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0919.i.i.i.i, align 4, !tbaa !254
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ab = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ah = add i32 %i.ad, 2                        ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.1, label %.lr.ph.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i ]
  store i64 %i.i, ptr %i.b, align 8, !tbaa !259
  %i.ak = trunc i64 %i.i to i32
  %i.al = shl i32 %i.ak, 1
  %i.am = sub i32 %.lcssa, %i.al
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_S9_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SC_mSD_.exit.i.i.i.thread, %.lr.ph.preheader.i.i.i.i.i.i
  store i64 0, ptr %i.h, align 8, !tbaa !259
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEC2EOS7_.exit

_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEC2EOS7_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE14adopt_sequenceEOSA_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE14adopt_sequenceENS0_22ordered_unique_range_tEOSA_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSD_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10ESaIS6_EvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSD_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !250    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !259
  %i.h = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.i, %i.h
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.j, !prof !272
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.d, !prof !272

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !273
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !250
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.d, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.n = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.d ]
  store ptr %i.n, ptr %0, align 8, !tbaa !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !226
  store <2 x i64> %i.p, ptr %i.c, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !259, !noalias !1729
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS_13move_iteratorIPS5_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %i.a, ptr %i.s, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.t = load i64, ptr %i.q, align 8, !tbaa !259  ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.u = trunc i64 %i.t to i32
  %i.v = shl i32 %i.u, 1
  %i.w = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.v
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  store i64 0, ptr %i.q, align 8, !tbaa !259
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZNK5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEE8sequenceEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEE4treeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEE4treeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5ERKSA_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2ERKS5_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5ERKS5_RKSA_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2ESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5ESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE18insert_equal_rangeIPKS6_EEvT_SJ_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEEC2IPKS6_EEbT_SJ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container13stable_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_9allocatorIS5_Lj2ELj0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEEC2IPKS6_EEbT_SJ_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC2ESt16initializer_listIS8_ERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13stable_vectorISt4pairIS3_S3_ENS0_9allocatorIS8_Lj2ELj0EEEEEEC5ESt16initializer_listIS8_ERKSA_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
end_hunk_1
begin_hunk_2_@_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(80) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ERKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ERKS5_) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(80) %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !317
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load i64, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.c

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ESt16initializer_listIS8_ERKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(80) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ESt16initializer_listIS8_ERKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !317
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load i64, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.c

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !317
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load i64, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.c

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKSA_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ESt16initializer_listIS8_ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(80) %4) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ESt16initializer_listIS8_ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !317
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load i64, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.c

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EEbT_SH_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ENS0_15ordered_range_tESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ENS0_15ordered_range_tESt16initializer_listIS8_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !317
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2786 ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.b = load i32, ptr %1, align 4, !tbaa !254, !noalias !2786
  store i32 %i.b, ptr %0, align 8, !tbaa !254, !noalias !2786
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254, !noalias !2786
  store i32 %i.e, ptr %i.c, align 4, !tbaa !254, !noalias !2786
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 2 ; 2 uses
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2786
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.l = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2786
  store i32 %i.l, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2786
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !2786
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254, !noalias !2786
  %i.p = add i32 %i.k, 2
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2786
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !2786
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254, !noalias !2786
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254, !noalias !2786
  store i32 %i.v, ptr %i.t, align 4, !tbaa !254, !noalias !2786
  %i.w = add i32 %i.k, 4                          ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2786
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.z = add nsw i64 %.020.i.i.i.i.i.i.i, -2      ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
          to label %.noexc4.i unwind label %bb.d

.noexc4.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = shl i32 %i.ac, 1
  %i.ae = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.ad
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.aa

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.a, align 8, !tbaa !317, !noalias !2786
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ENS0_15ordered_range_tESt16initializer_listIS8_ERKS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ENS0_15ordered_range_tESt16initializer_listIS8_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !317
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2791 ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.b = load i32, ptr %1, align 4, !tbaa !254, !noalias !2791
  store i32 %i.b, ptr %0, align 8, !tbaa !254, !noalias !2791
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254, !noalias !2791
  store i32 %i.e, ptr %i.c, align 4, !tbaa !254, !noalias !2791
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 2 ; 2 uses
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2791
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.l = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2791
  store i32 %i.l, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2791
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !2791
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254, !noalias !2791
  %i.p = add i32 %i.k, 2
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2791
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !2791
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254, !noalias !2791
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254, !noalias !2791
  store i32 %i.v, ptr %i.t, align 4, !tbaa !254, !noalias !2791
  %i.w = add i32 %i.k, 4                          ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2791
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.z = add nsw i64 %.020.i.i.i.i.i.i.i, -2      ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
          to label %.noexc5.i unwind label %bb.d

.noexc5.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = shl i32 %i.ac, 1
  %i.ae = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.ad
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.aa

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.a, align 8, !tbaa !317, !noalias !2791
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ENS0_15ordered_range_tESt16initializer_listIS8_ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(80) %4) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ENS0_15ordered_range_tESt16initializer_listIS8_ERKS5_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !317
  %.not.i.i.i = icmp ugt i64 %2, 10
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2796 ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.b = load i32, ptr %1, align 4, !tbaa !254, !noalias !2796
  store i32 %i.b, ptr %0, align 8, !tbaa !254, !noalias !2796
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254, !noalias !2796
  store i32 %i.e, ptr %i.c, align 4, !tbaa !254, !noalias !2796
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 2 ; 2 uses
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2796
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.l = load i32, ptr %.0919.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2796
  store i32 %i.l, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !2796
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !2796
  store i32 %i.o, ptr %i.m, align 4, !tbaa !254, !noalias !2796
  %i.p = add i32 %i.k, 2
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2796
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !2796
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254, !noalias !2796
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254, !noalias !2796
  store i32 %i.v, ptr %i.t, align 4, !tbaa !254, !noalias !2796
  %i.w = add i32 %i.k, 4                          ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2796
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %i.z = add nsw i64 %.020.i.i.i.i.i.i.i, -2      ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
          to label %.noexc6.i unwind label %bb.d

.noexc6.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = shl i32 %i.ac, 1
  %i.ae = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.ad
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE4DataD2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.aa

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2IPKS6_EENS0_15ordered_range_tET_SI_RKSA_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i64 %2, ptr %i.a, align 8, !tbaa !317, !noalias !2796
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ERKSA_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.b, ptr %i.c, align 8, !tbaa !317
  %i.d = icmp ugt i64 %i.b, 10
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i: ; preds = %bb.a
  %.not17.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.020.i.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.preheader.i.i.i.i ]
  %.0819.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %.01618.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i ]
  %i.e = add nsw i64 %.020.i.i.i.i.i.prol, -1     ; 2 uses
  %i.f = load i32, ptr %.0819.i.i.i.i.i.prol, align 4, !tbaa !254
  store i32 %i.f, ptr %.01618.i.i.i.i.i.prol, align 4, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.prol, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !254
  store i32 %i.i, ptr %i.g, align 4, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2797

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i
  %.020.i.i.i.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.preheader.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.preheader.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.preheader.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0819.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.m = load i32, ptr %.0819.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.m, ptr %.01618.i.i.i.i.i, align 4, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.n, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254
  store i32 %i.v, ptr %i.t, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %i.y = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.y, ptr %i.x, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 24
  %i.ae = add nsw i64 %.020.i.i.i.i.i, -4         ; 2 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !254
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %i.al = trunc nuw nsw i64 %i.b to i32
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2EOSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5EOSA_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !317  ; 9 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !317
  %.not17.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  %i.g = and i64 %i.c, 3
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 3 uses
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep3 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep4 = getelementptr i8, ptr %0, i64 %i.k
  %next.gep5 = getelementptr i8, ptr %0, i64 %i.l
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2803
  %wide.vec7 = load <4 x i32>, ptr %next.gep3, align 8, !tbaa !254, !alias.scope !2803
  store <4 x i32> %wide.vec, ptr %next.gep4, align 8, !tbaa !254, !alias.scope !2804, !noalias !2803
  store <4 x i32> %wide.vec7, ptr %next.gep5, align 8, !tbaa !254, !alias.scope !2804, !noalias !2803
  store <4 x i32> zeroinitializer, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2803
  store <4 x i32> zeroinitializer, ptr %next.gep3, align 8, !tbaa !254, !alias.scope !2803
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !2801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.preheader13:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.i.i.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ] ; 5 uses
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %xtraiter = and i64 %.020.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader13
  %i.n = add nsw i64 %.020.i.i.i.i.i.i.ph, -1
  %i.o = load i32, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.o, ptr %.01618.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.s = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader13
  %.020.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ], [ %i.n, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.u = icmp eq i64 %.020.i.i.i.i.i.i.ph, 1
  br i1 %i.u, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.v = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.v, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254
  store i32 %i.y, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %i.x, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2802

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKSA_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(80) %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5ERKSA_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.b, ptr %i.c, align 8, !tbaa !317
  %i.d = icmp ugt i64 %i.b, 10
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i: ; preds = %bb.a
  %.not17.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.020.i.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.preheader.i.i.i.i ]
  %.0819.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %.01618.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i ]
  %i.e = add nsw i64 %.020.i.i.i.i.i.prol, -1     ; 2 uses
  %i.f = load i32, ptr %.0819.i.i.i.i.i.prol, align 4, !tbaa !254
  store i32 %i.f, ptr %.01618.i.i.i.i.i.prol, align 4, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.prol, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !254
  store i32 %i.i, ptr %i.g, align 4, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2805

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i
  %.020.i.i.i.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.preheader.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.preheader.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.preheader.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0819.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.m = load i32, ptr %.0819.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.m, ptr %.01618.i.i.i.i.i, align 4, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.n, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254
  store i32 %i.v, ptr %i.t, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %i.y = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.y, ptr %i.x, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 24
  %i.ae = add nsw i64 %.020.i.i.i.i.i, -4         ; 2 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !254
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %i.al = trunc nuw nsw i64 %i.b to i32
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2ERKSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS8_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.loopexit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2EOSA_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(80) %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC5EOSA_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !317  ; 9 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !317
  %.not17.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  %i.g = and i64 %i.c, 3
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 3 uses
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep4 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep5 = getelementptr i8, ptr %0, i64 %i.k
  %next.gep6 = getelementptr i8, ptr %0, i64 %i.l
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2811
  %wide.vec8 = load <4 x i32>, ptr %next.gep4, align 8, !tbaa !254, !alias.scope !2811
  store <4 x i32> %wide.vec, ptr %next.gep5, align 8, !tbaa !254, !alias.scope !2812, !noalias !2811
  store <4 x i32> %wide.vec8, ptr %next.gep6, align 8, !tbaa !254, !alias.scope !2812, !noalias !2811
  store <4 x i32> zeroinitializer, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2811
  store <4 x i32> zeroinitializer, ptr %next.gep4, align 8, !tbaa !254, !alias.scope !2811
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !2809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.preheader14:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.i.i.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ] ; 5 uses
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %xtraiter = and i64 %.020.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader14
  %i.n = add nsw i64 %.020.i.i.i.i.i.i.ph, -1
  %i.o = load i32, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.o, ptr %.01618.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.s = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader14
  %.020.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ], [ %i.n, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.u = icmp eq i64 %.020.i.i.i.i.i.i.ph, 1
  br i1 %i.u, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.v = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.v, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254
  store i32 %i.y, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %i.x, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2810

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEaSERKSD_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !319  ; 14 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %min.iters.check26 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check26, label %.lr.ph.i.i.i.i.i.i.i.preheader104, label %vector.memcheck27

vector.memcheck27:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.f = shl i64 %i.b, 3                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %bound028 = icmp ult ptr %0, %i.h
  %bound129 = icmp ult ptr %1, %i.g
  %found.conflict30 = and i1 %bound028, %bound129
  br i1 %found.conflict30, label %.lr.ph.i.i.i.i.i.i.i.preheader104, label %vector.ph31

vector.ph31:                                      ; preds = %vector.memcheck27
  %n.vec32 = and i64 %i.b, -4                     ; 3 uses
  %i.i = shl i64 %n.vec32, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = and i64 %i.b, 3
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph31
  %index34 = phi i64 [ 0, %vector.ph31 ], [ %index.next47, %vector.body33 ] ; 2 uses
  %i.m = shl i64 %index34, 3                      ; 3 uses
  %i.n = or disjoint i64 %i.m, 16                 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %0, i64 %i.m
  %next.gep36 = getelementptr i8, ptr %0, i64 %i.n
  %next.gep37 = getelementptr i8, ptr %1, i64 %i.m
  %next.gep38 = getelementptr i8, ptr %1, i64 %i.n
  %wide.vec39 = load <4 x i32>, ptr %next.gep37, align 8, !tbaa !254, !alias.scope !2831
  %wide.vec42 = load <4 x i32>, ptr %next.gep38, align 8, !tbaa !254, !alias.scope !2831
  store <4 x i32> %wide.vec39, ptr %next.gep35, align 8, !tbaa !254, !alias.scope !2832, !noalias !2831
  store <4 x i32> %wide.vec42, ptr %next.gep36, align 8, !tbaa !254, !alias.scope !2832, !noalias !2831
  %index.next47 = add nuw i64 %index34, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next47, %n.vec32
  br i1 %i.o, label %middle.block48, label %vector.body33, !llvm.loop !2816

middle.block48:                                   ; preds = %vector.body33
  %cmp.n49 = icmp eq i64 %i.b, %n.vec32
  br i1 %cmp.n49, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.i.i.preheader104:                ; preds = %vector.memcheck27, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block48
  %.ph105 = phi ptr [ %0, %vector.memcheck27 ], [ %0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block48 ] ; 2 uses
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck27 ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block48 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.ph = phi i64 [ %i.b, %vector.memcheck27 ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %middle.block48 ] ; 4 uses
  %i.p = add i64 %.068.i.i.i.i.i.i.i.ph, -1
  %xtraiter109 = and i64 %.068.i.i.i.i.i.i.i.ph, 3 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE5crendEv:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319
  %.not.i.i = icmp eq i64 %i.b, 0
  ret i1 %.not.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 10
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 10
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE7reserveEm.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE3nthEm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %1, i64 %2
  store ptr %i.a, ptr %0, align 8, !tbaa !261, !alias.scope !2959
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE3nthEm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %1, i64 %2
  store ptr %i.a, ptr %0, align 8, !tbaa !257, !alias.scope !2966
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE8index_ofENS0_12vec_iteratorIPS8_Lb0EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE8index_ofENS0_12vec_iteratorIPS8_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE6insertERKS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE12insert_equalERKS6_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE12insert_equalERKS6_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319, !noalias !2979 ; 6 uses
  %.not12.i.i = icmp eq i64 %i.b, 0
  br i1 %.not12.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !254, !noalias !2980
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.d = phi ptr [ %1, %.lr.ph.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.013.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %.1.i.i, %bb.b ] ; 2 uses
  %i.e = lshr i64 %.013.i.i, 1                    ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254, !noalias !2980
  %i.h = icmp slt i32 %i.c, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.neg.i.i = xor i64 %i.e, -1
  %i.j = add i64 %.013.i.i, %.neg.i.i
  %i.k = select i1 %i.h, ptr %i.d, ptr %i.i       ; 2 uses
  %.1.i.i = select i1 %i.h, i64 %i.e, i64 %i.j    ; 2 uses
  %.not.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit, label %bb.b, !llvm.loop !23

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit: ; preds = %bb.b
  %.not.i.i3 = icmp eq i64 %i.b, 10
  br i1 %.not.i.i3, label %bb.e, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit.thread, !prof !2981

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit.thread: ; preds = %bb.a, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit
  %i.l = phi ptr [ %i.k, %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit ], [ %1, %bb.a ] ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit.thread
  %i.n = load i32, ptr %2, align 4, !tbaa !254, !noalias !2982
  store i32 %i.n, ptr %i.l, align 4, !tbaa !254, !noalias !2982
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2982
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254, !noalias !2982
  store i32 %i.r, ptr %i.p, align 4, !tbaa !254, !noalias !2982
  %i.s = add i32 %i.o, 2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2982
  %i.t = add i64 %i.b, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !319, !noalias !2982
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE7emplaceIJRKS5_EEENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEEDpOT_.exit

bb.d:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit.thread
  %i.u = ptrtoint ptr %i.l to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 3 uses
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2982
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.ab = load <2 x i32>, ptr %i.y, align 8, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.y, align 8, !tbaa !254, !noalias !2982
  store <2 x i32> %i.ab, ptr %i.m, align 8, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.aa, align 4, !tbaa !254, !noalias !2982
  %i.ac = add i32 %i.z, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !2982
  %i.ad = add i64 %i.b, 1
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !319, !noalias !2982
  %i.ae = add nsw i64 %i.x, -1                    ; 3 uses
  %.not8.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.af = add nsw i64 %i.x, -2
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !254, !noalias !2982
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.ag, align 8, !tbaa !254, !noalias !2982
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 -12 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !254, !noalias !2982
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.aj, align 4, !tbaa !254, !noalias !2982
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %i.am = icmp eq i64 %i.w, 16
  br i1 %i.am, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !254, !noalias !2982
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.an, align 4, !tbaa !254, !noalias !2982
  %i.aq = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !254, !noalias !2982
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.aq, align 4, !tbaa !254, !noalias !2982
  %i.at = add i64 %.0610.i.i.i.i, -2              ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !254, !noalias !2982
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.au, align 4, !tbaa !254, !noalias !2982
  %i.ax = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -12
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !254, !noalias !2982
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !254, !noalias !2982
  store i32 0, ptr %i.ax, align 4, !tbaa !254, !noalias !2982
  %.not.i.i.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.d
  %i.ba = load i32, ptr %2, align 4, !tbaa !254, !noalias !2982
  store i32 %i.ba, ptr %i.l, align 4, !tbaa !254, !noalias !2982
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !254, !noalias !2982
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !254, !noalias !2982
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE7emplaceIJRKS5_EEENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEEDpOT_.exit

bb.e:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11upper_boundERKS5_.exit
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25, !noalias !2982
  unreachable

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE7emplaceIJRKS5_EEENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEEDpOT_.exit: ; preds = %bb.c, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i
  store ptr %i.l, ptr %0, align 8, !tbaa !261
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE6insertENS0_12vec_iteratorIPS8_Lb1EEERKS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !262
  store ptr %i.a, ptr %4, align 8, !tbaa !257
  call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE12insert_equalENS0_12vec_iteratorIPS6_Lb1EEERKS6_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(8) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE12insert_equalENS0_12vec_iteratorIPS6_Lb1EEERKS6_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !319, !noalias !2999 ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 14 uses
  %i.e = icmp eq ptr %i.a, %i.d
  br i1 %i.e, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !254
  %i.g = load i32, ptr %3, align 4, !tbaa !254    ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i13.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.k = load i32, ptr %3, align 4, !tbaa !254    ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = ptrtoint ptr %1 to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.o, %i.n
  %i.q = ashr exact i64 %i.p, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.r = phi ptr [ %1, %.lr.ph.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %.013.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %.1.i.i, %bb.d ] ; 2 uses
  %i.s = lshr i64 %.013.i.i, 1                    ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !254, !noalias !3000
  %i.v = icmp slt i32 %i.k, %i.u                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.neg.i.i = xor i64 %i.s, -1
  %i.x = add i64 %.013.i.i, %.neg.i.i
  %i.y = select i1 %i.v, ptr %i.r, ptr %i.w       ; 2 uses
  %.1.i.i = select i1 %i.v, i64 %i.s, i64 %i.x    ; 2 uses
  %.not.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit, label %bb.d, !llvm.loop !24

.lr.ph.i13.i:                                     ; preds = %bb.b
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = ptrtoint ptr %i.d to i64
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = ashr exact i64 %i.ab, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i13.i
  %i.ad = phi ptr [ %i.a, %.lr.ph.i13.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.013.i14.i = phi i64 [ %i.ac, %.lr.ph.i13.i ], [ %.1.i16.i, %bb.e ] ; 2 uses
  %i.ae = lshr i64 %.013.i14.i, 1                 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !254, !noalias !3001
  %i.ah = icmp slt i32 %i.ag, %i.g                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.neg.i15.i = xor i64 %i.ae, -1
  %i.aj = add i64 %.013.i14.i, %.neg.i15.i
  %i.ak = select i1 %i.ah, ptr %i.ai, ptr %i.ad   ; 2 uses
  %.1.i16.i = select i1 %i.ah, i64 %i.aj, i64 %i.ae ; 2 uses
  %.not.i17.i = icmp eq i64 %.1.i16.i, 0
  br i1 %.not.i17.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit, label %bb.e, !llvm.loop !25

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit: ; preds = %bb.e, %bb.d, %.critedge.i, %bb.c
  %.sink.i = phi ptr [ %i.y, %bb.d ], [ %i.a, %bb.c ], [ %i.a, %.critedge.i ], [ %i.ak, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %.not.i.i.i = icmp eq i64 %i.c, 10
  br i1 %.not.i.i.i, label %bb.i, label %bb.f, !prof !225

bb.f:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit
  %.not.i.i.i.i = icmp eq ptr %i.d, %.sink.i
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %3, align 4, !tbaa !254, !noalias !3005
  store i32 %i.al, ptr %i.d, align 8, !tbaa !254, !noalias !3005
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3005
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !254, !noalias !3005
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !254, !noalias !3005
  %i.aq = add i32 %i.am, 2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3005
  %i.ar = add i64 %i.c, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !319, !noalias !3005
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18priv_insert_commitIRKS6_EENS0_12vec_iteratorIPS6_Lb0EEERNSD_18insert_commit_dataEOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.as = ptrtoint ptr %.sink.i to i64
  %i.at = ptrtoint ptr %i.d to i64
  %i.au = sub i64 %i.at, %i.as                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3005
  %i.ay = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.az = load <2 x i32>, ptr %i.aw, align 8, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.aw, align 8, !tbaa !254, !noalias !3005
  store <2 x i32> %i.az, ptr %i.d, align 8, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.ay, align 4, !tbaa !254, !noalias !3005
  %i.ba = add i32 %i.ax, 2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3005
  %i.bb = add i64 %i.c, 1
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !319, !noalias !3005
  %i.bc = add nsw i64 %i.av, -1                   ; 3 uses
  %.not8.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %xtraiter = and i64 %i.bc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bd = add nsw i64 %i.av, -2
  %i.be = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !254, !noalias !3005
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.be, align 8, !tbaa !254, !noalias !3005
  %i.bh = getelementptr inbounds i8, ptr %i.d, i64 -12 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !254, !noalias !3005
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.bh, align 4, !tbaa !254, !noalias !3005
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %i.bk = icmp eq i64 %i.au, 16
  br i1 %i.bk, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.011.i.i.i.i.i, i64 -8
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !254, !noalias !3005
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.bl, align 4, !tbaa !254, !noalias !3005
  %i.bo = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -4 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.011.i.i.i.i.i, i64 -4
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !254, !noalias !3005
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.bo, align 4, !tbaa !254, !noalias !3005
  %i.br = add i64 %.0610.i.i.i.i.i, -2            ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -16 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %.011.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !254, !noalias !3005
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.bs, align 4, !tbaa !254, !noalias !3005
  %i.bv = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -12 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.011.i.i.i.i.i, i64 -12
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254, !noalias !3005
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254, !noalias !3005
  store i32 0, ptr %i.bv, align 4, !tbaa !254, !noalias !3005
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %i.by = load i32, ptr %3, align 4, !tbaa !254, !noalias !3005
  store i32 %i.by, ptr %.sink.i, align 4, !tbaa !254, !noalias !3005
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254, !noalias !3005
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !254, !noalias !3005
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18priv_insert_commitIRKS6_EENS0_12vec_iteratorIPS6_Lb0EEERNSD_18insert_commit_dataEOT_.exit

bb.i:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE25priv_insert_equal_prepareENS0_12vec_iteratorIPS6_Lb1EEERKS6_RNSD_18insert_commit_dataE.exit
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25, !noalias !3005
  unreachable

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18priv_insert_commitIRKS6_EENS0_12vec_iteratorIPS6_Lb0EEERNSD_18insert_commit_dataEOT_.exit: ; preds = %bb.g, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i
  store ptr %.sink.i, ptr %0, align 8, !tbaa !261, !alias.scope !3005
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE6insertESt16initializer_listIS8_E(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE18insert_equal_rangeIPKS6_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 6 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319, !noalias !3012 ; 4 uses
  %.idx17 = shl nsw i64 %i.b, 3                   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx17 ; 10 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 5 uses
  %i.h = sub i64 10, %i.b
  %.not.i.i = icmp ugt i64 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !225

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.i = and i64 %i.f, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.j = load i32, ptr %1, align 4, !tbaa !254, !noalias !3013
  store i32 %i.j, ptr %i.c, align 8, !tbaa !254, !noalias !3013
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3013
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254, !noalias !3013
  store i32 %i.n, ptr %i.l, align 4, !tbaa !254, !noalias !3013
  %i.o = add i32 %i.k, 2
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3013
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp eq i64 %i.f, 8
  br i1 %i.s, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i) ]
  %i.t = load i32, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !3013
  store i32 %i.t, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !3013
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3013 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254, !noalias !3013
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254, !noalias !3013
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3013
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254, !noalias !3013
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !254, !noalias !3013
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254, !noalias !3013
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254, !noalias !3013
  %i.af = add i32 %i.u, 4
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !3013
  %i.ag = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %i.ai = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25, !noalias !3013
  unreachable

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.aj = add i64 %i.b, %i.g
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !317, !noalias !3013
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = ptrtoint ptr %i.c to i64                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef nonnull %i.c, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !319, !noalias !3037 ; 6 uses
  %.not42.i.i = icmp eq i64 %i.c, 0
  br i1 %.not42.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !254, !noalias !3038 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.02.0.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.02.1.i, %bb.g ] ; 5 uses
  %i.e = phi ptr [ %0, %.lr.ph.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  %.01443.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %.2.i.i, %bb.g ] ; 3 uses
  %i.f = lshr i64 %.01443.i.i, 1                  ; 3 uses
  %.idx35.i.i = shl nuw nsw i64 %i.f, 3           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx35.i.i ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !3038 ; 2 uses
  %i.i = icmp slt i32 %i.h, %i.d
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.neg.i.i = xor i64 %i.f, -1
  %i.k = add i64 %.01443.i.i, %.neg.i.i
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.d, %i.h
  br i1 %i.l, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d
  %.idx.i.i = shl nsw i64 %.01443.i.i, 3          ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %.sroa.02.0.i
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i
  %i.m = ptrtoint ptr %.sroa.02.0.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.q = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 2 uses
  %i.r = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !254, !noalias !3039
  %i.u = icmp slt i32 %i.t, %i.d                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.neg.i.i.i = xor i64 %i.r, -1
  %i.w = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.x = select i1 %i.u, ptr %i.v, ptr %i.q       ; 2 uses
  %.1.i.i.i = select i1 %i.u, i64 %i.w, i64 %i.r  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i, label %bb.e, !llvm.loop !26

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i: ; preds = %bb.e, %.critedge.i.i
  %i.y = phi ptr [ %.sroa.02.0.i, %.critedge.i.i ], [ %i.x, %bb.e ] ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aa = add nuw nsw i64 %.idx35.i.i, 8
  %.not12.i15.i.i = icmp eq i64 %.idx.i.i, %i.aa
  br i1 %.not12.i15.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE11equal_rangeERKS5_.exit, label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE16priv_lower_boundINS0_12vec_iteratorIPS6_Lb0EEES5_EET_SI_SI_RKT0_.exit.i.i
  %.neg36.i.i = add i64 %.idx.i.i, -8
  %gepdiff.i.i = sub i64 %.neg36.i.i, %.idx35.i.i
  %i.ab = ashr exact i64 %gepdiff.i.i, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i16.i.i
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE24priv_set_difference_backIPKS5_NS0_3dtl23flat_tree_value_compareISt4lessIS4_ES5_NSD_9select1stIS4_EEEEEEvT_SK_T0_:bb.a
  %i.ab = load i32, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !4937
  store i32 %i.ab, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !4937
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4937 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254, !noalias !4937
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !254, !noalias !4937
  %i.ag = add i32 %i.ac, 2
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4937
  %i.ah = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !254, !noalias !4937
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !254, !noalias !4937
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254, !noalias !4937
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !254, !noalias !4937
  %i.an = add i32 %i.ac, 4
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4937
  %i.ao = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %i.aq = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.ar = add i64 %i.i, %i.n
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !251, !noalias !4937
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_PKS5_EEEENS0_12vec_iteratorIPS5_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.j, i64 noundef %i.n, ptr %.03139)
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_PKS5_EEEEvPS5_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.as = load i32, ptr %.03139, align 4, !tbaa !254 ; 3 uses
  %i.at = load i32, ptr %.02541, align 4, !tbaa !254 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.av = load i64, ptr %i.a, align 8, !tbaa !259 ; 4 uses
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !252
  %.not.i = icmp eq i64 %i.av, %i.aw
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !225

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.av ; 2 uses
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !254
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.03139, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !254
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !254
  %i.bc = add i32 %i.ay, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bd = add i64 %i.av, 1
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !259
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.av
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS8_JRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.be, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %.03139)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.f, %bb.g ], [ %.pre, %bb.h ] ; 6 uses
  %.not36 = icmp eq ptr %.02840, %i.bf            ; 3 uses
  %i.bg = ptrtoint ptr %.02541 to i64
  %i.bh = ptrtoint ptr %.02840 to i64             ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = ptrtoint ptr %.042 to i64
  %i.bl = sub i64 %i.bk, %i.bh
  %i.bm = getelementptr inbounds i8, ptr %i.bf, i64 %i.bl
  %.129 = select i1 %.not36, ptr %.02840, ptr %i.bf
  %.126 = select i1 %.not36, ptr %.02541, ptr %i.bj
  %.1 = select i1 %.not36, ptr %.042, ptr %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %.03139, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bo = icmp slt i32 %i.at, %i.as
  %spec.select.idx = select i1 %i.bo, i64 0, i64 8
  %spec.select = getelementptr inbounds nuw i8, ptr %.03139, i64 %spec.select.idx
  %i.bp = getelementptr inbounds nuw i8, ptr %.02541, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.bq = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %i.f, %bb.i ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %i.g, %bb.i ]
  %.233 = phi ptr [ %i.bn, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %spec.select, %bb.i ] ; 2 uses
  %.230 = phi ptr [ %.129, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %.02840, %bb.i ]
  %.227 = phi ptr [ %.126, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %i.bp, %bb.i ]
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %.042, %bb.i ]
  %.not = icmp eq ptr %.233, %2
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !4935

.loopexit:                                        ; preds = %bb.j, %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE15prot_swap_smallINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.16", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.h, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !250    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !250    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = icmp ne ptr %i.d, %i.b                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = icmp ne ptr %i.f, %i.c                   ; 2 uses
  %or.cond.i.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE9priv_swapINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.c

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE9priv_swapINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !262
  store ptr %i.b, ptr %1, align 8, !tbaa !262
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !226
  %i.k = load i64, ptr %i.i, align 8, !tbaa !226
  store i64 %i.k, ptr %i.h, align 8, !tbaa !226
  store i64 %i.j, ptr %i.i, align 8, !tbaa !226
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !226
  %i.o = load i64, ptr %i.m, align 8, !tbaa !226
  store i64 %i.o, ptr %i.l, align 8, !tbaa !226
  store i64 %i.n, ptr %i.m, align 8, !tbaa !226
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i64 %2, 0
  %or.cond = or i1 %i.e, %i.g
  %or.cond80 = and i1 %.not, %or.cond
  br i1 %or.cond80, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = select i1 %i.e, ptr %0, ptr %1           ; 6 uses
  %i.q = select i1 %i.e, ptr %1, ptr %0           ; 3 uses
  %i.r = select i1 %i.e, ptr %i.b, ptr %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !271
  store i64 0, ptr %i.s, align 8, !tbaa !251
  store i64 %2, ptr %i.t, align 8, !tbaa !226
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !259  ; 6 uses
  %.not17.i = icmp eq i64 %i.x, 0
  br i1 %.not17.i, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !250  ; 5 uses
  %xtraiter121 = and i64 %i.x, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.z = add nsw i64 %i.x, -1
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ad, align 4, !tbaa !254
  %i.af = add i32 %i.ab, 2
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %i.ai = icmp eq i64 %i.x, 1
  br i1 %i.ai, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.01618.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aj = load i32, ptr %.0819.i, align 4, !tbaa !254
  store i32 %i.aj, ptr %.01618.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i, align 4, !tbaa !254
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.al = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !254
  store i32 %i.an, ptr %i.al, align 4, !tbaa !254
  store i32 0, ptr %i.am, align 4, !tbaa !254
  %i.ao = add i32 %i.ak, 2
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ar = add i64 %.020.i, -2                     ; 2 uses
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.ax = add i32 %i.at, 2
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.1, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, label %.lr.ph.i, !llvm.loop !93

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i64 %i.x, ptr %i.s, align 8, !tbaa !251
  %i.ba = load i64, ptr %i.w, align 8, !tbaa !259 ; 2 uses
  %.not3.i = icmp eq i64 %i.ba, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i83 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i83, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit: ; preds = %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ESaIvEvEEED2Ev.exit, %.lr.ph.preheader.i
  store ptr %i.r, ptr %i.q, align 8, !tbaa !271
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !226
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !259
  %i.bi = icmp ult i64 %i.bf, %i.bh               ; 4 uses
  %i.bj = select i1 %i.bi, ptr %0, ptr %1         ; 3 uses
  %i.bk = select i1 %i.bi, ptr %1, ptr %0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !259 ; 9 uses
  %.not79108 = icmp eq i64 %i.bm, 0
  %i.bn = select i1 %i.bi, ptr %i.b, ptr %i.c     ; 2 uses
  %i.bo = select i1 %i.bi, ptr %i.c, ptr %i.b     ; 2 uses
  br i1 %.not79108, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.idx105 = shl nsw i64 %i.bm, 3                 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.idx105 ; 6 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bm ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !259, !noalias !4945
  %.idx = shl nsw i64 %i.bs, 3                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %gepdiff = sub nsw i64 %.idx, %.idx105          ; 3 uses
  %i.bt = ashr exact i64 %gepdiff, 3              ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !252, !noalias !4946
  %i.bw = sub i64 %i.bv, %i.bm
  %.not.i.i = icmp ugt i64 %i.bt, %i.bw
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !225

bb.f:                                             ; preds = %._crit_edge
  %.not15.i.i.i.i.i.i = icmp eq i64 %.idx, %.idx105
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.bx = and i64 %gepdiff, 8
  %lcmp.mod.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.by = load i32, ptr %i.bp, align 4, !tbaa !254, !noalias !4946
  store i32 %i.by, ptr %i.bq, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %i.bp, align 4, !tbaa !254, !noalias !4946
  %i.bz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4946
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !254, !noalias !4946
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %i.cb, align 4, !tbaa !254, !noalias !4946
  %i.cd = add i32 %i.bz, 2
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4946
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cg = add nsw i64 %i.bt, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.018.i.i.i.i.i.i.unr = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ch = icmp eq i64 %gepdiff, 8
  br i1 %i.ch, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ci = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !4946
  store i32 %i.ci, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !4946
  %i.cj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4946 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !254, !noalias !4946
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %i.cl, align 4, !tbaa !254, !noalias !4946
  %i.cn = add i32 %i.cj, 2
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4946
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !254, !noalias !4946
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %i.co, align 4, !tbaa !254, !noalias !4946
  %i.cr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !254, !noalias !4946
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !254, !noalias !4946
  store i32 0, ptr %i.cs, align 4, !tbaa !254, !noalias !4946
  %i.cu = add i32 %i.cj, 4
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4946
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.cx = add i64 %.018.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !92

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.cy = add i64 %i.bt, %i.bm
  store i64 %i.cy, ptr %i.bl, align 8, !tbaa !251, !noalias !4946
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEENS0_12vec_iteratorISE_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.bq, i64 noundef %i.bt, ptr %i.bp)
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !259 ; 2 uses
  %.not3.i91 = icmp eq i64 %i.cz, %i.bm
  br i1 %.not3.i91, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94, label %.lr.ph.preheader.i92

.lr.ph.preheader.i92:                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit
  %.neg = sub i64 %i.bm, %i.cz
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i93 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg106 = trunc i64 %.neg to i32
  %.neg107 = shl i32 %.neg106, 1
  %i.da = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i93, %.neg107
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit, %.lr.ph.preheader.i92
  store i64 %i.bm, ptr %i.br, align 8, !tbaa !251
  br label %bb.h

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0109 = phi i64 [ %i.dj, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.0109 ; 4 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.0109 ; 3 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !254
  store i32 0, ptr %i.db, align 4, !tbaa !254
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !254
  store i32 %i.de, ptr %i.db, align 4, !tbaa !254
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !254
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !254
  store i32 0, ptr %i.df, align 4, !tbaa !254
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !254
  store i32 %i.di, ptr %i.df, align 4, !tbaa !254
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !254
  %i.dj = add nuw i64 %.0109, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.dj, %i.bm
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !4944

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE9priv_swapINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEENS0_12vec_iteratorISE_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !252  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !251  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_5dequeIS6_NS4_16simple_allocatorIS6_EEvEEE16priv_equal_rangeINS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEES5_EES3_IT_SK_ESK_SK_RKT0_:bb.a
_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_5dequeIS6_NS4_16simple_allocatorIS6_EEvEEE16priv_upper_boundINS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEES5_EET_SK_SK_RKT0_.exit: ; preds = %bb.y, %bb.x, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.._crit_edge_crit_edge, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.i21, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit20
  %.sink116 = phi ptr [ %i.do, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.i21 ], [ %i.do, %bb.x ], [ %i.do, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit20 ], [ %i.b, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.._crit_edge_crit_edge ], [ %.sroa.052.175, %bb.y ]
  %.sink114 = phi ptr [ %i.dn, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.i21 ], [ %i.dn, %bb.x ], [ %i.dn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit20 ], [ %.pre85, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.._crit_edge_crit_edge ], [ %.sroa.17.278, %bb.y ]
  %.sink112 = phi ptr [ %.sroa.052.2, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.i21 ], [ %.sroa.0.117.i38, %bb.x ], [ %.sroa.052.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit20 ], [ %i.b, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.._crit_edge_crit_edge ], [ %.sroa.052.175, %bb.y ]
  %.sink = phi ptr [ %.sroa.17.3, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.i21 ], [ %.sroa.11.220.i37, %bb.x ], [ %.sroa.17.3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit20 ], [ %.pre85, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit.._crit_edge_crit_edge ], [ %.sroa.17.278, %bb.y ]
  store ptr %.sink116, ptr %0, align 8, !tbaa !308
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink114, ptr %i.fn, align 8, !tbaa !309
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink112, ptr %i.fo, align 8, !tbaa !308
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.fp, align 8, !tbaa !309
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_5dequeISt4pairINS0_4test24movable_and_copyable_intES6_ENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 9 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !304, !noalias !16576 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.thread, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !305, !noalias !16577 ; 2 uses
  %i.e = lshr i64 %i.d, 4
  %.idx17 = and i64 %i.e, 1152921504606846968     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx17 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !262, !noalias !16576
  %i.h = and i64 %i.d, 127                        ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306, !noalias !16578 ; 2 uses
  %i.l = lshr i64 %i.k, 4
  %.idx = and i64 %i.l, 1152921504606846968       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !262, !noalias !16579
  %i.o = and i64 %i.k, 127                        ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %i.i, ptr %3, align 8, !tbaa !311
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.r, align 8, !tbaa !312
  %i.s = icmp eq ptr %i.p, %i.i
  br i1 %i.s, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx17
  %i.t = shl nsw i64 %gepdiff, 4
  %i.u = or disjoint i64 %i.o, %i.t
  %i.v = sub i64 %i.u, %i.h
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.thread, %bb.b, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit
  %i.w = phi ptr [ %i.q, %bb.b ], [ %i.q, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit ], [ %i.b, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.thread ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit ], [ 0, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.thread ]
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISK_E4typeET0_RT1_(ptr noundef nonnull align 8 dead_on_return %3, i64 noundef %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_sortINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_T0_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.y = trunc i64 %i.x to i32
  %i.z = shl i32 %i.y, 1
  %i.aa = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.z
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_sortINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_T0_.exit

bb.d:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !266 ; 2 uses
  %.not.i.i3.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i3.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit6.i.i, label %.preheader.i.i.i4.i.i

.preheader.i.i.i4.i.i:                            ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i5.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = shl i32 %i.ad, 1
  %i.af = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i5.i.i, %i.ae
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit6.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit6.i.i: ; preds = %.preheader.i.i.i4.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ab

_ZN5boost7movelib13adaptive_sortINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_T0_.exit: ; preds = %bb.c, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i.i6 = icmp eq ptr %0, %1
  br i1 %.not.i.i6, label %_ZN5boost9container5dequeISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EEvEaSEOS8_.exit, label %bb.e, !prof !225

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_sortINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_T0_.exit
  call void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  %i.ag = load ptr, ptr %0, align 8, !tbaa !301
  %i.ah = load ptr, ptr %1, align 8, !tbaa !301
  store ptr %i.ah, ptr %0, align 8, !tbaa !301
  store ptr %i.ag, ptr %1, align 8, !tbaa !301
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !226
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !226
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !226
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !226
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !226
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !226
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !226
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !226
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !226
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !226
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !226
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !226
  br label %_ZN5boost9container5dequeISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EEvEaSEOS8_.exit

_ZN5boost9container5dequeISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EEvEaSEOS8_.exit: ; preds = %_ZN5boost7movelib13adaptive_sortINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_T0_.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #25
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE18priv_merge_genericIPKS5_NS6_23flat_tree_value_compareISt4lessIS4_ES5_NS6_9select1stIS4_EEEEEEvT_SJ_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 4 uses
  %.idx = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx ; 9 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = sub i64 10, %i.b
  %.not.i.i = icmp ugt i64 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %.not17.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.i = and i64 %i.f, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.j = load i32, ptr %1, align 4, !tbaa !254, !noalias !16584
  store i32 %i.j, ptr %i.c, align 8, !tbaa !254, !noalias !16584
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !16584
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254, !noalias !16584
  store i32 %i.n, ptr %i.l, align 4, !tbaa !254, !noalias !16584
  %i.o = add i32 %i.k, 2
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !16584
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0919.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp eq i64 %i.f, 8
  br i1 %i.s, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0919.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i) ]
  %i.t = load i32, ptr %.0919.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !16584
  store i32 %i.t, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254, !noalias !16584
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !16584 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254, !noalias !16584
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254, !noalias !16584
  %i.y = add i32 %i.u, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !16584
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254, !noalias !16584
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !254, !noalias !16584
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254, !noalias !16584
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254, !noalias !16584
  %i.af = add i32 %i.u, 4
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !16584
  %i.ag = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %i.ai = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #25, !noalias !16584
  unreachable

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.aj = add i64 %i.b, %i.g                      ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !317, !noalias !16584
  %.idx9 = shl nuw nsw i64 %i.aj, 3               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx9 ; 2 uses
  %i.al = sub i64 10, %i.aj
  %i.am = icmp eq i64 %i.b, 0
  %i.an = icmp eq i64 %.idx, %.idx9
  %or.cond.i = or i1 %i.am, %i.an
  br i1 %or.cond.i, label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !254
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi ptr [ %i.ar, %bb.e ], [ %0, %.preheader.i ] ; 4 uses
  %i.ap = load i32, ptr %.0.i, align 4, !tbaa !254
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.d, !llvm.loop !8

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !254
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i = phi ptr [ %i.ak, %bb.f ], [ %i.av, %bb.i ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.025.i, i64 -8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ak, ptr %3, align 8, !tbaa !267
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.al, ptr %i.az, align 8, !tbaa !268
  %i.ba = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.bb = ptrtoint ptr %.0.i to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = ptrtoint ptr %.025.i to i64
  %i.bf = sub i64 %i.be, %i.ba
  %i.bg = ashr exact i64 %i.bf, 3
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull %.0.i, i64 noundef %i.bd, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = icmp eq ptr %i.av, %i.c
  br i1 %i.bh, label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.g, !llvm.loop !9

bb.j:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = shl i32 %i.bj, 1
  %i.bl = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i: ; preds = %.preheader.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit

bb.k:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load i64, ptr %i.ay, align 8, !tbaa !266 ; 2 uses
  %.not.i.i30.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i30.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i, label %.preheader.i.i.i31.i

.preheader.i.i.i31.i:                             ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i: ; preds = %.preheader.i.i.i31.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bm

_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapIS8_mSB_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !317  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317  ; 11 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter123 = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.b, 1
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter128 = and i64 %i.b, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01520.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ] ; 7 uses
  %.01619.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.v, %.lr.ph.i ] ; 6 uses
  %niter129 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter129.next.1, %.lr.ph.i ]
  %i.g = load i32, ptr %.01520.i, align 4, !tbaa !254
  store i32 0, ptr %.01520.i, align 4, !tbaa !254
  %i.h = load i32, ptr %.01619.i, align 4, !tbaa !254
  store i32 %i.h, ptr %.01520.i, align 4, !tbaa !254
  store i32 %i.g, ptr %.01619.i, align 4, !tbaa !254
  %i.i = getelementptr inbounds nuw i8, ptr %.01520.i, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01619.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  store i32 %i.l, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.j, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.01520.i, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01619.i, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.p, ptr %i.m, align 4, !tbaa !254
  store i32 %i.o, ptr %i.n, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.01520.i, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = load i32, ptr %i.r, align 4, !tbaa !254
  store i32 %i.t, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  %i.u = getelementptr inbounds nuw i8, ptr %.01520.i, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01619.i, i64 16 ; 3 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16585

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01520.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.u, %._crit_edge.i.loopexit.unr-lcssa ] ; 5 uses
  %.01619.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod127 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.w = load i32, ptr %.01520.i.epil.init, align 4, !tbaa !254
  store i32 0, ptr %.01520.i.epil.init, align 4, !tbaa !254
  %i.x = load i32, ptr %.01619.i.epil.init, align 4, !tbaa !254
  store i32 %i.x, ptr %.01520.i.epil.init, align 4, !tbaa !254
  store i32 %i.w, ptr %.01619.i.epil.init, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.01520.i.epil.init, i64 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01619.i.epil.init, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.01520.i.epil.init, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01619.i.epil.init, i64 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.b
  %.016.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil.preheader ] ; 7 uses
  %.015.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.i.epil.preheader ] ; 7 uses
  %i.ae = sub i64 %i.d, %i.b                      ; 9 uses
  %.pre37 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check73 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check73, label %.lr.ph.i.i.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %._crit_edge.i
  %i.af = sub i64 %i.d, %i.b
  %i.ag = shl i64 %i.af, 3                        ; 2 uses
  %i.ah = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ag
  %bound075 = icmp ult ptr %.015.lcssa.i, %i.ai
  %bound176 = icmp ult ptr %.016.lcssa.i, %i.ah
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %.lr.ph.i.i.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck74
  %n.vec79 = and i64 %i.ae, -4                    ; 3 uses
  %i.aj = and i64 %i.ae, 3
  %i.ak = shl i64 %n.vec79, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ak
  %i.an = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre37, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next98, %vector.body80 ] ; 2 uses
  %vec.phi82 = phi <2 x i32> [ %i.an, %vector.ph78 ], [ %i.aq, %vector.body80 ]
  %vec.phi83 = phi <2 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.ar, %vector.body80 ]
  %i.ao = shl i64 %index81, 3                     ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 16               ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ao ; 2 uses
  %next.gep85 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ap ; 2 uses
  %next.gep86 = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ao ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ap ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep86), "nonnull"(ptr %next.gep88) ]
  %wide.vec90 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !254, !alias.scope !16596
  %wide.vec93 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !254, !alias.scope !16596
  store <4 x i32> %wide.vec90, ptr %next.gep86, align 4, !tbaa !254, !alias.scope !16597, !noalias !16596
  store <4 x i32> %wide.vec93, ptr %next.gep88, align 4, !tbaa !254, !alias.scope !16597, !noalias !16596
  store <4 x i32> zeroinitializer, ptr %next.gep84, align 4, !tbaa !254, !alias.scope !16596
  store <4 x i32> zeroinitializer, ptr %next.gep85, align 4, !tbaa !254, !alias.scope !16596
  %i.aq = add <2 x i32> %vec.phi82, splat (i32 2) ; 2 uses
  %i.ar = add <2 x i32> %vec.phi83, splat (i32 2) ; 2 uses
  %index.next98 = add nuw i64 %index81, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next98, %n.vec79
  br i1 %i.as, label %middle.block99, label %vector.body80, !llvm.loop !16589

middle.block99:                                   ; preds = %vector.body80
  %bin.rdx100 = add <2 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx100) ; 2 uses
  %cmp.n101 = icmp eq i64 %i.ae, %n.vec79
  br i1 %cmp.n101, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck74, %._crit_edge.i, %middle.block99
  %.ph = phi i32 [ %.pre37, %vector.memcheck74 ], [ %.pre37, %._crit_edge.i ], [ %i.at, %middle.block99 ] ; 2 uses
  %.020.i.i.ph = phi i64 [ %i.ae, %vector.memcheck74 ], [ %i.ae, %._crit_edge.i ], [ %i.aj, %middle.block99 ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %.016.lcssa.i, %vector.memcheck74 ], [ %.016.lcssa.i, %._crit_edge.i ], [ %i.al, %middle.block99 ] ; 5 uses
  %.01618.i.i.ph = phi ptr [ %.015.lcssa.i, %vector.memcheck74 ], [ %.015.lcssa.i, %._crit_edge.i ], [ %i.am, %middle.block99 ] ; 5 uses
  %xtraiter130 = and i64 %.020.i.i.ph, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.au = add nsw i64 %.020.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.ph) ]
  %i.av = load i32, ptr %.0819.i.i.ph, align 4, !tbaa !254
  store i32 %i.av, ptr %.01618.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.ph, align 4, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.ph, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.ph, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !254
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %i.ax, align 4, !tbaa !254
  %i.az = add i32 %.ph, 2                         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.ph, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.ph, i64 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %.unr132 = phi i32 [ %.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.au, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bc = icmp eq i64 %.020.i.i.ph, 1
  br i1 %i.bc, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bd = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %.unr132, %.lr.ph.i.i.prol.loopexit ]
  %.020.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.be = load i32, ptr %.0819.i.i, align 4, !tbaa !254
  store i32 %i.be, ptr %.01618.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.bk = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !254
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !254
  store i32 0, ptr %i.bi, align 4, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !254
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !254
  store i32 0, ptr %i.bn, align 4, !tbaa !254
  %i.bp = add i32 %i.bd, 4                        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !16590

bb.c:                                             ; preds = %bb.a
  %.not18.i10 = icmp eq i64 %i.d, 0
  br i1 %.not18.i10, label %._crit_edge.i16, label %.lr.ph.i11.preheader

.lr.ph.i11.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.d, 1
  %i.bs = icmp eq i64 %i.d, 1
  br i1 %i.bs, label %.lr.ph.i11.epil.preheader, label %.lr.ph.i11.preheader.new

.lr.ph.i11.preheader.new:                         ; preds = %.lr.ph.i11.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.i11.preheader.new
  %.01520.i13 = phi ptr [ %1, %.lr.ph.i11.preheader.new ], [ %i.ch, %.lr.ph.i11 ] ; 7 uses
  %.01619.i14 = phi ptr [ %0, %.lr.ph.i11.preheader.new ], [ %i.ci, %.lr.ph.i11 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i11.preheader.new ], [ %niter.next.1, %.lr.ph.i11 ]
  %i.bt = load i32, ptr %.01520.i13, align 4, !tbaa !254
  store i32 0, ptr %.01520.i13, align 4, !tbaa !254
  %i.bu = load i32, ptr %.01619.i14, align 4, !tbaa !254
  store i32 %i.bu, ptr %.01520.i13, align 4, !tbaa !254
  store i32 %i.bt, ptr %.01619.i14, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bv, align 4, !tbaa !254
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !254
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  %i.bz = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.bz, align 4, !tbaa !254
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 12 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 12 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !254
  store i32 0, ptr %i.cd, align 4, !tbaa !254
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !254
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 16 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i16.loopexit.unr-lcssa, label %.lr.ph.i11, !llvm.loop !16585

._crit_edge.i16.loopexit.unr-lcssa:               ; preds = %.lr.ph.i11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i16, label %.lr.ph.i11.epil.preheader

.lr.ph.i11.epil.preheader:                        ; preds = %._crit_edge.i16.loopexit.unr-lcssa, %.lr.ph.i11.preheader
  %.01520.i13.epil.init = phi ptr [ %1, %.lr.ph.i11.preheader ], [ %i.ch, %._crit_edge.i16.loopexit.unr-lcssa ] ; 5 uses
  %.01619.i14.epil.init = phi ptr [ %0, %.lr.ph.i11.preheader ], [ %i.ci, %._crit_edge.i16.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod120 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.cj = load i32, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  store i32 0, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  %i.ck = load i32, ptr %.01619.i14.epil.init, align 4, !tbaa !254
  store i32 %i.ck, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  store i32 %i.cj, ptr %.01619.i14.epil.init, align 4, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.01520.i13.epil.init, i64 4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01619.i14.epil.init, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.cl, align 4, !tbaa !254
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !254
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !254
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.01520.i13.epil.init, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.01619.i14.epil.init, i64 8
  br label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %.lr.ph.i11.epil.preheader, %._crit_edge.i16.loopexit.unr-lcssa, %bb.c
  %.016.lcssa.i17 = phi ptr [ %0, %bb.c ], [ %i.ci, %._crit_edge.i16.loopexit.unr-lcssa ], [ %i.cq, %.lr.ph.i11.epil.preheader ] ; 7 uses
  %.015.lcssa.i18 = phi ptr [ %1, %bb.c ], [ %i.ch, %._crit_edge.i16.loopexit.unr-lcssa ], [ %i.cp, %.lr.ph.i11.epil.preheader ] ; 7 uses
  %i.cr = sub nuw i64 %i.b, %i.d                  ; 10 uses
  %.not17.i.i19 = icmp eq i64 %i.cr, 0
  br i1 %.not17.i.i19, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit, label %.lr.ph.i.i20.preheader

.lr.ph.i.i20.preheader:                           ; preds = %._crit_edge.i16
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %.lr.ph.i.i20.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i20.preheader
  %i.cs = sub i64 %i.b, %i.d
  %i.ct = shl i64 %i.cs, 3                        ; 2 uses
  %i.cu = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.ct
  %bound0 = icmp ult ptr %.015.lcssa.i18, %i.cv
  %bound1 = icmp ult ptr %.016.lcssa.i17, %i.cu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i20.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -4                      ; 3 uses
  %i.cw = and i64 %i.cr, 3
  %i.cx = shl i64 %n.vec, 3                       ; 2 uses
  %i.cy = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.cx
  %i.cz = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.cx
  %i.da = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.da, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi54 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %i.db = shl i64 %index, 3                       ; 3 uses
  %i.dc = or disjoint i64 %i.db, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.db ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.dc ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.db ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.dc ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep56), "nonnull"(ptr %next.gep58) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254, !alias.scope !16598
  %wide.vec61 = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !254, !alias.scope !16598
  store <4 x i32> %wide.vec, ptr %next.gep56, align 4, !tbaa !254, !alias.scope !16599, !noalias !16598
  store <4 x i32> %wide.vec61, ptr %next.gep58, align 4, !tbaa !254, !alias.scope !16599, !noalias !16598
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !254, !alias.scope !16598
  store <4 x i32> zeroinitializer, ptr %next.gep55, align 4, !tbaa !254, !alias.scope !16598
  %i.dd = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.de = add <2 x i32> %vec.phi54, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !16594

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.de, %i.dd
  %i.dg = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20.preheader110

.lr.ph.i.i20.preheader110:                        ; preds = %vector.memcheck, %.lr.ph.i.i20.preheader, %middle.block
  %.ph111 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i20.preheader ], [ %i.dg, %middle.block ] ; 2 uses
  %.020.i.i21.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i20.preheader ], [ %i.cw, %middle.block ] ; 4 uses
  %.0819.i.i22.ph = phi ptr [ %.016.lcssa.i17, %vector.memcheck ], [ %.016.lcssa.i17, %.lr.ph.i.i20.preheader ], [ %i.cy, %middle.block ] ; 5 uses
  %.01618.i.i23.ph = phi ptr [ %.015.lcssa.i18, %vector.memcheck ], [ %.015.lcssa.i18, %.lr.ph.i.i20.preheader ], [ %i.cz, %middle.block ] ; 5 uses
  %xtraiter121 = and i64 %.020.i.i21.ph, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.i20.prol.loopexit, label %.lr.ph.i.i20.prol

.lr.ph.i.i20.prol:                                ; preds = %.lr.ph.i.i20.preheader110
  %i.dh = add nsw i64 %.020.i.i21.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i23.ph) ]
  %i.di = load i32, ptr %.0819.i.i22.ph, align 4, !tbaa !254
  store i32 %i.di, ptr %.01618.i.i23.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i22.ph, align 4, !tbaa !254
  %i.dj = getelementptr inbounds nuw i8, ptr %.01618.i.i23.ph, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i.i22.ph, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !254
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !254
  store i32 0, ptr %i.dk, align 4, !tbaa !254
  %i.dm = add i32 %.ph111, 2                      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0819.i.i22.ph, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i.i23.ph, i64 8
  br label %.lr.ph.i.i20.prol.loopexit

.lr.ph.i.i20.prol.loopexit:                       ; preds = %.lr.ph.i.i20.prol, %.lr.ph.i.i20.preheader110
  %.lcssa113.unr = phi i32 [ poison, %.lr.ph.i.i20.preheader110 ], [ %i.dm, %.lr.ph.i.i20.prol ]
  %.unr = phi i32 [ %.ph111, %.lr.ph.i.i20.preheader110 ], [ %i.dm, %.lr.ph.i.i20.prol ]
  %.020.i.i21.unr = phi i64 [ %.020.i.i21.ph, %.lr.ph.i.i20.preheader110 ], [ %i.dh, %.lr.ph.i.i20.prol ]
  %.0819.i.i22.unr = phi ptr [ %.0819.i.i22.ph, %.lr.ph.i.i20.preheader110 ], [ %i.dn, %.lr.ph.i.i20.prol ]
  %.01618.i.i23.unr = phi ptr [ %.01618.i.i23.ph, %.lr.ph.i.i20.preheader110 ], [ %i.do, %.lr.ph.i.i20.prol ]
  %i.dp = icmp eq i64 %.020.i.i21.ph, 1
  br i1 %i.dp, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.prol.loopexit, %.lr.ph.i.i20
  %i.dq = phi i32 [ %i.ec, %.lr.ph.i.i20 ], [ %.unr, %.lr.ph.i.i20.prol.loopexit ]
  %.020.i.i21 = phi i64 [ %i.dx, %.lr.ph.i.i20 ], [ %.020.i.i21.unr, %.lr.ph.i.i20.prol.loopexit ]
  %.0819.i.i22 = phi ptr [ %i.ed, %.lr.ph.i.i20 ], [ %.0819.i.i22.unr, %.lr.ph.i.i20.prol.loopexit ] ; 6 uses
  %.01618.i.i23 = phi ptr [ %i.ee, %.lr.ph.i.i20 ], [ %.01618.i.i23.unr, %.lr.ph.i.i20.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i23) ]
  %i.dr = load i32, ptr %.0819.i.i22, align 4, !tbaa !254
  store i32 %i.dr, ptr %.01618.i.i23, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i22, align 4, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !254
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !254
  store i32 0, ptr %i.dt, align 4, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 8
  %i.dx = add i64 %.020.i.i21, -2                 ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !254
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !254
  store i32 0, ptr %i.dv, align 4, !tbaa !254
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 12 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !254
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !254
  store i32 0, ptr %i.ea, align 4, !tbaa !254
  %i.ec = add i32 %i.dq, 4                        ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 16
  %.not.i.i24.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i24.1, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20, !llvm.loop !16595

_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split: ; preds = %.lr.ph.i.i20.prol.loopexit, %.lr.ph.i.i20, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %middle.block99
  %.sink46 = phi i64 [ %i.ae, %middle.block99 ], [ %i.cr, %middle.block ], [ %i.ae, %.lr.ph.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i ], [ %i.cr, %.lr.ph.i.i20 ], [ %i.cr, %.lr.ph.i.i20.prol.loopexit ]
  %.lcssa42.sink = phi i32 [ %i.at, %middle.block99 ], [ %i.dg, %middle.block ], [ %i.bp, %.lr.ph.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa113.unr, %.lr.ph.i.i20.prol.loopexit ], [ %i.ec, %.lr.ph.i.i20 ]
  %i.ef = trunc i64 %.sink46 to i32
  %i.eg = shl i32 %i.ef, 1
  %i.eh = sub i32 %.lcssa42.sink, %i.eg
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit

_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit: ; preds = %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, %._crit_edge.i16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !226
  store i64 %i.b, ptr %i.c, align 8, !tbaa !226
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.j = trunc i64 %i.i to i32
  %i.k = shl i32 %i.j, 1
  %i.l = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.k
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i6.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i, label %.preheader.i.i.i7.i.i

.preheader.i.i.i7.i.i:                            ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
end_hunk_5

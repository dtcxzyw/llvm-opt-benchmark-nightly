Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_12small_vectorISt4pairIS3_S3_ELm10ESaIS8_EvEEEC2Ev:bb.a
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
  %i.ac = add i64 %.020.i.i.i.i.i.i.i, -2         ; 2 uses
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
  %i.ac = add i64 %.020.i.i.i.i.i.i.i, -2         ; 2 uses
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
  %i.ac = add i64 %.020.i.i.i.i.i.i.i, -2         ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2ERKS5_:bb.a
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
  %i.z = add i64 %.020.i.i.i.i.i.i.i, -2          ; 2 uses
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
  %i.z = add i64 %.020.i.i.i.i.i.i.i, -2          ; 2 uses
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
  %i.z = add i64 %.020.i.i.i.i.i.i.i, -2          ; 2 uses
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
  %i.e = add i64 %.020.i.i.i.i.i.prol, -1         ; 2 uses
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
  %i.ae = add i64 %.020.i.i.i.i.i, -4             ; 2 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -2                       ; 3 uses
  %i.g = and i64 %i.c, 1
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep3 = getelementptr i8, ptr %0, i64 %i.k
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2803
  store <4 x i32> %wide.vec, ptr %next.gep3, align 8, !tbaa !254, !alias.scope !2804, !noalias !2803
  store <4 x i32> zeroinitializer, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2803
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.preheader7:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.i.i.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ] ; 5 uses
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %xtraiter = and i64 %.020.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader7
  %i.m = add nsw i64 %.020.i.i.i.i.i.i.ph, -1
  %i.n = load i32, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.n, ptr %.01618.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  store i32 %i.q, ptr %i.o, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader7
  %.020.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.t = icmp eq i64 %.020.i.i.i.i.i.i.ph, 1
  br i1 %i.t, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.u, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.aa = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ad, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aa, 0
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
  %i.e = add i64 %.020.i.i.i.i.i.prol, -1         ; 2 uses
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
  %i.ae = add i64 %.020.i.i.i.i.i, -4             ; 2 uses
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.d = shl i64 %i.c, 3                          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -2                       ; 3 uses
  %i.g = and i64 %i.c, 1
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep4 = getelementptr i8, ptr %0, i64 %i.k
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2811
  store <4 x i32> %wide.vec, ptr %next.gep4, align 8, !tbaa !254, !alias.scope !2812, !noalias !2811
  store <4 x i32> zeroinitializer, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2811
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.i.i.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ] ; 5 uses
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %xtraiter = and i64 %.020.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader8
  %i.m = add nsw i64 %.020.i.i.i.i.i.i.ph, -1
  %i.n = load i32, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.n, ptr %.01618.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  store i32 %i.q, ptr %i.o, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader8
  %.020.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.t = icmp eq i64 %.020.i.i.i.i.i.i.ph, 1
  br i1 %i.t, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.u, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %i.v, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.aa = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ad, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aa, 0
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
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i.i.i.prol
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7move_opESB_EEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_T4_:bb.a
  br i1 %i.pg, label %bb.bt, label %bb.bu, !prof !225

bb.bt:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.ph = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !262
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i

bb.bu:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.pk = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i: ; preds = %bb.bu, %bb.bt
  %.sroa.6.1 = phi ptr [ %i.ph, %bb.bt ], [ %.sroa.6.0, %bb.bu ]
  %storemerge.i11.i = phi ptr [ %i.pj, %bb.bt ], [ %i.pk, %bb.bu ] ; 3 uses
  store i32 %i.oo, ptr %storemerge.i11.i, align 4, !tbaa !254
  store i32 0, ptr %i.og, align 4, !tbaa !254
  %i.pl = getelementptr inbounds i8, ptr %.023.i, i64 -4 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %storemerge.i11.i, i64 4
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !254
  store i32 %i.pn, ptr %i.pm, align 4, !tbaa !254
  store i32 0, ptr %i.pl, align 4, !tbaa !254
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i
  %.sroa.6167.3 = phi ptr [ %.sroa.6167.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6167.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0165.2 = phi ptr [ %storemerge.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.0165.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0.1 = phi ptr [ %storemerge.i9.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %storemerge.i11.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.1.i158 = phi ptr [ %.023.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %i.og, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ] ; 2 uses
  %.not.i159 = icmp eq ptr %i.nq, %.1.i158
  br i1 %.not.i159, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i157, !llvm.loop !168

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.bv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ult i64 %3, %4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !311    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !312  ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !262
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.thread29, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %i.bs, %.thread29 ]
  ret i64 %.018.lcssa

bb.b:                                             ; preds = %.lr.ph, %.thread29
  %.032 = phi i64 [ %3, %.lr.ph ], [ %i.bt, %.thread29 ] ; 5 uses
  %.01831 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %.thread29 ] ; 5 uses
  %i.r = mul i64 %.01831, %2                      ; 2 uses
  %i.s = add nsw i64 %i.i, %i.r                   ; 4 uses
  %or.cond.i = icmp ult i64 %i.s, 128
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.r
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = lshr i64 %i.s, 7                         ; 2 uses
  %i.w = or disjoint i64 %i.v, -144115188075855872
  %i.x = select i1 %i.u, i64 %i.v, i64 %i.w       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !262
  %i.aa = shl nsw i64 %i.x, 7
  %i.ab = sub nsw i64 %i.s, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = mul i64 %.032, %2                       ; 2 uses
  %i.ae = add nsw i64 %i.i, %i.ad                 ; 4 uses
  %or.cond.i19 = icmp ult i64 %i.ae, 128
  br i1 %or.cond.i19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit
  %i.af = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ad
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit21

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit
  %i.ag = icmp sgt i64 %i.ae, 0
  %i.ah = lshr i64 %i.ae, 7                       ; 2 uses
  %i.ai = or disjoint i64 %i.ah, -144115188075855872
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.am = shl nsw i64 %i.aj, 7
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit21

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit21: ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.af, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = add nsw i64 %i.q, %.01831               ; 4 uses
  %or.cond.i22 = icmp ult i64 %i.ap, 128
  br i1 %or.cond.i22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit21
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.01831
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit24

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit21
  %i.ar = icmp sgt i64 %i.ap, 0
  %i.as = lshr i64 %i.ap, 7                       ; 2 uses
  %i.at = or disjoint i64 %i.as, -144115188075855872
  %i.au = select i1 %i.ar, i64 %i.as, i64 %i.at   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !262
  %i.ax = shl nsw i64 %i.au, 7
  %i.ay = sub nsw i64 %i.ap, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ay
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit24

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit24: ; preds = %bb.g, %bb.h
  %.0.i23 = phi ptr [ %i.aq, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = add nsw i64 %i.q, %.032                 ; 4 uses
  %or.cond.i25 = icmp ult i64 %i.ba, 128
  br i1 %or.cond.i25, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit24
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.032
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit27

bb.j:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit24
  %i.bc = icmp sgt i64 %i.ba, 0
  %i.bd = lshr i64 %i.ba, 7                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, -144115188075855872
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !262
  %i.bi = shl nsw i64 %i.bf, 7
  %i.bj = sub nsw i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit27

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit27: ; preds = %bb.i, %bb.j
  %.0.i26 = phi ptr [ %i.bb, %bb.i ], [ %i.bk, %bb.j ]
  %i.bl = load i32, ptr %.0.i20, align 4, !tbaa !254 ; 2 uses
  %i.bm = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit27
  %i.bo = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bo, label %.thread29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %.0.i26, align 4, !tbaa !254
  %i.bq = load i32, ptr %.0.i23, align 4, !tbaa !254
  %i.br = icmp slt i32 %i.bp, %i.bq
  %cond.fr = freeze i1 %i.br
  br i1 %cond.fr, label %.thread, label %.thread29

.thread:                                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit27, %bb.l
  br label %.thread29

.thread29:                                        ; preds = %bb.k, %bb.l, %.thread
  %i.bs = phi i64 [ %.032, %.thread ], [ %.01831, %bb.l ], [ %.01831, %bb.k ] ; 2 uses
  %i.bt = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_NS3_ISA_EESC_SL_NS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #4 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::inverse.92", align 1 ; 3 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %19 = alloca %"struct.boost::movelib::antistable.93", align 8 ; 4 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 9 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 9 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %.not170 = icmp eq i64 %8, 0
  br i1 %.not170, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %27 = load <2 x ptr>, ptr %1, align 8, !tbaa !314, !noalias !11076
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit
  %i.m = phi i64 [ %10, %.lr.ph ], [ %i.iu, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0172 = phi i64 [ %9, %.lr.ph ], [ %i.is, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0163171 = phi i64 [ %8, %.lr.ph ], [ %i.iv, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %28 = phi <2 x ptr> [ %27, %.lr.ph ], [ %30, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11076)
  store <2 x ptr> %28, ptr %20, align 16, !tbaa !314, !alias.scope !11076
  call void @llvm.experimental.noalias.scope.decl(metadata !11077)
  %i.n = load <2 x ptr>, ptr %3, align 8, !tbaa !314, !noalias !11077
  store <2 x ptr> %i.n, ptr %21, align 16, !tbaa !314, !alias.scope !11077
  %i.o = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SL_EENS0_9iter_sizeIT1_E4typeET_T0_SN_SP_SP_SP_T2_(ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, i64 noundef %7, i64 noundef %.0172, i64 noundef %i.m) ; 5 uses
  %i.p = add i64 %i.o, 2
  %i.q = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.p) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.q, i64 %.0163171)
  %i.r = load ptr, ptr %3, align 8, !tbaa !311, !noalias !11078 ; 6 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !312, !noalias !11078 ; 8 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !262, !noalias !11079
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub nsw i64 %i.x, %7                     ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.y, 128
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = lshr i64 %i.y, 7                        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, -144115188075855872
  %i.ad = select i1 %i.aa, i64 %i.ab, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !262, !noalias !11079
  %i.ag = shl nsw i64 %i.ad, 7
  %i.ah = sub nsw i64 %i.y, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.aj = phi ptr [ %i.s, %bb.b ], [ %i.ae, %bb.e ], [ %i.s, %bb.d ] ; 5 uses
  %i.ak = phi ptr [ %i.r, %bb.b ], [ %i.ai, %bb.e ], [ %i.z, %bb.d ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.al = mul i64 %i.o, %7                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11080)
  %i.am = sub nsw i64 0, %i.al
  %.not.i.i.i.i25 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !262, !noalias !11080
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub nsw i64 %i.ar, %i.al                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.as, 128
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.am
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.au = icmp sgt i64 %i.as, 0
  %i.av = lshr i64 %i.as, 7                       ; 2 uses
  %i.aw = or disjoint i64 %i.av, -144115188075855872
  %i.ax = select i1 %i.au, i64 %i.av, i64 %i.aw   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !262, !noalias !11080
  %i.ba = shl nsw i64 %i.ax, 7
  %i.bb = sub nsw i64 %i.as, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.bd = phi ptr [ %i.s, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.ay, %bb.h ], [ %i.s, %bb.g ] ; 3 uses
  %i.be = phi ptr [ %i.r, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.bc, %bb.h ], [ %i.at, %bb.g ] ; 4 uses
  store ptr %i.be, ptr %22, align 8, !tbaa !311, !alias.scope !11081
  store ptr %i.bd, ptr %i.d, align 8, !tbaa !312, !alias.scope !11081
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !262, !noalias !11082
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = sub nsw i64 %i.bj, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bk, 128
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bm = icmp sgt i64 %i.bk, 0
  %i.bn = lshr i64 %i.bk, 7                       ; 2 uses
  %i.bo = or disjoint i64 %i.bn, -144115188075855872
  %i.bp = select i1 %i.bm, i64 %i.bn, i64 %i.bo   ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !262, !noalias !11082
  %i.bs = shl nsw i64 %i.bp, 7
  %i.bt = sub nsw i64 %i.bk, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bt
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.bv = phi ptr [ %i.be, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30 ], [ %i.bu, %bb.k ], [ %i.bl, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %.not23 = icmp eq i64 %i.o, 0                   ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !345   ; 3 uses
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  %i.bx = load ptr, ptr %6, align 8, !tbaa !311, !noalias !11083 ; 2 uses
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !312, !noalias !11083 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bw, ptr %13, align 8, !tbaa !345, !noalias !11084
  store ptr %i.ak, ptr %14, align 8, !tbaa !311, !alias.scope !11085, !noalias !11084
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !312, !alias.scope !11085, !noalias !11084
  store ptr %i.bx, ptr %15, align 8, !tbaa !311, !alias.scope !11086, !noalias !11084
  store ptr %i.by, ptr %i.i, align 8, !tbaa !312, !alias.scope !11086, !noalias !11084
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_14deque_iteratorIS9_Lb0ELj0ELj0EmEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SS_SO_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dead_on_return %15)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  store ptr %i.bw, ptr %16, align 8, !tbaa !345, !noalias !11084
  store ptr %i.ak, ptr %17, align 8, !tbaa !311, !alias.scope !11087, !noalias !11084
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !312, !alias.scope !11087, !noalias !11084
  store ptr %i.bx, ptr %18, align 8, !tbaa !311, !alias.scope !11088, !noalias !11084
  store ptr %i.by, ptr %i.g, align 8, !tbaa !312, !alias.scope !11088, !noalias !11084
  store ptr %12, ptr %19, align 8, !tbaa !351, !noalias !11084
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_14deque_iteratorIS9_Lb0ELj0ELj0EmEEEESD_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSG_9select1stIS7_EEEEEEEENS0_7move_opEEET1_RT_SR_RT0_ST_SU_SQ_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19)
  br label %.thread

bb.o:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  store ptr %i.bw, ptr %24, align 8, !tbaa !345
  store ptr %i.ak, ptr %25, align 8, !tbaa !311, !alias.scope !11089
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !312, !alias.scope !11089
  call void @llvm.experimental.noalias.scope.decl(metadata !11090)
  %i.bz = load <2 x ptr>, ptr %6, align 8, !tbaa !314, !noalias !11090
  store <2 x ptr> %i.bz, ptr %26, align 16, !tbaa !314, !alias.scope !11090
  call void @_ZN5boost7movelib15detail_adaptive16op_partial_mergeINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_14deque_iteratorIS9_Lb0ELj0ELj0EmEEEESD_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSF_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SP_RT0_SR_SO_T2_T3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i1 noundef zeroext %11)
  %i.ca = load ptr, ptr %23, align 8, !tbaa !311, !noalias !11091 ; 4 uses
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !312, !noalias !11091 ; 3 uses
  store ptr %i.ca, ptr %6, align 8, !tbaa !311
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.cc = load ptr, ptr %3, align 8, !tbaa !311   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, label %bb.al

.thread:                                          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ce = load ptr, ptr %23, align 8, !tbaa !311, !noalias !11091 ; 4 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !312, !noalias !11091 ; 3 uses
  store ptr %i.ce, ptr %6, align 8, !tbaa !311
  store ptr %i.cf, ptr %i.e, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.cg = load ptr, ptr %3, align 8, !tbaa !311   ; 5 uses
  %i.ch = icmp eq ptr %i.cg, %i.ce
  br i1 %i.ch, label %.thread164, label %.thread165

.thread164:                                       ; preds = %.thread
  %i.ci = load ptr, ptr %22, align 8, !tbaa !311, !noalias !11092 ; 2 uses
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !312, !noalias !11093 ; 2 uses
  %.not6.i = icmp eq ptr %i.ci, %i.bv
  br i1 %.not6.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread214, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread164
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !312, !noalias !11092 ; 2 uses
  %.pre177 = load ptr, ptr %i.ck, align 8, !tbaa !262, !noalias !11094
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i
  %i.cl = phi ptr [ %i.di, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.pre177, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0109.0 = phi ptr [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.cg, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.5111.0 = phi ptr [ %.sroa.5111.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.cj, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.4117.0 = phi ptr [ %.sroa.4117.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.ck, %.lr.ph.i.preheader ] ; 3 uses
  %i.cm = phi ptr [ %storemerge.i.i3.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.ci, %.lr.ph.i.preheader ] ; 3 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl                ; 2 uses
  br i1 %i.cn, label %bb.p, label %bb.q, !prof !225

end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_NS3_ISA_EESC_SL_NS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  store i32 0, ptr %i.fx, align 4, !tbaa !254, !noalias !11102
  br i1 %i.fl, label %bb.aq, label %bb.ar, !prof !225

bb.aq:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.ga = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !262, !noalias !11102 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

bb.ar:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gd = getelementptr inbounds i8, ptr %i.fk, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.ar, %bb.aq
  %i.ge = phi ptr [ %i.gb, %bb.aq ], [ %i.fj, %bb.ar ]
  %.sroa.4.1.i = phi ptr [ %i.ga, %bb.aq ], [ %.sroa.4.0.i, %bb.ar ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.gc, %bb.aq ], [ %i.gd, %bb.ar ] ; 2 uses
  br i1 %i.fr, label %bb.as, label %bb.at, !prof !225

bb.as:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gf = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !262, !noalias !11102
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.at:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.at, %bb.as
  %.sroa.5.1.i = phi ptr [ %i.gf, %bb.as ], [ %.sroa.5.0.i, %bb.at ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.gh, %bb.as ], [ %i.gi, %bb.at ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.ak
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !174

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread: ; preds = %bb.al, %bb.o
  %storemerge167.ph = phi ptr [ %i.ca, %bb.al ], [ %i.ak, %bb.o ]
  %storemerge.ph = phi ptr [ %i.cb, %bb.al ], [ %i.aj, %bb.o ]
  store ptr %storemerge167.ph, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph, ptr %i.e, align 8, !tbaa !312
  %i.gj = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11103 ; 2 uses
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11103 ; 2 uses
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread214: ; preds = %.thread165, %.thread164
  %storemerge167.ph212 = phi ptr [ %i.ce, %.thread165 ], [ %i.cg, %.thread164 ]
  %storemerge.ph213 = phi ptr [ %i.cf, %.thread165 ], [ %i.cj, %.thread164 ]
  store ptr %storemerge167.ph212, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph213, ptr %i.e, align 8, !tbaa !312
  %i.gl = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11103
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11103
  br label %bb.au

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i
  %storemerge167 = phi ptr [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %storemerge.i.i3.i42, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %.sroa.5111.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %.sroa.4100.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  store ptr %storemerge167, ptr %6, align 8, !tbaa !311
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !312
  %i.gn = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11103 ; 3 uses
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11103 ; 3 uses
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, label %bb.au

bb.au:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread214, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit
  %i.gp = phi ptr [ %i.gm, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread214 ], [ %i.go, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 5 uses
  %i.gq = phi ptr [ %i.gl, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread214 ], [ %i.gn, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 4 uses
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !262, !noalias !11104
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 3
  %i.gw = sub nsw i64 %i.gv, %i.o                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.gw, 128
  br i1 %or.cond.i.i.i.i57, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gx = sub nsw i64 0, %i.o
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gx
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

bb.aw:                                            ; preds = %bb.au
  %i.gz = icmp sgt i64 %i.gw, 0
  %i.ha = lshr i64 %i.gw, 7                       ; 2 uses
  %i.hb = or disjoint i64 %i.ha, -144115188075855872
  %i.hc = select i1 %i.gz, i64 %i.ha, i64 %i.hb   ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hc ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !262, !noalias !11104
  %i.hf = shl nsw i64 %i.hc, 7
  %i.hg = sub nsw i64 %i.gw, %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hg
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, %bb.av, %bb.aw
  %i.hi = phi ptr [ %i.go, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.gp, %bb.aw ], [ %i.gp, %bb.av ], [ %i.gk, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.hj = phi ptr [ %i.gn, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.gq, %bb.aw ], [ %i.gq, %bb.av ], [ %i.gj, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.hk = phi ptr [ %i.go, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hd, %bb.aw ], [ %i.gp, %bb.av ], [ %i.gk, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.hl = phi ptr [ %i.gn, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hh, %bb.aw ], [ %i.gy, %bb.av ], [ %i.gj, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.hm = load ptr, ptr %22, align 8, !tbaa !311, !noalias !11105
  %.not.i59 = icmp eq ptr %i.ak, %i.hm
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.hl, %i.hj
  br i1 %.not13.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !262
  %i.ho = icmp eq ptr %i.hl, %i.hn
  br i1 %i.ho, label %bb.ay, label %bb.az, !prof !225

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !262
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

bb.az:                                            ; preds = %bb.ax
  %i.hs = getelementptr inbounds i8, ptr %i.hl, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.az, %bb.ay
  %storemerge.i.i.i78 = phi ptr [ %i.hs, %bb.az ], [ %i.hr, %bb.ay ] ; 4 uses
  %i.ht = load ptr, ptr %i.hi, align 8, !tbaa !262
  %i.hu = icmp eq ptr %i.hj, %i.ht
  br i1 %i.hu, label %bb.ba, label %bb.bb, !prof !225

bb.ba:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.hv = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !262
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

bb.bb:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.hy = getelementptr inbounds i8, ptr %i.hj, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.bb, %bb.ba
  %storemerge.i.i4.i79 = phi ptr [ %i.hy, %bb.bb ], [ %i.hx, %bb.ba ] ; 3 uses
  %i.hz = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  %i.ia = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  store i32 %i.ia, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 %i.hz, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i78, i64 4 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %storemerge.i.i4.i79, i64 4 ; 2 uses
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !254
  store i32 0, ptr %i.ib, align 4, !tbaa !254
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !254
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !254
  store i32 %i.id, ptr %i.ic, align 4, !tbaa !254
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.if = load ptr, ptr %2, align 8, !tbaa !311   ; 2 uses
  %i.ig = icmp eq ptr %i.hl, %i.if
  br i1 %i.ig, label %.sink.split.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ih = icmp eq ptr %i.if, %i.hj
  br i1 %i.ih, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.bd, %bb.bc
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.hi, %bb.bc ], [ %i.hk, %bb.bd ]
  %.sink23.i = phi ptr [ %i.hj, %bb.bc ], [ %i.hl, %bb.bd ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !311
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.l, align 8, !tbaa !312
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, %bb.bd, %.sink.split.i
  store ptr %i.ak, ptr %3, align 8, !tbaa !311
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !312
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !312 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !262
  %i.ik = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ij
  br i1 %i.il, label %bb.be, label %bb.bf, !prof !225

bb.be:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 -8 ; 3 uses
  store ptr %i.im, ptr %i.a, align 8, !tbaa !312
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !262
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

bb.bf:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.ip = getelementptr inbounds i8, ptr %i.ik, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.be, %bb.bf
  %i.iq = phi ptr [ %i.ii, %bb.bf ], [ %i.im, %bb.be ]
  %storemerge.i.i = phi ptr [ %i.ip, %bb.bf ], [ %i.io, %bb.be ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !311
  %i.ir = icmp ne i64 %.0172, 0
  %.neg = sext i1 %i.ir to i64
  %i.is = add i64 %.0172, %.neg
  %i.it = icmp ne i64 %i.q, 0
  %.neg24 = sext i1 %i.it to i64
  %i.iu = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.iv = add i64 %.0163171, -1                   ; 2 uses
  %.not = icmp eq i64 %i.iv, 0
  %29 = insertelement <2 x ptr> poison, ptr %storemerge.i.i, i64 0
  %30 = insertelement <2 x ptr> %29, ptr %i.iq, i64 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11073

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11106)
  %i.iw = load <2 x ptr>, ptr %6, align 8, !tbaa !314, !noalias !11106
  store <2 x ptr> %i.iw, ptr %0, align 8, !tbaa !314, !alias.scope !11106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 7 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %6, align 8, !tbaa !262    ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !262
  %i.c = load ptr, ptr %7, align 8, !tbaa !262    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %3, align 8, !tbaa !314
  %i.f = load ptr, ptr %3, align 8, !tbaa !311
  store <2 x ptr> %i.e, ptr %8, align 16, !tbaa !314
  %i.g = load ptr, ptr %5, align 8, !tbaa !311    ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g                  ; 2 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !311    ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !312  ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !311    ; 2 uses
  %.not1.i = icmp eq ptr %i.i, %i.l
  br i1 %.not1.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !254, !noalias !11129
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, %.lr.ph.i
  %.sroa.4.0 = phi ptr [ %i.k, %.lr.ph.i ], [ %.sroa.4.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.n = phi ptr [ %i.i, %.lr.ph.i ], [ %i.w, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !254, !noalias !11129
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %.sroa.4.0, align 8, !tbaa !262, !noalias !11129
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1024
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, !prof !225

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !262, !noalias !11129
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.4.1 = phi ptr [ %i.u, %bb.e ], [ %.sroa.4.0, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.v, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.w, %i.l
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !175

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %.sroa.4.2 = phi ptr [ %.sroa.4.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ], [ %.sroa.4.0, %bb.c ] ; 4 uses
  %.lcssa.i = phi ptr [ %i.w, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.x = icmp eq ptr %.lcssa.i, %i.i
  br i1 %i.x, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %i.y = ptrtoint ptr %.sroa.4.2 to i64
  %i.z = ptrtoint ptr %i.k to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = shl nsw i64 %i.aa, 4
  %i.ac = load ptr, ptr %.sroa.4.2, align 8, !tbaa !262
  %i.ad = ptrtoint ptr %.lcssa.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = add nsw i64 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !262
  %i.aj = ptrtoint ptr %i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sub i64 %i.ah, %i.am
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.b, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, %bb.f
  %.lcssa.i47 = phi ptr [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.4.246 = phi ptr [ %.sroa.4.2, %bb.f ], [ %.sroa.4.2, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit ], [ %i.k, %bb.b ] ; 3 uses
  %.0.i = phi i64 [ %i.an, %bb.f ], [ 0, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit ], [ 0, %bb.b ]
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !262
  store ptr %.lcssa.i47, ptr %1, align 8, !tbaa !311
  store ptr %.sroa.4.246, ptr %i.j, align 8, !tbaa !312
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  store ptr %.lcssa.i47, ptr %9, align 8, !tbaa !311
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.246, ptr %i.ap, align 8, !tbaa !312
  %i.aq = load <2 x ptr>, ptr %2, align 8, !tbaa !314
  store <2 x ptr> %i.aq, ptr %10, align 16, !tbaa !314
  %i.ar = load <2 x ptr>, ptr %4, align 8, !tbaa !314
  store <2 x ptr> %i.ar, ptr %11, align 16, !tbaa !314
  %i.as = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  store ptr %.lcssa.i47, ptr %12, align 8, !tbaa !311
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.4.246, ptr %i.at, align 8, !tbaa !312
  %i.au = load <2 x ptr>, ptr %2, align 8, !tbaa !314
  store <2 x ptr> %i.au, ptr %13, align 16, !tbaa !314
  %i.av = load <2 x ptr>, ptr %4, align 8, !tbaa !314
  store <2 x ptr> %i.av, ptr %14, align 16, !tbaa !314
  %i.aw = call noundef ptr @_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.as, %bb.g ], [ %i.aw, %bb.h ]
  %i.ay = load <2 x ptr>, ptr %2, align 8, !tbaa !314
  store <2 x ptr> %i.ay, ptr %1, align 8, !tbaa !314
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.0 = phi ptr [ %i.ax, %bb.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !311   ; 4 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !311   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !312 ; 4 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !262, !noalias !333 ; 6 uses
  %i.be = load ptr, ptr %8, align 16, !tbaa !311, !noalias !333 ; 6 uses
  br i1 %.not, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not40.i = icmp eq ptr %i.be, %i.az
  %.not.i12 = icmp eq ptr %.0, %i.bd
  %or.cond.i = select i1 %.not40.i, i1 true, i1 %.not.i12
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !312 ; 2 uses
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEESA_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %5, align 8, !tbaa !311, !noalias !11130
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !312, !noalias !11130
  br label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i, %bb.l
  %.sroa.828.0 = phi ptr [ %i.bc, %bb.l ], [ %.sroa.828.4, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ]
  %.sroa.025.0 = phi ptr [ %i.ba, %bb.l ], [ %.sroa.025.4, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ]
  %.sroa.026.0.ph.i = phi ptr [ %i.bf, %bb.l ], [ %.sroa.026.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ] ; 6 uses
  %.sroa.8.0.ph.i = phi ptr [ %i.bh, %bb.l ], [ %.sroa.8.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ] ; 4 uses
  %.sroa.030.0.ph.i = phi ptr [ %i.be, %bb.l ], [ %.sroa.030.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ] ; 5 uses
  %.sroa.9.0.ph.i = phi ptr [ %.pre, %bb.l ], [ %.sroa.9.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ] ; 4 uses
  %.013.ph.i = phi ptr [ %i.bd, %bb.l ], [ %.013.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit18.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.t, %.outer.i
  %.sroa.828.1 = phi ptr [ %.sroa.828.0, %.outer.i ], [ %.sroa.828.2, %bb.t ] ; 6 uses
  %.sroa.025.1 = phi ptr [ %.sroa.025.0, %.outer.i ], [ %.sroa.025.2, %bb.t ] ; 6 uses
  %.013.i = phi ptr [ %.013.ph.i, %.outer.i ], [ %i.cj, %bb.t ] ; 6 uses
  %i.bi = load i32, ptr %.sroa.026.0.ph.i, align 4, !tbaa !254, !noalias !11130 ; 2 uses
  %i.bj = load i32, ptr %.013.i, align 4, !tbaa !254, !noalias !11130 ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.030.0.ph.i, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %.sroa.9.0.ph.i, align 8, !tbaa !262, !noalias !11131
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1024
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.o, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i, !prof !225

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph.i, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !262, !noalias !11131
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i: ; preds = %bb.o, %bb.n
  %.sroa.030.2.i = phi ptr [ %i.bq, %bb.o ], [ %i.bl, %bb.n ] ; 3 uses
  %.sroa.9.2.i = phi ptr [ %i.bp, %bb.o ], [ %.sroa.9.0.ph.i, %bb.n ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph.i, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %.sroa.8.0.ph.i, align 8, !tbaa !262, !noalias !11132
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit17.i, !prof !225

bb.p:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.8.0.ph.i, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !262, !noalias !11132
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS3_INS5_14deque_iteratorIS9_Lb0ELj0ELj0EmEEEESD_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSG_9select1stIS7_EEEEEEEENS0_7move_opEEET1_RT_SR_RT0_ST_SU_SQ_T2_T3_:bb.a
  %i.v = getelementptr inbounds i8, ptr %.sroa.8.0.ph, i64 -8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !262, !noalias !11317
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds i8, ptr %.sroa.027.0.ph, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.2 = phi ptr [ %i.v, %bb.g ], [ %.sroa.8.0.ph, %bb.h ] ; 2 uses
  %storemerge.i.i6 = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  br i1 %i.n, label %bb.i, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8, !prof !225

bb.i:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !262, !noalias !11318
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8: ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit, %bb.i
  %.sroa.7.2 = phi ptr [ %i.l, %bb.i ], [ %.sroa.7.0.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit ] ; 2 uses
  %storemerge.i.i7 = phi ptr [ %i.aa, %bb.i ], [ %i.k, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit ] ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !311, !noalias !11319 ; 4 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !312, !noalias !11319 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !262, !noalias !11320
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !225

bb.j:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.af, ptr %i.j, align 8, !tbaa !312, !noalias !11320
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !262, !noalias !11320
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10

bb.k:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10: ; preds = %bb.j, %bb.k
  %storemerge.i.i9 = phi ptr [ %i.ai, %bb.k ], [ %i.ah, %bb.j ]
  store ptr %storemerge.i.i9, ptr %6, align 8, !tbaa !311, !noalias !11320
  %i.aj = load ptr, ptr %.sroa.7.0.ph, align 8, !tbaa !262
  %i.ak = icmp eq ptr %.sroa.022.0.ph, %i.aj      ; 2 uses
  br i1 %i.ak, label %bb.l, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i, !prof !225

bb.l:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !262
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i: ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10, %bb.l
  %storemerge.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.k, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10 ] ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !262
  %i.ao = icmp eq ptr %i.ab, %i.an
  br i1 %i.ao, label %bb.m, label %bb.n, !prof !225

bb.m:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i

bb.n:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i: ; preds = %bb.n, %bb.m
  %storemerge.i.i1.i = phi ptr [ %i.as, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.at = load i32, ptr %storemerge.i.i.i, align 4, !tbaa !254
  store i32 %i.at, ptr %storemerge.i.i1.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge.i.i1.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !254
  store i32 0, ptr %i.au, align 4, !tbaa !254
  %i.ax = load ptr, ptr %.sroa.8.0.ph, align 8, !tbaa !262
  %i.ay = icmp eq ptr %.sroa.027.0.ph, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.p, !prof !225

bb.o:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i
  %i.az = getelementptr inbounds i8, ptr %.sroa.8.0.ph, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !262
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i

bb.p:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.027.0.ph, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i: ; preds = %bb.p, %bb.o
  %storemerge.i.i3.i = phi ptr [ %i.bc, %bb.p ], [ %i.bb, %bb.o ] ; 3 uses
  br i1 %i.ak, label %bb.q, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit, !prof !225

bb.q:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !262
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1016
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i, %bb.q
  %storemerge.i.i5.i = phi ptr [ %i.be, %bb.q ], [ %i.k, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit4.i ] ; 2 uses
  %i.bf = load i32, ptr %storemerge.i.i3.i, align 4, !tbaa !254
  store i32 %i.bf, ptr %storemerge.i.i5.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i3.i, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge.i.i3.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge.i.i5.i, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bj = load ptr, ptr %4, align 8, !tbaa !311
  %.not45 = icmp eq ptr %storemerge.i.i6, %i.bj
  br i1 %.not45, label %.loopexit, label %.outer, !llvm.loop !11308

bb.r:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit
  %i.bk = load ptr, ptr %6, align 8, !tbaa !311, !noalias !11321 ; 4 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !312, !noalias !11321 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !262, !noalias !11322
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.s, label %bb.t, !prof !225

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  store ptr %i.bo, ptr %i.j, align 8, !tbaa !312, !noalias !11322
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !262, !noalias !11322
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12: ; preds = %bb.s, %bb.t
  %storemerge.i.i11 = phi ptr [ %i.br, %bb.t ], [ %i.bq, %bb.s ]
  store ptr %storemerge.i.i11, ptr %6, align 8, !tbaa !311, !noalias !11322
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !262
  %i.bt = icmp eq ptr %i.bk, %i.bs
  br i1 %i.bt, label %bb.u, label %bb.v, !prof !225

bb.u:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !262
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1016
  br label %bb.w

bb.v:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12
  %i.bx = getelementptr inbounds i8, ptr %i.bk, i64 -8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge.i.i.i14 = phi ptr [ %i.bx, %bb.v ], [ %i.bw, %bb.u ] ; 2 uses
  store i32 %i.s, ptr %storemerge.i.i.i14, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.by = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i14, i64 4
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %.not44 = icmp eq ptr %i.q, %i.f
  br i1 %.not44, label %.loopexit, label %bb.d, !llvm.loop !11308

.loopexit:                                        ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit, %bb.w
  %.sroa.032.141 = phi ptr [ %i.q, %bb.w ], [ %.sroa.032.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit ]
  %.sroa.8.140 = phi ptr [ %.sroa.8.0.ph, %bb.w ], [ %.sroa.8.2, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit ]
  %.sroa.027.139 = phi ptr [ %.sroa.027.0.ph, %bb.w ], [ %storemerge.i.i6, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit ]
  %.sroa.7.138 = phi ptr [ %.sroa.7.0.ph, %bb.w ], [ %.sroa.7.2, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit ]
  %.sroa.022.137 = phi ptr [ %.sroa.022.0.ph, %bb.w ], [ %storemerge.i.i7, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit ]
  store ptr %.sroa.022.137, ptr %5, align 8, !tbaa !311
  store ptr %.sroa.7.138, ptr %i.h, align 8, !tbaa !312
  store ptr %.sroa.032.141, ptr %1, align 8, !tbaa !345
  store ptr %.sroa.027.139, ptr %3, align 8, !tbaa !311
  store ptr %.sroa.8.140, ptr %i.c, align 8, !tbaa !312
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11323)
  %i.cb = load <2 x ptr>, ptr %6, align 8, !tbaa !314, !noalias !11323
  store <2 x ptr> %i.cb, ptr %0, align 8, !tbaa !314, !alias.scope !11323
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.boost::movelib::inverse.92", align 1 ; 3 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %19 = alloca %"struct.boost::movelib::antistable.93", align 8 ; 4 uses
  %20 = alloca %"class.boost::movelib::inverse.92", align 1 ; 3 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %27 = alloca %"struct.boost::movelib::antistable.93", align 8 ; 4 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 9 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 10 uses
  %.not191 = icmp eq i64 %8, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %32 = load <2 x ptr>, ptr %1, align 8, !tbaa !314, !noalias !11401
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit
  %i.u = phi i64 [ %10, %.lr.ph ], [ %i.jp, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0193 = phi i64 [ %9, %.lr.ph ], [ %i.jn, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0178192 = phi i64 [ %8, %.lr.ph ], [ %i.jq, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %33 = phi <2 x ptr> [ %32, %.lr.ph ], [ %35, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11401)
  store <2 x ptr> %33, ptr %28, align 16, !tbaa !314, !alias.scope !11401
  call void @llvm.experimental.noalias.scope.decl(metadata !11402)
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !314, !noalias !11402
  store <2 x ptr> %i.v, ptr %29, align 16, !tbaa !314, !alias.scope !11402
  %i.w = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SL_EENS0_9iter_sizeIT1_E4typeET_T0_SN_SP_SP_SP_T2_(ptr noundef nonnull align 8 dead_on_return %28, ptr noundef nonnull align 8 dead_on_return %29, i64 noundef %7, i64 noundef %.0193, i64 noundef %i.u) ; 5 uses
  %i.x = add i64 %i.w, 2
  %i.y = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %.0178192)
  %i.z = load ptr, ptr %3, align 8, !tbaa !311, !noalias !11403 ; 6 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !312, !noalias !11403 ; 8 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !262, !noalias !11404
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 %i.af, %7                   ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.ag, 128
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.ag, 0
  %i.aj = lshr i64 %i.ag, 7                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -144115188075855872
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !262, !noalias !11404
  %i.ao = shl nsw i64 %i.al, 7
  %i.ap = sub nsw i64 %i.ag, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ar = phi ptr [ %i.aa, %bb.b ], [ %i.am, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.as = phi ptr [ %i.z, %bb.b ], [ %i.aq, %bb.e ], [ %i.ah, %bb.d ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.at = mul i64 %i.w, %7                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11405)
  %i.au = sub nsw i64 0, %i.at
  %.not.i.i.i.i25 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !262, !noalias !11405
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = sub nsw i64 %i.az, %i.at                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.ba, 128
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.ba, 0
  %i.bd = lshr i64 %i.ba, 7                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, -144115188075855872
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !262, !noalias !11405
  %i.bi = shl nsw i64 %i.bf, 7
  %i.bj = sub nsw i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.bl = phi ptr [ %i.aa, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.bg, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.bm = phi ptr [ %i.z, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.bk, %bb.h ], [ %i.bb, %bb.g ] ; 4 uses
  store ptr %i.bm, ptr %30, align 8, !tbaa !311, !alias.scope !11406
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !312, !alias.scope !11406
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !262, !noalias !11407
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = sub nsw i64 %i.br, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bs, 128
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp sgt i64 %i.bs, 0
  %i.bv = lshr i64 %i.bs, 7                       ; 2 uses
  %i.bw = or disjoint i64 %i.bv, -144115188075855872
  %i.bx = select i1 %i.bu, i64 %i.bv, i64 %i.bw   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !262, !noalias !11407
  %i.ca = shl nsw i64 %i.bx, 7
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.cd = phi ptr [ %i.bm, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30 ], [ %i.cc, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %.not23 = icmp eq i64 %i.w, 0                   ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !311, !noalias !333 ; 4 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !312, !noalias !333 ; 4 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !311, !noalias !333 ; 4 uses
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !312, !noalias !333 ; 4 uses
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %21, align 8, !tbaa !311, !alias.scope !11408, !noalias !11409
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !312, !alias.scope !11408, !noalias !11409
  store ptr %i.as, ptr %22, align 8, !tbaa !311, !alias.scope !11410, !noalias !11409
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !312, !alias.scope !11410, !noalias !11409
  store ptr %i.cg, ptr %23, align 8, !tbaa !311, !alias.scope !11411, !noalias !11409
  store ptr %i.ch, ptr %i.l, align 8, !tbaa !312, !alias.scope !11411, !noalias !11409
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7swap_opEEET1_RT_SO_RT0_SQ_SR_SN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %23)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %24, align 8, !tbaa !311, !alias.scope !11412, !noalias !11409
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !312, !alias.scope !11412, !noalias !11409
  store ptr %i.as, ptr %25, align 8, !tbaa !311, !alias.scope !11413, !noalias !11409
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !312, !alias.scope !11413, !noalias !11409
  store ptr %i.cg, ptr %26, align 8, !tbaa !311, !alias.scope !11414, !noalias !11409
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !312, !alias.scope !11414, !noalias !11409
  store ptr %20, ptr %27, align 8, !tbaa !351, !noalias !11409
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSF_9select1stIS8_EEEEEEEENS0_7swap_opEEET1_RT_SQ_RT0_SS_ST_SP_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27)
  br label %.thread

bb.o:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  br i1 %11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %13, align 8, !tbaa !311, !alias.scope !11415, !noalias !11416
  store ptr %i.cf, ptr %i.q, align 8, !tbaa !312, !alias.scope !11415, !noalias !11416
  store ptr %i.as, ptr %14, align 8, !tbaa !311, !alias.scope !11417, !noalias !11416
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !312, !alias.scope !11417, !noalias !11416
  store ptr %i.cg, ptr %15, align 8, !tbaa !311, !alias.scope !11418, !noalias !11416
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !312, !alias.scope !11418, !noalias !11416
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7swap_opEEET1_RT_SO_RT0_SQ_SN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %16, align 8, !tbaa !311, !alias.scope !11419, !noalias !11416
  store ptr %i.cf, ptr %i.n, align 8, !tbaa !312, !alias.scope !11419, !noalias !11416
  store ptr %i.as, ptr %17, align 8, !tbaa !311, !alias.scope !11420, !noalias !11416
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !312, !alias.scope !11420, !noalias !11416
  store ptr %i.cg, ptr %18, align 8, !tbaa !311, !alias.scope !11421, !noalias !11416
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !312, !alias.scope !11421, !noalias !11416
  store ptr %12, ptr %19, align 8, !tbaa !351, !noalias !11416
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSF_9select1stIS8_EEEEEEEENS0_7swap_opEEET1_RT_SQ_RT0_SS_SP_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ci = load ptr, ptr %31, align 8, !tbaa !311, !noalias !11422 ; 4 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !312, !noalias !11422 ; 3 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !311
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.ck = load ptr, ptr %3, align 8, !tbaa !311   ; 3 uses
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, label %bb.as

.thread:                                          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !254, !noalias !11433
  br i1 %i.ge, label %bb.ax, label %bb.ay, !prof !225

bb.ax:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gv = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !262, !noalias !11433 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

bb.ay:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gy = getelementptr inbounds i8, ptr %i.gd, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.ay, %bb.ax
  %i.gz = phi ptr [ %i.gw, %bb.ax ], [ %i.gc, %bb.ay ]
  %.sroa.4.1.i = phi ptr [ %i.gv, %bb.ax ], [ %.sroa.4.0.i, %bb.ay ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.gx, %bb.ax ], [ %i.gy, %bb.ay ] ; 2 uses
  br i1 %i.gk, label %bb.az, label %bb.ba, !prof !225

bb.az:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.ha = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !262, !noalias !11433
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.ba:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.ba, %bb.az
  %.sroa.5.1.i = phi ptr [ %i.ha, %bb.az ], [ %.sroa.5.0.i, %bb.ba ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.hc, %bb.az ], [ %i.hd, %bb.ba ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.as
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !172

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread: ; preds = %bb.as, %bb.r
  %storemerge188.ph = phi ptr [ %i.ci, %bb.as ], [ %i.as, %bb.r ]
  %storemerge.ph = phi ptr [ %i.cj, %bb.as ], [ %i.ar, %bb.r ]
  store ptr %storemerge188.ph, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph, ptr %i.e, align 8, !tbaa !312
  %i.he = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11434 ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11434 ; 2 uses
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread237: ; preds = %.thread180, %.thread179
  %storemerge188.ph235 = phi ptr [ %i.cm, %.thread180 ], [ %i.co, %.thread179 ]
  %storemerge.ph236 = phi ptr [ %i.cn, %.thread180 ], [ %i.cr, %.thread179 ]
  store ptr %storemerge188.ph235, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph236, ptr %i.e, align 8, !tbaa !312
  %i.hg = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11434
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11434
  br label %bb.bb

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit: ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i
  %storemerge188 = phi ptr [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %storemerge.i.i3.i42185, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %.sroa.5111.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %i.es, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  store ptr %storemerge188, ptr %6, align 8, !tbaa !311
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !312
  %i.hi = load ptr, ptr %1, align 8, !tbaa !311, !noalias !11434 ; 3 uses
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !11434 ; 3 uses
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread237, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit
  %i.hk = phi ptr [ %i.hh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread237 ], [ %i.hj, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 5 uses
  %i.hl = phi ptr [ %i.hg, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread237 ], [ %i.hi, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 4 uses
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !262, !noalias !11435
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3
  %i.hr = sub nsw i64 %i.hq, %i.w                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.hr, 128
  br i1 %or.cond.i.i.i.i57, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hs = sub nsw i64 0, %i.w
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hs
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

bb.bd:                                            ; preds = %bb.bb
  %i.hu = icmp sgt i64 %i.hr, 0
  %i.hv = lshr i64 %i.hr, 7                       ; 2 uses
  %i.hw = or disjoint i64 %i.hv, -144115188075855872
  %i.hx = select i1 %i.hu, i64 %i.hv, i64 %i.hw   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hx ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !262, !noalias !11435
  %i.ia = shl nsw i64 %i.hx, 7
  %i.ib = sub nsw i64 %i.hr, %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ib
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, %bb.bc, %bb.bd
  %i.id = phi ptr [ %i.hj, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hk, %bb.bd ], [ %i.hk, %bb.bc ], [ %i.hf, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.ie = phi ptr [ %i.hi, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hl, %bb.bd ], [ %i.hl, %bb.bc ], [ %i.he, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.if = phi ptr [ %i.hj, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hy, %bb.bd ], [ %i.hk, %bb.bc ], [ %i.hf, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.ig = phi ptr [ %i.hi, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.ic, %bb.bd ], [ %i.ht, %bb.bc ], [ %i.he, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.ih = load ptr, ptr %30, align 8, !tbaa !311, !noalias !11436
  %.not.i59 = icmp eq ptr %i.as, %i.ih
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.ig, %i.ie
  br i1 %.not13.i, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !262
  %i.ij = icmp eq ptr %i.ig, %i.ii
  br i1 %i.ij, label %bb.bf, label %bb.bg, !prof !225

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds i8, ptr %i.if, i64 -8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !262
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

bb.bg:                                            ; preds = %bb.be
  %i.in = getelementptr inbounds i8, ptr %i.ig, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.bg, %bb.bf
  %storemerge.i.i.i78 = phi ptr [ %i.in, %bb.bg ], [ %i.im, %bb.bf ] ; 4 uses
  %i.io = load ptr, ptr %i.id, align 8, !tbaa !262
  %i.ip = icmp eq ptr %i.ie, %i.io
  br i1 %i.ip, label %bb.bh, label %bb.bi, !prof !225

bb.bh:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.iq = getelementptr inbounds i8, ptr %i.id, i64 -8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !262
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

bb.bi:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.it = getelementptr inbounds i8, ptr %i.ie, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.bi, %bb.bh
  %storemerge.i.i4.i79 = phi ptr [ %i.it, %bb.bi ], [ %i.is, %bb.bh ] ; 3 uses
  %i.iu = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  %i.iv = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  store i32 %i.iv, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 %i.iu, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i78, i64 4 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %storemerge.i.i4.i79, i64 4 ; 2 uses
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !254
  store i32 0, ptr %i.iw, align 4, !tbaa !254
  %i.iz = load i32, ptr %i.ix, align 4, !tbaa !254
  store i32 %i.iz, ptr %i.iw, align 4, !tbaa !254
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !254
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.ja = load ptr, ptr %2, align 8, !tbaa !311   ; 2 uses
  %i.jb = icmp eq ptr %i.ig, %i.ja
  br i1 %i.jb, label %.sink.split.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jc = icmp eq ptr %i.ja, %i.ie
  br i1 %i.jc, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.bk, %bb.bj
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.id, %bb.bj ], [ %i.if, %bb.bk ]
  %.sink23.i = phi ptr [ %i.ie, %bb.bj ], [ %i.ig, %bb.bk ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !311
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.t, align 8, !tbaa !312
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, %bb.bk, %.sink.split.i
  store ptr %i.as, ptr %3, align 8, !tbaa !311
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !312
  %i.jd = load ptr, ptr %i.a, align 8, !tbaa !312 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !262
  %i.jf = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.je
  br i1 %i.jg, label %bb.bl, label %bb.bm, !prof !225

bb.bl:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.jh = getelementptr inbounds i8, ptr %i.jd, i64 -8 ; 3 uses
  store ptr %i.jh, ptr %i.a, align 8, !tbaa !312
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !262
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

bb.bm:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.jk = getelementptr inbounds i8, ptr %i.jf, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.bl, %bb.bm
  %i.jl = phi ptr [ %i.jd, %bb.bm ], [ %i.jh, %bb.bl ]
  %storemerge.i.i = phi ptr [ %i.jk, %bb.bm ], [ %i.jj, %bb.bl ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !311
  %i.jm = icmp ne i64 %.0193, 0
  %.neg = sext i1 %i.jm to i64
  %i.jn = add i64 %.0193, %.neg
  %i.jo = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.jo to i64
  %i.jp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.jq = add i64 %.0178192, -1                   ; 2 uses
  %.not = icmp eq i64 %i.jq, 0
  %34 = insertelement <2 x ptr> poison, ptr %storemerge.i.i, i64 0
  %35 = insertelement <2 x ptr> %34, ptr %i.jl, i64 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11398

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11437)
  %i.jr = load <2 x ptr>, ptr %6, align 8, !tbaa !314, !noalias !11437
  store <2 x ptr> %i.jr, ptr %0, align 8, !tbaa !314, !alias.scope !11437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEESH_EEvT2_SI_SI_T1_SJ_T_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !311    ; 2 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !311    ; 3 uses
  %.not25 = icmp eq ptr %i.a, %i.b
  br i1 %.not25, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_10backward_tET_SD_SB_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !311
  %i.g = load ptr, ptr %1, align 8, !tbaa !311
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader.i, label %.lr.ph47

bb.b:                                             ; preds = %bb.s
  %i.i = load ptr, ptr %0, align 8, !tbaa !311
  %i.j = load ptr, ptr %1, align 8, !tbaa !311
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader.i, label %.lr.ph47, !llvm.loop !11438

.lr.ph.i.preheader.i:                             ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi ptr [ %i.b, %.lr.ph ], [ %i.cu, %bb.b ]
  %.lcssa = phi ptr [ %i.a, %.lr.ph ], [ %i.cv, %bb.b ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !311
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !312
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !262, !noalias !11443
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i, %.lr.ph.i.preheader.i
  %i.o = phi ptr [ %i.v, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i ], [ %.pre.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.43.0.i = phi ptr [ %.sroa.43.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i ], [ %i.n, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %storemerge.i1.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i ], [ %i.m, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.p = phi ptr [ %storemerge.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i ], [ %.lcssa45, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds i8, ptr %.sroa.43.0.i, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !262, !noalias !11443 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %i.s, %bb.c ], [ %i.o, %bb.d ]
  %.sroa.43.1.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.43.0.i, %bb.d ]
  %storemerge.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %i.w = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !262, !noalias !11443
  %i.x = icmp eq ptr %.sroa.0.0.i, %i.w
  br i1 %i.x, label %bb.e, label %bb.f, !prof !225

bb.e:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !262, !noalias !11443
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i

bb.f:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2.i.i: ; preds = %bb.f, %bb.e
  %.sroa.4.1.i = phi ptr [ %i.y, %bb.e ], [ %.sroa.4.0.i, %bb.f ]
  %storemerge.i1.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  %i.ac = load i32, ptr %storemerge.i.i.i, align 4, !tbaa !254, !noalias !11443
  store i32 0, ptr %storemerge.i.i.i, align 4, !tbaa !254, !noalias !11443
  %i.ad = load i32, ptr %storemerge.i1.i.i, align 4, !tbaa !254, !noalias !11443
  store i32 %i.ad, ptr %storemerge.i.i.i, align 4, !tbaa !254, !noalias !11443
  store i32 %i.ac, ptr %storemerge.i1.i.i, align 4, !tbaa !254, !noalias !11443
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge.i1.i.i, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !254, !noalias !11443
  store i32 0, ptr %i.ae, align 4, !tbaa !254, !noalias !11443
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !254, !noalias !11443
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !254, !noalias !11443
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !254, !noalias !11443
  %.not.i.i = icmp eq ptr %.lcssa, %storemerge.i.i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_10backward_tET_SD_SB_.exit, label %.lr.ph.i.i, !llvm.loop !178

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %i.ai = phi ptr [ %i.cu, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !312 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !262
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h, !prof !225

bb.g:                                             ; preds = %.lr.ph47
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !312
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !262
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

bb.h:                                             ; preds = %.lr.ph47
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit: ; preds = %bb.g, %bb.h
  %storemerge.i = phi ptr [ %i.ap, %bb.h ], [ %i.ao, %bb.g ]
  store ptr %storemerge.i, ptr %4, align 8, !tbaa !311
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !312 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !262
  %i.as = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ar
  br i1 %i.at, label %bb.i, label %bb.j, !prof !225

bb.i:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 3 uses
  store ptr %i.au, ptr %i.d, align 8, !tbaa !312
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !262
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2

bb.j:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2: ; preds = %bb.i, %bb.j
  %i.ay = phi ptr [ %i.aq, %bb.j ], [ %i.au, %bb.i ] ; 2 uses
  %storemerge.i1 = phi ptr [ %i.ax, %bb.j ], [ %i.aw, %bb.i ] ; 3 uses
  store ptr %storemerge.i1, ptr %1, align 8, !tbaa !311
  %i.az = load ptr, ptr %4, align 8, !tbaa !311   ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !254
  %i.bb = load i32, ptr %storemerge.i1, align 4, !tbaa !254
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !311
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !312 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !262
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1024
  %i.bh = icmp eq ptr %i.bd, %i.bg
  br i1 %i.bh, label %bb.l, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit, !prof !225

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !312
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !262
  store ptr %i.bj, ptr %4, align 8, !tbaa !311
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit: ; preds = %bb.k, %bb.l
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !312 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !262
  %i.bm = load ptr, ptr %2, align 8, !tbaa !311   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bl
  br i1 %i.bn, label %bb.m, label %bb.n, !prof !225

bb.m:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !312
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !262
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit4

bb.n:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit4

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit4: ; preds = %bb.m, %bb.n
  %storemerge.i3 = phi ptr [ %i.br, %bb.n ], [ %i.bq, %bb.m ] ; 5 uses
  store ptr %storemerge.i3, ptr %2, align 8, !tbaa !311
  %i.bs = load ptr, ptr %1, align 8, !tbaa !311   ; 3 uses
  %i.bt = load i32, ptr %storemerge.i3, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i3, align 4, !tbaa !254
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bu, ptr %storemerge.i3, align 4, !tbaa !254
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge.i3, i64 4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bv, align 4, !tbaa !254
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !254
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  %.pre = load ptr, ptr %4, align 8, !tbaa !311
  br label %bb.s

bb.o:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit2
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge.i1, i64 8 ; 2 uses
  store ptr %i.bz, ptr %1, align 8, !tbaa !311
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SO_RT0_SQ_SN_T2_T3_:bb.a
  %i.q = icmp eq ptr %.sroa.030.0, %i.p
  br i1 %i.q, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread, !prof !225

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit
  %i.r = getelementptr inbounds i8, ptr %.sroa.935.0, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !262
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1016 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !254
  %i.v = load i32, ptr %storemerge.i.i, align 4, !tbaa !254
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit
  %i.x = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254
  %i.z = load i32, ptr %storemerge.i.i, align 4, !tbaa !254
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10

bb.e:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5
  br i1 %i.m, label %bb.f, label %bb.g, !prof !225

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.sroa.9.0.ph, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !262, !noalias !13803
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %.sroa.023.0.ph, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit: ; preds = %bb.f, %bb.g
  %.sroa.9.3 = phi ptr [ %i.ab, %bb.f ], [ %.sroa.9.0.ph, %bb.g ] ; 2 uses
  %storemerge.i.i6 = phi ptr [ %i.ad, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !311, !noalias !13804 ; 4 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !312, !noalias !13804 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !262, !noalias !13805
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !225

bb.h:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !312, !noalias !13805
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !262, !noalias !13805
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8

bb.i:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8: ; preds = %bb.h, %bb.i
  %storemerge.i.i7 = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ]
  store ptr %storemerge.i.i7, ptr %5, align 8, !tbaa !311, !noalias !13805
  %i.an = load ptr, ptr %.sroa.9.0.ph, align 8, !tbaa !262
  %i.ao = icmp eq ptr %.sroa.023.0.ph, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k, !prof !225

bb.j:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8
  %i.ap = getelementptr inbounds i8, ptr %.sroa.9.0.ph, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i

bb.k:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit8
  %i.as = getelementptr inbounds i8, ptr %.sroa.023.0.ph, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i = phi ptr [ %i.as, %bb.k ], [ %i.ar, %bb.j ] ; 3 uses
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !262
  %i.au = icmp eq ptr %i.af, %i.at
  br i1 %i.au, label %bb.l, label %bb.m, !prof !225

bb.l:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !262
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1016
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit

bb.m:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i
  %i.ay = getelementptr inbounds i8, ptr %i.af, i64 -8
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit: ; preds = %bb.l, %bb.m
  %storemerge.i.i1.i = phi ptr [ %i.ay, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %i.az = load i32, ptr %storemerge.i.i.i, align 4, !tbaa !254
  store i32 %i.az, ptr %storemerge.i.i1.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i, align 4, !tbaa !254
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge.i.i1.i, i64 4
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !254
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !254
  store i32 0, ptr %i.ba, align 4, !tbaa !254
  %i.bd = load ptr, ptr %4, align 8, !tbaa !311
  %i.be = icmp eq ptr %storemerge.i.i6, %i.bd
  br i1 %i.be, label %.loopexit, label %.outer, !llvm.loop !13794

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5
  %.sroa.935.3 = phi ptr [ %i.r, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5 ], [ %.sroa.935.0, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread ] ; 2 uses
  %storemerge.i.i9 = phi ptr [ %i.t, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5 ], [ %i.x, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.thread ] ; 3 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !311, !noalias !13806 ; 4 uses
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !312, !noalias !13806 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !262, !noalias !13807
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !225

bb.n:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !312, !noalias !13807
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !262, !noalias !13807
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12

bb.o:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit10
  %i.bm = getelementptr inbounds i8, ptr %i.bf, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12: ; preds = %bb.n, %bb.o
  %storemerge.i.i11 = phi ptr [ %i.bm, %bb.o ], [ %i.bl, %bb.n ]
  store ptr %storemerge.i.i11, ptr %5, align 8, !tbaa !311, !noalias !13807
  %i.bn = load ptr, ptr %.sroa.935.0, align 8, !tbaa !262
  %i.bo = icmp eq ptr %.sroa.030.0, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !225

bb.p:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12
  %i.bp = getelementptr inbounds i8, ptr %.sroa.935.0, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !262
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i13

bb.q:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEi.exit12
  %i.bs = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i13

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i13: ; preds = %bb.q, %bb.p
  %storemerge.i.i.i14 = phi ptr [ %i.bs, %bb.q ], [ %i.br, %bb.p ] ; 3 uses
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !262
  %i.bu = icmp eq ptr %i.bf, %i.bt
  br i1 %i.bu, label %bb.r, label %bb.s, !prof !225

bb.r:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i13
  %i.bv = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !262
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1016
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16

bb.s:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i13
  %i.by = getelementptr inbounds i8, ptr %i.bf, i64 -8
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16: ; preds = %bb.r, %bb.s
  %storemerge.i.i1.i15 = phi ptr [ %i.by, %bb.s ], [ %i.bx, %bb.r ] ; 2 uses
  %i.bz = load i32, ptr %storemerge.i.i.i14, align 4, !tbaa !254
  store i32 %i.bz, ptr %storemerge.i.i1.i15, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i14, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i14, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge.i.i1.i15, i64 4
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !254
  store i32 0, ptr %i.ca, align 4, !tbaa !254
  %i.cd = load ptr, ptr %2, align 8, !tbaa !311
  %i.ce = icmp eq ptr %storemerge.i.i9, %i.cd
  br i1 %i.ce, label %.loopexit, label %bb.c, !llvm.loop !13794

.loopexit:                                        ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit, %bb.b, %bb.a
  %.sroa.023.2 = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %.sroa.023.0.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16 ], [ %storemerge.i.i6, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit ]
  %.sroa.9.2 = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %.sroa.9.0.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16 ], [ %.sroa.9.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit ]
  %.sroa.030.2 = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ %storemerge.i.i9, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16 ], [ %.sroa.030.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit ]
  %.sroa.935.2 = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.a ], [ %.sroa.935.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit16 ], [ %.sroa.935.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_T0_.exit ]
  store ptr %.sroa.030.2, ptr %1, align 8, !tbaa !311
  store ptr %.sroa.935.2, ptr %i.b, align 8, !tbaa !312
  store ptr %.sroa.023.2, ptr %3, align 8, !tbaa !311
  store ptr %.sroa.9.2, ptr %i.e, align 8, !tbaa !312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13808)
  %i.cf = load <2 x ptr>, ptr %5, align 8, !tbaa !314, !noalias !13808
  store <2 x ptr> %i.cf, ptr %0, align 8, !tbaa !314, !alias.scope !13808
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #4 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::inverse.92", align 1 ; 3 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %19 = alloca %"struct.boost::movelib::antistable.93", align 8 ; 4 uses
  %20 = alloca %"class.boost::movelib::inverse.92", align 1 ; 3 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %27 = alloca %"struct.boost::movelib::antistable.93", align 8 ; 4 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 9 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 10 uses
  %.not185 = icmp eq i64 %8, 0
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %32 = load <2 x ptr>, ptr %1, align 8, !tbaa !314, !noalias !13886
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit
  %i.u = phi i64 [ %10, %.lr.ph ], [ %i.jc, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0187 = phi i64 [ %9, %.lr.ph ], [ %i.ja, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0178186 = phi i64 [ %8, %.lr.ph ], [ %i.jd, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %33 = phi <2 x ptr> [ %32, %.lr.ph ], [ %35, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13886)
  store <2 x ptr> %33, ptr %28, align 16, !tbaa !314, !alias.scope !13886
  call void @llvm.experimental.noalias.scope.decl(metadata !13887)
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !314, !noalias !13887
  store <2 x ptr> %i.v, ptr %29, align 16, !tbaa !314, !alias.scope !13887
  %i.w = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SL_EENS0_9iter_sizeIT1_E4typeET_T0_SN_SP_SP_SP_T2_(ptr noundef nonnull align 8 dead_on_return %28, ptr noundef nonnull align 8 dead_on_return %29, i64 noundef %7, i64 noundef %.0187, i64 noundef %i.u) ; 5 uses
  %i.x = add i64 %i.w, 2
  %i.y = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %.0178186)
  %i.z = load ptr, ptr %3, align 8, !tbaa !311, !noalias !13888 ; 6 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !312, !noalias !13888 ; 8 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !262, !noalias !13889
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub nsw i64 %i.af, %7                   ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.ag, 128
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.ag, 0
  %i.aj = lshr i64 %i.ag, 7                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -144115188075855872
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !262, !noalias !13889
  %i.ao = shl nsw i64 %i.al, 7
  %i.ap = sub nsw i64 %i.ag, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ar = phi ptr [ %i.aa, %bb.b ], [ %i.am, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.as = phi ptr [ %i.z, %bb.b ], [ %i.aq, %bb.e ], [ %i.ah, %bb.d ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.at = mul i64 %i.w, %7                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13890)
  %i.au = sub nsw i64 0, %i.at
  %.not.i.i.i.i25 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !262, !noalias !13890
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = sub nsw i64 %i.az, %i.at                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.ba, 128
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.ba, 0
  %i.bd = lshr i64 %i.ba, 7                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, -144115188075855872
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !262, !noalias !13890
  %i.bi = shl nsw i64 %i.bf, 7
  %i.bj = sub nsw i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.bl = phi ptr [ %i.aa, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.bg, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.bm = phi ptr [ %i.z, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit ], [ %i.bk, %bb.h ], [ %i.bb, %bb.g ] ; 4 uses
  store ptr %i.bm, ptr %30, align 8, !tbaa !311, !alias.scope !13891
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !312, !alias.scope !13891
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !262, !noalias !13892
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = sub nsw i64 %i.br, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bs, 128
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp sgt i64 %i.bs, 0
  %i.bv = lshr i64 %i.bs, 7                       ; 2 uses
  %i.bw = or disjoint i64 %i.bv, -144115188075855872
  %i.bx = select i1 %i.bu, i64 %i.bv, i64 %i.bw   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !262, !noalias !13892
  %i.ca = shl nsw i64 %i.bx, 7
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.cd = phi ptr [ %i.bm, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit30 ], [ %i.cc, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %.not23 = icmp eq i64 %i.w, 0                   ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !311, !noalias !333 ; 4 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !312, !noalias !333 ; 4 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !311, !noalias !333 ; 4 uses
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !312, !noalias !333 ; 4 uses
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %21, align 8, !tbaa !311, !alias.scope !13893, !noalias !13894
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !312, !alias.scope !13893, !noalias !13894
  store ptr %i.as, ptr %22, align 8, !tbaa !311, !alias.scope !13895, !noalias !13894
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !312, !alias.scope !13895, !noalias !13894
  store ptr %i.cg, ptr %23, align 8, !tbaa !311, !alias.scope !13896, !noalias !13894
  store ptr %i.ch, ptr %i.l, align 8, !tbaa !312, !alias.scope !13896, !noalias !13894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SO_RT0_SQ_SR_SN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %23)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %24, align 8, !tbaa !311, !alias.scope !13897, !noalias !13894
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !312, !alias.scope !13897, !noalias !13894
  store ptr %i.as, ptr %25, align 8, !tbaa !311, !alias.scope !13898, !noalias !13894
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !312, !alias.scope !13898, !noalias !13894
  store ptr %i.cg, ptr %26, align 8, !tbaa !311, !alias.scope !13899, !noalias !13894
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !312, !alias.scope !13899, !noalias !13894
  store ptr %20, ptr %27, align 8, !tbaa !351, !noalias !13894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSF_9select1stIS8_EEEEEEEENS0_7move_opEEET1_RT_SQ_RT0_SS_ST_SP_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27)
  br label %.thread

bb.o:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  br i1 %11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %13, align 8, !tbaa !311, !alias.scope !13900, !noalias !13901
  store ptr %i.cf, ptr %i.q, align 8, !tbaa !312, !alias.scope !13900, !noalias !13901
  store ptr %i.as, ptr %14, align 8, !tbaa !311, !alias.scope !13902, !noalias !13901
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !312, !alias.scope !13902, !noalias !13901
  store ptr %i.cg, ptr %15, align 8, !tbaa !311, !alias.scope !13903, !noalias !13901
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !312, !alias.scope !13903, !noalias !13901
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SO_RT0_SQ_SN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %16, align 8, !tbaa !311, !alias.scope !13904, !noalias !13901
  store ptr %i.cf, ptr %i.n, align 8, !tbaa !312, !alias.scope !13904, !noalias !13901
  store ptr %i.as, ptr %17, align 8, !tbaa !311, !alias.scope !13905, !noalias !13901
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !312, !alias.scope !13905, !noalias !13901
  store ptr %i.cg, ptr %18, align 8, !tbaa !311, !alias.scope !13906, !noalias !13901
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !312, !alias.scope !13906, !noalias !13901
  store ptr %12, ptr %19, align 8, !tbaa !351, !noalias !13901
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSF_9select1stIS8_EEEEEEEENS0_7move_opEEET1_RT_SQ_RT0_SS_SP_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ci = load ptr, ptr %31, align 8, !tbaa !311, !noalias !13907 ; 4 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !312, !noalias !13907 ; 3 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !311
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.ck = load ptr, ptr %3, align 8, !tbaa !311   ; 3 uses
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, label %bb.ao

.thread:                                          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  store i32 0, ptr %i.gf, align 4, !tbaa !254, !noalias !13918
  br i1 %i.ft, label %bb.at, label %bb.au, !prof !225

bb.at:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gi = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !262, !noalias !13918 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

bb.au:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gl = getelementptr inbounds i8, ptr %i.fs, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.au, %bb.at
  %i.gm = phi ptr [ %i.gj, %bb.at ], [ %i.fr, %bb.au ]
  %.sroa.4.1.i = phi ptr [ %i.gi, %bb.at ], [ %.sroa.4.0.i, %bb.au ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.gk, %bb.at ], [ %i.gl, %bb.au ] ; 2 uses
  br i1 %i.fz, label %bb.av, label %bb.aw, !prof !225

bb.av:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gn = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !262, !noalias !13918
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.aw:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.aw, %bb.av
  %.sroa.5.1.i = phi ptr [ %i.gn, %bb.av ], [ %.sroa.5.0.i, %bb.aw ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.gp, %bb.av ], [ %i.gq, %bb.aw ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.as
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !174

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread: ; preds = %bb.ao, %bb.r
  %storemerge182.ph = phi ptr [ %i.ci, %bb.ao ], [ %i.as, %bb.r ]
  %storemerge.ph = phi ptr [ %i.cj, %bb.ao ], [ %i.ar, %bb.r ]
  store ptr %storemerge182.ph, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph, ptr %i.e, align 8, !tbaa !312
  %i.gr = load ptr, ptr %1, align 8, !tbaa !311, !noalias !13919 ; 2 uses
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !13919 ; 2 uses
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread229: ; preds = %.thread180, %.thread179
  %storemerge182.ph227 = phi ptr [ %i.cm, %.thread180 ], [ %i.co, %.thread179 ]
  %storemerge.ph228 = phi ptr [ %i.cn, %.thread180 ], [ %i.cr, %.thread179 ]
  store ptr %storemerge182.ph227, ptr %6, align 8, !tbaa !311
  store ptr %storemerge.ph228, ptr %i.e, align 8, !tbaa !312
  %i.gt = load ptr, ptr %1, align 8, !tbaa !311, !noalias !13919
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !13919
  br label %bb.ax

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i
  %storemerge182 = phi ptr [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %storemerge.i.i3.i42, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %.sroa.5111.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %.sroa.4100.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  store ptr %storemerge182, ptr %6, align 8, !tbaa !311
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !312
  %i.gv = load ptr, ptr %1, align 8, !tbaa !311, !noalias !13919 ; 3 uses
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !312, !noalias !13919 ; 3 uses
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread229, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit
  %i.gx = phi ptr [ %i.gu, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread229 ], [ %i.gw, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 5 uses
  %i.gy = phi ptr [ %i.gt, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread229 ], [ %i.gv, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ] ; 4 uses
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !262, !noalias !13920
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 3
  %i.he = sub nsw i64 %i.hd, %i.w                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.he, 128
  br i1 %or.cond.i.i.i.i57, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hf = sub nsw i64 0, %i.w
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.hf
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

bb.az:                                            ; preds = %bb.ax
  %i.hh = icmp sgt i64 %i.he, 0
  %i.hi = lshr i64 %i.he, 7                       ; 2 uses
  %i.hj = or disjoint i64 %i.hi, -144115188075855872
  %i.hk = select i1 %i.hh, i64 %i.hi, i64 %i.hj   ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.hk ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !262, !noalias !13920
  %i.hn = shl nsw i64 %i.hk, 7
  %i.ho = sub nsw i64 %i.he, %i.hn
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ho
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit, %bb.ay, %bb.az
  %i.hq = phi ptr [ %i.gw, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.gx, %bb.az ], [ %i.gx, %bb.ay ], [ %i.gs, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.hr = phi ptr [ %i.gv, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.gy, %bb.az ], [ %i.gy, %bb.ay ], [ %i.gr, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.hs = phi ptr [ %i.gw, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hl, %bb.az ], [ %i.gx, %bb.ay ], [ %i.gs, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 3 uses
  %i.ht = phi ptr [ %i.gv, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit ], [ %i.hp, %bb.az ], [ %i.hg, %bb.ay ], [ %i.gr, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.thread ] ; 5 uses
  %i.hu = load ptr, ptr %30, align 8, !tbaa !311, !noalias !13921
  %.not.i59 = icmp eq ptr %i.as, %i.hu
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.ht, %i.hr
  br i1 %.not13.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !262
  %i.hw = icmp eq ptr %i.ht, %i.hv
  br i1 %i.hw, label %bb.bb, label %bb.bc, !prof !225

bb.bb:                                            ; preds = %bb.ba
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 -8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !262
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

bb.bc:                                            ; preds = %bb.ba
  %i.ia = getelementptr inbounds i8, ptr %i.ht, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.bc, %bb.bb
  %storemerge.i.i.i78 = phi ptr [ %i.ia, %bb.bc ], [ %i.hz, %bb.bb ] ; 4 uses
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !262
  %i.ic = icmp eq ptr %i.hr, %i.ib
  br i1 %i.ic, label %bb.bd, label %bb.be, !prof !225

bb.bd:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.id = getelementptr inbounds i8, ptr %i.hq, i64 -8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !262
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

bb.be:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.ig = getelementptr inbounds i8, ptr %i.hr, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.be, %bb.bd
  %storemerge.i.i4.i79 = phi ptr [ %i.ig, %bb.be ], [ %i.if, %bb.bd ] ; 3 uses
  %i.ih = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  %i.ii = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  store i32 %i.ii, ptr %storemerge.i.i.i78, align 4, !tbaa !254
  store i32 %i.ih, ptr %storemerge.i.i4.i79, align 4, !tbaa !254
  %i.ij = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i78, i64 4 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge.i.i4.i79, i64 4 ; 2 uses
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !254
  store i32 0, ptr %i.ij, align 4, !tbaa !254
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !254
  store i32 %i.im, ptr %i.ij, align 4, !tbaa !254
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !254
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEESB_EET0_T_SD_SC_.exit.i
  %i.in = load ptr, ptr %2, align 8, !tbaa !311   ; 2 uses
  %i.io = icmp eq ptr %i.ht, %i.in
  br i1 %i.io, label %.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ip = icmp eq ptr %i.in, %i.hr
  br i1 %i.ip, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.bg, %bb.bf
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.hq, %bb.bf ], [ %i.hs, %bb.bg ]
  %.sink23.i = phi ptr [ %i.hr, %bb.bf ], [ %i.ht, %bb.bg ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !311
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.t, align 8, !tbaa !312
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEEl.exit58, %bb.bg, %.sink.split.i
  store ptr %i.as, ptr %3, align 8, !tbaa !311
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !312
  %i.iq = load ptr, ptr %i.a, align 8, !tbaa !312 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !262
  %i.is = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.ir
  br i1 %i.it, label %bb.bh, label %bb.bi, !prof !225

bb.bh:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.iu = getelementptr inbounds i8, ptr %i.iq, i64 -8 ; 3 uses
  store ptr %i.iu, ptr %i.a, align 8, !tbaa !312
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !262
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1016
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

bb.bi:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_EEvT_SD_RSD_T0_SF_SF_.exit
  %i.ix = getelementptr inbounds i8, ptr %i.is, i64 -8
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.bh, %bb.bi
  %i.iy = phi ptr [ %i.iq, %bb.bi ], [ %i.iu, %bb.bh ]
  %storemerge.i.i = phi ptr [ %i.ix, %bb.bi ], [ %i.iw, %bb.bh ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !311
  %i.iz = icmp ne i64 %.0187, 0
  %.neg = sext i1 %i.iz to i64
  %i.ja = add i64 %.0187, %.neg
  %i.jb = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.jb to i64
  %i.jc = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.jd = add i64 %.0178186, -1                   ; 2 uses
  %.not = icmp eq i64 %i.jd, 0
  %34 = insertelement <2 x ptr> poison, ptr %storemerge.i.i, i64 0
  %35 = insertelement <2 x ptr> %34, ptr %i.iy, i64 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13883

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  %i.je = load <2 x ptr>, ptr %6, align 8, !tbaa !314, !noalias !13922
  store <2 x ptr> %i.je, ptr %0, align 8, !tbaa !314, !alias.scope !13922
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET_SN_SN_RSN_SN_SN_RT0_SQ_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #4 comdat {
bb.a:
  %8 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 10 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 8 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 6 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13971)
  %i.a = load ptr, ptr %6, align 8, !tbaa !311, !noalias !13971 ; 4 uses
  store ptr %i.a, ptr %8, align 16, !tbaa !311, !alias.scope !13971
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312, !noalias !13971 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !312, !alias.scope !13971
  %i.e = load ptr, ptr %7, align 8, !tbaa !311, !noalias !13972 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312, !noalias !13972
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13973)
  %i.h = load <2 x ptr>, ptr %3, align 8, !tbaa !314, !noalias !13973
  %i.i = load ptr, ptr %3, align 8, !tbaa !311, !noalias !13973
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !314, !alias.scope !13973
  %i.j = load ptr, ptr %5, align 8, !tbaa !311    ; 3 uses
  %.not = icmp eq ptr %i.i, %i.j                  ; 2 uses
  %i.k = icmp eq ptr %i.a, %i.e
  br i1 %i.k, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !311, !noalias !13974 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !312, !noalias !13974 ; 4 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !311, !noalias !13975 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !312  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !262
  %i.s = icmp eq ptr %i.j, %i.r
  br i1 %i.s, label %bb.c, label %bb.d, !prof !225

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1016
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.j, i64 -8
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ]
  %.not3.i = icmp eq ptr %i.l, %i.o
  br i1 %.not3.i, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit
  %i.x = load i32, ptr %storemerge.i.i, align 4, !noalias !13976 ; 2 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !262, !noalias !13976 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i, %.lr.ph.i
  %i.y = phi ptr [ %.pre, %.lr.ph.i ], [ %i.ak, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i ] ; 2 uses
  %i.z = phi ptr [ %i.n, %.lr.ph.i ], [ %i.al, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i ] ; 4 uses
  %i.aa = phi ptr [ %i.l, %.lr.ph.i ], [ %storemerge.i.i1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i, !prof !225

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !262, !noalias !13976 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1016 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254, !noalias !13976
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i: ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254, !noalias !13976
  %i.aj = icmp slt i32 %i.ai, %i.x
  br i1 %i.aj, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i
  %i.ak = phi ptr [ %i.y, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.ad, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i ]
  %i.al = phi ptr [ %i.z, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.ac, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i ] ; 2 uses
  %storemerge.i.i1.i = phi ptr [ %i.ah, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.ae, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %storemerge.i.i1.i, %i.o
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit, label %bb.e, !llvm.loop !196

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i
  %i.am = phi ptr [ %i.z, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i ], [ %i.z, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.al, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i ] ; 5 uses
  %.lcssa.i = phi ptr [ %i.aa, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.i ], [ %i.aa, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %storemerge.i.i1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEppEv.exit.i ] ; 5 uses
  %i.an = icmp eq ptr %i.l, %.lcssa.i
  br i1 %i.an, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit, label %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit

_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = ptrtoint ptr %i.l to i64
  %i.at = ptrtoint ptr %.pre to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, %i.ar                ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !262
  %i.ay = ptrtoint ptr %.lcssa.i to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = sub i64 %i.aw, %i.bb                    ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %.not.i.i.i = icmp eq i64 %i.aw, %i.bb
  br i1 %.not.i.i.i, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !262
  %i.bf = ptrtoint ptr %i.a to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = sub nsw i64 %i.bi, %i.bc                ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bj, 128
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bd
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bl = icmp sgt i64 %i.bj, 0
  %i.bm = lshr i64 %i.bj, 7                       ; 2 uses
  %i.bn = or disjoint i64 %i.bm, -144115188075855872
  %i.bo = select i1 %i.bl, i64 %i.bm, i64 %i.bn   ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bo ; 2 uses
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !312
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !262
  %i.br = shl nsw i64 %i.bo, 7
  %i.bs = sub nsw i64 %i.bj, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.i.i.i = phi ptr [ %i.bt, %bb.h ], [ %i.bk, %bb.g ]
  store ptr %storemerge.i.i.i, ptr %8, align 16, !tbaa !311
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit, %bb.i
  %i.bu = phi ptr [ %i.am, %bb.i ], [ %i.am, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit ], [ %i.am, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit ], [ %i.n, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit ] ; 3 uses
  %.lcssa.i2933 = phi ptr [ %.lcssa.i, %bb.i ], [ %.lcssa.i, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEESC_.exit ], [ %.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEEEET_SM_SM_RKNS0_15iterator_traitsISM_E10value_typeET0_.exit ], [ %i.l, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEdeEv.exit ] ; 3 uses
  store ptr %.lcssa.i2933, ptr %1, align 8, !tbaa !311
  store ptr %i.bu, ptr %i.m, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit
  store ptr %.lcssa.i2933, ptr %11, align 8, !tbaa !311, !alias.scope !13977
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !312, !alias.scope !13977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13978)
  %i.bw = load <2 x ptr>, ptr %2, align 8, !tbaa !314, !noalias !13978
  store <2 x ptr> %i.bw, ptr %12, align 16, !tbaa !314, !alias.scope !13978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13979)
  %i.bx = load <2 x ptr>, ptr %4, align 8, !tbaa !314, !noalias !13979
  store <2 x ptr> %i.bx, ptr %13, align 16, !tbaa !314, !alias.scope !13979
  call void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET1_T_SO_RT0_SP_SQ_RSN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEpLEl.exit
  store ptr %.lcssa.i2933, ptr %14, align 8, !tbaa !311, !alias.scope !13980
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !312, !alias.scope !13980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13981)
  %i.bz = load <2 x ptr>, ptr %2, align 8, !tbaa !314, !noalias !13981
  store <2 x ptr> %i.bz, ptr %15, align 16, !tbaa !314, !alias.scope !13981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13982)
  %i.ca = load <2 x ptr>, ptr %4, align 8, !tbaa !314, !noalias !13982
  store <2 x ptr> %i.ca, ptr %16, align 16, !tbaa !314, !alias.scope !13982
  call void @_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEESC_SC_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEENS0_7move_opEEET1_T_SO_RT0_SP_RSN_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %10, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

end_hunk_7

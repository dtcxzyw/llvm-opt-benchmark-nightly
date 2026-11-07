Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE4swapERS5_
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4swapERSA_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !219
  %i.c = load ptr, ptr %1, align 8, !tbaa !219
  store ptr %i.c, ptr %0, align 8, !tbaa !219
  store ptr %i.b, ptr %1, align 8, !tbaa !219
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !226
  %i.g = load i64, ptr %i.e, align 8, !tbaa !226
  store i64 %i.g, ptr %i.d, align 8, !tbaa !226
  store i64 %i.f, ptr %i.e, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !226
  %i.k = load i64, ptr %i.i, align 8, !tbaa !226
  store i64 %i.k, ptr %i.h, align 8, !tbaa !226
  store i64 %i.j, ptr %i.i, align 8, !tbaa !226
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4swapERSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4swapERSA_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE8key_compEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE10value_compEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE5countERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE8containsERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11lower_boundERKS2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !714 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !715 ; 2 uses
  %.not12.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.d = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.013.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.013.i.i, 1                    ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.neg.i.i = xor i64 %i.e, -1
  %i.h = add i64 %.013.i.i, %.neg.i.i             ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %i.g, %.lr.ph.i.i ]
  store ptr %i.i, ptr %0, align 8, !tbaa !231, !alias.scope !716
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11lower_boundERKS2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !732 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !733 ; 2 uses
  %.not12.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.d = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.013.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.013.i.i, 1                    ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.neg.i.i = xor i64 %i.e, -1
  %i.h = add i64 %.013.i.i, %.neg.i.i             ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE11lower_boundERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %i.g, %.lr.ph.i.i ]
  store ptr %i.i, ptr %0, align 8, !tbaa !233, !alias.scope !734
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11upper_boundERKS2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !744
  store ptr %i.a, ptr %0, align 8, !tbaa !231, !alias.scope !745
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11upper_boundERKS2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !755
  store ptr %i.a, ptr %0, align 8, !tbaa !233, !alias.scope !756
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11equal_rangeERKS2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !770 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !771 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %i.d = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.a ]
  %.013.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.013.i.i.i, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.e, -1
  %i.h = add i64 %.013.i.i.i, %.neg.i.i.i         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %i.g, %.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !231, !alias.scope !772
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !231, !alias.scope !772
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE11equal_rangeERKS2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !noalias !788 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223, !noalias !789 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %i.d = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.a ]
  %.013.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.013.i.i.i, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.e, -1
  %i.h = add i64 %.013.i.i.i, %.neg.i.i.i         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNK5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE17lower_bound_rangeERKS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %i.g, %.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !233, !alias.scope !790
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !233, !alias.scope !790
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE16extract_sequenceEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !224
  store ptr %i.a, ptr %0, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !226
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE14adopt_sequenceEONS0_6vectorISt4pairIS2_S2_EvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !224    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223  ; 5 uses
  %.idx.i.i = shl i64 %i.c, 1
  %i.d = getelementptr i8, ptr %i.a, i64 %.idx.i.i ; 3 uses
  %2 = icmp eq i64 %i.c, 0
  br i1 %2, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSA_9select1stIS5_EEEEEEEET_SI_SI_T0_.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %i.e = icmp ult i64 %i.c, 24
  tail call void @llvm.assume(i1 %i.e)
  %.not810.i.i.i = icmp eq i64 %i.c, 1
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 -2
  %3 = select i1 %.not810.i.i.i, ptr %i.a, ptr %scevgep.i.i
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSA_9select1stIS5_EEEEEEEET_SI_SI_T0_.exit.i.i

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSA_9select1stIS5_EEEEEEEET_SI_SI_T0_.exit.i.i: ; preds = %.preheader.i.i.i, %bb.a
  %i.f = phi ptr [ %4, %.preheader.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i10.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit.i.i, label %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i.i

_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSA_9select1stIS5_EEEEEEEET_SI_SI_T0_.exit.i.i
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %i.k = sub nsw i64 %i.c, %i.j
  store i64 %i.k, ptr %i.b, align 8, !tbaa !221, !noalias !793
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit.i.i: ; preds = %_ZN5boost9container4moveIPSt4pairI5emptyS3_ES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_S8_S9_.exit.i.i.i, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairI5emptyS5_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSA_9select1stIS5_EEEEEEEET_SI_SI_T0_.exit.i.i
  %.not.i11.i.i = icmp eq ptr %1, %0
  br i1 %.not.i11.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueEONS0_6vectorIS5_vvEE.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !223
  %i.m = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i.i, label %bb.c, !prof !225

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229
  %i.p = shl i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #23
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !224
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %.pre.i.i, %bb.c ], [ %i.a, %bb.b ]
  store ptr %i.q, ptr %0, align 8, !tbaa !224
  %i.r = load <2 x i64>, ptr %i.b, align 8, !tbaa !226
  store <2 x i64> %i.r, ptr %i.l, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueEONS0_6vectorIS5_vvEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueEONS0_6vectorIS5_vvEE.exit: ; preds = %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE5eraseENS0_12vec_iteratorIPS4_Lb1EEES8_.exit.i.i, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE14adopt_sequenceENS0_22ordered_unique_range_tEONS0_6vectorISt4pairIS2_S2_EvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS5_vvEE.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !223
  %i.b = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i, label %bb.c, !prof !225

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %i.e = shl i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #23
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !224
  store ptr %i.f, ptr %0, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !226
  store <2 x i64> %i.h, ptr %i.a, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS5_vvEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS5_vvEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE16priv_move_assignIvEEvONS1_IS4_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS4_S7_E4typeELj0EEENSA_12is_differentISG_NS0_13new_allocatorIS4_EEEENSA_5bool_ILb0EEESN_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container8flat_mapI5emptyS2_St4lessIS2_EvE8sequenceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvE4treeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvE4treeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ERKNS0_13new_allocatorISt4pairIS2_S2_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ERKNS0_13new_allocatorISt4pairIS2_S2_EEE) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ERKS4_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ERKS4_RKNS0_13new_allocatorISt4pairIS2_S2_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ERKS4_RKNS0_13new_allocatorISt4pairIS2_S2_EEE) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ESt16initializer_listISt4pairIS2_S2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ESt16initializer_listISt4pairIS2_S2_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE18insert_equal_rangeIPKS5_EEvT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvEC2IPKS5_EEbT_SE_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !219
  %i.f = shl i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #23
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvEC2IPKS5_EEbT_SE_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ESt16initializer_listISt4pairIS2_S2_EERKNS0_13new_allocatorIS8_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ESt16initializer_listISt4pairIS2_S2_EERKNS0_13new_allocatorIS8_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE18insert_equal_rangeIPKS5_EEvT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvEC2IPKS5_EEbT_SE_RKNS0_13new_allocatorIS5_EE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !219
  %i.f = shl i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #23
  br label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvEC2IPKS5_EEbT_SE_RKNS0_13new_allocatorIS5_EE.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC2ESt16initializer_listISt4pairIS2_S2_EERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat($_ZN5boost9container13flat_multimapI5emptyS2_St4lessIS2_EvEC5ESt16initializer_listISt4pairIS2_S2_EERKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE18insert_equal_rangeIPKS5_EEvT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvEC2IPKS5_EEbT_SE_RKS9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairI5emptyS4_ENS1_9select1stIS4_EESt4lessIS4_EvE4DataD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !219
  %i.f = shl i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #23
end_hunk_0

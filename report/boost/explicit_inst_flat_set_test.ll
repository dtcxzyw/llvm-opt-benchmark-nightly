Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEE4treeEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEE4treeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS5_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS7_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS5_RKS7_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS5_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !222

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 11 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !303
  %i.m = load ptr, ptr %1, align 8, !tbaa !250    ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.c
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
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
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.m, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !247, !alias.scope !1387
  %wide.load21 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !247, !alias.scope !1387
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1388, !noalias !1389
  store <4 x i32> %wide.load21, ptr %i.ae, align 4, !tbaa !247, !alias.scope !1388, !noalias !1389
  %i.af = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ag = add <4 x i32> %vec.phi19, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !1390, !noalias !1387
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ai, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ak, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.al = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1386

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !301
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2EOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5EOS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303
  store ptr %i.d, ptr %i.b, align 8, !tbaa !303
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS9_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !222

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 11 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !303
  %i.m = load ptr, ptr %1, align 8, !tbaa !250    ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
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
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !247, !alias.scope !1397
  %wide.load22 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !247, !alias.scope !1397
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1398, !noalias !1399
  store <4 x i32> %wide.load22, ptr %i.ae, align 4, !tbaa !247, !alias.scope !1398, !noalias !1399
  %i.af = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ag = add <4 x i32> %vec.phi20, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !1400, !noalias !1397
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ai, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ak, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.al = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1396

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !301
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2EOS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5EOS9_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303
  store ptr %i.d, ptr %i.b, align 8, !tbaa !303
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !303
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  store ptr %i.h, ptr %i.d, align 8, !tbaa !303
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.n) #28
  br label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i.i.i, align 4, !tbaa !247
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !301
  br label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.g)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.62", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  tail call void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.g, ptr noundef %1, ptr noundef %2)
  %i.h = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.f ; 13 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !250  ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib7pdqsortIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SK_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = lshr i64 %i.o, 1
  %i.q = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorI5emptyvvE5mergeIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEENSB_11enable_if_cIXaantsr3dtl17is_input_iteratorIT_EE5valuesr3dtl7is_sameIS2_NS_7movelib15iterator_traitsISG_E10value_typeEEE5valueEvE4typeESG_SG_T0_:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !215
  %i.e = sub i64 %i.d, %i.b
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 7 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, %i.h                       ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %.lr.ph.i, !prof !222

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #25
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !221    ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.o = icmp samesign eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %bb.d, !prof !222

bb.d:                                             ; preds = %._crit_edge.i
  %scevgep.i = getelementptr i8, ptr %i.l, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep.i, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %.not64.i = icmp eq ptr %1, null
  br i1 %.not64.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %._crit_edge.i
  %i.p = load i64, ptr %i.c, align 8, !tbaa !215  ; 2 uses
  %.not47.i = icmp eq i64 %i.p, 0
  br i1 %.not47.i, label %_ZN5boost9container6vectorI5emptyvvE24priv_merge_in_new_bufferIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENSB_17integral_constantIjLj1EEEEEvT_mT0_T1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %_ZN5boost9container6vectorI5emptyvvE24priv_merge_in_new_bufferIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENSB_17integral_constantIjLj1EEEEEvT_mT0_T1_.exit

_ZN5boost9container6vectorI5emptyvvE24priv_merge_in_new_bufferIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENSB_17integral_constantIjLj1EEEEEvT_mT0_T1_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorI5emptyEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, %bb.g
  %i.q = add i64 %i.n, %i.h
  store i64 %i.q, ptr %i.a, align 8, !tbaa !218
  store ptr %i.l, ptr %0, align 8, !tbaa !221
  store i64 %i.j, ptr %i.c, align 8, !tbaa !223
  br label %_ZN5boost9container6vectorI5emptyvvE18priv_merge_genericIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SF_T0_.exit

bb.h:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !221, !noalias !1586 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.b
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i, label %bb.i, !prof !222

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ne ptr %i.r, null
  %i.u = icmp ne ptr %1, null
  %or.cond.i.i.i.i.i.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %1, i64 %i.h, i1 false), !noalias !1587
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !218, !noalias !1587
  br label %_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i

_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %bb.h, %bb.i, %bb.j
  %i.v = phi i64 [ %.pre.i, %bb.j ], [ %i.b, %bb.i ], [ %i.b, %bb.h ]
  %i.w = add i64 %i.v, %i.h                       ; 5 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !218, !noalias !1587
  %i.x = icmp samesign eq i64 %i.b, 0
  %i.y = icmp samesign eq i64 %i.b, %i.w
  %or.cond.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i, label %_ZN5boost9container6vectorI5emptyvvE18priv_merge_genericIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SF_T0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !221    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !215
  %i.ac = sub i64 %i.ab, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.aa, ptr %3, align 8, !tbaa !234
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !236
  %gepdiff.i = sub nsw i64 %i.w, %i.b
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %i.z, i64 noundef %i.b, i64 noundef %gepdiff.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container6vectorI5emptyvvE18priv_merge_genericIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SF_T0_.exit

_ZN5boost9container6vectorI5emptyvvE18priv_merge_genericIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SF_T0_.exit: ; preds = %bb.k, %_ZN5boost9container6vectorI5emptyvvE6insertIPKS2_EENS0_12vec_iteratorIPS2_Lb0EEENS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI5emptyvvE24priv_merge_in_new_bufferIPKS2_NS0_3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENSB_17integral_constantIjLj1EEEEEvT_mT0_T1_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10ENS0_9allocatorIS4_Lj2ELj0EEEvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !245  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.d, %.lr.ph.i.i.prol ], [ %i.c, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %i.a, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.d = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !247
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1588

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.preheader ], [ %i.d, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %i.h = icmp ult i64 %i.c, 4
  br i1 %i.h, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !247
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 4 uses
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.k, align 4, !tbaa !247
  %i.l = add i32 %i.i, -2
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !247
  %i.n = add i32 %i.i, -3
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.p = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !247
  %i.q = add i32 %i.i, -4
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !241
  %.not.i1.i = icmp eq i64 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = icmp eq ptr %i.u, %i.a
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.a)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !250    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 5 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !239    ; 5 uses
  %5 = ptrtoaddr ptr %i.h to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 16 uses
  %i.j = icmp eq ptr %i.i, %i.b
  %.not17.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter75 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.l = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.l, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !247
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = add i64 %.020.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1589

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.020.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 3
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.s = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !247
  store i32 %i.s, ptr %.01618.i.i.i.i, align 4, !tbaa !247
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 4 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.v = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4, !tbaa !247
  store i32 %i.x, ptr %i.w, align 4, !tbaa !247
  %i.y = add i32 %i.t, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !247
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !247
  %i.ac = add i32 %i.t, 3
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ad = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !247
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !247
  %i.ag = add i32 %i.t, 4
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.aj = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !32

bb.d:                                             ; preds = %bb.b
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !222

bb.e:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.i to i64
  %i.al = ptrtoint ptr %i.b to i64                ; 5 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.an, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sub i64 0, %3
  %i.ap = getelementptr [4 x i8], ptr %i.i, i64 %i.ao ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %bb.f
  %i.aq = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !247
  store i32 %i.ar, ptr %i.i, align 4, !tbaa !247
  store i32 0, ptr %i.ap, align 4, !tbaa !247
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i11.i.i.prol.loopexit

.lr.ph.i.i11.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i11.i.i.prol, %bb.f
  %.020.i.i12.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aq, %.lr.ph.i.i11.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ap, %bb.f ], [ %i.au, %.lr.ph.i.i11.i.i.prol ]
  %.01618.i.i13.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.av, %.lr.ph.i.i11.i.i.prol ]
  %i.aw = icmp eq i64 %3, 1
  br i1 %i.aw, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i
  %.020.i.i12.i.i = phi i64 [ %i.bc, %.lr.ph.i.i11.i.i ], [ %.020.i.i12.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i11.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i13.i.i = phi ptr [ %i.bh, %.lr.ph.i.i11.i.i ], [ %.01618.i.i13.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i13.i.i) ]
  %i.ax = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ax, ptr %.01618.i.i13.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !247
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 4
  %i.bc = add i64 %.020.i.i12.i.i, -2             ; 2 uses
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !247
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !247
  store i32 0, ptr %i.ba, align 4, !tbaa !247
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i13.i.i, i64 8
  %.not.i.i14.i.i.1 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i14.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i11.i.i, !llvm.loop !1590

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i, %.lr.ph.i.i11.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.ap
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bi = shl nuw nsw i64 %i.f, 2
  %i.bj = shl i64 %3, 2
  %i.bk = add i64 %i.bi, %5
  %i.bl = add i64 %i.bk, -4
  %i.bm = add i64 %i.bj, %i.al
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bq = shl nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.br = shl i64 %3, 2                           ; 2 uses
  %i.bs = add i64 %i.bq, %5
  %i.bt = add i64 %i.bs, -4
  %i.bu = add i64 %i.br, %i.al
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = and i64 %i.bv, -4                       ; 2 uses
  %i.bx = add nsw i64 %i.bq, -4                   ; 2 uses
  %i.by = sub i64 %i.bx, %i.bw
  %i.bz = getelementptr i8, ptr %i.h, i64 %i.by
  %i.ca = add i64 %i.br, %i.bw
  %i.cb = sub i64 %i.bx, %i.ca
  %i.cc = getelementptr i8, ptr %i.h, i64 %i.cb
  %bound0 = icmp ult ptr %i.bz, %i.ap
  %bound1 = icmp ult ptr %i.cc, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.cd = mul i64 %n.vec, -4                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.i, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ap, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cg ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ap, i64 %i.cg ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !247, !alias.scope !1603
  %wide.load24 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !247, !alias.scope !1603
  %i.cj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !247, !alias.scope !1604, !noalias !1603
  store <4 x i32> %wide.load24, ptr %i.ck, align 4, !tbaa !247, !alias.scope !1604, !noalias !1603
  store <4 x i32> zeroinitializer, ptr %i.ch, align 4, !tbaa !247, !alias.scope !1603
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !247, !alias.scope !1603
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader66

.lr.ph.i40.i.i.i.preheader66:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader66, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader66 ]
  %.079.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader66 ]
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !247
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !247
  store i32 0, ptr %i.cm, align 4, !tbaa !247
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cm
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !1595

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check28 = icmp ult i64 %3, 8
  %i.cp = sub i64 %i.a, %i.al
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check28, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec30 = and i64 %3, -8                       ; 3 uses
  %i.cq = shl i64 %n.vec30, 2                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.b, i64 %i.cq
  %i.cs = and i64 %3, 7
  %i.ct = getelementptr i8, ptr %4, i64 %i.cq
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %i.cu = shl i64 %index32, 2                     ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.b, i64 %i.cu ; 2 uses
  %next.gep34 = getelementptr i8, ptr %4, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load35 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !247
  %wide.load36 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !247
  %i.cw = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load35, ptr %next.gep33, align 4, !tbaa !247
  store <4 x i32> %wide.load36, ptr %i.cw, align 4, !tbaa !247
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.cx, label %middle.block38, label %vector.body31, !llvm.loop !1596

middle.block38:                                   ; preds = %vector.body31
  %cmp.n39 = icmp eq i64 %3, %n.vec30
  br i1 %cmp.n39, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block38
  %.011.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block38 ] ; 2 uses
  %.0610.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block38 ] ; 4 uses
  %.079.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block38 ] ; 2 uses
  %i.cy = add i64 %.0610.i.i.i.i.i.ph, -1
  %xtraiter67 = and i64 %.0610.i.i.i.i.i.ph, 7    ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.011.i.i.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.i.i.prol = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cz = add i64 %.0610.i.i.i.i.i.prol, -1       ; 2 uses
  %i.da = load i32, ptr %.079.i.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.da, ptr %.011.i.i.i.i.i.prol, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter67
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1597

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %i.dd = icmp ult i64 %i.cy, 7
  br i1 %i.dd, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.de = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.de, ptr %.011.i.i.i.i.i, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !247
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !247
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !247
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !247
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 20
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !247
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !247
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !247
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !247
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 28
  %i.dy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 28
  %i.dz = add i64 %.0610.i.i.i.i.i, -8            ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !247
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !247
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1598

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i48.i.i.i ], [ %i.ed, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ee = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !247
  store i32 %i.ee, ptr %.01517.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !247
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.eh, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !33

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 -2147483648, ptr %i.fj, align 4, !tbaa !247
  %i.fk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fl = add i32 %i.fk, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 -2147483648, ptr %i.fn, align 4, !tbaa !247
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fp = add i32 %i.fo, -1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fq = add nuw i64 %.07.i.i.i80, 4             ; 2 uses
  %niter150.next.3 = add nuw i64 %niter150, 4     ; 2 uses
  %niter150.ncmp.3 = icmp eq i64 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %.unr-lcssa142, label %bb.af, !llvm.loop !5

bb.ag:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %5, align 8, !tbaa !255
  tail call void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef %i.es, ptr noundef %i.fr, i64 noundef %i.co)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.ag, %.epilog-lcssa147, %bb.ad, %bb.ab, %.epilog-lcssa138, %bb.y, %bb.n, %.epilog-lcssa165, %bb.k, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !247
  store i32 %i.f, ptr %2, align 4, !tbaa !247
  store i32 0, ptr %0, align 4, !tbaa !247
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2251.i = icmp eq ptr %i.i, %1
  br i1 %.not2251.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.c, %bb.g
  %i.j = phi ptr [ %i.v, %bb.g ], [ %i.i, %bb.c ] ; 6 uses
  %.04352.i = phi ptr [ %storemerge53.i, %bb.g ], [ %2, %bb.c ] ; 5 uses
  %storemerge53.i = getelementptr inbounds nuw i8, ptr %.04352.i, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !247  ; 2 uses
  %i.l = load i32, ptr %.04352.i, align 4, !tbaa !247 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph54.i
  store i32 %i.l, ptr %storemerge53.i, align 4, !tbaa !247
  store i32 0, ptr %.04352.i, align 4, !tbaa !247
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not2445.i = icmp eq ptr %.04352.i, %2
  br i1 %.not2445.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2347.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.04352.i, %bb.d ] ; 3 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2347.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !247
  %i.q = load i32, ptr %storemerge23.i, align 4, !tbaa !247 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.q, ptr %storemerge2347.i, align 4, !tbaa !247
  store i32 0, ptr %storemerge23.i, align 4, !tbaa !247
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1707

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2347.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.s = load i32, ptr %i.j, align 4, !tbaa !247
  store i32 %i.s, ptr %storemerge23.lcssa.i, align 4, !tbaa !247
  store i32 0, ptr %i.j, align 4, !tbaa !247
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph54.i
  store i32 %i.k, ptr %storemerge53.i, align 4, !tbaa !247
  store i32 0, ptr %i.j, align 4, !tbaa !247
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %i.v, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i, !llvm.loop !1708

bb.h:                                             ; preds = %bb.a
  %i.w = lshr i64 %i.d, 1                         ; 9 uses
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 17 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.y)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.x, ptr noundef %i.x)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.i, %bb.m
  %indvar136 = phi i64 [ %indvar.next137, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.058.i = phi ptr [ %.2.i, %bb.m ], [ %i.x, %bb.i ] ; 7 uses
  %.02457.i = phi ptr [ %.125.i, %bb.m ], [ %i.y, %bb.i ] ; 5 uses
  %.04756.i = phi ptr [ %i.cj, %bb.m ], [ %2, %bb.i ] ; 6 uses
  %i.ab = icmp eq ptr %.02457.i, %i.aa
  br i1 %i.ab, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.not60.i = icmp eq ptr %.04756.i, %i.y
  br i1 %.not60.i, label %._crit_edge64.i, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.ac = add nsw i64 %.idx, -4
  %i.ad = shl i64 %indvar136, 2
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter139 = and i64 %i.ag, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i.prol
  %.162.i.prol = phi ptr [ %i.al, %.lr.ph63.i.prol ], [ %.058.i, %.lr.ph63.i.preheader ] ; 3 uses
  %.14861.i.prol = phi ptr [ %i.ak, %.lr.ph63.i.prol ], [ %.04756.i, %.lr.ph63.i.preheader ] ; 2 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph63.i.prol ], [ 0, %.lr.ph63.i.preheader ]
  %i.ah = load i32, ptr %.162.i.prol, align 4, !tbaa !247
  store i32 %i.ah, ptr %.14861.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.162.i.prol, align 4, !tbaa !247
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ak = getelementptr inbounds nuw i8, ptr %.14861.i.prol, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.162.i.prol, i64 4 ; 3 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol, !llvm.loop !1709

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph63.i.preheader ], [ %i.al, %.lr.ph63.i.prol ]
  %.162.i.unr = phi ptr [ %.058.i, %.lr.ph63.i.preheader ], [ %i.al, %.lr.ph63.i.prol ]
  %.14861.i.unr = phi ptr [ %.04756.i, %.lr.ph63.i.preheader ], [ %i.ak, %.lr.ph63.i.prol ]
  %i.am = icmp ult i64 %i.ae, 12
  br i1 %i.am, label %._crit_edge64.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.162.i = phi ptr [ %i.bd, %.lr.ph63.i ], [ %.162.i.unr, %.lr.ph63.i.prol.loopexit ] ; 6 uses
  %.14861.i = phi ptr [ %i.bc, %.lr.ph63.i ], [ %.14861.i.unr, %.lr.ph63.i.prol.loopexit ] ; 5 uses
  %i.an = load i32, ptr %.162.i, align 4, !tbaa !247
  store i32 %i.an, ptr %.14861.i, align 4, !tbaa !247
  store i32 0, ptr %.162.i, align 4, !tbaa !247
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 4 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aq = getelementptr inbounds nuw i8, ptr %.14861.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.162.i, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !247
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !247
  store i32 0, ptr %i.ar, align 4, !tbaa !247
  %i.at = add i32 %i.ao, 2
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.au = getelementptr inbounds nuw i8, ptr %.14861.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.162.i, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !247
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !247
  store i32 0, ptr %i.av, align 4, !tbaa !247
  %i.ax = add i32 %i.ao, 3
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ay = getelementptr inbounds nuw i8, ptr %.14861.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.162.i, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !247
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !247
  store i32 0, ptr %i.az, align 4, !tbaa !247
  %i.bb = add i32 %i.ao, 4
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bc = getelementptr inbounds nuw i8, ptr %.14861.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.162.i, i64 16 ; 2 uses
  %.not.i33.3 = icmp eq ptr %i.bc, %i.y
  br i1 %.not.i33.3, label %._crit_edge64.i, label %.lr.ph63.i, !llvm.loop !1710

._crit_edge64.i:                                  ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.058.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph63.i.prol.loopexit ], [ %i.bd, %.lr.ph63.i ] ; 8 uses
  %.1.lcssa.i99 = ptrtoaddr ptr %.1.lcssa.i to i64 ; 2 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.z
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %._crit_edge64.i
  %i.be = shl i64 %i.w, 3
  %i.bf = add i64 %i.be, %i.b
  %i.bg = add i64 %i.bf, -4
  %i.bh = sub i64 %i.bg, %.1.lcssa.i99            ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 108
  br i1 %min.iters.check, label %.lr.ph.i28.i.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.i.preheader
  %i.bk = shl i64 %i.w, 3
  %i.bl = add i64 %i.bk, %i.b
  %i.bm = add i64 %i.bl, -4
  %i.bn = sub i64 %i.bm, %.1.lcssa.i99
  %i.bo = and i64 %i.bn, -4                       ; 2 uses
  %i.bp = getelementptr i8, ptr %2, i64 %.idx
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bo
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %bound0 = icmp ult ptr %i.y, %i.bt
  %bound1 = icmp ult ptr %.1.lcssa.i, %i.br
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bu = shl i64 %n.vec, 2                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.y, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.bx ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep99, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !247, !alias.scope !1723
  %wide.load100 = load <4 x i32>, ptr %i.by, align 4, !tbaa !247, !alias.scope !1723
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1724, !noalias !1723
  store <4 x i32> %wide.load100, ptr %i.bz, align 4, !tbaa !247, !alias.scope !1724, !noalias !1723
  store <4 x i32> zeroinitializer, ptr %next.gep99, align 4, !tbaa !247, !alias.scope !1723
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !247, !alias.scope !1723
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader132

.lr.ph.i28.i.preheader132:                        ; preds = %vector.memcheck, %.lr.ph.i28.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i28.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %.lr.ph.i28.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i.preheader132, %.lr.ph.i28.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i28.i ], [ %.010.i.i.ph, %.lr.ph.i28.i.preheader132 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i28.i ], [ %.079.i.i.ph, %.lr.ph.i28.i.preheader132 ] ; 3 uses
  %i.cb = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.cb, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i29.i = icmp eq ptr %i.cc, %i.z
  br i1 %.not.i29.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i, !llvm.loop !1715

bb.j:                                             ; preds = %.lr.ph.i32
  %i.ce = load i32, ptr %.02457.i, align 4, !tbaa !247 ; 2 uses
  %i.cf = load i32, ptr %.058.i, align 4, !tbaa !247 ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ce, ptr %.04756.i, align 4, !tbaa !247
  store i32 0, ptr %.02457.i, align 4, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %.02457.i, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.cf, ptr %.04756.i, align 4, !tbaa !247
  store i32 0, ptr %.058.i, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.125.i = phi ptr [ %i.ch, %bb.k ], [ %.02457.i, %bb.l ] ; 2 uses
  %.2.i = phi ptr [ %.058.i, %bb.k ], [ %i.ci, %bb.l ] ; 3 uses
  %.sink.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.sink.i = add i32 %.sink.in.i, 1
  store i32 %.sink.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cj = getelementptr inbounds nuw i8, ptr %.04756.i, i64 4 ; 2 uses
  %i.ck = icmp ne ptr %.2.i, %i.z
  %i.cl = icmp ne ptr %i.cj, %i.y
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  %indvar.next137 = add i64 %indvar136, 1
  br i1 %i.cm, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !1716

._crit_edge.i:                                    ; preds = %bb.m, %bb.i
  %.024.lcssa.i = phi ptr [ %i.y, %bb.i ], [ %.125.i, %bb.m ]
  %.0.lcssa.i = phi ptr [ %i.x, %bb.i ], [ %.2.i, %bb.m ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.z
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.q
  %indvar = phi i64 [ %indvar.next, %bb.q ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i ] ; 11 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.q ], [ %.024.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.01824.i.i.i = phi ptr [ %i.dr, %bb.q ], [ %i.y, %._crit_edge.i ] ; 8 uses
  %i.cn = icmp eq ptr %.01625.i.i.i, %i.aa
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.preheader, label %bb.n

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i103.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.co = shl i64 %i.w, 3
  %i.cp = add i64 %i.co, %i.b
  %i.cq = add i64 %i.cp, -4
  %i.cr = sub i64 %i.cq, %.026.i.i.i103.le        ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.cr, 108
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.preheader125, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cu = shl i64 %indvar, 2
  %i.cv = getelementptr i8, ptr %2, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %.idx
  %scevgep = getelementptr i8, ptr %i.cw, i64 4
  %i.cx = shl i64 %i.w, 3
  %i.cy = add i64 %i.cx, %i.b
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %.026.i.i.i103.le
  %i.db = and i64 %i.da, -4                       ; 2 uses
  %scevgep104 = getelementptr i8, ptr %scevgep, i64 %i.db
  %scevgep105 = getelementptr i8, ptr %.026.i.i.i, i64 4
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.db
  %bound0107 = icmp ult ptr %.01824.i.i.i, %scevgep106
  %bound1108 = icmp ult ptr %.026.i.i.i, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i.i.i.i.preheader125, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.ct, 9223372036854775800  ; 3 uses
  %i.dc = shl i64 %n.vec113, 2                    ; 2 uses
  %i.dd = getelementptr i8, ptr %.01824.i.i.i, i64 %i.dc
  %i.de = getelementptr i8, ptr %.026.i.i.i, i64 %i.dc
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %i.df = shl i64 %index115, 2                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.df ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.026.i.i.i, i64 %i.df ; 3 uses
  %i.dg = getelementptr i8, ptr %next.gep117, i64 16 ; 2 uses
  %wide.load118 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !247, !alias.scope !1725
  %wide.load119 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !247, !alias.scope !1725
  %i.dh = getelementptr i8, ptr %next.gep116, i64 16
  store <4 x i32> %wide.load118, ptr %next.gep116, align 4, !tbaa !247, !alias.scope !1726, !noalias !1725
  store <4 x i32> %wide.load119, ptr %i.dh, align 4, !tbaa !247, !alias.scope !1726, !noalias !1725
  store <4 x i32> zeroinitializer, ptr %next.gep117, align 4, !tbaa !247, !alias.scope !1725
  store <4 x i32> zeroinitializer, ptr %i.dg, align 4, !tbaa !247, !alias.scope !1725
  %index.next120 = add nuw i64 %index115, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.di, label %middle.block121, label %vector.body114, !llvm.loop !1720

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %i.ct, %n.vec113
  br i1 %cmp.n122, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i.i.preheader125

.lr.ph.i.i.i.i.i.preheader125:                    ; preds = %vector.memcheck102, %.lr.ph.i.i.i.i.i.preheader, %middle.block121
  %.010.i.i.i.i.i.ph = phi ptr [ %.01824.i.i.i, %vector.memcheck102 ], [ %.01824.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %middle.block121 ]
  %.079.i.i.i.i.i.ph = phi ptr [ %.026.i.i.i, %vector.memcheck102 ], [ %.026.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %middle.block121 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader125, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader125 ] ; 2 uses
  %.079.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader125 ] ; 3 uses
  %i.dj = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.dj, ptr %.010.i.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i.i.i, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1721

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load i32, ptr %.01625.i.i.i, align 4, !tbaa !247 ; 2 uses
  %i.dn = load i32, ptr %.026.i.i.i, align 4, !tbaa !247 ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.dm, ptr %.01824.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.01625.i.i.i, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %.01625.i.i.i, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 %i.dn, ptr %.01824.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i.i.i, align 4, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.117.i.i.i = phi ptr [ %i.dp, %bb.o ], [ %.01625.i.i.i, %bb.p ]
  %.1.i.i.i = phi ptr [ %.026.i.i.i, %bb.o ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dr = getelementptr i8, ptr %.01824.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i, !llvm.loop !42

bb.r:                                             ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive14collect_uniqueIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_:bb.a
bb.e:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.ah = load i32, ptr %.075108, align 4, !tbaa !247
  %i.ai = load i32, ptr %.013.lcssa.i, align 4, !tbaa !247
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i = icmp eq ptr %.071109, %.075108
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %bb.f
  %i.ak = sub i64 %i.u, %.071109144               ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check, label %.lr.ph.i81.preheader205, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i81.preheader
  %scevgep = getelementptr i8, ptr %.067110, i64 4
  %i.an = sub i64 %i.w, %.071109144
  %i.ao = and i64 %i.an, -4                       ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep146 = getelementptr i8, ptr %.071109, i64 4
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.ao
  %bound0 = icmp ult ptr %.067110, %scevgep147
  %bound1 = icmp ult ptr %.071109, %scevgep145
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i81.preheader205, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.067110, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %.071109, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.067110, i64 %i.as ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.071109, i64 %i.as ; 3 uses
  %i.at = getelementptr i8, ptr %next.gep148, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !247, !alias.scope !1752
  %wide.load149 = load <4 x i32>, ptr %i.at, align 4, !tbaa !247, !alias.scope !1752
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1753, !noalias !1752
  store <4 x i32> %wide.load149, ptr %i.au, align 4, !tbaa !247, !alias.scope !1753, !noalias !1752
  store <4 x i32> zeroinitializer, ptr %next.gep148, align 4, !tbaa !247, !alias.scope !1752
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !247, !alias.scope !1752
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1737

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81.preheader205

.lr.ph.i81.preheader205:                          ; preds = %vector.memcheck, %.lr.ph.i81.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.067110, %vector.memcheck ], [ %.067110, %.lr.ph.i81.preheader ], [ %i.aq, %middle.block ] ; 2 uses
  %.079.i.ph = phi ptr [ %.071109, %vector.memcheck ], [ %.071109, %.lr.ph.i81.preheader ], [ %i.ar, %middle.block ] ; 3 uses
  %.079.i.ph207 = ptrtoaddr ptr %.079.i.ph to i64
  %i.aw = sub i64 %i.u, %.079.i.ph207             ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol

.lr.ph.i81.prol:                                  ; preds = %.lr.ph.i81.preheader205, %.lr.ph.i81.prol
  %.010.i.prol = phi ptr [ %i.bb, %.lr.ph.i81.prol ], [ %.010.i.ph, %.lr.ph.i81.preheader205 ] ; 2 uses
  %.079.i.prol = phi ptr [ %i.ba, %.lr.ph.i81.prol ], [ %.079.i.ph, %.lr.ph.i81.preheader205 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i81.prol ], [ 0, %.lr.ph.i81.preheader205 ]
  %i.az = load i32, ptr %.079.i.prol, align 4, !tbaa !247
  store i32 %i.az, ptr %.010.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.prol, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol, !llvm.loop !1738

.lr.ph.i81.prol.loopexit:                         ; preds = %.lr.ph.i81.prol, %.lr.ph.i81.preheader205
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i81.preheader205 ], [ %i.bb, %.lr.ph.i81.prol ]
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i81.preheader205 ], [ %i.bb, %.lr.ph.i81.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i81.preheader205 ], [ %i.ba, %.lr.ph.i81.prol ]
  %i.bc = icmp ult i64 %i.aw, 28
  br i1 %i.bc, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81
  %.010.i = phi ptr [ %i.ca, %.lr.ph.i81 ], [ %.010.i.unr, %.lr.ph.i81.prol.loopexit ] ; 9 uses
  %.079.i = phi ptr [ %i.bz, %.lr.ph.i81 ], [ %.079.i.unr, %.lr.ph.i81.prol.loopexit ] ; 10 uses
  %i.bd = load i32, ptr %.079.i, align 4, !tbaa !247
  store i32 %i.bd, ptr %.010.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !247
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !247
  store i32 0, ptr %i.be, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i, i64 12
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !247
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !247
  store i32 0, ptr %i.bk, align 4, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !247
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !247
  store i32 0, ptr %i.bn, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i, i64 20 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !247
  store i32 0, ptr %i.bq, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !247
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !247
  store i32 0, ptr %i.bt, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i, i64 28 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i, i64 28
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !247
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !247
  store i32 0, ptr %i.bw, align 4, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i82.7 = icmp eq ptr %i.bz, %.075108
  br i1 %.not.i82.7, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81, !llvm.loop !1739

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81, %middle.block, %bb.f
  %.0.lcssa.i = phi ptr [ %.067110, %bb.f ], [ %i.aq, %middle.block ], [ %.lcssa.unr, %.lr.ph.i81.prol.loopexit ], [ %i.ca, %.lr.ph.i81 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.075108, i64 4 ; 2 uses
  %i.cc = add nuw i64 %.0111, 1                   ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.cd = load i32, ptr %.075108, align 4, !tbaa !247
  store i32 %i.cd, ptr %i.x, align 4, !tbaa !247
  store i32 0, ptr %.075108, align 4, !tbaa !247
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cg = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !254
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

bb.h:                                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.ch = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !247
  store i32 %i.ci, ptr %i.x, align 4, !tbaa !247
  store i32 0, ptr %i.ch, align 4, !tbaa !247
  %i.cj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cl = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.cl, ptr %i.i, align 8, !tbaa !254
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.013.lcssa.i, %i.cn
  br i1 %.not8.i.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.h
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.010.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.co, %.lr.ph.i.preheader.i ]
  %.079.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cn, %.lr.ph.i.preheader.i ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !247
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !247
  store i32 0, ptr %i.cp, align 4, !tbaa !247
  %.not.i.i = icmp eq ptr %.013.lcssa.i, %i.cp
  br i1 %.not.i.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !46

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %i.cs = load i32, ptr %.075108, align 4, !tbaa !247
  store i32 %i.cs, ptr %.013.lcssa.i, align 4, !tbaa !247
  store i32 0, ptr %.075108, align 4, !tbaa !247
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit: ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.g, %bb.e
  %i.ct = phi i64 [ %i.s, %bb.e ], [ %i.cg, %bb.g ], [ %i.cl, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 4 uses
  %.172 = phi ptr [ %.071109, %bb.e ], [ %i.cb, %bb.g ], [ %i.cb, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ]
  %.168 = phi ptr [ %.067110, %bb.e ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 11 uses
  %.1 = phi i64 [ %.0111, %bb.e ], [ %i.cc, %bb.g ], [ %i.cc, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.075108, i64 4 ; 2 uses
  %i.cv = icmp ne ptr %i.cu, %1
  %i.cw = icmp ult i64 %.1, %2
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !1740

._crit_edge:                                      ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit
  %.168160.le = ptrtoaddr ptr %.168 to i64
  %.not8.i83 = icmp eq ptr %0, %.168
  br i1 %.not8.i83, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %._crit_edge
  %i.cy = getelementptr [4 x i8], ptr %.168, i64 %.1 ; 5 uses
  %i.cz = add i64 %.168160.le, -4
  %i.da = sub i64 %i.cz, %i.a                     ; 3 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.da, 108
  br i1 %min.iters.check161, label %.lr.ph.i84.preheader204, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i84.preheader
  %i.dd = shl i64 %.1, 2
  %i.de = and i64 %i.da, -4                       ; 2 uses
  %i.df = add i64 %i.dd, -4
  %i.dg = sub i64 %i.df, %i.de
  %i.dh = getelementptr i8, ptr %.168, i64 %i.dg
  %i.di = sub nuw nsw i64 -4, %i.de
  %i.dj = getelementptr i8, ptr %.168, i64 %i.di
  %bound0163 = icmp ult ptr %i.dh, %.168
  %bound1164 = icmp ult ptr %i.dj, %i.cy
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph.i84.preheader204, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck162
  %n.vec167 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.dk = mul i64 %n.vec167, -4                   ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cy, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.168, i64 %i.dk
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.dn = mul i64 %index169, -4                   ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cy, i64 %i.dn ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.168, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep171, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep171, i64 -32 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %i.do, align 4, !tbaa !247, !alias.scope !1754
  %wide.load173 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !247, !alias.scope !1754
  %i.dq = getelementptr inbounds i8, ptr %next.gep170, i64 -16
  %i.dr = getelementptr inbounds i8, ptr %next.gep170, i64 -32
  store <4 x i32> %wide.load172, ptr %i.dq, align 4, !tbaa !247, !alias.scope !1755, !noalias !1754
  store <4 x i32> %wide.load173, ptr %i.dr, align 4, !tbaa !247, !alias.scope !1755, !noalias !1754
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !247, !alias.scope !1754
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !247, !alias.scope !1754
  %index.next174 = add nuw i64 %index169, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.ds, label %middle.block175, label %vector.body168, !llvm.loop !1744

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.dc, %n.vec167
  br i1 %cmp.n176, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i84.preheader204

.lr.ph.i84.preheader204:                          ; preds = %vector.memcheck162, %.lr.ph.i84.preheader, %middle.block175
  %.010.i85.ph = phi ptr [ %i.cy, %vector.memcheck162 ], [ %i.cy, %.lr.ph.i84.preheader ], [ %i.dl, %middle.block175 ]
  %.079.i86.ph = phi ptr [ %.168, %vector.memcheck162 ], [ %.168, %.lr.ph.i84.preheader ], [ %i.dm, %middle.block175 ]
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader204, %.lr.ph.i84
  %.010.i85 = phi ptr [ %i.du, %.lr.ph.i84 ], [ %.010.i85.ph, %.lr.ph.i84.preheader204 ]
  %.079.i86 = phi ptr [ %i.dt, %.lr.ph.i84 ], [ %.079.i86.ph, %.lr.ph.i84.preheader204 ]
  %i.dt = getelementptr inbounds i8, ptr %.079.i86, i64 -4 ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %.010.i85, i64 -4 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !247
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !247
  store i32 0, ptr %i.dt, align 4, !tbaa !247
  %.not.i87 = icmp eq ptr %0, %i.dt
  br i1 %.not.i87, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i84, !llvm.loop !1745

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i84, %middle.block175, %bb.c, %._crit_edge
  %.0.lcssa141 = phi i64 [ 1, %bb.c ], [ %.1, %._crit_edge ], [ %.1, %middle.block175 ], [ %.1, %.lr.ph.i84 ] ; 3 uses
  %i.dw = phi i64 [ %i.o, %bb.c ], [ %i.ct, %._crit_edge ], [ %i.ct, %middle.block175 ], [ %i.ct, %.lr.ph.i84 ] ; 2 uses
  %.idx = shl i64 %i.dw, 2                        ; 3 uses
  %i.dx = getelementptr i8, ptr %i.h, i64 %.idx   ; 2 uses
  %.not8.i89 = icmp eq i64 %i.dw, 0
  br i1 %.not8.i89, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit95, label %.lr.ph.i90.preheader

.lr.ph.i90.preheader:                             ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.dy = add i64 %.idx, -4                       ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.dy, 28
  br i1 %min.iters.check185, label %.lr.ph.i90.preheader203, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i90.preheader
  %i.eb = getelementptr i8, ptr %0, i64 %.idx
  %bound0187 = icmp ult ptr %0, %i.dx
  %bound1188 = icmp ult ptr %i.h, %i.eb
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph.i90.preheader203, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck186
  %n.vec191 = and i64 %i.ea, 9223372036854775800  ; 3 uses
  %i.ec = shl i64 %n.vec191, 2                    ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.h, i64 %i.ec
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %i.ef = shl i64 %index193, 2                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %0, i64 %i.ef ; 2 uses
  %next.gep195 = getelementptr i8, ptr %i.h, i64 %i.ef ; 3 uses
  %i.eg = getelementptr i8, ptr %next.gep195, i64 16 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %next.gep195, align 4, !tbaa !247, !alias.scope !1756
  %wide.load197 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !247, !alias.scope !1756
  %i.eh = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %wide.load196, ptr %next.gep194, align 4, !tbaa !247, !alias.scope !1757, !noalias !1756
  store <4 x i32> %wide.load197, ptr %i.eh, align 4, !tbaa !247, !alias.scope !1757, !noalias !1756
  store <4 x i32> zeroinitializer, ptr %next.gep195, align 4, !tbaa !247, !alias.scope !1756
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !247, !alias.scope !1756
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.ei, label %middle.block199, label %vector.body192, !llvm.loop !1749

middle.block199:                                  ; preds = %vector.body192
  %cmp.n200 = icmp eq i64 %i.ea, %n.vec191
  br i1 %cmp.n200, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit95, label %.lr.ph.i90.preheader203

.lr.ph.i90.preheader203:                          ; preds = %vector.memcheck186, %.lr.ph.i90.preheader, %middle.block199
  %.010.i91.ph = phi ptr [ %0, %vector.memcheck186 ], [ %0, %.lr.ph.i90.preheader ], [ %i.ed, %middle.block199 ]
  %.079.i92.ph = phi ptr [ %i.h, %vector.memcheck186 ], [ %i.h, %.lr.ph.i90.preheader ], [ %i.ee, %middle.block199 ]
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader203, %.lr.ph.i90
  %.010.i91 = phi ptr [ %i.el, %.lr.ph.i90 ], [ %.010.i91.ph, %.lr.ph.i90.preheader203 ] ; 2 uses
  %.079.i92 = phi ptr [ %i.ek, %.lr.ph.i90 ], [ %.079.i92.ph, %.lr.ph.i90.preheader203 ] ; 3 uses
  %i.ej = load i32, ptr %.079.i92, align 4, !tbaa !247
  store i32 %i.ej, ptr %.010.i91, align 4, !tbaa !247
  store i32 0, ptr %.079.i92, align 4, !tbaa !247
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i92, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i91, i64 4
  %.not.i93 = icmp eq ptr %i.ek, %i.dx
  br i1 %.not.i93, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit95, label %.lr.ph.i90, !llvm.loop !1750

.lr.ph118:                                        ; preds = %.preheader, %bb.l
  %.2117 = phi i64 [ %.3, %bb.l ], [ 1, %.preheader ] ; 2 uses
  %.269116 = phi ptr [ %.370, %bb.l ], [ %0, %.preheader ] ; 7 uses
  %.273115 = phi ptr [ %.374, %bb.l ], [ %i.b, %.preheader ] ; 5 uses
  %.176113 = phi ptr [ %i.fj, %bb.l ], [ %i.b, %.preheader ] ; 6 uses
  %.not15.i96 = icmp eq ptr %.273115, %.269116
  br i1 %.not15.i96, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit105, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.lr.ph118
  %i.em = ptrtoint ptr %.269116 to i64
  %i.en = ptrtoint ptr %.273115 to i64
  %i.eo = sub i64 %i.en, %i.em
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = load i32, ptr %.176113, align 4, !tbaa !247
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i97
  %.017.i98 = phi i64 [ %i.ep, %.lr.ph.i97 ], [ %.1.i102, %bb.i ] ; 2 uses
  %.01316.i99 = phi ptr [ %.269116, %.lr.ph.i97 ], [ %.114.i101, %bb.i ] ; 2 uses
  %i.er = lshr i64 %.017.i98, 1                   ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.01316.i99, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !247
  %i.eu = icmp slt i32 %i.et, %i.eq               ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.neg.i100 = xor i64 %i.er, -1
  %i.ew = add i64 %.017.i98, %.neg.i100
  %.114.i101 = select i1 %i.eu, ptr %i.ev, ptr %.01316.i99 ; 2 uses
  %.1.i102 = select i1 %i.eu, i64 %i.ew, i64 %i.er ; 2 uses
  %.not.i103 = icmp eq i64 %.1.i102, 0
  br i1 %.not.i103, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit105, label %bb.i, !llvm.loop !45

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit105: ; preds = %bb.i, %.lr.ph118
  %.013.lcssa.i104 = phi ptr [ %.269116, %.lr.ph118 ], [ %.114.i101, %bb.i ] ; 3 uses
  %i.ex = icmp eq ptr %.013.lcssa.i104, %.273115
  br i1 %i.ex, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit105
  %i.ey = load i32, ptr %.176113, align 4, !tbaa !247
  %i.ez = load i32, ptr %.013.lcssa.i104, align 4, !tbaa !247
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit105
  %i.fb = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.269116, ptr noundef %.273115, ptr noundef nonnull %.176113) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.176113, i64 4 ; 2 uses
  %i.fd = add nuw i64 %.2117, 1
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = ptrtoint ptr %.269116 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %.013.lcssa.i104, i64 %i.fg
  %i.fi = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %i.fh, ptr noundef nonnull %.176113, ptr noundef nonnull %i.fc) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.374 = phi ptr [ %i.fc, %bb.k ], [ %.273115, %bb.j ]
  %.370 = phi ptr [ %i.fb, %bb.k ], [ %.269116, %bb.j ] ; 2 uses
  %.3 = phi i64 [ %i.fd, %bb.k ], [ %.2117, %bb.j ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.176113, i64 4 ; 2 uses
  %i.fk = icmp ne ptr %i.fj, %1
  %i.fl = icmp ult i64 %.3, %2
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %.lr.ph118, label %._crit_edge119, !llvm.loop !1751

._crit_edge119:                                   ; preds = %bb.l, %.preheader
  %.269.lcssa = phi ptr [ %0, %.preheader ], [ %.370, %bb.l ] ; 2 uses
  %.2.lcssa = phi i64 [ 1, %.preheader ], [ %.3, %bb.l ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.269.lcssa, i64 %.2.lcssa
  %i.fo = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %0, ptr noundef %.269.lcssa, ptr noundef %i.fn) ; 0 uses
  br label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit95
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fb = load i32, ptr %.0102284, align 4, !tbaa !247
  store i32 %i.fb, ptr %i.at, align 4, !tbaa !247
  store i32 %i.ey, ptr %.0102284, align 4, !tbaa !247
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fd = add i32 %i.fc, -1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138
  %i.fe = icmp eq ptr %i.at, %.0228279
  br i1 %i.fe, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = icmp eq ptr %.0228279, %.0102284
  %spec.select248 = select i1 %i.ff, ptr %i.at, ptr %.0228279
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142: ; preds = %bb.z, %bb.y, %bb.v
  %.5233 = phi ptr [ %.0228279, %bb.v ], [ %spec.select248, %bb.z ], [ %.0102284, %bb.y ]
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !250 ; 3 uses
  %.not121 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not121, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.ej, %bb.aa ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %storemerge122 = phi ptr [ %i.fi, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1106 = phi i8 [ %i.ei, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.ab
  %i.fj = phi i1 [ %i.eh, %bb.ab ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.bf, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.s, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.ao, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fj, true
  %i.fk = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.fk
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !250
  %i.fl = getelementptr inbounds nuw i8, ptr %.0102284, i64 4 ; 2 uses
  %i.fm = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.fm to i64
  %i.fn = add i64 %.099286, %.neg                 ; 2 uses
  %i.fo = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fo to i64
  %i.fp = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fq = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fq, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !1899

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.fr = phi ptr [ %i.ao, %.sink.split.i ], [ %i.s, %bb.f ]
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
  %i.ft = phi ptr [ %i.i, %bb.a ], [ %i.fr, %.thread.loopexit ] ; 8 uses
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
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  %.idx252 = shl nuw nsw i64 %6, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.fw = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fw, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !247
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ga, %bb.af ] ; 3 uses
  %i.fy = load i32, ptr %.07.i, align 4, !tbaa !247
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ga, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ga, %bb.af ] ; 8 uses
  %i.gb = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.gc = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = ashr exact i64 %i.gd, 2
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr [4 x i8], ptr %i.ft, i64 %i.gf ; 7 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gh = add i64 %i.gb, -4
  %i.gi = sub i64 %i.gh, %i.gc                    ; 3 uses
  %i.gj = lshr i64 %i.gi, 2
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.gi, 76
  br i1 %min.iters.check418, label %.lr.ph.i.i146.preheader499, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gl = and i64 %i.gi, -4
  %i.gm = add i64 %i.gl, 4                        ; 2 uses
  %i.gn = sub i64 %i.gm, %i.gd
  %i.go = getelementptr i8, ptr %i.ft, i64 %i.gn
  %i.gp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gm
  %bound0420 = icmp ult ptr %i.gg, %i.gp
  %bound1421 = icmp ult ptr %.0.lcssa.i, %i.go
  %found.conflict422 = and i1 %bound0420, %bound1421
  br i1 %found.conflict422, label %.lr.ph.i.i146.preheader499, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck419
  %n.vec424 = and i64 %i.gk, 9223372036854775800  ; 3 uses
  %i.gq = shl i64 %n.vec424, 2                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gg, i64 %i.gq
  %i.gs = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gq
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body425 ] ; 2 uses
  %i.gt = shl i64 %index426, 2                    ; 2 uses
  %next.gep427 = getelementptr i8, ptr %i.gg, i64 %i.gt ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gt ; 3 uses
  %i.gu = getelementptr i8, ptr %next.gep428, i64 16 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %next.gep428, align 4, !tbaa !247, !alias.scope !1922
  %wide.load430 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !247, !alias.scope !1922
  %i.gv = getelementptr i8, ptr %next.gep427, i64 16
  store <4 x i32> %wide.load429, ptr %next.gep427, align 4, !tbaa !247, !alias.scope !1923, !noalias !1922
  store <4 x i32> %wide.load430, ptr %i.gv, align 4, !tbaa !247, !alias.scope !1923, !noalias !1922
  store <4 x i32> zeroinitializer, ptr %next.gep428, align 4, !tbaa !247, !alias.scope !1922
  store <4 x i32> zeroinitializer, ptr %i.gu, align 4, !tbaa !247, !alias.scope !1922
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.gw, label %middle.block432, label %vector.body425, !llvm.loop !1903

middle.block432:                                  ; preds = %vector.body425
  %cmp.n433 = icmp eq i64 %i.gk, %n.vec424
  br i1 %cmp.n433, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader499

.lr.ph.i.i146.preheader499:                       ; preds = %vector.memcheck419, %.lr.ph.i.i146.preheader, %middle.block432
  %.010.i.i147.ph = phi ptr [ %i.gg, %vector.memcheck419 ], [ %i.gg, %.lr.ph.i.i146.preheader ], [ %i.gr, %middle.block432 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck419 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gs, %middle.block432 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader499, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.gz, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader499 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.gy, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader499 ] ; 3 uses
  %i.gx = load i32, ptr %.079.i.i148, align 4, !tbaa !247
  store i32 %i.gx, ptr %.010.i.i147, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !247
  %i.gy = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.gy, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146, !llvm.loop !1904

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151: ; preds = %.lr.ph.i.i146, %middle.block432, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.ha, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gg, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ft, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5447 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.he, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hh, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.he, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.hf, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.hb = load i32, ptr %.0.i, align 4, !tbaa !247 ; 2 uses
  %i.hc = load i32, ptr %.021.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.hd = icmp slt i32 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.hd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.hb, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i, align 4, !tbaa !247
  %i.hg = icmp eq ptr %i.hf, %i.fv
  br i1 %i.hg, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.hc, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !247
  %i.hi = icmp eq ptr %i.hh, %.5
  br i1 %i.hi, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.he, %bb.ai ], [ %i.he, %bb.ah ] ; 7 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hh, %bb.ai ] ; 8 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fv, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !250
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %i.hj = ptrtoaddr ptr %.223.i to i64
  %i.hk = add i64 %.5447, -4
  %i.hl = sub i64 %i.hk, %i.hj                    ; 3 uses
  %i.hm = lshr i64 %i.hl, 2
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.hl, 76
  br i1 %min.iters.check445, label %.lr.ph.i.i154.preheader489, label %vector.memcheck446

vector.memcheck446:                               ; preds = %.lr.ph.i.i154.preheader
  %i.ho = and i64 %i.hl, -4
  %i.hp = add i64 %i.ho, 4                        ; 2 uses
  %i.hq = getelementptr i8, ptr %.226.i, i64 %i.hp
  %i.hr = getelementptr i8, ptr %.223.i, i64 %i.hp
  %bound0447 = icmp ult ptr %.226.i, %i.hr
  %bound1448 = icmp ult ptr %.223.i, %i.hq
  %found.conflict449 = and i1 %bound0447, %bound1448
  br i1 %found.conflict449, label %.lr.ph.i.i154.preheader489, label %vector.ph450

vector.ph450:                                     ; preds = %vector.memcheck446
  %n.vec451 = and i64 %i.hn, 9223372036854775800  ; 3 uses
  %i.hs = shl i64 %n.vec451, 2                    ; 2 uses
  %i.ht = getelementptr i8, ptr %.226.i, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %.223.i, i64 %i.hs
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next458, %vector.body452 ] ; 2 uses
  %i.hv = shl i64 %index453, 2                    ; 2 uses
  %next.gep454 = getelementptr i8, ptr %.226.i, i64 %i.hv ; 2 uses
  %next.gep455 = getelementptr i8, ptr %.223.i, i64 %i.hv ; 3 uses
  %i.hw = getelementptr i8, ptr %next.gep455, i64 16 ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %next.gep455, align 4, !tbaa !247, !alias.scope !1924
  %wide.load457 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !247, !alias.scope !1924
  %i.hx = getelementptr i8, ptr %next.gep454, i64 16
  store <4 x i32> %wide.load456, ptr %next.gep454, align 4, !tbaa !247, !alias.scope !1925, !noalias !1924
  store <4 x i32> %wide.load457, ptr %i.hx, align 4, !tbaa !247, !alias.scope !1925, !noalias !1924
  store <4 x i32> zeroinitializer, ptr %next.gep455, align 4, !tbaa !247, !alias.scope !1924
  store <4 x i32> zeroinitializer, ptr %i.hw, align 4, !tbaa !247, !alias.scope !1924
  %index.next458 = add nuw i64 %index453, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.hy, label %middle.block459, label %vector.body452, !llvm.loop !1908

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %i.hn, %n.vec451
  br i1 %cmp.n460, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader489

.lr.ph.i.i154.preheader489:                       ; preds = %vector.memcheck446, %.lr.ph.i.i154.preheader, %middle.block459
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck446 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.ht, %middle.block459 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck446 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.hu, %middle.block459 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader489, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ib, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader489 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.ia, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader489 ] ; 3 uses
  %i.hz = load i32, ptr %.079.i.i156, align 4, !tbaa !247
  store i32 %i.hz, ptr %.010.i.i155, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.ia, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154, !llvm.loop !1909

bb.aj:                                            ; preds = %.thread
  br i1 %i.fu, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ic = phi ptr [ %i.ft, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 7 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 8 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.id = phi ptr [ %i.fv, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.ie = ptrtoaddr ptr %.0108266 to i64
  %i.if = ptrtoaddr ptr %.0216268 to i64
  %i.ig = add i64 %i.ie, -4
  %i.ih = sub i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = lshr i64 %i.ih, 2
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.ih, 76
  br i1 %min.iters.check393, label %.lr.ph.i.i161.preheader500, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ik = and i64 %i.ih, -4
  %i.il = add i64 %i.ik, 4                        ; 2 uses
  %i.im = getelementptr i8, ptr %.0222270, i64 %i.il
  %i.in = getelementptr i8, ptr %.0216268, i64 %i.il
  %bound0395 = icmp ult ptr %.0222270, %i.in
  %bound1396 = icmp ult ptr %.0216268, %i.im
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i161.preheader500, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.ij, 9223372036854775800  ; 3 uses
  %i.io = shl i64 %n.vec399, 2                    ; 2 uses
  %i.ip = getelementptr i8, ptr %.0222270, i64 %i.io ; 2 uses
  %i.iq = getelementptr i8, ptr %.0216268, i64 %i.io
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %i.ir = shl i64 %index401, 2                    ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0222270, i64 %i.ir ; 2 uses
  %next.gep403 = getelementptr i8, ptr %.0216268, i64 %i.ir ; 3 uses
  %i.is = getelementptr i8, ptr %next.gep403, i64 16 ; 2 uses
  %wide.load404 = load <4 x i32>, ptr %next.gep403, align 4, !tbaa !247, !alias.scope !1926
  %wide.load405 = load <4 x i32>, ptr %i.is, align 4, !tbaa !247, !alias.scope !1926
  %i.it = getelementptr i8, ptr %next.gep402, i64 16
  store <4 x i32> %wide.load404, ptr %next.gep402, align 4, !tbaa !247, !alias.scope !1927, !noalias !1926
  store <4 x i32> %wide.load405, ptr %i.it, align 4, !tbaa !247, !alias.scope !1927, !noalias !1926
  store <4 x i32> zeroinitializer, ptr %next.gep403, align 4, !tbaa !247, !alias.scope !1926
  store <4 x i32> zeroinitializer, ptr %i.is, align 4, !tbaa !247, !alias.scope !1926
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.iu, label %middle.block407, label %vector.body400, !llvm.loop !1913

middle.block407:                                  ; preds = %vector.body400
  %cmp.n408 = icmp eq i64 %i.ij, %n.vec399
  br i1 %cmp.n408, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader500

.lr.ph.i.i161.preheader500:                       ; preds = %vector.memcheck394, %.lr.ph.i.i161.preheader, %middle.block407
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck394 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.ip, %middle.block407 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck394 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.iq, %middle.block407 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader500, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ix, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader500 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.iw, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader500 ] ; 3 uses
  %i.iv = load i32, ptr %.079.i.i163, align 4, !tbaa !247
  store i32 %i.iv, ptr %.010.i.i162, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !247
  %i.iw = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.iw, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161, !llvm.loop !1914

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block407, %middle.block459, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.iy = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.ft, %bb.aj ], [ %i.ic, %bb.ak ], [ %i.ft, %middle.block459 ], [ %i.ic, %middle.block407 ], [ %i.ft, %.lr.ph.i.i154 ], [ %i.ic, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block459 ], [ %.2, %middle.block407 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block459 ], [ %.0234275, %middle.block407 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block459 ], [ %.0228272, %middle.block407 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block459 ], [ %.0102262, %middle.block407 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block459 ], [ %.099259, %middle.block407 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.iz = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fv, %bb.aj ], [ %i.id, %bb.ak ], [ %i.fv, %middle.block459 ], [ %i.id, %middle.block407 ], [ %i.fv, %.lr.ph.i.i154 ], [ %i.id, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.ht, %middle.block459 ], [ %i.ip, %middle.block407 ], [ %i.ib, %.lr.ph.i.i154 ], [ %i.ix, %.lr.ph.i.i161 ]
  %i.ja = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.iz, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.jb = load ptr, ptr %i.d, align 8, !tbaa !250 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.jb, %i.iz
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  %i.jc = ptrtoaddr ptr %i.jb to i64
  %i.jd = ptrtoaddr ptr %i.iz to i64
  %i.je = add i64 %i.jd, -4
  %i.jf = sub i64 %i.je, %i.jc                    ; 3 uses
  %i.jg = lshr i64 %i.jf, 2
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %min.iters.check470 = icmp ult i64 %i.jf, 76
  br i1 %min.iters.check470, label %.lr.ph.i.i168.preheader488, label %vector.memcheck471

vector.memcheck471:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ji = and i64 %i.jf, -4
  %i.jj = add i64 %i.ji, 4                        ; 2 uses
  %i.jk = getelementptr i8, ptr %i.ja, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jb, i64 %i.jj
  %bound0472 = icmp ult ptr %i.ja, %i.jl
  %bound1473 = icmp ult ptr %i.jb, %i.jk
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %.lr.ph.i.i168.preheader488, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck471
  %n.vec476 = and i64 %i.jh, 9223372036854775800  ; 3 uses
  %i.jm = shl i64 %n.vec476, 2                    ; 2 uses
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jb, i64 %i.jm
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next483, %vector.body477 ] ; 2 uses
  %i.jp = shl i64 %index478, 2                    ; 2 uses
  %next.gep479 = getelementptr i8, ptr %i.ja, i64 %i.jp ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.jb, i64 %i.jp ; 3 uses
  %i.jq = getelementptr i8, ptr %next.gep480, i64 16 ; 2 uses
  %wide.load481 = load <4 x i32>, ptr %next.gep480, align 4, !tbaa !247, !alias.scope !1928
  %wide.load482 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !247, !alias.scope !1928
  %i.jr = getelementptr i8, ptr %next.gep479, i64 16
  store <4 x i32> %wide.load481, ptr %next.gep479, align 4, !tbaa !247, !alias.scope !1929, !noalias !1928
  store <4 x i32> %wide.load482, ptr %i.jr, align 4, !tbaa !247, !alias.scope !1929, !noalias !1928
  store <4 x i32> zeroinitializer, ptr %next.gep480, align 4, !tbaa !247, !alias.scope !1928
  store <4 x i32> zeroinitializer, ptr %i.jq, align 4, !tbaa !247, !alias.scope !1928
  %index.next483 = add nuw i64 %index478, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next483, %n.vec476
  br i1 %i.js, label %middle.block484, label %vector.body477, !llvm.loop !1918

middle.block484:                                  ; preds = %vector.body477
  %cmp.n485 = icmp eq i64 %i.jh, %n.vec476
  br i1 %cmp.n485, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader488

.lr.ph.i.i168.preheader488:                       ; preds = %vector.memcheck471, %.lr.ph.i.i168.preheader, %middle.block484
  %.010.i.i169.ph = phi ptr [ %i.ja, %vector.memcheck471 ], [ %i.ja, %.lr.ph.i.i168.preheader ], [ %i.jn, %middle.block484 ]
  %.079.i.i170.ph = phi ptr [ %i.jb, %vector.memcheck471 ], [ %i.jb, %.lr.ph.i.i168.preheader ], [ %i.jo, %middle.block484 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader488, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.jv, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader488 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.ju, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader488 ] ; 3 uses
  %i.jt = load i32, ptr %.079.i.i170, align 4, !tbaa !247
  store i32 %i.jt, ptr %.010.i.i169, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !247
  %i.ju = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.ju, %i.iz
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168, !llvm.loop !1919

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173: ; preds = %.lr.ph.i.i168, %middle.block484, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !250
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx254, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 17 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fg, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.fe, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.fc, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 12 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 12 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.fh, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099290, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0102288, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0102288, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !247 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !247 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !247
  %i.af = load i32, ptr %i.y, align 4, !tbaa !247
  %i.ag = icmp slt i32 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ah = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ai = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !50

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ah, %.thread24.i ] ; 5 uses
  %i.aj = add i64 %.022.lcssa.i, 2
  %i.ak = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ak, i64 %.0238282) ; 4 uses
  %i.al = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !247
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !247
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105287 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.as = icmp eq ptr %.0108286, %.0226284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  br i1 %i.as, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.idx255 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.0102288, i64 %.idx255 ; 11 uses
  %i.au = icmp eq ptr %.0232283, %i.o
  br i1 %i.au, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.av = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.aw = trunc nuw i8 %.0105287 to i1
  br i1 %i.aw, label %bb.j, label %.thread345

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !247
  %i.ay = load i32, ptr %.0232283, align 4, !tbaa !247
  %i.az = icmp slt i32 %i.ax, %i.ay               ; 7 uses
  %i.ba = zext i1 %i.az to i8                     ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_:bb.a
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fs = load i32, ptr %i.fo, align 4, !tbaa !247
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !247
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !247
  %i.ft = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fu = add i32 %i.ft, -1
  store i32 %i.fu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i81
  %i.fv = icmp eq ptr %i.az, %.sroa.0260.0338
  br i1 %i.fv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.fw, ptr %i.az, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.fx = load ptr, ptr %28, align 8, !tbaa !330  ; 2 uses
  %i.fy = load ptr, ptr %29, align 8, !tbaa !330  ; 3 uses
  %.not303 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.at, %bb.aa ], [ %i.fy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ez, %bb.aa ], [ %i.fx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.fz, %bb.aa ], [ %i.fy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85 ]
  %.161 = phi i8 [ %i.ey, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.ga = phi i1 [ %i.ex, %bb.ab ], [ %i.bp, %bb.m ], [ %i.bp, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bp, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.at, %bb.m ], [ %i.at, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.at, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.u, %bb.m ], [ %i.u, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.u, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.ga, true
  %i.gb = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.gb
  store ptr %i.at, ptr %27, align 8, !tbaa !330
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.gd = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.gd to i64
  %i.ge = add i64 %.063340, %.neg                 ; 2 uses
  %i.gf = icmp ne i64 %i.aq, 0
  %.neg69 = sext i1 %i.gf to i64
  %i.gg = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.gh = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !2005

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gi = phi ptr [ %i.at, %.sink.split.i ], [ %i.u, %bb.f ]
  %.4 = phi i64 [ %i.gg, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.gc, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.ge, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gj = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gk = phi ptr [ %i.h, %bb.a ], [ %i.gi, %.thread.loopexit ] ; 8 uses
  %.1392 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.h, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.m, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gj, %.thread.loopexit ]
  %i.gl = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.k, ptr %32, align 8, !tbaa !330
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.k, i64 %.neg305 ; 7 uses
  %i.gn = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.gn, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.gl, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.go = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !247, !noalias !2054
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.gq = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.gr, %bb.af ] ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -4 ; 4 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !247, !noalias !2054
  %i.gt = icmp slt i32 %i.gs, %i.gp
  br i1 %i.gt, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.gr, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.gq, %bb.ae ], [ %i.gr, %bb.af ] ; 8 uses
  %i.gu = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.gv = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 2 uses
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = getelementptr i8, ptr %i.gk, i64 %i.gw  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gy = add i64 %i.gu, -4
  %i.gz = sub i64 %i.gy, %i.gv                    ; 4 uses
  %i.ha = lshr i64 %i.gz, 2
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.gz, 76
  br i1 %min.iters.check490, label %.lr.ph.i.i89.preheader578, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.lr.ph.i.i89.preheader
  %i.hc = and i64 %i.gz, 3
  %i.hd = getelementptr i8, ptr %i.gk, i64 %i.hc
  %.not561 = and i64 %i.gz, -4
  %i.he = xor i64 %.not561, -4
  %i.hf = getelementptr i8, ptr %.lcssa.i, i64 %i.he
  %bound0492 = icmp ult ptr %i.hd, %.lcssa.i
  %bound1493 = icmp ult ptr %i.hf, %i.gx
  %found.conflict494 = and i1 %bound0492, %bound1493
  br i1 %found.conflict494, label %.lr.ph.i.i89.preheader578, label %vector.ph495

vector.ph495:                                     ; preds = %vector.memcheck491
  %n.vec496 = and i64 %i.hb, 9223372036854775800  ; 3 uses
  %i.hg = mul i64 %n.vec496, -4                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gx, i64 %i.hg
  %i.hi = getelementptr i8, ptr %.lcssa.i, i64 %i.hg
  br label %vector.body497

vector.body497:                                   ; preds = %vector.body497, %vector.ph495
  %index498 = phi i64 [ 0, %vector.ph495 ], [ %index.next503, %vector.body497 ] ; 2 uses
  %i.hj = mul i64 %index498, -4                   ; 2 uses
  %next.gep499 = getelementptr i8, ptr %i.gx, i64 %i.hj ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.lcssa.i, i64 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %next.gep500, i64 -16 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep500, i64 -32 ; 2 uses
  %wide.load501 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !247, !alias.scope !2055, !noalias !2056
  %wide.load502 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !247, !alias.scope !2055, !noalias !2056
  %i.hm = getelementptr inbounds i8, ptr %next.gep499, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep499, i64 -32
  store <4 x i32> %wide.load501, ptr %i.hm, align 4, !tbaa !247, !alias.scope !2057, !noalias !2058
  store <4 x i32> %wide.load502, ptr %i.hn, align 4, !tbaa !247, !alias.scope !2057, !noalias !2058
  store <4 x i32> zeroinitializer, ptr %i.hk, align 4, !tbaa !247, !alias.scope !2055, !noalias !2056
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !247, !alias.scope !2055, !noalias !2056
  %index.next503 = add nuw i64 %index498, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.ho, label %middle.block504, label %vector.body497, !llvm.loop !2015

middle.block504:                                  ; preds = %vector.body497
  %cmp.n505 = icmp eq i64 %i.hb, %n.vec496
  br i1 %cmp.n505, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89.preheader578

.lr.ph.i.i89.preheader578:                        ; preds = %vector.memcheck491, %.lr.ph.i.i89.preheader, %middle.block504
  %.sroa.0.0.i90.ph = phi ptr [ %i.gx, %vector.memcheck491 ], [ %i.gx, %.lr.ph.i.i89.preheader ], [ %i.hh, %middle.block504 ]
  %.ph579 = phi ptr [ %.lcssa.i, %vector.memcheck491 ], [ %.lcssa.i, %.lr.ph.i.i89.preheader ], [ %i.hi, %middle.block504 ]
  br label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.preheader578, %.lr.ph.i.i89
  %.sroa.0.0.i90 = phi ptr [ %i.hr, %.lr.ph.i.i89 ], [ %.sroa.0.0.i90.ph, %.lr.ph.i.i89.preheader578 ]
  %i.hp = phi ptr [ %i.hq, %.lr.ph.i.i89 ], [ %.ph579, %.lr.ph.i.i89.preheader578 ]
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -4 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !247, !noalias !2056
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !247, !noalias !2056
  store i32 0, ptr %i.hq, align 4, !tbaa !247, !noalias !2056
  %.not.i.i91 = icmp eq ptr %i.hq, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89, !llvm.loop !2016

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92: ; preds = %.lr.ph.i.i89, %middle.block504, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, %bb.ac
  %.sroa.0220.5 = phi ptr [ %i.gk, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0220.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0235.5 = phi ptr [ %i.gx, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0235.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0249.6 = phi ptr [ %i.ht, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0249.0.lcssa, %bb.ac ] ; 2 uses
  %.sroa.0220.5518 = ptrtoaddr ptr %.sroa.0220.5 to i64
  %.not.i93 = icmp eq i64 %.neg305, 0
  %.not17.i = icmp eq ptr %.sroa.0220.5, %.sroa.0235.5
  %or.cond = select i1 %.not.i93, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0120.0.ph = phi ptr [ %i.hz, %bb.ah ], [ %.sroa.0249.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ia, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0235.5, %bb.ag ]
  %i.hu = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0120.0 = phi ptr [ %i.hz, %bb.ai ], [ %.sroa.0120.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.hv, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !247, !noalias !2059 ; 2 uses
  %i.hx = load i32, ptr %i.hu, align 4, !tbaa !247, !noalias !2059 ; 2 uses
  %i.hy = icmp slt i32 %i.hw, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.hy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ia = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 3 uses
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !247, !noalias !2059
  store i32 0, ptr %i.ia, align 4, !tbaa !247, !noalias !2059
  %i.ib = icmp eq ptr %i.ia, %i.gm
  br i1 %i.ib, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !66

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.hw, ptr %i.hz, align 4, !tbaa !247, !noalias !2059
  store i32 0, ptr %i.hv, align 4, !tbaa !247, !noalias !2059
  %i.ic = icmp eq ptr %i.hv, %.sroa.0220.5
  br i1 %i.ic, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !66

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.hz, %bb.ah ], [ %i.hz, %bb.ai ] ; 7 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.gm, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.hv, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 8 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !330, !noalias !2059
  %.not1.i.i94 = icmp eq ptr %.sroa.012.2.i, %.sroa.0220.5
  br i1 %.not1.i.i94, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95.preheader

.lr.ph.i.i95.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %i.id = ptrtoaddr ptr %.sroa.012.2.i to i64
  %i.ie = add i64 %i.id, -4
  %i.if = sub i64 %i.ie, %.sroa.0220.5518         ; 3 uses
  %i.ig = lshr i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check517 = icmp ult i64 %i.if, 76
  br i1 %min.iters.check517, label %.lr.ph.i.i95.preheader565, label %vector.memcheck518

vector.memcheck518:                               ; preds = %.lr.ph.i.i95.preheader
  %.not562 = and i64 %i.if, -4
  %i.ii = xor i64 %.not562, -4                    ; 2 uses
  %i.ij = getelementptr i8, ptr %.sroa.0120.1, i64 %i.ii
  %i.ik = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ii
  %bound0519 = icmp ult ptr %i.ij, %.sroa.012.2.i
  %bound1520 = icmp ult ptr %i.ik, %.sroa.0120.1
  %found.conflict521 = and i1 %bound0519, %bound1520
  br i1 %found.conflict521, label %.lr.ph.i.i95.preheader565, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck518
  %n.vec523 = and i64 %i.ih, 9223372036854775800  ; 3 uses
  %i.il = mul i64 %n.vec523, -4                   ; 2 uses
  %i.im = getelementptr i8, ptr %.sroa.0120.1, i64 %i.il ; 2 uses
  %i.in = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.il
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.io = mul i64 %index525, -4                   ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.sroa.0120.1, i64 %i.io ; 2 uses
  %next.gep527 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.io ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep527, i64 -16 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %next.gep527, i64 -32 ; 2 uses
  %wide.load528 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !247, !alias.scope !2060, !noalias !2061
  %wide.load529 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !247, !alias.scope !2060, !noalias !2061
  %i.ir = getelementptr inbounds i8, ptr %next.gep526, i64 -16
  %i.is = getelementptr inbounds i8, ptr %next.gep526, i64 -32
  store <4 x i32> %wide.load528, ptr %i.ir, align 4, !tbaa !247, !alias.scope !2062, !noalias !2063
  store <4 x i32> %wide.load529, ptr %i.is, align 4, !tbaa !247, !alias.scope !2062, !noalias !2063
  store <4 x i32> zeroinitializer, ptr %i.ip, align 4, !tbaa !247, !alias.scope !2060, !noalias !2061
  store <4 x i32> zeroinitializer, ptr %i.iq, align 4, !tbaa !247, !alias.scope !2060, !noalias !2061
  %index.next530 = add nuw i64 %index525, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.it, label %middle.block531, label %vector.body524, !llvm.loop !2026

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.ih, %n.vec523
  br i1 %cmp.n532, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95.preheader565

.lr.ph.i.i95.preheader565:                        ; preds = %vector.memcheck518, %.lr.ph.i.i95.preheader, %middle.block531
  %.sroa.0.0.i96.ph = phi ptr [ %.sroa.0120.1, %vector.memcheck518 ], [ %.sroa.0120.1, %.lr.ph.i.i95.preheader ], [ %i.im, %middle.block531 ]
  %.ph566 = phi ptr [ %.sroa.012.2.i, %vector.memcheck518 ], [ %.sroa.012.2.i, %.lr.ph.i.i95.preheader ], [ %i.in, %middle.block531 ]
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95.preheader565, %.lr.ph.i.i95
  %.sroa.0.0.i96 = phi ptr [ %i.iw, %.lr.ph.i.i95 ], [ %.sroa.0.0.i96.ph, %.lr.ph.i.i95.preheader565 ]
  %i.iu = phi ptr [ %i.iv, %.lr.ph.i.i95 ], [ %.ph566, %.lr.ph.i.i95.preheader565 ]
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -4 ; 4 uses
  %i.iw = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !247, !noalias !2061
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !247, !noalias !2061
  store i32 0, ptr %i.iv, align 4, !tbaa !247, !noalias !2061
  %.not.i.i97 = icmp eq ptr %i.iv, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95, !llvm.loop !2027

bb.aj:                                            ; preds = %.thread
  br i1 %i.gl, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iy = phi ptr [ %i.gk, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1392, %bb.aj ], [ %.sroa.speculated273, %.thread.thread ] ; 3 uses
  %.sroa.0210.0330 = phi ptr [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0333, %.thread.thread ] ; 3 uses
  %.sroa.0220.0328 = phi ptr [ %.sroa.0220.0.lcssa, %bb.aj ], [ %.sroa.0220.0335, %.thread.thread ] ; 3 uses
  %.sroa.0235.0325 = phi ptr [ %.sroa.0235.0.lcssa, %bb.aj ], [ %.sroa.0235.0336, %.thread.thread ] ; 8 uses
  %.sroa.0249.0323 = phi ptr [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0337, %.thread.thread ] ; 7 uses
  %.sroa.0260.0320 = phi ptr [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0338, %.thread.thread ] ; 3 uses
  %.0284317 = phi i64 [ %.0284.lcssa, %bb.aj ], [ %.0284339, %.thread.thread ] ; 3 uses
  %.063314 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063340, %.thread.thread ] ; 3 uses
  %i.iz = phi ptr [ %i.gm, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i99 = icmp eq ptr %.sroa.0235.0325, %.sroa.0220.0328
  br i1 %.not1.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100.preheader

.lr.ph.i.i100.preheader:                          ; preds = %bb.ak
  %i.ja = ptrtoaddr ptr %.sroa.0235.0325 to i64
  %i.jb = ptrtoaddr ptr %.sroa.0220.0328 to i64
  %i.jc = add i64 %i.ja, -4
  %i.jd = sub i64 %i.jc, %i.jb                    ; 3 uses
  %i.je = lshr i64 %i.jd, 2
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check465 = icmp ult i64 %i.jd, 76
  br i1 %min.iters.check465, label %.lr.ph.i.i100.preheader580, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.lr.ph.i.i100.preheader
  %.not560 = and i64 %i.jd, -4
  %i.jg = xor i64 %.not560, -4                    ; 2 uses
  %i.jh = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jg
  %i.ji = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jg
  %bound0467 = icmp ult ptr %i.jh, %.sroa.0235.0325
  %bound1468 = icmp ult ptr %i.ji, %.sroa.0249.0323
  %found.conflict469 = and i1 %bound0467, %bound1468
  br i1 %found.conflict469, label %.lr.ph.i.i100.preheader580, label %vector.ph470

vector.ph470:                                     ; preds = %vector.memcheck466
  %n.vec471 = and i64 %i.jf, 9223372036854775800  ; 3 uses
  %i.jj = mul i64 %n.vec471, -4                   ; 2 uses
  %i.jk = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jj
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.jm = mul i64 %index473, -4                   ; 2 uses
  %next.gep474 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jm ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jm ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %next.gep475, i64 -16 ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %next.gep475, i64 -32 ; 2 uses
  %wide.load476 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !247, !alias.scope !2064, !noalias !2065
  %wide.load477 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !247, !alias.scope !2064, !noalias !2065
  %i.jp = getelementptr inbounds i8, ptr %next.gep474, i64 -16
  %i.jq = getelementptr inbounds i8, ptr %next.gep474, i64 -32
  store <4 x i32> %wide.load476, ptr %i.jp, align 4, !tbaa !247, !alias.scope !2066, !noalias !2067
  store <4 x i32> %wide.load477, ptr %i.jq, align 4, !tbaa !247, !alias.scope !2066, !noalias !2067
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !247, !alias.scope !2064, !noalias !2065
  store <4 x i32> zeroinitializer, ptr %i.jo, align 4, !tbaa !247, !alias.scope !2064, !noalias !2065
  %index.next478 = add nuw i64 %index473, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.jr, label %middle.block479, label %vector.body472, !llvm.loop !2035

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.jf, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100.preheader580

.lr.ph.i.i100.preheader580:                       ; preds = %vector.memcheck466, %.lr.ph.i.i100.preheader, %middle.block479
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %vector.memcheck466 ], [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.jk, %middle.block479 ]
  %.ph581 = phi ptr [ %.sroa.0235.0325, %vector.memcheck466 ], [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jl, %middle.block479 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader580, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.ju, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader580 ]
  %i.js = phi ptr [ %i.jt, %.lr.ph.i.i100 ], [ %.ph581, %.lr.ph.i.i100.preheader580 ]
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -4 ; 4 uses
  %i.ju = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !247, !noalias !2065
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !247, !noalias !2065
  store i32 0, ptr %i.jt, align 4, !tbaa !247, !noalias !2065
  %.not.i.i102 = icmp eq ptr %i.jt, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100, !llvm.loop !2036

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block479, %middle.block531, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jw = phi ptr [ %i.gk, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.gk, %bb.aj ], [ %i.iy, %bb.ak ], [ %i.gk, %middle.block531 ], [ %i.iy, %middle.block479 ], [ %i.gk, %.lr.ph.i.i95 ], [ %i.iy, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1392, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1392, %bb.aj ], [ %.2, %bb.ak ], [ %.1392, %middle.block531 ], [ %.2, %middle.block479 ], [ %.1392, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block531 ], [ %.sroa.0210.0330, %middle.block479 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block531 ], [ %.sroa.0260.0320, %middle.block479 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block531 ], [ %.0284317, %middle.block479 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block531 ], [ %.063314, %middle.block479 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.jx = phi ptr [ %i.gm, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.gm, %bb.aj ], [ %i.iz, %bb.ak ], [ %i.gm, %middle.block531 ], [ %i.iz, %middle.block479 ], [ %i.gm, %.lr.ph.i.i95 ], [ %i.iz, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.im, %middle.block531 ], [ %i.jk, %middle.block479 ], [ %i.iw, %.lr.ph.i.i95 ], [ %i.ju, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !330
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !330
  store ptr %i.jw, ptr %36, align 8, !tbaa !330
  store ptr %i.jx, ptr %37, align 8, !tbaa !330
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !330
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.jy = load ptr, ptr %33, align 8, !tbaa !330  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.jz = load ptr, ptr %32, align 8, !tbaa !330  ; 8 uses
  %.not1.i.i104 = icmp eq ptr %i.jz, %i.jx
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98
  %i.ka = ptrtoaddr ptr %i.jz to i64
  %i.kb = ptrtoaddr ptr %i.jx to i64
  %i.kc = add i64 %i.ka, -4
  %i.kd = sub i64 %i.kc, %i.kb                    ; 3 uses
  %i.ke = lshr i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check542 = icmp ult i64 %i.kd, 76
  br i1 %min.iters.check542, label %.lr.ph.i.i105.preheader564, label %vector.memcheck543

vector.memcheck543:                               ; preds = %.lr.ph.i.i105.preheader
  %.not563 = and i64 %i.kd, -4
  %i.kg = xor i64 %.not563, -4                    ; 2 uses
  %i.kh = getelementptr i8, ptr %i.jy, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.jz, i64 %i.kg
  %bound0544 = icmp ult ptr %i.kh, %i.jz
  %bound1545 = icmp ult ptr %i.ki, %i.jy
  %found.conflict546 = and i1 %bound0544, %bound1545
  br i1 %found.conflict546, label %.lr.ph.i.i105.preheader564, label %vector.ph547

vector.ph547:                                     ; preds = %vector.memcheck543
  %n.vec548 = and i64 %i.kf, 9223372036854775800  ; 3 uses
  %i.kj = mul i64 %n.vec548, -4                   ; 2 uses
  %i.kk = getelementptr i8, ptr %i.jy, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.jz, i64 %i.kj
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next555, %vector.body549 ] ; 2 uses
  %i.km = mul i64 %index550, -4                   ; 2 uses
  %next.gep551 = getelementptr i8, ptr %i.jy, i64 %i.km ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.jz, i64 %i.km ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %next.gep552, i64 -16 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %next.gep552, i64 -32 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a

.lr.ph.i29.preheader350:                          ; preds = %vector.memcheck313, %.lr.ph.i29.preheader, %middle.block342
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck313 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cp, %middle.block342 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck313 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cq, %middle.block342 ]
  %.ph351 = phi ptr [ %i.bv, %vector.memcheck313 ], [ %i.bv, %.lr.ph.i29.preheader ], [ %i.cr, %middle.block342 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader350, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.cz, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader350 ]
  %.sroa.045.0 = phi ptr [ %i.da, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader350 ]
  %i.cx = phi ptr [ %i.cy, %.lr.ph.i29 ], [ %.ph351, %.lr.ph.i29.preheader350 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !247, !noalias !2158
  store i32 %i.db, ptr %i.da, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.cz, align 4, !tbaa !247, !noalias !2158
  %i.dc = load i32, ptr %i.cy, align 4, !tbaa !247, !noalias !2158
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.cy, align 4, !tbaa !247, !noalias !2158
  %.not.i30 = icmp eq ptr %i.cy, %i.af
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2137

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass456 = add i64 %i.bw, %invariant.op455
  %i.dd = sub i64 %.reass456, %i.i                ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader348, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.dg = add i64 %i.c, %i.bw
  %i.dh = sub i64 %i.dg, %i.i
  %i.di = lshr i64 %i.dh, 2
  %i.dj = mul i64 %i.di, -4                       ; 2 uses
  %scevgep307 = getelementptr i8, ptr %scevgep, i64 %i.dj
  %scevgep308 = getelementptr i8, ptr %i.bv, i64 -4
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.dj
  %bound0 = icmp ult ptr %scevgep307, %i.bv
  %bound1 = icmp ult ptr %scevgep309, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader348, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, 9223372036854775800     ; 3 uses
  %i.dk = mul i64 %n.vec, -4                      ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.064.0, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bv, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dn ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.bv, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %wide.load311 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %i.dq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dq, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> %wide.load311, ptr %i.dr, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !2145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader348

.lr.ph.i.i.preheader348:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block ]
  %.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader348, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader348 ]
  %i.dt = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader348 ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !247, !noalias !2160
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !247, !noalias !2160
  store i32 0, ptr %i.du, align 4, !tbaa !247, !noalias !2160
  %.not.i.i31 = icmp eq ptr %i.du, %i.af
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2146

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block342, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.af, %bb.s ], [ %i.dv, %.lr.ph.i.i ], [ %i.bv, %bb.t ], [ %i.ca, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dl, %middle.block ], [ %i.cq, %middle.block342 ], [ %i.da, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.dx = load ptr, ptr %1, align 8, !tbaa !330   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.af, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !247
  store i32 0, ptr %i.dz, align 4, !tbaa !247
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !247
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !247
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eg = add i32 %i.ef, -1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.ei = icmp eq ptr %i.dy, %i.eh
  br i1 %i.ei, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp eq ptr %i.eh, %i.dx
  br i1 %i.ej, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dx, %bb.y ], [ %i.dy, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !330
  %i.ek = load ptr, ptr %1, align 8, !tbaa !330
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4 ; 2 uses
  store ptr %i.el, ptr %1, align 8, !tbaa !330
  %i.em = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.em to i64
  %i.en = add i64 %.0140, %.neg
  %i.eo = icmp ne i64 %i.ae, 0
  %.neg24 = sext i1 %i.eo to i64
  %i.ep = add i64 %.sroa.speculated, %.neg24
  %i.eq = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2147

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %i.er = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.er, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !330    ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !330    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !330    ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !330    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !330    ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !247, !noalias !2193
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247, !noalias !2193
  %i.m = icmp slt i32 %i.l, %i.i
  br i1 %i.m, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !330
  %i.t = load ptr, ptr %2, align 8, !tbaa !330    ; 14 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !330    ; 3 uses
  %.not.i18 = icmp eq ptr %.lcssa.i, %i.t
  %.not27.i = icmp eq ptr %i.c, %i.v
  %or.cond79 = select i1 %.not.i18, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !330, !noalias !2194
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !247, !noalias !2194
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.z, align 4, !tbaa !247, !noalias !2194
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !247, !noalias !2194
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.y, align 4, !tbaa !247, !noalias !2194
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !247, !noalias !2194
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.x, align 4, !tbaa !247, !noalias !2194
  %.not3546.i = icmp eq ptr %i.z, %i.t
  br i1 %.not3546.i, label %.loopexit.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.j
  %i.ae = phi ptr [ %.sink.i, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sink75.i, %bb.j ], [ %i.z, %bb.f ] ; 9 uses
  %.sroa.029.049.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.s, %bb.f ] ; 10 uses
  %.sroa.024.048.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.020.047.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.y, %bb.f ] ; 4 uses
  %i.ag = icmp eq ptr %.sroa.024.048.i, %i.v
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i17
  %i.ah = ptrtoaddr ptr %i.af to i64
  %i.ai = add i64 %i.ah, -4
  %i.aj = sub i64 %i.ai, %i.u                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader300, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %.not266 = and i64 %i.aj, -4
  %i.am = xor i64 %.not266, -4                    ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.029.049.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.am
  %bound0 = icmp ult ptr %i.an, %i.af
  %bound1 = icmp ult ptr %i.ao, %.sroa.029.049.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = mul i64 %n.vec, -4                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.029.049.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.049.i, i64 %i.as ; 2 uses
  %next.gep241 = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep241, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep241, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !247, !alias.scope !2195, !noalias !2196
  %wide.load242 = load <4 x i32>, ptr %i.au, align 4, !tbaa !247, !alias.scope !2195, !noalias !2196
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !247, !alias.scope !2197, !noalias !2198
  store <4 x i32> %wide.load242, ptr %i.aw, align 4, !tbaa !247, !alias.scope !2197, !noalias !2198
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !247, !alias.scope !2195, !noalias !2196
  store <4 x i32> zeroinitializer, ptr %i.au, align 4, !tbaa !247, !alias.scope !2195, !noalias !2196
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.i.preheader300

.lr.ph.i.i.i.preheader300:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.049.i, %vector.memcheck ], [ %.sroa.029.049.i, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.ph301 = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader300, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader300 ]
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.ph301, %.lr.ph.i.i.i.preheader300 ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2196
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !247, !noalias !2196
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2196
  %.not.i.i.i = icmp eq ptr %i.az, %i.t
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2175

bb.g:                                             ; preds = %.lr.ph.i17
  %i.bc = getelementptr inbounds i8, ptr %.sroa.020.047.i, i64 -4 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.029.049.i, i64 -4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2194
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !247, !noalias !2194
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %.sroa.024.048.i, i64 -4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !247, !noalias !2194
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2194
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !247, !noalias !2194
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.bc, align 4, !tbaa !247, !noalias !2194
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !247, !noalias !2194
  store i32 %i.bm, ptr %i.bc, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.bh, align 4, !tbaa !247, !noalias !2194
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !247, !noalias !2194
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2194
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2194
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !247, !noalias !2194
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2194
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink75.i = phi ptr [ %i.bi, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.bj, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %i.bc, %bb.h ], [ %.sroa.020.047.i, %bb.i ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %i.bh, %bb.h ], [ %.sroa.024.048.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %.sroa.029.049.i, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink75.i, %i.t
  br i1 %.not35.i, label %.loopexit.i, label %.lr.ph.i17, !llvm.loop !2176

.loopexit.i:                                      ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.056.1 = phi ptr [ %i.aa, %bb.f ], [ %i.ba, %.lr.ph.i.i.i ], [ %i.aq, %middle.block ], [ %.sink.i, %bb.j ]
  %.sroa.020.045.i = phi ptr [ %i.y, %bb.f ], [ %.sroa.020.047.i, %.lr.ph.i.i.i ], [ %.sroa.020.047.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.043.i = phi ptr [ %i.x, %bb.f ], [ %.sroa.024.048.i, %.lr.ph.i.i.i ], [ %.sroa.024.048.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.041.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.029.049.i, %.lr.ph.i.i.i ], [ %.sroa.029.049.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.045.i, ptr %5, align 8, !tbaa !330, !noalias !2194
  %.pre = load ptr, ptr %2, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !247, !noalias !2199
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !247, !noalias !2199
  store i32 0, ptr %i.bs, align 4, !tbaa !247, !noalias !2199
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !247, !noalias !2199
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !247, !noalias !2199
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2199
  %i.bw = icmp eq ptr %i.bs, %i.t
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.bx = phi ptr [ %i.dg, %bb.p ], [ %i.bt, %bb.l ]
  %i.by = phi ptr [ %i.df, %bb.p ], [ %i.bs, %bb.l ] ; 6 uses
  %.sroa.022.037.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.s, %bb.l ] ; 10 uses
  %.sroa.016.036.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.br, %bb.l ] ; 5 uses
  %i.bz = icmp eq ptr %.sroa.016.036.i, %i.v
  br i1 %i.bz, label %.lr.ph.i.i.i22.preheader, label %bb.m

.lr.ph.i.i.i22.preheader:                         ; preds = %.lr.ph.i19
  %i.ca = add i64 %i.o, -8
  %i.cb = shl i64 %indvar, 2
  %i.cc = add i64 %i.cb, %i.u
  %i.cd = sub i64 %i.ca, %i.cc                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.cd, 124
  br i1 %min.iters.check252, label %.lr.ph.i.i.i22.preheader291, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i22.preheader
  %scevgep = getelementptr i8, ptr %.sroa.022.037.i, i64 -4
  %i.cg = add i64 %i.o, -8
  %i.ch = sub i64 %i.cg, %i.u
  %i.ci = mul i64 %indvar, -4                     ; 2 uses
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = mul i64 %i.ck, -4                       ; 2 uses
  %scevgep245 = getelementptr i8, ptr %scevgep, i64 %i.cl
  %i.cm = getelementptr i8, ptr %.lcssa.i, i64 %i.ci
  %scevgep246 = getelementptr i8, ptr %i.cm, i64 -8
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.cl
  %bound0248 = icmp ult ptr %scevgep245, %i.by
  %bound1249 = icmp ult ptr %scevgep247, %.sroa.022.037.i
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %.lr.ph.i.i.i22.preheader291, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck244
  %n.vec254 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.cn = mul i64 %n.vec254, -4                   ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.022.037.i, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %i.by, i64 %i.cn
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.cq = mul i64 %index256, -4                   ; 2 uses
  %next.gep257 = getelementptr i8, ptr %.sroa.022.037.i, i64 %i.cq ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.by, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep258, i64 -16 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep258, i64 -32 ; 2 uses
  %wide.load259 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !247, !alias.scope !2200, !noalias !2201
  %wide.load260 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2200, !noalias !2201
  %i.ct = getelementptr inbounds i8, ptr %next.gep257, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %next.gep257, i64 -32
  store <4 x i32> %wide.load259, ptr %i.ct, align 4, !tbaa !247, !alias.scope !2202, !noalias !2203
  store <4 x i32> %wide.load260, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2202, !noalias !2203
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !247, !alias.scope !2200, !noalias !2201
  store <4 x i32> zeroinitializer, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2200, !noalias !2201
  %index.next261 = add nuw i64 %index256, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.cv, label %middle.block262, label %vector.body255, !llvm.loop !2186

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %i.cf, %n.vec254
  br i1 %cmp.n263, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22.preheader291

.lr.ph.i.i.i22.preheader291:                      ; preds = %vector.memcheck244, %.lr.ph.i.i.i22.preheader, %middle.block262
  %.sroa.0.0.i.i23.ph = phi ptr [ %.sroa.022.037.i, %vector.memcheck244 ], [ %.sroa.022.037.i, %.lr.ph.i.i.i22.preheader ], [ %i.co, %middle.block262 ]
  %.ph = phi ptr [ %i.by, %vector.memcheck244 ], [ %i.by, %.lr.ph.i.i.i22.preheader ], [ %i.cp, %middle.block262 ]
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.preheader291, %.lr.ph.i.i.i22
  %.sroa.0.0.i.i23 = phi ptr [ %i.cy, %.lr.ph.i.i.i22 ], [ %.sroa.0.0.i.i23.ph, %.lr.ph.i.i.i22.preheader291 ]
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i.i.i22 ], [ %.ph, %.lr.ph.i.i.i22.preheader291 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i23, i64 -4 ; 3 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !247, !noalias !2201
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !247, !noalias !2201
  store i32 0, ptr %i.cx, align 4, !tbaa !247, !noalias !2201
  %.not.i.i.i24 = icmp eq ptr %i.cx, %i.t
  br i1 %.not.i.i.i24, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22, !llvm.loop !2187

bb.m:                                             ; preds = %.lr.ph.i19
  %i.da = getelementptr inbounds i8, ptr %.sroa.016.036.i, i64 -4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.022.037.i, i64 -4 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !247, !noalias !2199
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !247, !noalias !2199
  %i.de = icmp slt i32 %i.dc, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 6 uses
  %i.dg = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !247, !noalias !2199
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !247, !noalias !2199
  store i32 0, ptr %i.df, align 4, !tbaa !247, !noalias !2199
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.da, align 4, !tbaa !247, !noalias !2199
  store i32 %i.di, ptr %i.df, align 4, !tbaa !247, !noalias !2199
  store i32 0, ptr %i.da, align 4, !tbaa !247, !noalias !2199
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dj = load i32, ptr %i.db, align 4, !tbaa !247, !noalias !2199
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !247, !noalias !2199
  store i32 0, ptr %i.db, align 4, !tbaa !247, !noalias !2199
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %i.da, %bb.n ], [ %.sroa.016.036.i, %bb.o ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %.sroa.022.037.i, %bb.n ], [ %i.db, %bb.o ] ; 2 uses
  %i.dk = icmp eq ptr %i.df, %i.t
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19, !llvm.loop !2188

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i22, %middle.block262, %bb.k, %bb.l, %.loopexit.i, %bb.e
  %i.dl = phi ptr [ %.pre, %.loopexit.i ], [ %i.t, %bb.e ], [ %i.t, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %middle.block262 ], [ %i.t, %.lr.ph.i.i.i22 ], [ %i.t, %bb.p ]
  %.sroa.056.0 = phi ptr [ %.sroa.056.1, %.loopexit.i ], [ %i.s, %bb.e ], [ %i.bt, %bb.l ], [ %i.s, %bb.k ], [ %i.co, %middle.block262 ], [ %i.cy, %.lr.ph.i.i.i22 ], [ %i.dg, %bb.p ]
  %.sroa.062.0 = phi ptr [ %.sroa.024.043.i, %.loopexit.i ], [ %i.c, %bb.e ], [ %i.br, %bb.l ], [ %i.c, %bb.k ], [ %.sroa.016.036.i, %middle.block262 ], [ %.sroa.016.036.i, %.lr.ph.i.i.i22 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.072.0 = phi ptr [ %.sroa.029.041.i, %.loopexit.i ], [ %i.s, %bb.e ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %.sroa.022.037.i, %middle.block262 ], [ %.sroa.022.037.i, %.lr.ph.i.i.i22 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.dl, ptr %1, align 8, !tbaa !330
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.062.1 = phi ptr [ %.sroa.062.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.068.0 = phi ptr [ %.sroa.056.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.072.1 = phi ptr [ %.sroa.072.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dm = load ptr, ptr %4, align 8, !tbaa !330   ; 3 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !330   ; 4 uses
  %.not.i29 = icmp eq ptr %.sroa.062.1, %i.dm
  %.not17.i = icmp eq ptr %.sroa.068.0, %.sroa.072.1
  %or.cond81 = select i1 %.not.i29, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %5, align 8, !tbaa !330, !noalias !2204
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.036.0 = phi ptr [ %i.dn, %bb.s ], [ %i.dv, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.do, %bb.s ], [ %i.dp, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.062.1, %bb.s ], [ %i.du, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.072.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.dp = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.036.1 = phi ptr [ %.sroa.036.0, %.outer.i ], [ %i.dx, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dq, %bb.u ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !247, !noalias !2204 ; 2 uses
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !247, !noalias !2204 ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %.split.i, label %bb.u

.split.i:                                         ; preds = %bb.t
  %i.du = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !247, !noalias !2204
  store i32 0, ptr %i.dp, align 4, !tbaa !247, !noalias !2204
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !247, !noalias !2204
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !247, !noalias !2204
  store i32 0, ptr %i.du, align 4, !tbaa !247, !noalias !2204
  %.not27.i28 = icmp eq ptr %i.du, %i.dm
  br i1 %.not27.i28, label %.loopexit.i27, label %.outer.i, !llvm.loop !68

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.dr, ptr %i.dx, align 4, !tbaa !247, !noalias !2204
  store i32 0, ptr %i.dq, align 4, !tbaa !247, !noalias !2204
  %.not26.i = icmp eq ptr %i.dq, %.sroa.068.0
  br i1 %.not26.i, label %.loopexit.i27, label %bb.t, !llvm.loop !68

.loopexit.i27:                                    ; preds = %.split.i, %bb.u
  %.sroa.036.2 = phi ptr [ %i.dx, %bb.u ], [ %i.dv, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dq, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.du, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.dp, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !330, !noalias !2204
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.0.0.ph = phi ptr [ %i.ed, %bb.w ], [ %i.dn, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ee, %bb.w ], [ %.sroa.062.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.072.1, %bb.v ]
  %i.dy = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.0.0 = phi ptr [ %i.ed, %bb.x ], [ %.sroa.0.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.dz, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !247, !noalias !2205 ; 2 uses
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !247, !noalias !2205 ; 2 uses
  %i.ec = icmp slt i32 %i.ea, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 6 uses
  br i1 %i.ec, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.ee = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !247, !noalias !2205
  store i32 0, ptr %i.ee, align 4, !tbaa !247, !noalias !2205
  %i.ef = icmp eq ptr %i.ee, %i.dm
  br i1 %i.ef, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !66

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.ea, ptr %i.ed, align 4, !tbaa !247, !noalias !2205
  store i32 0, ptr %i.dz, align 4, !tbaa !247, !noalias !2205
  %i.eg = icmp eq ptr %i.dz, %.sroa.068.0
  br i1 %i.eg, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !66

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i27, %bb.r
  %.sroa.043.0 = phi ptr [ %.sroa.036.2, %.loopexit.i27 ], [ %i.dn, %bb.r ], [ %i.dn, %bb.v ], [ %i.ed, %bb.w ], [ %i.ed, %bb.x ]
  %.sroa.062.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i27 ], [ %.sroa.062.1, %bb.r ], [ %.sroa.062.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.ee, %bb.w ]
  %.sroa.072.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i27 ], [ %.sroa.072.1, %bb.r ], [ %.sroa.072.1, %bb.v ], [ %i.dz, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.043.0, ptr %1, align 8, !tbaa !330
  store ptr %.sroa.072.2, ptr %6, align 8, !tbaa !330
  store ptr %.sroa.068.0, ptr %7, align 8, !tbaa !330
  store ptr %.sroa.062.2, ptr %3, align 8, !tbaa !330
  %i.eh = load ptr, ptr %1, align 8, !tbaa !330
  store ptr %i.eh, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !330    ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !330    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !330    ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !330    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !330    ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %.not2.i = icmp eq ptr %i.f, %i.g
  br i1 %.not2.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !247, !noalias !2236
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247, !noalias !2236
  %.not1.i = icmp slt i32 %i.i, %i.l
  br i1 %.not1.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit, label %bb.c, !llvm.loop !71

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !330
  %i.s = load ptr, ptr %2, align 8, !tbaa !330    ; 14 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 3 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !330    ; 3 uses
  %.not.i9 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond76 = select i1 %.not.i9, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %5, align 8, !tbaa !330, !noalias !2237
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !247, !noalias !2237
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.y, align 4, !tbaa !247, !noalias !2237
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !247, !noalias !2237
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.x, align 4, !tbaa !247, !noalias !2237
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !247, !noalias !2237
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.w, align 4, !tbaa !247, !noalias !2237
  %.not3547.i = icmp eq ptr %i.y, %i.s
  br i1 %.not3547.i, label %.loopexit.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.j
  %i.ad = phi ptr [ %.sink.i, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.ae = phi ptr [ %.sink76.i, %bb.j ], [ %i.y, %bb.f ] ; 9 uses
  %.sroa.029.050.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.r, %bb.f ] ; 10 uses
  %.sroa.024.049.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.020.048.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.x, %bb.f ] ; 4 uses
  %i.af = icmp eq ptr %.sroa.024.049.i, %i.u
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %i.t                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %.not263 = and i64 %i.ai, -4
  %i.al = xor i64 %.not263, -4                    ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.029.050.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.al
  %bound0 = icmp ult ptr %i.am, %i.ae
  %bound1 = icmp ult ptr %i.an, %.sroa.029.050.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.ao = mul i64 %n.vec, -4                      ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.029.050.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.050.i, i64 %i.ar ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep238, i64 -16 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep238, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !247, !alias.scope !2238, !noalias !2239
  %wide.load239 = load <4 x i32>, ptr %i.at, align 4, !tbaa !247, !alias.scope !2238, !noalias !2239
  %i.au = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !247, !alias.scope !2240, !noalias !2241
  store <4 x i32> %wide.load239, ptr %i.av, align 4, !tbaa !247, !alias.scope !2240, !noalias !2241
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !247, !alias.scope !2238, !noalias !2239
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !247, !alias.scope !2238, !noalias !2239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.i.preheader297

.lr.ph.i.i.i.preheader297:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.050.i, %vector.memcheck ], [ %.sroa.029.050.i, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.ph298 = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader297, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader297 ]
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.ph298, %.lr.ph.i.i.i.preheader297 ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !247, !noalias !2239
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !247, !noalias !2239
  store i32 0, ptr %i.ay, align 4, !tbaa !247, !noalias !2239
  %.not.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2218

bb.g:                                             ; preds = %.lr.ph.i8
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.048.i, i64 -4 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.029.050.i, i64 -4 ; 4 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !247, !noalias !2237
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !247, !noalias !2237
  %.not36.i = icmp slt i32 %i.bd, %i.be
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds i8, ptr %.sroa.024.049.i, i64 -4 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !247, !noalias !2237
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.bg, align 4, !tbaa !247, !noalias !2237
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !247, !noalias !2237
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.bb, align 4, !tbaa !247, !noalias !2237
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !247, !noalias !2237
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.bf, align 4, !tbaa !247, !noalias !2237
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !247, !noalias !2237
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.bl, align 4, !tbaa !247, !noalias !2237
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !247, !noalias !2237
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !247, !noalias !2237
  store i32 0, ptr %i.bc, align 4, !tbaa !247, !noalias !2237
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink76.i = phi ptr [ %i.bl, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %.sink.i = phi ptr [ %i.bm, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.048.i, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %.sroa.024.049.i, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.bc, %bb.i ], [ %.sroa.029.050.i, %bb.h ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink76.i, %i.s
  br i1 %.not35.i, label %.loopexit.i, label %.lr.ph.i8, !llvm.loop !2219

.loopexit.i:                                      ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.052.1 = phi ptr [ %i.z, %bb.f ], [ %i.az, %.lr.ph.i.i.i ], [ %i.ap, %middle.block ], [ %.sink.i, %bb.j ]
  %.sroa.020.046.i = phi ptr [ %i.x, %bb.f ], [ %.sroa.020.048.i, %.lr.ph.i.i.i ], [ %.sroa.020.048.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.044.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.024.049.i, %.lr.ph.i.i.i ], [ %.sroa.024.049.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.042.i = phi ptr [ %i.r, %bb.f ], [ %.sroa.029.050.i, %.lr.ph.i.i.i ], [ %.sroa.029.050.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.046.i, ptr %5, align 8, !tbaa !330, !noalias !2237
  %.pre = load ptr, ptr %2, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.br = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247, !noalias !2242
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !247, !noalias !2242
  store i32 0, ptr %i.bq, align 4, !tbaa !247, !noalias !2242
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !247, !noalias !2242
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !247, !noalias !2242
  store i32 0, ptr %i.bp, align 4, !tbaa !247, !noalias !2242
  %i.bu = icmp eq ptr %i.bq, %i.s
  br i1 %i.bu, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.bv = phi ptr [ %i.dd, %bb.p ], [ %i.br, %bb.l ]
  %i.bw = phi ptr [ %i.dc, %bb.p ], [ %i.bq, %bb.l ] ; 6 uses
  %.sroa.022.038.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.r, %bb.l ] ; 10 uses
  %.sroa.016.037.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bp, %bb.l ] ; 5 uses
  %i.bx = icmp eq ptr %.sroa.016.037.i, %i.u
  br i1 %i.bx, label %.lr.ph.i.i.i13.preheader, label %bb.m

.lr.ph.i.i.i13.preheader:                         ; preds = %.lr.ph.i10
  %i.by = add i64 %i.n, -8
  %i.bz = shl i64 %indvar, 2
  %i.ca = add i64 %i.bz, %i.t
  %i.cb = sub i64 %i.by, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.cb, 124
  br i1 %min.iters.check249, label %.lr.ph.i.i.i13.preheader288, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.i.i.i13.preheader
  %scevgep = getelementptr i8, ptr %.sroa.022.038.i, i64 -4
  %i.ce = add i64 %i.n, -8
  %i.cf = sub i64 %i.ce, %i.t
  %i.cg = mul i64 %indvar, -4                     ; 2 uses
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = mul i64 %i.ci, -4                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %i.ck = getelementptr i8, ptr %.lcssa.i, i64 %i.cg
  %scevgep243 = getelementptr i8, ptr %i.ck, i64 -8
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.cj
  %bound0245 = icmp ult ptr %scevgep242, %i.bw
  %bound1246 = icmp ult ptr %scevgep244, %.sroa.022.038.i
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i13.preheader288, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck241
  %n.vec251 = and i64 %i.cd, 9223372036854775800  ; 3 uses
  %i.cl = mul i64 %n.vec251, -4                   ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.022.038.i, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bw, i64 %i.cl
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next258, %vector.body252 ] ; 2 uses
  %i.co = mul i64 %index253, -4                   ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.sroa.022.038.i, i64 %i.co ; 2 uses
  %next.gep255 = getelementptr i8, ptr %i.bw, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep255, i64 -16 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep255, i64 -32 ; 2 uses
  %wide.load256 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !247, !alias.scope !2243, !noalias !2244
  %wide.load257 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !247, !alias.scope !2243, !noalias !2244
  %i.cr = getelementptr inbounds i8, ptr %next.gep254, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep254, i64 -32
  store <4 x i32> %wide.load256, ptr %i.cr, align 4, !tbaa !247, !alias.scope !2245, !noalias !2246
  store <4 x i32> %wide.load257, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2245, !noalias !2246
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !247, !alias.scope !2243, !noalias !2244
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !247, !alias.scope !2243, !noalias !2244
  %index.next258 = add nuw i64 %index253, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next258, %n.vec251
  br i1 %i.ct, label %middle.block259, label %vector.body252, !llvm.loop !2229

middle.block259:                                  ; preds = %vector.body252
  %cmp.n260 = icmp eq i64 %i.cd, %n.vec251
  br i1 %cmp.n260, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i.i.i13.preheader288

.lr.ph.i.i.i13.preheader288:                      ; preds = %vector.memcheck241, %.lr.ph.i.i.i13.preheader, %middle.block259
  %.sroa.0.0.i.i14.ph = phi ptr [ %.sroa.022.038.i, %vector.memcheck241 ], [ %.sroa.022.038.i, %.lr.ph.i.i.i13.preheader ], [ %i.cm, %middle.block259 ]
  %.ph = phi ptr [ %i.bw, %vector.memcheck241 ], [ %i.bw, %.lr.ph.i.i.i13.preheader ], [ %i.cn, %middle.block259 ]
  br label %.lr.ph.i.i.i13

end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138: ; preds = %.lr.ph.i.i134, %bb.w
  %.not21.i139 = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i139, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138
  %i.eu = load i8, ptr %i.at, align 1, !tbaa !314
  %i.ev = load i8, ptr %.0102283, align 1, !tbaa !314
  store i8 %i.ev, ptr %i.at, align 1, !tbaa !314
  store i8 %i.eu, ptr %.0102283, align 1, !tbaa !314
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138
  %i.ew = icmp eq ptr %i.at, %.0228278
  br i1 %i.ew, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = icmp eq ptr %.0228278, %.0102283
  %spec.select248 = select i1 %i.ex, ptr %i.at, ptr %.0228278
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142: ; preds = %bb.z, %bb.y, %bb.v
  %.5233 = phi ptr [ %.0228278, %bb.v ], [ %spec.select248, %bb.z ], [ %.0102283, %bb.y ]
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !250 ; 3 uses
  %.not121 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not121, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.ef, %bb.aa ], [ %i.ey, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %storemerge122 = phi ptr [ %i.fa, %bb.aa ], [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %.1106 = phi i8 [ %i.ee, %bb.aa ], [ %.0105282, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.n, %bb.ab
  %i.fb = phi i1 [ %i.ed, %bb.ab ], [ %i.bf, %bb.n ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102283, %bb.m ], [ %.0228278, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.n ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.s, %bb.n ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105282, %bb.n ], [ %.0105282, %bb.m ], [ %.0105282, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %not. = xor i1 %i.fb, true
  %i.fc = sext i1 %not. to i64
  %.1 = add i64 %.0286, %i.fc
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !250
  %i.fd = getelementptr inbounds nuw i8, ptr %.0102283, i64 1 ; 2 uses
  %i.fe = icmp ne i64 %.099285, 0
  %.neg = sext i1 %i.fe to i64
  %i.ff = add i64 %.099285, %.neg                 ; 2 uses
  %i.fg = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fg to i64
  %i.fh = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fi = add i64 %.0234277, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !2359

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.fj = phi ptr [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.s, %bb.f ]
  %.4 = phi i64 [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0234277, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0228278, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0222279, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0216280, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0108281, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0105282, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0102283, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.ff, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.099285, %bb.f ]
  %i.fk = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fl = phi ptr [ %i.i, %bb.a ], [ %i.fj, %.thread.loopexit ] ; 8 uses
  %.1319 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fk, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fm = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  %.idx251 = shl nuw nsw i64 %6, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx251 ; 7 uses
  %i.fo = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fo, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fm, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fp = load i32, ptr %i.k, align 4, !tbaa !247
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.fs, %bb.af ] ; 3 uses
  %i.fq = load i32, ptr %.07.i, align 4, !tbaa !247
  %i.fr = icmp slt i32 %i.fp, %i.fq
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.fs, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fs, %bb.af ] ; 8 uses
  %i.ft = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.fu = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 2 uses
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr [4 x i8], ptr %i.fl, i64 %i.fx ; 7 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fz = add i64 %i.ft, -4
  %i.ga = sub i64 %i.fz, %i.fu                    ; 3 uses
  %i.gb = lshr i64 %i.ga, 2
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check417 = icmp ult i64 %i.ga, 76
  br i1 %min.iters.check417, label %.lr.ph.i.i146.preheader498, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gd = and i64 %i.ga, -4
  %i.ge = add i64 %i.gd, 4                        ; 2 uses
  %i.gf = sub i64 %i.ge, %i.fv
  %i.gg = getelementptr i8, ptr %i.fl, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ge
  %bound0419 = icmp ult ptr %i.fy, %i.gh
  %bound1420 = icmp ult ptr %.0.lcssa.i, %i.gg
  %found.conflict421 = and i1 %bound0419, %bound1420
  br i1 %found.conflict421, label %.lr.ph.i.i146.preheader498, label %vector.ph422

vector.ph422:                                     ; preds = %vector.memcheck418
  %n.vec423 = and i64 %i.gc, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec423, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fy, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gi
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next430, %vector.body424 ] ; 2 uses
  %i.gl = shl i64 %index425, 2                    ; 2 uses
  %next.gep426 = getelementptr i8, ptr %i.fy, i64 %i.gl ; 2 uses
  %next.gep427 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep427, i64 16 ; 2 uses
  %wide.load428 = load <4 x i32>, ptr %next.gep427, align 4, !tbaa !247, !alias.scope !2382
  %wide.load429 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !247, !alias.scope !2382
  %i.gn = getelementptr i8, ptr %next.gep426, i64 16
  store <4 x i32> %wide.load428, ptr %next.gep426, align 4, !tbaa !247, !alias.scope !2383, !noalias !2382
  store <4 x i32> %wide.load429, ptr %i.gn, align 4, !tbaa !247, !alias.scope !2383, !noalias !2382
  store <4 x i32> zeroinitializer, ptr %next.gep427, align 4, !tbaa !247, !alias.scope !2382
  store <4 x i32> zeroinitializer, ptr %i.gm, align 4, !tbaa !247, !alias.scope !2382
  %index.next430 = add nuw i64 %index425, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.go, label %middle.block431, label %vector.body424, !llvm.loop !2363

middle.block431:                                  ; preds = %vector.body424
  %cmp.n432 = icmp eq i64 %i.gc, %n.vec423
  br i1 %cmp.n432, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader498

.lr.ph.i.i146.preheader498:                       ; preds = %vector.memcheck418, %.lr.ph.i.i146.preheader, %middle.block431
  %.010.i.i147.ph = phi ptr [ %i.fy, %vector.memcheck418 ], [ %i.fy, %.lr.ph.i.i146.preheader ], [ %i.gj, %middle.block431 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck418 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gk, %middle.block431 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader498, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.gr, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader498 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.gq, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader498 ] ; 3 uses
  %i.gp = load i32, ptr %.079.i.i148, align 4, !tbaa !247
  store i32 %i.gp, ptr %.010.i.i147, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.gq, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146, !llvm.loop !2364

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151: ; preds = %.lr.ph.i.i146, %middle.block431, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.gs, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.fy, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fl, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5446 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gw, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gz, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gw, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gx, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.gt = load i32, ptr %.0.i, align 4, !tbaa !247 ; 2 uses
  %i.gu = load i32, ptr %.021.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gt, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i, align 4, !tbaa !247
  %i.gy = icmp eq ptr %i.gx, %i.fn
  br i1 %i.gy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gu, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !247
  %i.ha = icmp eq ptr %i.gz, %.5
  br i1 %i.ha, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.gw, %bb.ai ], [ %i.gw, %bb.ah ] ; 7 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gz, %bb.ai ] ; 8 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fn, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !250
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %i.hb = ptrtoaddr ptr %.223.i to i64
  %i.hc = add i64 %.5446, -4
  %i.hd = sub i64 %i.hc, %i.hb                    ; 3 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.hd, 76
  br i1 %min.iters.check444, label %.lr.ph.i.i154.preheader488, label %vector.memcheck445

vector.memcheck445:                               ; preds = %.lr.ph.i.i154.preheader
  %i.hg = and i64 %i.hd, -4
  %i.hh = add i64 %i.hg, 4                        ; 2 uses
  %i.hi = getelementptr i8, ptr %.226.i, i64 %i.hh
  %i.hj = getelementptr i8, ptr %.223.i, i64 %i.hh
  %bound0446 = icmp ult ptr %.226.i, %i.hj
  %bound1447 = icmp ult ptr %.223.i, %i.hi
  %found.conflict448 = and i1 %bound0446, %bound1447
  br i1 %found.conflict448, label %.lr.ph.i.i154.preheader488, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck445
  %n.vec450 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hk = shl i64 %n.vec450, 2                    ; 2 uses
  %i.hl = getelementptr i8, ptr %.226.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %.223.i, i64 %i.hk
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph449
  %index452 = phi i64 [ 0, %vector.ph449 ], [ %index.next457, %vector.body451 ] ; 2 uses
  %i.hn = shl i64 %index452, 2                    ; 2 uses
  %next.gep453 = getelementptr i8, ptr %.226.i, i64 %i.hn ; 2 uses
  %next.gep454 = getelementptr i8, ptr %.223.i, i64 %i.hn ; 3 uses
  %i.ho = getelementptr i8, ptr %next.gep454, i64 16 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %next.gep454, align 4, !tbaa !247, !alias.scope !2384
  %wide.load456 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !247, !alias.scope !2384
  %i.hp = getelementptr i8, ptr %next.gep453, i64 16
  store <4 x i32> %wide.load455, ptr %next.gep453, align 4, !tbaa !247, !alias.scope !2385, !noalias !2384
  store <4 x i32> %wide.load456, ptr %i.hp, align 4, !tbaa !247, !alias.scope !2385, !noalias !2384
  store <4 x i32> zeroinitializer, ptr %next.gep454, align 4, !tbaa !247, !alias.scope !2384
  store <4 x i32> zeroinitializer, ptr %i.ho, align 4, !tbaa !247, !alias.scope !2384
  %index.next457 = add nuw i64 %index452, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.hq, label %middle.block458, label %vector.body451, !llvm.loop !2368

middle.block458:                                  ; preds = %vector.body451
  %cmp.n459 = icmp eq i64 %i.hf, %n.vec450
  br i1 %cmp.n459, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader488

.lr.ph.i.i154.preheader488:                       ; preds = %vector.memcheck445, %.lr.ph.i.i154.preheader, %middle.block458
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck445 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.hl, %middle.block458 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck445 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.hm, %middle.block458 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader488, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ht, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader488 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.hs, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader488 ] ; 3 uses
  %i.hr = load i32, ptr %.079.i.i156, align 4, !tbaa !247
  store i32 %i.hr, ptr %.010.i.i155, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !247
  %i.hs = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.hs, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154, !llvm.loop !2369

bb.aj:                                            ; preds = %.thread
  br i1 %i.fm, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hu = phi ptr [ %i.fl, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 7 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 8 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.hv = phi ptr [ %i.fn, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.hw = ptrtoaddr ptr %.0108265 to i64
  %i.hx = ptrtoaddr ptr %.0216267 to i64
  %i.hy = add i64 %i.hw, -4
  %i.hz = sub i64 %i.hy, %i.hx                    ; 3 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check392 = icmp ult i64 %i.hz, 76
  br i1 %min.iters.check392, label %.lr.ph.i.i161.preheader499, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ic = and i64 %i.hz, -4
  %i.id = add i64 %i.ic, 4                        ; 2 uses
  %i.ie = getelementptr i8, ptr %.0222269, i64 %i.id
  %i.if = getelementptr i8, ptr %.0216267, i64 %i.id
  %bound0394 = icmp ult ptr %.0222269, %i.if
  %bound1395 = icmp ult ptr %.0216267, %i.ie
  %found.conflict396 = and i1 %bound0394, %bound1395
  br i1 %found.conflict396, label %.lr.ph.i.i161.preheader499, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck393
  %n.vec398 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ig = shl i64 %n.vec398, 2                    ; 2 uses
  %i.ih = getelementptr i8, ptr %.0222269, i64 %i.ig ; 2 uses
  %i.ii = getelementptr i8, ptr %.0216267, i64 %i.ig
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body399 ] ; 2 uses
  %i.ij = shl i64 %index400, 2                    ; 2 uses
  %next.gep401 = getelementptr i8, ptr %.0222269, i64 %i.ij ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0216267, i64 %i.ij ; 3 uses
  %i.ik = getelementptr i8, ptr %next.gep402, i64 16 ; 2 uses
  %wide.load403 = load <4 x i32>, ptr %next.gep402, align 4, !tbaa !247, !alias.scope !2386
  %wide.load404 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2386
  %i.il = getelementptr i8, ptr %next.gep401, i64 16
  store <4 x i32> %wide.load403, ptr %next.gep401, align 4, !tbaa !247, !alias.scope !2387, !noalias !2386
  store <4 x i32> %wide.load404, ptr %i.il, align 4, !tbaa !247, !alias.scope !2387, !noalias !2386
  store <4 x i32> zeroinitializer, ptr %next.gep402, align 4, !tbaa !247, !alias.scope !2386
  store <4 x i32> zeroinitializer, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2386
  %index.next405 = add nuw i64 %index400, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.im, label %middle.block406, label %vector.body399, !llvm.loop !2373

middle.block406:                                  ; preds = %vector.body399
  %cmp.n407 = icmp eq i64 %i.ib, %n.vec398
  br i1 %cmp.n407, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader499

.lr.ph.i.i161.preheader499:                       ; preds = %vector.memcheck393, %.lr.ph.i.i161.preheader, %middle.block406
  %.010.i.i162.ph = phi ptr [ %.0222269, %vector.memcheck393 ], [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.ih, %middle.block406 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %vector.memcheck393 ], [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.ii, %middle.block406 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader499, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ip, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader499 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.io, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader499 ] ; 3 uses
  %i.in = load i32, ptr %.079.i.i163, align 4, !tbaa !247
  store i32 %i.in, ptr %.010.i.i162, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !247
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.io, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161, !llvm.loop !2374

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block406, %middle.block458, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.iq = phi ptr [ %i.fl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fl, %bb.aj ], [ %i.hu, %bb.ak ], [ %i.fl, %middle.block458 ], [ %i.hu, %middle.block406 ], [ %i.fl, %.lr.ph.i.i154 ], [ %i.hu, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block458 ], [ %.2, %middle.block406 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block458 ], [ %.0234274, %middle.block406 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block458 ], [ %.0228271, %middle.block406 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block458 ], [ %.0102261, %middle.block406 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block458 ], [ %.099258, %middle.block406 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.ir = phi ptr [ %i.fn, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fn, %bb.aj ], [ %i.hv, %bb.ak ], [ %i.fn, %middle.block458 ], [ %i.hv, %middle.block406 ], [ %i.fn, %.lr.ph.i.i154 ], [ %i.hv, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.hl, %middle.block458 ], [ %i.ih, %middle.block406 ], [ %i.ht, %.lr.ph.i.i154 ], [ %i.ip, %.lr.ph.i.i161 ]
  %i.is = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.iq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ir, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.it = load ptr, ptr %i.d, align 8, !tbaa !250 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.it, %i.ir
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  %i.iu = ptrtoaddr ptr %i.it to i64
  %i.iv = ptrtoaddr ptr %i.ir to i64
  %i.iw = add i64 %i.iv, -4
  %i.ix = sub i64 %i.iw, %i.iu                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 2
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check469 = icmp ult i64 %i.ix, 76
  br i1 %min.iters.check469, label %.lr.ph.i.i168.preheader487, label %vector.memcheck470

vector.memcheck470:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ja = and i64 %i.ix, -4
  %i.jb = add i64 %i.ja, 4                        ; 2 uses
  %i.jc = getelementptr i8, ptr %i.is, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.it, i64 %i.jb
  %bound0471 = icmp ult ptr %i.is, %i.jd
  %bound1472 = icmp ult ptr %i.it, %i.jc
  %found.conflict473 = and i1 %bound0471, %bound1472
  br i1 %found.conflict473, label %.lr.ph.i.i168.preheader487, label %vector.ph474

vector.ph474:                                     ; preds = %vector.memcheck470
  %n.vec475 = and i64 %i.iz, 9223372036854775800  ; 3 uses
  %i.je = shl i64 %n.vec475, 2                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.is, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.it, i64 %i.je
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph474
  %index477 = phi i64 [ 0, %vector.ph474 ], [ %index.next482, %vector.body476 ] ; 2 uses
  %i.jh = shl i64 %index477, 2                    ; 2 uses
  %next.gep478 = getelementptr i8, ptr %i.is, i64 %i.jh ; 2 uses
  %next.gep479 = getelementptr i8, ptr %i.it, i64 %i.jh ; 3 uses
  %i.ji = getelementptr i8, ptr %next.gep479, i64 16 ; 2 uses
  %wide.load480 = load <4 x i32>, ptr %next.gep479, align 4, !tbaa !247, !alias.scope !2388
  %wide.load481 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2388
  %i.jj = getelementptr i8, ptr %next.gep478, i64 16
  store <4 x i32> %wide.load480, ptr %next.gep478, align 4, !tbaa !247, !alias.scope !2389, !noalias !2388
  store <4 x i32> %wide.load481, ptr %i.jj, align 4, !tbaa !247, !alias.scope !2389, !noalias !2388
  store <4 x i32> zeroinitializer, ptr %next.gep479, align 4, !tbaa !247, !alias.scope !2388
  store <4 x i32> zeroinitializer, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2388
  %index.next482 = add nuw i64 %index477, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.jk, label %middle.block483, label %vector.body476, !llvm.loop !2378

middle.block483:                                  ; preds = %vector.body476
  %cmp.n484 = icmp eq i64 %i.iz, %n.vec475
  br i1 %cmp.n484, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader487

.lr.ph.i.i168.preheader487:                       ; preds = %vector.memcheck470, %.lr.ph.i.i168.preheader, %middle.block483
  %.010.i.i169.ph = phi ptr [ %i.is, %vector.memcheck470 ], [ %i.is, %.lr.ph.i.i168.preheader ], [ %i.jf, %middle.block483 ]
  %.079.i.i170.ph = phi ptr [ %i.it, %vector.memcheck470 ], [ %i.it, %.lr.ph.i.i168.preheader ], [ %i.jg, %middle.block483 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader487, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.jn, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader487 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.jm, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader487 ] ; 3 uses
  %i.jl = load i32, ptr %.079.i.i170, align 4, !tbaa !247
  store i32 %i.jl, ptr %.010.i.i169, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.jm, %i.ir
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168, !llvm.loop !2379

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173: ; preds = %.lr.ph.i.i168, %middle.block483, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !250
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx254, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 17 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ey, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.m, %.lr.ph ], [ %i.ew, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0226283 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0232282 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.e, %.lr.ph ], [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %i.t = icmp ult i64 %.099289, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.02226.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !247 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !247 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !314
  %i.af = load i8, ptr %i.y, align 1, !tbaa !314
  %i.ag = icmp ult i8 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ah = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ai = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ah, %.thread24.i ] ; 5 uses
  %i.aj = add i64 %.022.lcssa.i, 2
  %i.ak = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ak, i64 %.0238281) ; 4 uses
  %i.al = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0290, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !247
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !247
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105286 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.as = icmp eq ptr %.0108285, %.0226283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  br i1 %i.as, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.022.lcssa.i ; 9 uses
  %i.au = icmp eq ptr %.0232282, %i.o
  br i1 %i.au, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.av = icmp eq ptr %.0108285, %.0226283        ; 2 uses
  %i.aw = trunc nuw i8 %.0105286 to i1
  br i1 %i.aw, label %bb.j, label %.thread344

bb.i:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !314
  %i.ay = load i8, ptr %.0232282, align 1, !tbaa !314
  %i.az = icmp ult i8 %i.ax, %i.ay                ; 7 uses
  %i.ba = zext i1 %i.az to i8                     ; 4 uses
  %i.bb = icmp eq ptr %.0108285, %.0226283        ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_:bb.a

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i81
  %i.fk = getelementptr inbounds i8, ptr %i.ba, i64 -1 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !314
  %i.fn = load i8, ptr %i.fl, align 1, !tbaa !314
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !314
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !314
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i81
  %i.fo = icmp eq ptr %i.ba, %.sroa.0263.0339
  br i1 %i.fo, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = icmp eq ptr %.sroa.0263.0339, %.sroa.0213.0334
  %spec.select301 = select i1 %i.fp, ptr %i.ba, ptr %.sroa.0263.0339
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0263.5 = phi ptr [ %.sroa.0263.0339, %bb.v ], [ %spec.select301, %bb.z ], [ %.sroa.0213.0334, %bb.y ]
  %i.fq = load ptr, ptr %28, align 8, !tbaa !330  ; 2 uses
  %i.fr = load ptr, ptr %29, align 8, !tbaa !330  ; 3 uses
  %.not304 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not304, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86, %bb.aa
  %.sroa.0223.1 = phi ptr [ %i.at, %bb.aa ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86 ]
  %.sroa.0238.1 = phi ptr [ %i.ew, %bb.aa ], [ %i.fq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86 ]
  %.sroa.0252.2 = phi ptr [ %i.fs, %bb.aa ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86 ]
  %.161 = phi i8 [ %i.ev, %bb.aa ], [ %.060342, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.n, %bb.ab
  %i.ft = phi i1 [ %i.eu, %bb.ab ], [ %i.bq, %bb.n ], [ %i.bq, %bb.m ], [ %i.bq, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ]
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.1, %bb.ab ], [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.sroa.0238.2 = phi ptr [ %.sroa.0238.1, %bb.ab ], [ %i.u, %bb.n ], [ %i.u, %bb.m ], [ %i.u, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.sroa.0252.3 = phi ptr [ %.sroa.0252.2, %bb.ab ], [ %.sroa.0252.1, %bb.n ], [ %.sroa.0252.1, %bb.m ], [ %.sroa.0252.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.sroa.0263.1 = phi ptr [ %.sroa.0263.5, %bb.ab ], [ %spec.select, %bb.n ], [ %.sroa.0213.0334, %bb.m ], [ %.sroa.0263.0339, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060342, %bb.n ], [ %.060342, %bb.m ], [ %.060342, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 2 uses
  %not. = xor i1 %i.ft, true
  %i.fu = sext i1 %not. to i64
  %.1 = add i64 %.0343, %i.fu
  store ptr %i.at, ptr %27, align 8, !tbaa !330
  %i.fv = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.fw = icmp ne i64 %.063341, 0
  %.neg = sext i1 %i.fw to i64
  %i.fx = add i64 %.063341, %.neg                 ; 2 uses
  %i.fy = icmp ne i64 %i.aq, 0
  %.neg69 = sext i1 %i.fy to i64
  %i.fz = add i64 %.sroa.speculated276, %.neg69   ; 2 uses
  %i.ga = add i64 %.0287340, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ga, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !2429

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit
  %i.gb = phi ptr [ %i.at, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %i.u, %bb.f ]
  %.4 = phi i64 [ %i.fz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.speculated276, %bb.f ]
  %.sroa.0213.0.lcssa.ph = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.0213.0334, %bb.f ]
  %.sroa.0223.0.lcssa.ph = phi ptr [ %.sroa.0223.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.0223.0336, %bb.f ]
  %.sroa.0238.0.lcssa.ph = phi ptr [ %.sroa.0238.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.0238.0337, %bb.f ]
  %.sroa.0252.0.lcssa.ph = phi ptr [ %.sroa.0252.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.0252.0338, %bb.f ]
  %.sroa.0263.0.lcssa.ph = phi ptr [ %.sroa.0263.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.sroa.0263.0339, %bb.f ]
  %.0287.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.0287340, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.fx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.063341, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit ], [ %.060342, %bb.f ]
  %i.gc = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gd = phi ptr [ %i.h, %bb.a ], [ %i.gb, %.thread.loopexit ] ; 8 uses
  %.1393 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0213.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0213.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0223.0.lcssa = phi ptr [ %i.h, %bb.a ], [ %.sroa.0223.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0238.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0238.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0252.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %.sroa.0252.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0263.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0263.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0287.lcssa = phi i64 [ 0, %bb.a ], [ %.0287.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.m, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gc, %.thread.loopexit ]
  %i.ge = icmp eq ptr %.sroa.0223.0.lcssa, %.sroa.0252.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.k, ptr %32, align 8, !tbaa !330
  %.neg306 = mul i64 %6, -4                       ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.k, i64 %.neg306 ; 7 uses
  %i.gg = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.gg, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ge, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0238.0.lcssa, %.sroa.0223.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ad
  %i.gh = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !247, !noalias !2478
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i87
  %i.gj = phi ptr [ %.sroa.0238.0.lcssa, %.lr.ph.i87 ], [ %i.gk, %bb.af ] ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4 ; 4 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !247, !noalias !2478
  %i.gm = icmp slt i32 %i.gl, %i.gi
  br i1 %i.gm, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i88 = icmp eq ptr %i.gk, %.sroa.0223.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0238.0.lcssa, %bb.ad ], [ %i.gj, %bb.ae ], [ %i.gk, %bb.af ] ; 8 uses
  %i.gn = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.go = ptrtoint ptr %.sroa.0223.0.lcssa to i64 ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = getelementptr i8, ptr %i.gd, i64 %i.gp  ; 7 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0223.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gr = add i64 %i.gn, -4
  %i.gs = sub i64 %i.gr, %i.go                    ; 4 uses
  %i.gt = lshr i64 %i.gs, 2
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check491 = icmp ult i64 %i.gs, 76
  br i1 %min.iters.check491, label %.lr.ph.i.i90.preheader579, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph.i.i90.preheader
  %i.gv = and i64 %i.gs, 3
  %i.gw = getelementptr i8, ptr %i.gd, i64 %i.gv
  %.not562 = and i64 %i.gs, -4
  %i.gx = xor i64 %.not562, -4
  %i.gy = getelementptr i8, ptr %.lcssa.i, i64 %i.gx
  %bound0493 = icmp ult ptr %i.gw, %.lcssa.i
  %bound1494 = icmp ult ptr %i.gy, %i.gq
  %found.conflict495 = and i1 %bound0493, %bound1494
  br i1 %found.conflict495, label %.lr.ph.i.i90.preheader579, label %vector.ph496

vector.ph496:                                     ; preds = %vector.memcheck492
  %n.vec497 = and i64 %i.gu, 9223372036854775800  ; 3 uses
  %i.gz = mul i64 %n.vec497, -4                   ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gq, i64 %i.gz
  %i.hb = getelementptr i8, ptr %.lcssa.i, i64 %i.gz
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next504, %vector.body498 ] ; 2 uses
  %i.hc = mul i64 %index499, -4                   ; 2 uses
  %next.gep500 = getelementptr i8, ptr %i.gq, i64 %i.hc ; 2 uses
  %next.gep501 = getelementptr i8, ptr %.lcssa.i, i64 %i.hc ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %next.gep501, i64 -16 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %next.gep501, i64 -32 ; 2 uses
  %wide.load502 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !247, !alias.scope !2479, !noalias !2480
  %wide.load503 = load <4 x i32>, ptr %i.he, align 4, !tbaa !247, !alias.scope !2479, !noalias !2480
  %i.hf = getelementptr inbounds i8, ptr %next.gep500, i64 -16
  %i.hg = getelementptr inbounds i8, ptr %next.gep500, i64 -32
  store <4 x i32> %wide.load502, ptr %i.hf, align 4, !tbaa !247, !alias.scope !2481, !noalias !2482
  store <4 x i32> %wide.load503, ptr %i.hg, align 4, !tbaa !247, !alias.scope !2481, !noalias !2482
  store <4 x i32> zeroinitializer, ptr %i.hd, align 4, !tbaa !247, !alias.scope !2479, !noalias !2480
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !247, !alias.scope !2479, !noalias !2480
  %index.next504 = add nuw i64 %index499, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next504, %n.vec497
  br i1 %i.hh, label %middle.block505, label %vector.body498, !llvm.loop !2439

middle.block505:                                  ; preds = %vector.body498
  %cmp.n506 = icmp eq i64 %i.gu, %n.vec497
  br i1 %cmp.n506, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90.preheader579

.lr.ph.i.i90.preheader579:                        ; preds = %vector.memcheck492, %.lr.ph.i.i90.preheader, %middle.block505
  %.sroa.0.0.i91.ph = phi ptr [ %i.gq, %vector.memcheck492 ], [ %i.gq, %.lr.ph.i.i90.preheader ], [ %i.ha, %middle.block505 ]
  %.ph580 = phi ptr [ %.lcssa.i, %vector.memcheck492 ], [ %.lcssa.i, %.lr.ph.i.i90.preheader ], [ %i.hb, %middle.block505 ]
  br label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.preheader579, %.lr.ph.i.i90
  %.sroa.0.0.i91 = phi ptr [ %i.hk, %.lr.ph.i.i90 ], [ %.sroa.0.0.i91.ph, %.lr.ph.i.i90.preheader579 ]
  %i.hi = phi ptr [ %i.hj, %.lr.ph.i.i90 ], [ %.ph580, %.lr.ph.i.i90.preheader579 ]
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0.0.i91, i64 -4 ; 2 uses
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !247, !noalias !2480
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !247, !noalias !2480
  store i32 0, ptr %i.hj, align 4, !tbaa !247, !noalias !2480
  %.not.i.i92 = icmp eq ptr %i.hj, %.sroa.0223.0.lcssa
  br i1 %.not.i.i92, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90, !llvm.loop !2440

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93: ; preds = %.lr.ph.i.i90, %middle.block505, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93, %bb.ac
  %.sroa.0223.5 = phi ptr [ %i.gd, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93 ], [ %.sroa.0223.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0238.5 = phi ptr [ %i.gq, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93 ], [ %.sroa.0238.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0252.6 = phi ptr [ %i.hm, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit93 ], [ %.sroa.0252.0.lcssa, %bb.ac ] ; 2 uses
  %.sroa.0223.5519 = ptrtoaddr ptr %.sroa.0223.5 to i64
  %.not.i94 = icmp eq i64 %.neg306, 0
  %.not17.i = icmp eq ptr %.sroa.0223.5, %.sroa.0238.5
  %or.cond = select i1 %.not.i94, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0121.0.ph = phi ptr [ %i.hs, %bb.ah ], [ %.sroa.0252.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ht, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0238.5, %bb.ag ]
  %i.hn = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0121.0 = phi ptr [ %i.hs, %bb.ai ], [ %.sroa.0121.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ho, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !247, !noalias !2483 ; 2 uses
  %i.hq = load i32, ptr %i.hn, align 4, !tbaa !247, !noalias !2483 ; 2 uses
  %i.hr = icmp slt i32 %i.hp, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0121.0, i64 -4 ; 6 uses
  br i1 %i.hr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ht = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 3 uses
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !247, !noalias !2483
  store i32 0, ptr %i.ht, align 4, !tbaa !247, !noalias !2483
  %i.hu = icmp eq ptr %i.ht, %i.gf
  br i1 %i.hu, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !66

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.hp, ptr %i.hs, align 4, !tbaa !247, !noalias !2483
  store i32 0, ptr %i.ho, align 4, !tbaa !247, !noalias !2483
  %i.hv = icmp eq ptr %i.ho, %.sroa.0223.5
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !66

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0121.1 = phi ptr [ %.sroa.0252.6, %bb.ag ], [ %i.hs, %bb.ah ], [ %i.hs, %bb.ai ] ; 7 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.gf, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0238.5, %bb.ag ], [ %i.ho, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 8 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !330, !noalias !2483
  %.not1.i.i95 = icmp eq ptr %.sroa.012.2.i, %.sroa.0223.5
  br i1 %.not1.i.i95, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i96.preheader

.lr.ph.i.i96.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %i.hw = ptrtoaddr ptr %.sroa.012.2.i to i64
  %i.hx = add i64 %i.hw, -4
  %i.hy = sub i64 %i.hx, %.sroa.0223.5519         ; 3 uses
  %i.hz = lshr i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check518 = icmp ult i64 %i.hy, 76
  br i1 %min.iters.check518, label %.lr.ph.i.i96.preheader566, label %vector.memcheck519

vector.memcheck519:                               ; preds = %.lr.ph.i.i96.preheader
  %.not563 = and i64 %i.hy, -4
  %i.ib = xor i64 %.not563, -4                    ; 2 uses
  %i.ic = getelementptr i8, ptr %.sroa.0121.1, i64 %i.ib
  %i.id = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ib
  %bound0520 = icmp ult ptr %i.ic, %.sroa.012.2.i
  %bound1521 = icmp ult ptr %i.id, %.sroa.0121.1
  %found.conflict522 = and i1 %bound0520, %bound1521
  br i1 %found.conflict522, label %.lr.ph.i.i96.preheader566, label %vector.ph523

vector.ph523:                                     ; preds = %vector.memcheck519
  %n.vec524 = and i64 %i.ia, 9223372036854775800  ; 3 uses
  %i.ie = mul i64 %n.vec524, -4                   ; 2 uses
  %i.if = getelementptr i8, ptr %.sroa.0121.1, i64 %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ie
  br label %vector.body525

vector.body525:                                   ; preds = %vector.body525, %vector.ph523
  %index526 = phi i64 [ 0, %vector.ph523 ], [ %index.next531, %vector.body525 ] ; 2 uses
  %i.ih = mul i64 %index526, -4                   ; 2 uses
  %next.gep527 = getelementptr i8, ptr %.sroa.0121.1, i64 %i.ih ; 2 uses
  %next.gep528 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ih ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %next.gep528, i64 -16 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %next.gep528, i64 -32 ; 2 uses
  %wide.load529 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !247, !alias.scope !2484, !noalias !2485
  %wide.load530 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !247, !alias.scope !2484, !noalias !2485
  %i.ik = getelementptr inbounds i8, ptr %next.gep527, i64 -16
  %i.il = getelementptr inbounds i8, ptr %next.gep527, i64 -32
  store <4 x i32> %wide.load529, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2486, !noalias !2487
  store <4 x i32> %wide.load530, ptr %i.il, align 4, !tbaa !247, !alias.scope !2486, !noalias !2487
  store <4 x i32> zeroinitializer, ptr %i.ii, align 4, !tbaa !247, !alias.scope !2484, !noalias !2485
  store <4 x i32> zeroinitializer, ptr %i.ij, align 4, !tbaa !247, !alias.scope !2484, !noalias !2485
  %index.next531 = add nuw i64 %index526, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next531, %n.vec524
  br i1 %i.im, label %middle.block532, label %vector.body525, !llvm.loop !2450

middle.block532:                                  ; preds = %vector.body525
  %cmp.n533 = icmp eq i64 %i.ia, %n.vec524
  br i1 %cmp.n533, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i96.preheader566

.lr.ph.i.i96.preheader566:                        ; preds = %vector.memcheck519, %.lr.ph.i.i96.preheader, %middle.block532
  %.sroa.0.0.i97.ph = phi ptr [ %.sroa.0121.1, %vector.memcheck519 ], [ %.sroa.0121.1, %.lr.ph.i.i96.preheader ], [ %i.if, %middle.block532 ]
  %.ph567 = phi ptr [ %.sroa.012.2.i, %vector.memcheck519 ], [ %.sroa.012.2.i, %.lr.ph.i.i96.preheader ], [ %i.ig, %middle.block532 ]
  br label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %.lr.ph.i.i96.preheader566, %.lr.ph.i.i96
  %.sroa.0.0.i97 = phi ptr [ %i.ip, %.lr.ph.i.i96 ], [ %.sroa.0.0.i97.ph, %.lr.ph.i.i96.preheader566 ]
  %i.in = phi ptr [ %i.io, %.lr.ph.i.i96 ], [ %.ph567, %.lr.ph.i.i96.preheader566 ]
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -4 ; 4 uses
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0.0.i97, i64 -4 ; 3 uses
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !247, !noalias !2485
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !247, !noalias !2485
  store i32 0, ptr %i.io, align 4, !tbaa !247, !noalias !2485
  %.not.i.i98 = icmp eq ptr %i.io, %.sroa.0223.5
  br i1 %.not.i.i98, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i96, !llvm.loop !2451

bb.aj:                                            ; preds = %.thread
  br i1 %i.ge, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ir = phi ptr [ %i.gd, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1393, %bb.aj ], [ %.sroa.speculated276, %.thread.thread ] ; 3 uses
  %.sroa.0213.0331 = phi ptr [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0334, %.thread.thread ] ; 3 uses
  %.sroa.0223.0329 = phi ptr [ %.sroa.0223.0.lcssa, %bb.aj ], [ %.sroa.0223.0336, %.thread.thread ] ; 3 uses
  %.sroa.0238.0326 = phi ptr [ %.sroa.0238.0.lcssa, %bb.aj ], [ %.sroa.0238.0337, %.thread.thread ] ; 8 uses
  %.sroa.0252.0324 = phi ptr [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0338, %.thread.thread ] ; 7 uses
  %.sroa.0263.0321 = phi ptr [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0339, %.thread.thread ] ; 3 uses
  %.0287318 = phi i64 [ %.0287.lcssa, %bb.aj ], [ %.0287340, %.thread.thread ] ; 3 uses
  %.063315 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063341, %.thread.thread ] ; 3 uses
  %i.is = phi ptr [ %i.gf, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i100 = icmp eq ptr %.sroa.0238.0326, %.sroa.0223.0329
  br i1 %.not1.i.i100, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i101.preheader

.lr.ph.i.i101.preheader:                          ; preds = %bb.ak
  %i.it = ptrtoaddr ptr %.sroa.0238.0326 to i64
  %i.iu = ptrtoaddr ptr %.sroa.0223.0329 to i64
  %i.iv = add i64 %i.it, -4
  %i.iw = sub i64 %i.iv, %i.iu                    ; 3 uses
  %i.ix = lshr i64 %i.iw, 2
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %min.iters.check466 = icmp ult i64 %i.iw, 76
  br i1 %min.iters.check466, label %.lr.ph.i.i101.preheader581, label %vector.memcheck467

vector.memcheck467:                               ; preds = %.lr.ph.i.i101.preheader
  %.not561 = and i64 %i.iw, -4
  %i.iz = xor i64 %.not561, -4                    ; 2 uses
  %i.ja = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.iz
  %i.jb = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.iz
  %bound0468 = icmp ult ptr %i.ja, %.sroa.0238.0326
  %bound1469 = icmp ult ptr %i.jb, %.sroa.0252.0324
  %found.conflict470 = and i1 %bound0468, %bound1469
  br i1 %found.conflict470, label %.lr.ph.i.i101.preheader581, label %vector.ph471

vector.ph471:                                     ; preds = %vector.memcheck467
  %n.vec472 = and i64 %i.iy, 9223372036854775800  ; 3 uses
  %i.jc = mul i64 %n.vec472, -4                   ; 2 uses
  %i.jd = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.jc ; 2 uses
  %i.je = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.jc
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph471
  %index474 = phi i64 [ 0, %vector.ph471 ], [ %index.next479, %vector.body473 ] ; 2 uses
  %i.jf = mul i64 %index474, -4                   ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.jf ; 2 uses
  %next.gep476 = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.jf ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep476, i64 -16 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %next.gep476, i64 -32 ; 2 uses
  %wide.load477 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !247, !alias.scope !2488, !noalias !2489
  %wide.load478 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !247, !alias.scope !2488, !noalias !2489
  %i.ji = getelementptr inbounds i8, ptr %next.gep475, i64 -16
  %i.jj = getelementptr inbounds i8, ptr %next.gep475, i64 -32
  store <4 x i32> %wide.load477, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2490, !noalias !2491
  store <4 x i32> %wide.load478, ptr %i.jj, align 4, !tbaa !247, !alias.scope !2490, !noalias !2491
  store <4 x i32> zeroinitializer, ptr %i.jg, align 4, !tbaa !247, !alias.scope !2488, !noalias !2489
  store <4 x i32> zeroinitializer, ptr %i.jh, align 4, !tbaa !247, !alias.scope !2488, !noalias !2489
  %index.next479 = add nuw i64 %index474, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next479, %n.vec472
  br i1 %i.jk, label %middle.block480, label %vector.body473, !llvm.loop !2459

middle.block480:                                  ; preds = %vector.body473
  %cmp.n481 = icmp eq i64 %i.iy, %n.vec472
  br i1 %cmp.n481, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i101.preheader581

.lr.ph.i.i101.preheader581:                       ; preds = %vector.memcheck467, %.lr.ph.i.i101.preheader, %middle.block480
  %.sroa.0.0.i102.ph = phi ptr [ %.sroa.0252.0324, %vector.memcheck467 ], [ %.sroa.0252.0324, %.lr.ph.i.i101.preheader ], [ %i.jd, %middle.block480 ]
  %.ph582 = phi ptr [ %.sroa.0238.0326, %vector.memcheck467 ], [ %.sroa.0238.0326, %.lr.ph.i.i101.preheader ], [ %i.je, %middle.block480 ]
  br label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i101.preheader581, %.lr.ph.i.i101
  %.sroa.0.0.i102 = phi ptr [ %i.jn, %.lr.ph.i.i101 ], [ %.sroa.0.0.i102.ph, %.lr.ph.i.i101.preheader581 ]
  %i.jl = phi ptr [ %i.jm, %.lr.ph.i.i101 ], [ %.ph582, %.lr.ph.i.i101.preheader581 ]
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -4 ; 4 uses
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0.0.i102, i64 -4 ; 3 uses
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !247, !noalias !2489
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !247, !noalias !2489
  store i32 0, ptr %i.jm, align 4, !tbaa !247, !noalias !2489
  %.not.i.i103 = icmp eq ptr %i.jm, %.sroa.0223.0329
  br i1 %.not.i.i103, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99, label %.lr.ph.i.i101, !llvm.loop !2460

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99: ; preds = %.lr.ph.i.i101, %.lr.ph.i.i96, %middle.block480, %middle.block532, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jp = phi ptr [ %i.gd, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.gd, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.gd, %middle.block532 ], [ %i.ir, %middle.block480 ], [ %i.gd, %.lr.ph.i.i96 ], [ %i.ir, %.lr.ph.i.i101 ]
  %.3 = phi i64 [ %.1393, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated276, %.thread.thread ], [ %.1393, %bb.aj ], [ %.2, %bb.ak ], [ %.1393, %middle.block532 ], [ %.2, %middle.block480 ], [ %.1393, %.lr.ph.i.i96 ], [ %.2, %.lr.ph.i.i101 ]
  %.sroa.0213.0332 = phi ptr [ %.sroa.0213.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0213.0334, %.thread.thread ], [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0331, %bb.ak ], [ %.sroa.0213.0.lcssa, %middle.block532 ], [ %.sroa.0213.0331, %middle.block480 ], [ %.sroa.0213.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0213.0331, %.lr.ph.i.i101 ]
  %.sroa.0263.0322 = phi ptr [ %.sroa.0263.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0263.0339, %.thread.thread ], [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0321, %bb.ak ], [ %.sroa.0263.0.lcssa, %middle.block532 ], [ %.sroa.0263.0321, %middle.block480 ], [ %.sroa.0263.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0263.0321, %.lr.ph.i.i101 ]
  %.0287319 = phi i64 [ %.0287.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0287340, %.thread.thread ], [ %.0287.lcssa, %bb.aj ], [ %.0287318, %bb.ak ], [ %.0287.lcssa, %middle.block532 ], [ %.0287318, %middle.block480 ], [ %.0287.lcssa, %.lr.ph.i.i96 ], [ %.0287318, %.lr.ph.i.i101 ]
  %.063316 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063341, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063315, %bb.ak ], [ %.063.lcssa, %middle.block532 ], [ %.063315, %middle.block480 ], [ %.063.lcssa, %.lr.ph.i.i96 ], [ %.063315, %.lr.ph.i.i101 ]
  %i.jq = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.gf, %bb.aj ], [ %i.is, %bb.ak ], [ %i.gf, %middle.block532 ], [ %i.is, %middle.block480 ], [ %i.gf, %.lr.ph.i.i96 ], [ %i.is, %.lr.ph.i.i101 ] ; 4 uses
  %.sroa.0252.7 = phi ptr [ %.sroa.0121.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0252.0338, %.thread.thread ], [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0324, %bb.ak ], [ %i.if, %middle.block532 ], [ %i.jd, %middle.block480 ], [ %i.ip, %.lr.ph.i.i96 ], [ %i.jn, %.lr.ph.i.i101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0213.0332, ptr %34, align 8, !tbaa !316
  store ptr %.sroa.0263.0322, ptr %35, align 8, !tbaa !316
  store ptr %i.jp, ptr %36, align 8, !tbaa !330
  store ptr %i.jq, ptr %37, align 8, !tbaa !330
  store ptr %.sroa.0252.7, ptr %38, align 8, !tbaa !330
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0287319, i64 noundef %.063316, i64 noundef %.3, i1 noundef zeroext false)
  %i.jr = load ptr, ptr %33, align 8, !tbaa !330  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.js = load ptr, ptr %32, align 8, !tbaa !330  ; 8 uses
  %.not1.i.i105 = icmp eq ptr %i.js, %i.jq
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106.preheader

.lr.ph.i.i106.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit99
  %i.jt = ptrtoaddr ptr %i.js to i64
  %i.ju = ptrtoaddr ptr %i.jq to i64
  %i.jv = add i64 %i.jt, -4
  %i.jw = sub i64 %i.jv, %i.ju                    ; 3 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check543 = icmp ult i64 %i.jw, 76
  br i1 %min.iters.check543, label %.lr.ph.i.i106.preheader565, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.lr.ph.i.i106.preheader
  %.not564 = and i64 %i.jw, -4
  %i.jz = xor i64 %.not564, -4                    ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jr, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.js, i64 %i.jz
  %bound0545 = icmp ult ptr %i.ka, %i.js
  %bound1546 = icmp ult ptr %i.kb, %i.jr
  %found.conflict547 = and i1 %bound0545, %bound1546
  br i1 %found.conflict547, label %.lr.ph.i.i106.preheader565, label %vector.ph548

vector.ph548:                                     ; preds = %vector.memcheck544
  %n.vec549 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.kc = mul i64 %n.vec549, -4                   ; 2 uses
  %i.kd = getelementptr i8, ptr %i.jr, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.js, i64 %i.kc
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next556, %vector.body550 ] ; 2 uses
  %i.kf = mul i64 %index551, -4                   ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.jr, i64 %i.kf ; 2 uses
  %next.gep553 = getelementptr i8, ptr %i.js, i64 %i.kf ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %next.gep553, i64 -16 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %next.gep553, i64 -32 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138: ; preds = %.lr.ph.i.i134, %bb.w
  %.not21.i139 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i139, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138
  %i.eu = load i64, ptr %i.at, align 8, !tbaa !223
  %i.ev = load i64, ptr %.0102284, align 8, !tbaa !223
  store i64 %i.ev, ptr %i.at, align 8, !tbaa !223
  store i64 %i.eu, ptr %.0102284, align 8, !tbaa !223
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i138
  %i.ew = icmp eq ptr %i.at, %.0228279
  br i1 %i.ew, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = icmp eq ptr %.0228279, %.0102284
  %spec.select248 = select i1 %i.ex, ptr %i.at, ptr %.0228279
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142: ; preds = %bb.z, %bb.y, %bb.v
  %.5233 = phi ptr [ %.0228279, %bb.v ], [ %spec.select248, %bb.z ], [ %.0102284, %bb.y ]
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !250 ; 3 uses
  %.not121 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not121, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.ef, %bb.aa ], [ %i.ey, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %storemerge122 = phi ptr [ %i.fa, %bb.aa ], [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  %.1106 = phi i8 [ %i.ee, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.ab
  %i.fb = phi i1 [ %i.ed, %bb.ab ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.bf, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.s, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.ao, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fb, true
  %i.fc = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.fc
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !250
  %i.fd = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.fe = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.fe to i64
  %i.ff = add i64 %.099286, %.neg                 ; 2 uses
  %i.fg = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fg to i64
  %i.fh = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.fi = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !2619

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.fj = phi ptr [ %i.ao, %.sink.split.i ], [ %i.s, %bb.f ]
  %.4 = phi i64 [ %i.fh, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fd, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.ff, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.fk = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fl = phi ptr [ %i.i, %bb.a ], [ %i.fj, %.thread.loopexit ] ; 8 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fk, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fm = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  %.idx252 = shl nuw nsw i64 %6, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.fo = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fo, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fm, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.fp = load i32, ptr %i.k, align 4, !tbaa !247
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.fs, %bb.af ] ; 3 uses
  %i.fq = load i32, ptr %.07.i, align 4, !tbaa !247
  %i.fr = icmp slt i32 %i.fp, %i.fq
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.fs, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fs, %bb.af ] ; 8 uses
  %i.ft = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.fu = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 2 uses
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr [4 x i8], ptr %i.fl, i64 %i.fx ; 7 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fz = add i64 %i.ft, -4
  %i.ga = sub i64 %i.fz, %i.fu                    ; 3 uses
  %i.gb = lshr i64 %i.ga, 2
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.ga, 76
  br i1 %min.iters.check418, label %.lr.ph.i.i146.preheader499, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.lr.ph.i.i146.preheader
  %i.gd = and i64 %i.ga, -4
  %i.ge = add i64 %i.gd, 4                        ; 2 uses
  %i.gf = sub i64 %i.ge, %i.fv
  %i.gg = getelementptr i8, ptr %i.fl, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ge
  %bound0420 = icmp ult ptr %i.fy, %i.gh
  %bound1421 = icmp ult ptr %.0.lcssa.i, %i.gg
  %found.conflict422 = and i1 %bound0420, %bound1421
  br i1 %found.conflict422, label %.lr.ph.i.i146.preheader499, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck419
  %n.vec424 = and i64 %i.gc, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec424, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fy, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gi
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body425 ] ; 2 uses
  %i.gl = shl i64 %index426, 2                    ; 2 uses
  %next.gep427 = getelementptr i8, ptr %i.fy, i64 %i.gl ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep428, i64 16 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %next.gep428, align 4, !tbaa !247, !alias.scope !2642
  %wide.load430 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !247, !alias.scope !2642
  %i.gn = getelementptr i8, ptr %next.gep427, i64 16
  store <4 x i32> %wide.load429, ptr %next.gep427, align 4, !tbaa !247, !alias.scope !2643, !noalias !2642
  store <4 x i32> %wide.load430, ptr %i.gn, align 4, !tbaa !247, !alias.scope !2643, !noalias !2642
  store <4 x i32> zeroinitializer, ptr %next.gep428, align 4, !tbaa !247, !alias.scope !2642
  store <4 x i32> zeroinitializer, ptr %i.gm, align 4, !tbaa !247, !alias.scope !2642
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.go, label %middle.block432, label %vector.body425, !llvm.loop !2623

middle.block432:                                  ; preds = %vector.body425
  %cmp.n433 = icmp eq i64 %i.gc, %n.vec424
  br i1 %cmp.n433, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146.preheader499

.lr.ph.i.i146.preheader499:                       ; preds = %vector.memcheck419, %.lr.ph.i.i146.preheader, %middle.block432
  %.010.i.i147.ph = phi ptr [ %i.fy, %vector.memcheck419 ], [ %i.fy, %.lr.ph.i.i146.preheader ], [ %i.gj, %middle.block432 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck419 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gk, %middle.block432 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader499, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.gr, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader499 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.gq, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader499 ] ; 3 uses
  %i.gp = load i32, ptr %.079.i.i148, align 4, !tbaa !247
  store i32 %i.gp, ptr %.010.i.i147, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.gq, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, label %.lr.ph.i.i146, !llvm.loop !2624

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151: ; preds = %.lr.ph.i.i146, %middle.block432, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.gs, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.fy, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fl, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5447 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gw, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gz, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gw, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gx, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.gt = load i32, ptr %.0.i, align 4, !tbaa !247 ; 2 uses
  %i.gu = load i32, ptr %.021.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gt, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i, align 4, !tbaa !247
  %i.gy = icmp eq ptr %i.gx, %i.fn
  br i1 %i.gy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gu, ptr %.024.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !247
  %i.ha = icmp eq ptr %i.gz, %.5
  br i1 %i.ha, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.gw, %bb.ai ], [ %i.gw, %bb.ah ] ; 7 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gz, %bb.ai ] ; 8 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fn, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !250
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %i.hb = ptrtoaddr ptr %.223.i to i64
  %i.hc = add i64 %.5447, -4
  %i.hd = sub i64 %i.hc, %i.hb                    ; 3 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.hd, 76
  br i1 %min.iters.check445, label %.lr.ph.i.i154.preheader489, label %vector.memcheck446

vector.memcheck446:                               ; preds = %.lr.ph.i.i154.preheader
  %i.hg = and i64 %i.hd, -4
  %i.hh = add i64 %i.hg, 4                        ; 2 uses
  %i.hi = getelementptr i8, ptr %.226.i, i64 %i.hh
  %i.hj = getelementptr i8, ptr %.223.i, i64 %i.hh
  %bound0447 = icmp ult ptr %.226.i, %i.hj
  %bound1448 = icmp ult ptr %.223.i, %i.hi
  %found.conflict449 = and i1 %bound0447, %bound1448
  br i1 %found.conflict449, label %.lr.ph.i.i154.preheader489, label %vector.ph450

vector.ph450:                                     ; preds = %vector.memcheck446
  %n.vec451 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hk = shl i64 %n.vec451, 2                    ; 2 uses
  %i.hl = getelementptr i8, ptr %.226.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %.223.i, i64 %i.hk
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next458, %vector.body452 ] ; 2 uses
  %i.hn = shl i64 %index453, 2                    ; 2 uses
  %next.gep454 = getelementptr i8, ptr %.226.i, i64 %i.hn ; 2 uses
  %next.gep455 = getelementptr i8, ptr %.223.i, i64 %i.hn ; 3 uses
  %i.ho = getelementptr i8, ptr %next.gep455, i64 16 ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %next.gep455, align 4, !tbaa !247, !alias.scope !2644
  %wide.load457 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !247, !alias.scope !2644
  %i.hp = getelementptr i8, ptr %next.gep454, i64 16
  store <4 x i32> %wide.load456, ptr %next.gep454, align 4, !tbaa !247, !alias.scope !2645, !noalias !2644
  store <4 x i32> %wide.load457, ptr %i.hp, align 4, !tbaa !247, !alias.scope !2645, !noalias !2644
  store <4 x i32> zeroinitializer, ptr %next.gep455, align 4, !tbaa !247, !alias.scope !2644
  store <4 x i32> zeroinitializer, ptr %i.ho, align 4, !tbaa !247, !alias.scope !2644
  %index.next458 = add nuw i64 %index453, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.hq, label %middle.block459, label %vector.body452, !llvm.loop !2628

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %i.hf, %n.vec451
  br i1 %cmp.n460, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154.preheader489

.lr.ph.i.i154.preheader489:                       ; preds = %vector.memcheck446, %.lr.ph.i.i154.preheader, %middle.block459
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck446 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.hl, %middle.block459 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck446 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.hm, %middle.block459 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader489, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ht, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader489 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.hs, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader489 ] ; 3 uses
  %i.hr = load i32, ptr %.079.i.i156, align 4, !tbaa !247
  store i32 %i.hr, ptr %.010.i.i155, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !247
  %i.hs = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.hs, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i154, !llvm.loop !2629

bb.aj:                                            ; preds = %.thread
  br i1 %i.fm, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hu = phi ptr [ %i.fl, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 7 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 8 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.hv = phi ptr [ %i.fn, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.hw = ptrtoaddr ptr %.0108266 to i64
  %i.hx = ptrtoaddr ptr %.0216268 to i64
  %i.hy = add i64 %i.hw, -4
  %i.hz = sub i64 %i.hy, %i.hx                    ; 3 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.hz, 76
  br i1 %min.iters.check393, label %.lr.ph.i.i161.preheader500, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ic = and i64 %i.hz, -4
  %i.id = add i64 %i.ic, 4                        ; 2 uses
  %i.ie = getelementptr i8, ptr %.0222270, i64 %i.id
  %i.if = getelementptr i8, ptr %.0216268, i64 %i.id
  %bound0395 = icmp ult ptr %.0222270, %i.if
  %bound1396 = icmp ult ptr %.0216268, %i.ie
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i161.preheader500, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ig = shl i64 %n.vec399, 2                    ; 2 uses
  %i.ih = getelementptr i8, ptr %.0222270, i64 %i.ig ; 2 uses
  %i.ii = getelementptr i8, ptr %.0216268, i64 %i.ig
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %i.ij = shl i64 %index401, 2                    ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0222270, i64 %i.ij ; 2 uses
  %next.gep403 = getelementptr i8, ptr %.0216268, i64 %i.ij ; 3 uses
  %i.ik = getelementptr i8, ptr %next.gep403, i64 16 ; 2 uses
  %wide.load404 = load <4 x i32>, ptr %next.gep403, align 4, !tbaa !247, !alias.scope !2646
  %wide.load405 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2646
  %i.il = getelementptr i8, ptr %next.gep402, i64 16
  store <4 x i32> %wide.load404, ptr %next.gep402, align 4, !tbaa !247, !alias.scope !2647, !noalias !2646
  store <4 x i32> %wide.load405, ptr %i.il, align 4, !tbaa !247, !alias.scope !2647, !noalias !2646
  store <4 x i32> zeroinitializer, ptr %next.gep403, align 4, !tbaa !247, !alias.scope !2646
  store <4 x i32> zeroinitializer, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2646
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.im, label %middle.block407, label %vector.body400, !llvm.loop !2633

middle.block407:                                  ; preds = %vector.body400
  %cmp.n408 = icmp eq i64 %i.ib, %n.vec399
  br i1 %cmp.n408, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161.preheader500

.lr.ph.i.i161.preheader500:                       ; preds = %vector.memcheck394, %.lr.ph.i.i161.preheader, %middle.block407
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck394 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.ih, %middle.block407 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck394 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.ii, %middle.block407 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader500, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ip, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader500 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.io, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader500 ] ; 3 uses
  %i.in = load i32, ptr %.079.i.i163, align 4, !tbaa !247
  store i32 %i.in, ptr %.010.i.i162, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !247
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.io, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159, label %.lr.ph.i.i161, !llvm.loop !2634

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block407, %middle.block459, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.iq = phi ptr [ %i.fl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fl, %bb.aj ], [ %i.hu, %bb.ak ], [ %i.fl, %middle.block459 ], [ %i.hu, %middle.block407 ], [ %i.fl, %.lr.ph.i.i154 ], [ %i.hu, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block459 ], [ %.2, %middle.block407 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block459 ], [ %.0234275, %middle.block407 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block459 ], [ %.0228272, %middle.block407 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block459 ], [ %.0102262, %middle.block407 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block459 ], [ %.099259, %middle.block407 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.ir = phi ptr [ %i.fn, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fn, %bb.aj ], [ %i.hv, %bb.ak ], [ %i.fn, %middle.block459 ], [ %i.hv, %middle.block407 ], [ %i.fn, %.lr.ph.i.i154 ], [ %i.hv, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.hl, %middle.block459 ], [ %i.ih, %middle.block407 ], [ %i.ht, %.lr.ph.i.i154 ], [ %i.ip, %.lr.ph.i.i161 ]
  %i.is = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.iq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ir, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.it = load ptr, ptr %i.d, align 8, !tbaa !250 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.it, %i.ir
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  %i.iu = ptrtoaddr ptr %i.it to i64
  %i.iv = ptrtoaddr ptr %i.ir to i64
  %i.iw = add i64 %i.iv, -4
  %i.ix = sub i64 %i.iw, %i.iu                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 2
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check470 = icmp ult i64 %i.ix, 76
  br i1 %min.iters.check470, label %.lr.ph.i.i168.preheader488, label %vector.memcheck471

vector.memcheck471:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ja = and i64 %i.ix, -4
  %i.jb = add i64 %i.ja, 4                        ; 2 uses
  %i.jc = getelementptr i8, ptr %i.is, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.it, i64 %i.jb
  %bound0472 = icmp ult ptr %i.is, %i.jd
  %bound1473 = icmp ult ptr %i.it, %i.jc
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %.lr.ph.i.i168.preheader488, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck471
  %n.vec476 = and i64 %i.iz, 9223372036854775800  ; 3 uses
  %i.je = shl i64 %n.vec476, 2                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.is, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.it, i64 %i.je
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next483, %vector.body477 ] ; 2 uses
  %i.jh = shl i64 %index478, 2                    ; 2 uses
  %next.gep479 = getelementptr i8, ptr %i.is, i64 %i.jh ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.it, i64 %i.jh ; 3 uses
  %i.ji = getelementptr i8, ptr %next.gep480, i64 16 ; 2 uses
  %wide.load481 = load <4 x i32>, ptr %next.gep480, align 4, !tbaa !247, !alias.scope !2648
  %wide.load482 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2648
  %i.jj = getelementptr i8, ptr %next.gep479, i64 16
  store <4 x i32> %wide.load481, ptr %next.gep479, align 4, !tbaa !247, !alias.scope !2649, !noalias !2648
  store <4 x i32> %wide.load482, ptr %i.jj, align 4, !tbaa !247, !alias.scope !2649, !noalias !2648
  store <4 x i32> zeroinitializer, ptr %next.gep480, align 4, !tbaa !247, !alias.scope !2648
  store <4 x i32> zeroinitializer, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2648
  %index.next483 = add nuw i64 %index478, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next483, %n.vec476
  br i1 %i.jk, label %middle.block484, label %vector.body477, !llvm.loop !2638

middle.block484:                                  ; preds = %vector.body477
  %cmp.n485 = icmp eq i64 %i.iz, %n.vec476
  br i1 %cmp.n485, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168.preheader488

.lr.ph.i.i168.preheader488:                       ; preds = %vector.memcheck471, %.lr.ph.i.i168.preheader, %middle.block484
  %.010.i.i169.ph = phi ptr [ %i.is, %vector.memcheck471 ], [ %i.is, %.lr.ph.i.i168.preheader ], [ %i.jf, %middle.block484 ]
  %.079.i.i170.ph = phi ptr [ %i.it, %vector.memcheck471 ], [ %i.it, %.lr.ph.i.i168.preheader ], [ %i.jg, %middle.block484 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader488, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.jn, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader488 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.jm, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader488 ] ; 3 uses
  %i.jl = load i32, ptr %.079.i.i170, align 4, !tbaa !247
  store i32 %i.jl, ptr %.010.i.i169, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.jm, %i.ir
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173, label %.lr.ph.i.i168, !llvm.loop !2639

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit173: ; preds = %.lr.ph.i.i168, %middle.block484, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !250
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx254, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 17 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ey, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.ew, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.eu, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 12 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 12 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ez, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099290, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !247 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !247 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !223
  %i.af = load i64, ptr %i.y, align 8, !tbaa !223
  %i.ag = icmp ult i64 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ah = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ai = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ah, %.thread24.i ] ; 5 uses
  %i.aj = add i64 %.022.lcssa.i, 2
  %i.ak = call i64 @llvm.umax.i64(i64 %.0, i64 %i.aj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.ak, i64 %.0238282) ; 4 uses
  %i.al = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !247
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !247
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105287 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.as = icmp eq ptr %.0108286, %.0226284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !250
  br i1 %i.as, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.idx255 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.0102288, i64 %.idx255 ; 9 uses
  %i.au = icmp eq ptr %.0232283, %i.o
  br i1 %i.au, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.av = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.aw = trunc nuw i8 %.0105287 to i1
  br i1 %i.aw, label %bb.j, label %.thread345

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !223
  %i.ay = load i64, ptr %.0232283, align 8, !tbaa !223
  %i.az = icmp ult i64 %i.ax, %i.ay               ; 7 uses
  %i.ba = zext i1 %i.az to i8                     ; 4 uses
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_:bb.a

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i81
  %i.fj = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !223
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !223
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !223
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !223
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i81
  %i.fn = icmp eq ptr %i.az, %.sroa.0260.0338
  br i1 %i.fn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.fo, ptr %i.az, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.fp = load ptr, ptr %28, align 8, !tbaa !330  ; 2 uses
  %i.fq = load ptr, ptr %29, align 8, !tbaa !330  ; 3 uses
  %.not303 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.at, %bb.aa ], [ %i.fq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ev, %bb.aa ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.fr, %bb.aa ], [ %i.fq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85 ]
  %.161 = phi i8 [ %i.eu, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.m, %bb.ab
  %i.fs = phi i1 [ %i.et, %bb.ab ], [ %i.bp, %bb.m ], [ %i.bp, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.bp, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.at, %bb.m ], [ %i.at, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.at, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.u, %bb.m ], [ %i.u, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.u, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.fs, true
  %i.ft = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.ft
  store ptr %i.at, ptr %27, align 8, !tbaa !330
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.fv = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.fv to i64
  %i.fw = add i64 %.063340, %.neg                 ; 2 uses
  %i.fx = icmp ne i64 %i.aq, 0
  %.neg69 = sext i1 %i.fx to i64
  %i.fy = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.fz = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fz, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !2689

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ga = phi ptr [ %i.at, %.sink.split.i ], [ %i.u, %bb.f ]
  %.4 = phi i64 [ %i.fy, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.fu, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.fw, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gb = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gc = phi ptr [ %i.h, %bb.a ], [ %i.ga, %.thread.loopexit ] ; 8 uses
  %.1392 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.h, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.m, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gb, %.thread.loopexit ]
  %i.gd = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.k, ptr %32, align 8, !tbaa !330
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.k, i64 %.neg305 ; 7 uses
  %i.gf = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.gf, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.gd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.gg = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !247, !noalias !2738
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.gi = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.gj, %bb.af ] ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4 ; 4 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !247, !noalias !2738
  %i.gl = icmp slt i32 %i.gk, %i.gh
  br i1 %i.gl, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.gj, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.gi, %bb.ae ], [ %i.gj, %bb.af ] ; 8 uses
  %i.gm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.gn = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %i.gc, i64 %i.go  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gq = add i64 %i.gm, -4
  %i.gr = sub i64 %i.gq, %i.gn                    ; 4 uses
  %i.gs = lshr i64 %i.gr, 2
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.gr, 76
  br i1 %min.iters.check490, label %.lr.ph.i.i89.preheader578, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.lr.ph.i.i89.preheader
  %i.gu = and i64 %i.gr, 3
  %i.gv = getelementptr i8, ptr %i.gc, i64 %i.gu
  %.not561 = and i64 %i.gr, -4
  %i.gw = xor i64 %.not561, -4
  %i.gx = getelementptr i8, ptr %.lcssa.i, i64 %i.gw
  %bound0492 = icmp ult ptr %i.gv, %.lcssa.i
  %bound1493 = icmp ult ptr %i.gx, %i.gp
  %found.conflict494 = and i1 %bound0492, %bound1493
  br i1 %found.conflict494, label %.lr.ph.i.i89.preheader578, label %vector.ph495

vector.ph495:                                     ; preds = %vector.memcheck491
  %n.vec496 = and i64 %i.gt, 9223372036854775800  ; 3 uses
  %i.gy = mul i64 %n.vec496, -4                   ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gp, i64 %i.gy
  %i.ha = getelementptr i8, ptr %.lcssa.i, i64 %i.gy
  br label %vector.body497

vector.body497:                                   ; preds = %vector.body497, %vector.ph495
  %index498 = phi i64 [ 0, %vector.ph495 ], [ %index.next503, %vector.body497 ] ; 2 uses
  %i.hb = mul i64 %index498, -4                   ; 2 uses
  %next.gep499 = getelementptr i8, ptr %i.gp, i64 %i.hb ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.lcssa.i, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %next.gep500, i64 -16 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %next.gep500, i64 -32 ; 2 uses
  %wide.load501 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !247, !alias.scope !2739, !noalias !2740
  %wide.load502 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !247, !alias.scope !2739, !noalias !2740
  %i.he = getelementptr inbounds i8, ptr %next.gep499, i64 -16
  %i.hf = getelementptr inbounds i8, ptr %next.gep499, i64 -32
  store <4 x i32> %wide.load501, ptr %i.he, align 4, !tbaa !247, !alias.scope !2741, !noalias !2742
  store <4 x i32> %wide.load502, ptr %i.hf, align 4, !tbaa !247, !alias.scope !2741, !noalias !2742
  store <4 x i32> zeroinitializer, ptr %i.hc, align 4, !tbaa !247, !alias.scope !2739, !noalias !2740
  store <4 x i32> zeroinitializer, ptr %i.hd, align 4, !tbaa !247, !alias.scope !2739, !noalias !2740
  %index.next503 = add nuw i64 %index498, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.hg, label %middle.block504, label %vector.body497, !llvm.loop !2699

middle.block504:                                  ; preds = %vector.body497
  %cmp.n505 = icmp eq i64 %i.gt, %n.vec496
  br i1 %cmp.n505, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89.preheader578

.lr.ph.i.i89.preheader578:                        ; preds = %vector.memcheck491, %.lr.ph.i.i89.preheader, %middle.block504
  %.sroa.0.0.i90.ph = phi ptr [ %i.gp, %vector.memcheck491 ], [ %i.gp, %.lr.ph.i.i89.preheader ], [ %i.gz, %middle.block504 ]
  %.ph579 = phi ptr [ %.lcssa.i, %vector.memcheck491 ], [ %.lcssa.i, %.lr.ph.i.i89.preheader ], [ %i.ha, %middle.block504 ]
  br label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.preheader578, %.lr.ph.i.i89
  %.sroa.0.0.i90 = phi ptr [ %i.hj, %.lr.ph.i.i89 ], [ %.sroa.0.0.i90.ph, %.lr.ph.i.i89.preheader578 ]
  %i.hh = phi ptr [ %i.hi, %.lr.ph.i.i89 ], [ %.ph579, %.lr.ph.i.i89.preheader578 ]
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4 ; 4 uses
  %i.hj = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !247, !noalias !2740
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !247, !noalias !2740
  store i32 0, ptr %i.hi, align 4, !tbaa !247, !noalias !2740
  %.not.i.i91 = icmp eq ptr %i.hi, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, label %.lr.ph.i.i89, !llvm.loop !2700

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92: ; preds = %.lr.ph.i.i89, %middle.block504, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92, %bb.ac
  %.sroa.0220.5 = phi ptr [ %i.gc, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0220.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0235.5 = phi ptr [ %i.gp, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0235.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0249.6 = phi ptr [ %i.hl, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit92 ], [ %.sroa.0249.0.lcssa, %bb.ac ] ; 2 uses
  %.sroa.0220.5518 = ptrtoaddr ptr %.sroa.0220.5 to i64
  %.not.i93 = icmp eq i64 %.neg305, 0
  %.not17.i = icmp eq ptr %.sroa.0220.5, %.sroa.0235.5
  %or.cond = select i1 %.not.i93, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0120.0.ph = phi ptr [ %i.hr, %bb.ah ], [ %.sroa.0249.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.hs, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0235.5, %bb.ag ]
  %i.hm = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0120.0 = phi ptr [ %i.hr, %bb.ai ], [ %.sroa.0120.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.hn, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !247, !noalias !2743 ; 2 uses
  %i.hp = load i32, ptr %i.hm, align 4, !tbaa !247, !noalias !2743 ; 2 uses
  %i.hq = icmp slt i32 %i.ho, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.hq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hs = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 3 uses
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !247, !noalias !2743
  store i32 0, ptr %i.hs, align 4, !tbaa !247, !noalias !2743
  %i.ht = icmp eq ptr %i.hs, %i.ge
  br i1 %i.ht, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !66

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.ho, ptr %i.hr, align 4, !tbaa !247, !noalias !2743
  store i32 0, ptr %i.hn, align 4, !tbaa !247, !noalias !2743
  %i.hu = icmp eq ptr %i.hn, %.sroa.0220.5
  br i1 %i.hu, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !66

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.hr, %bb.ah ], [ %i.hr, %bb.ai ] ; 7 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.ge, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.hn, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 8 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !330, !noalias !2743
  %.not1.i.i94 = icmp eq ptr %.sroa.012.2.i, %.sroa.0220.5
  br i1 %.not1.i.i94, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95.preheader

.lr.ph.i.i95.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %i.hv = ptrtoaddr ptr %.sroa.012.2.i to i64
  %i.hw = add i64 %i.hv, -4
  %i.hx = sub i64 %i.hw, %.sroa.0220.5518         ; 3 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check517 = icmp ult i64 %i.hx, 76
  br i1 %min.iters.check517, label %.lr.ph.i.i95.preheader565, label %vector.memcheck518

vector.memcheck518:                               ; preds = %.lr.ph.i.i95.preheader
  %.not562 = and i64 %i.hx, -4
  %i.ia = xor i64 %.not562, -4                    ; 2 uses
  %i.ib = getelementptr i8, ptr %.sroa.0120.1, i64 %i.ia
  %i.ic = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ia
  %bound0519 = icmp ult ptr %i.ib, %.sroa.012.2.i
  %bound1520 = icmp ult ptr %i.ic, %.sroa.0120.1
  %found.conflict521 = and i1 %bound0519, %bound1520
  br i1 %found.conflict521, label %.lr.ph.i.i95.preheader565, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck518
  %n.vec523 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.id = mul i64 %n.vec523, -4                   ; 2 uses
  %i.ie = getelementptr i8, ptr %.sroa.0120.1, i64 %i.id ; 2 uses
  %i.if = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.id
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.ig = mul i64 %index525, -4                   ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.sroa.0120.1, i64 %i.ig ; 2 uses
  %next.gep527 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ig ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %next.gep527, i64 -16 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %next.gep527, i64 -32 ; 2 uses
  %wide.load528 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !247, !alias.scope !2744, !noalias !2745
  %wide.load529 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !247, !alias.scope !2744, !noalias !2745
  %i.ij = getelementptr inbounds i8, ptr %next.gep526, i64 -16
  %i.ik = getelementptr inbounds i8, ptr %next.gep526, i64 -32
  store <4 x i32> %wide.load528, ptr %i.ij, align 4, !tbaa !247, !alias.scope !2746, !noalias !2747
  store <4 x i32> %wide.load529, ptr %i.ik, align 4, !tbaa !247, !alias.scope !2746, !noalias !2747
  store <4 x i32> zeroinitializer, ptr %i.ih, align 4, !tbaa !247, !alias.scope !2744, !noalias !2745
  store <4 x i32> zeroinitializer, ptr %i.ii, align 4, !tbaa !247, !alias.scope !2744, !noalias !2745
  %index.next530 = add nuw i64 %index525, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.il, label %middle.block531, label %vector.body524, !llvm.loop !2710

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.hz, %n.vec523
  br i1 %cmp.n532, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95.preheader565

.lr.ph.i.i95.preheader565:                        ; preds = %vector.memcheck518, %.lr.ph.i.i95.preheader, %middle.block531
  %.sroa.0.0.i96.ph = phi ptr [ %.sroa.0120.1, %vector.memcheck518 ], [ %.sroa.0120.1, %.lr.ph.i.i95.preheader ], [ %i.ie, %middle.block531 ]
  %.ph566 = phi ptr [ %.sroa.012.2.i, %vector.memcheck518 ], [ %.sroa.012.2.i, %.lr.ph.i.i95.preheader ], [ %i.if, %middle.block531 ]
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95.preheader565, %.lr.ph.i.i95
  %.sroa.0.0.i96 = phi ptr [ %i.io, %.lr.ph.i.i95 ], [ %.sroa.0.0.i96.ph, %.lr.ph.i.i95.preheader565 ]
  %i.im = phi ptr [ %i.in, %.lr.ph.i.i95 ], [ %.ph566, %.lr.ph.i.i95.preheader565 ]
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -4 ; 4 uses
  %i.io = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !247, !noalias !2745
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !247, !noalias !2745
  store i32 0, ptr %i.in, align 4, !tbaa !247, !noalias !2745
  %.not.i.i97 = icmp eq ptr %i.in, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i95, !llvm.loop !2711

bb.aj:                                            ; preds = %.thread
  br i1 %i.gd, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iq = phi ptr [ %i.gc, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1392, %bb.aj ], [ %.sroa.speculated273, %.thread.thread ] ; 3 uses
  %.sroa.0210.0330 = phi ptr [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0333, %.thread.thread ] ; 3 uses
  %.sroa.0220.0328 = phi ptr [ %.sroa.0220.0.lcssa, %bb.aj ], [ %.sroa.0220.0335, %.thread.thread ] ; 3 uses
  %.sroa.0235.0325 = phi ptr [ %.sroa.0235.0.lcssa, %bb.aj ], [ %.sroa.0235.0336, %.thread.thread ] ; 8 uses
  %.sroa.0249.0323 = phi ptr [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0337, %.thread.thread ] ; 7 uses
  %.sroa.0260.0320 = phi ptr [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0338, %.thread.thread ] ; 3 uses
  %.0284317 = phi i64 [ %.0284.lcssa, %bb.aj ], [ %.0284339, %.thread.thread ] ; 3 uses
  %.063314 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063340, %.thread.thread ] ; 3 uses
  %i.ir = phi ptr [ %i.ge, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i99 = icmp eq ptr %.sroa.0235.0325, %.sroa.0220.0328
  br i1 %.not1.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100.preheader

.lr.ph.i.i100.preheader:                          ; preds = %bb.ak
  %i.is = ptrtoaddr ptr %.sroa.0235.0325 to i64
  %i.it = ptrtoaddr ptr %.sroa.0220.0328 to i64
  %i.iu = add i64 %i.is, -4
  %i.iv = sub i64 %i.iu, %i.it                    ; 3 uses
  %i.iw = lshr i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check465 = icmp ult i64 %i.iv, 76
  br i1 %min.iters.check465, label %.lr.ph.i.i100.preheader580, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.lr.ph.i.i100.preheader
  %.not560 = and i64 %i.iv, -4
  %i.iy = xor i64 %.not560, -4                    ; 2 uses
  %i.iz = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.iy
  %i.ja = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.iy
  %bound0467 = icmp ult ptr %i.iz, %.sroa.0235.0325
  %bound1468 = icmp ult ptr %i.ja, %.sroa.0249.0323
  %found.conflict469 = and i1 %bound0467, %bound1468
  br i1 %found.conflict469, label %.lr.ph.i.i100.preheader580, label %vector.ph470

vector.ph470:                                     ; preds = %vector.memcheck466
  %n.vec471 = and i64 %i.ix, 9223372036854775800  ; 3 uses
  %i.jb = mul i64 %n.vec471, -4                   ; 2 uses
  %i.jc = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jb ; 2 uses
  %i.jd = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jb
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.je = mul i64 %index473, -4                   ; 2 uses
  %next.gep474 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.je ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.je ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %next.gep475, i64 -16 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep475, i64 -32 ; 2 uses
  %wide.load476 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !247, !alias.scope !2748, !noalias !2749
  %wide.load477 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !247, !alias.scope !2748, !noalias !2749
  %i.jh = getelementptr inbounds i8, ptr %next.gep474, i64 -16
  %i.ji = getelementptr inbounds i8, ptr %next.gep474, i64 -32
  store <4 x i32> %wide.load476, ptr %i.jh, align 4, !tbaa !247, !alias.scope !2750, !noalias !2751
  store <4 x i32> %wide.load477, ptr %i.ji, align 4, !tbaa !247, !alias.scope !2750, !noalias !2751
  store <4 x i32> zeroinitializer, ptr %i.jf, align 4, !tbaa !247, !alias.scope !2748, !noalias !2749
  store <4 x i32> zeroinitializer, ptr %i.jg, align 4, !tbaa !247, !alias.scope !2748, !noalias !2749
  %index.next478 = add nuw i64 %index473, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.jj, label %middle.block479, label %vector.body472, !llvm.loop !2719

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.ix, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100.preheader580

.lr.ph.i.i100.preheader580:                       ; preds = %vector.memcheck466, %.lr.ph.i.i100.preheader, %middle.block479
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %vector.memcheck466 ], [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.jc, %middle.block479 ]
  %.ph581 = phi ptr [ %.sroa.0235.0325, %vector.memcheck466 ], [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jd, %middle.block479 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader580, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.jm, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader580 ]
  %i.jk = phi ptr [ %i.jl, %.lr.ph.i.i100 ], [ %.ph581, %.lr.ph.i.i100.preheader580 ]
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -4 ; 4 uses
  %i.jm = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !247, !noalias !2749
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !247, !noalias !2749
  store i32 0, ptr %i.jl, align 4, !tbaa !247, !noalias !2749
  %.not.i.i102 = icmp eq ptr %i.jl, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98, label %.lr.ph.i.i100, !llvm.loop !2720

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block479, %middle.block531, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jo = phi ptr [ %i.gc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.gc, %bb.aj ], [ %i.iq, %bb.ak ], [ %i.gc, %middle.block531 ], [ %i.iq, %middle.block479 ], [ %i.gc, %.lr.ph.i.i95 ], [ %i.iq, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1392, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1392, %bb.aj ], [ %.2, %bb.ak ], [ %.1392, %middle.block531 ], [ %.2, %middle.block479 ], [ %.1392, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block531 ], [ %.sroa.0210.0330, %middle.block479 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block531 ], [ %.sroa.0260.0320, %middle.block479 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block531 ], [ %.0284317, %middle.block479 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block531 ], [ %.063314, %middle.block479 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.jp = phi ptr [ %i.ge, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ge, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.ge, %middle.block531 ], [ %i.ir, %middle.block479 ], [ %i.ge, %.lr.ph.i.i95 ], [ %i.ir, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.ie, %middle.block531 ], [ %i.jc, %middle.block479 ], [ %i.io, %.lr.ph.i.i95 ], [ %i.jm, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !321
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !321
  store ptr %i.jo, ptr %36, align 8, !tbaa !330
  store ptr %i.jp, ptr %37, align 8, !tbaa !330
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !330
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.jq = load ptr, ptr %33, align 8, !tbaa !330  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.jr = load ptr, ptr %32, align 8, !tbaa !330  ; 8 uses
  %.not1.i.i104 = icmp eq ptr %i.jr, %i.jp
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit98
  %i.js = ptrtoaddr ptr %i.jr to i64
  %i.jt = ptrtoaddr ptr %i.jp to i64
  %i.ju = add i64 %i.js, -4
  %i.jv = sub i64 %i.ju, %i.jt                    ; 3 uses
  %i.jw = lshr i64 %i.jv, 2
  %i.jx = add nuw nsw i64 %i.jw, 1                ; 2 uses
  %min.iters.check542 = icmp ult i64 %i.jv, 76
  br i1 %min.iters.check542, label %.lr.ph.i.i105.preheader564, label %vector.memcheck543

vector.memcheck543:                               ; preds = %.lr.ph.i.i105.preheader
  %.not563 = and i64 %i.jv, -4
  %i.jy = xor i64 %.not563, -4                    ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jq, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jr, i64 %i.jy
  %bound0544 = icmp ult ptr %i.jz, %i.jr
  %bound1545 = icmp ult ptr %i.ka, %i.jq
  %found.conflict546 = and i1 %bound0544, %bound1545
  br i1 %found.conflict546, label %.lr.ph.i.i105.preheader564, label %vector.ph547

vector.ph547:                                     ; preds = %vector.memcheck543
  %n.vec548 = and i64 %i.jx, 9223372036854775800  ; 3 uses
  %i.kb = mul i64 %n.vec548, -4                   ; 2 uses
  %i.kc = getelementptr i8, ptr %i.jq, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.jr, i64 %i.kb
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next555, %vector.body549 ] ; 2 uses
  %i.ke = mul i64 %index550, -4                   ; 2 uses
  %next.gep551 = getelementptr i8, ptr %i.jq, i64 %i.ke ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.jr, i64 %i.ke ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %next.gep552, i64 -16 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %next.gep552, i64 -32 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE:bb.a
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load ptr, ptr %3, align 8, !tbaa !334, !nonnull !322
  store ptr %i.ag, ptr %7, align 8, !tbaa !327
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter56 = and i64 %5, 3                     ; 3 uses
  %i.ah = icmp ult i64 %5, 4
  br i1 %i.ah, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter60 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ax, %.preheader.i.i.i ] ; 5 uses
  %niter61 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter61.next.3, %.preheader.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ai, align 4, !tbaa !247
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !247
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !247
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !247
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ax = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !5

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %5, 3                     ; 3 uses
  %i.az = icmp ult i64 %5, 4
  br i1 %i.az, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter54 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bp, %bb.d ] ; 5 uses
  %niter55 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter55.next.3, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !247
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !247
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !247
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !247
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bp = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter55.next.3 = add i64 %niter55, 4           ; 2 uses
  %niter55.ncmp.3 = icmp eq i64 %niter55.next.3, %unroll_iter54
  br i1 %niter55.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !5

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bp, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter51, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !247
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bt = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter51
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !2871

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %3, align 8, !tbaa !334, !nonnull !322
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  store ptr %i.bu, ptr %6, align 8, !tbaa !327
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ax, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  call void @llvm.assume(i1 %lcmp.mod59)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter57 = phi i64 [ %epil.iter57.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !247
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter57.next = add i64 %epil.iter57, 1     ; 2 uses
  %epil.iter57.cmp.not = icmp eq i64 %epil.iter57.next, %xtraiter56
  br i1 %epil.iter57.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !2872

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !247    ; 2 uses
  %.not91 = icmp slt i32 %i.b, %i.c
  br i1 %.not91, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i45, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 19 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.d, !llvm.loop !81

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i192.le = ptrtoaddr ptr %.114.i to i64    ; 3 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !254  ; 8 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  %i.t = load ptr, ptr %4, align 8, !tbaa !255    ; 21 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = add i64 %i.d, -4
  %i.w = sub i64 %i.v, %.114.i192.le              ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader312, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = and i64 %i.w, -4
  %i.aa = add i64 %i.z, 4                         ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %i.ac
  %bound1 = icmp ult ptr %.114.i, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader312, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr i8, ptr %.114.i, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ag ; 2 uses
  %next.gep165 = getelementptr i8, ptr %.114.i, i64 %i.ag ; 3 uses
  %i.ah = getelementptr i8, ptr %next.gep165, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !247, !alias.scope !2905
  %wide.load166 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !247, !alias.scope !2905
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !2906, !noalias !2905
  store <4 x i32> %wide.load166, ptr %i.ai, align 4, !tbaa !247, !alias.scope !2906, !noalias !2905
  store <4 x i32> zeroinitializer, ptr %next.gep165, align 4, !tbaa !247, !alias.scope !2905
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !247, !alias.scope !2905
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader312

.lr.ph.i.i.preheader312:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader312, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 3 uses
  %i.ak = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.ak, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !2877

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1730.i = icmp eq i64 %i.s, %i.q
  br i1 %.not1730.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.an = sub i64 %i.s, %i.q
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol

.lr.ph.i40.prol:                                  ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40.prol
  %.031.i.prol = phi i64 [ %i.ao, %.lr.ph.i40.prol ], [ %i.s, %.lr.ph.i40.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.prol ], [ 0, %.lr.ph.i40.preheader ]
  %i.ao = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ao
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !247
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol, !llvm.loop !2878

.lr.ph.i40.prol.loopexit:                         ; preds = %.lr.ph.i40.prol, %.lr.ph.i40.preheader
  %.031.i.unr = phi i64 [ %i.s, %.lr.ph.i40.preheader ], [ %i.ao, %.lr.ph.i40.prol ]
  %i.as = sub i64 %i.q, %i.s
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40
  %.031.i = phi i64 [ %i.bg, %.lr.ph.i40 ], [ %.031.i.unr, %.lr.ph.i40.prol.loopexit ] ; 4 uses
  %i.au = getelementptr [4 x i8], ptr %i.t, i64 %.031.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !247
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ay = getelementptr [4 x i8], ptr %i.t, i64 %.031.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !247
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bc = getelementptr [4 x i8], ptr %i.t, i64 %.031.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -12
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !247
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = add i64 %.031.i, -4                     ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bg
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !247
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not17.i.3 = icmp eq i64 %i.bg, %i.q
  br i1 %.not17.i.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40, !llvm.loop !38

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.idx27.i = shl i64 %i.s, 2                     ; 4 uses
  %i.bk = getelementptr i8, ptr %.114.i, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.bl = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bl, 28
  br i1 %min.iters.check173, label %.lr.ph.i19.i.preheader309, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bo = getelementptr i8, ptr %i.t, i64 %.idx27.i
  %bound0175 = icmp ult ptr %i.t, %i.bk
  %bound1176 = icmp ult ptr %.114.i, %i.bo
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.lr.ph.i19.i.preheader309, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck174
  %n.vec179 = and i64 %i.bn, 9223372036854775800  ; 3 uses
  %i.bp = shl i64 %n.vec179, 2                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.t, i64 %i.bp   ; 2 uses
  %i.br = getelementptr i8, ptr %.114.i, i64 %i.bp
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %i.bs = shl i64 %index181, 2                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.t, i64 %i.bs ; 2 uses
  %next.gep183 = getelementptr i8, ptr %.114.i, i64 %i.bs ; 3 uses
  %i.bt = getelementptr i8, ptr %next.gep183, i64 16 ; 2 uses
  %wide.load184 = load <4 x i32>, ptr %next.gep183, align 4, !tbaa !247, !alias.scope !2907
  %wide.load185 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !247, !alias.scope !2907
  %i.bu = getelementptr i8, ptr %next.gep182, i64 16
  store <4 x i32> %wide.load184, ptr %next.gep182, align 4, !tbaa !247, !alias.scope !2908, !noalias !2907
  store <4 x i32> %wide.load185, ptr %i.bu, align 4, !tbaa !247, !alias.scope !2908, !noalias !2907
  store <4 x i32> zeroinitializer, ptr %next.gep183, align 4, !tbaa !247, !alias.scope !2907
  store <4 x i32> zeroinitializer, ptr %i.bt, align 4, !tbaa !247, !alias.scope !2907
  %index.next186 = add nuw i64 %index181, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.bv, label %middle.block187, label %vector.body180, !llvm.loop !2882

middle.block187:                                  ; preds = %vector.body180
  %cmp.n188 = icmp eq i64 %i.bn, %n.vec179
  br i1 %cmp.n188, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader309

.lr.ph.i19.i.preheader309:                        ; preds = %vector.memcheck174, %.lr.ph.i19.i.preheader, %middle.block187
  %.010.i20.i.ph = phi ptr [ %i.t, %vector.memcheck174 ], [ %i.t, %.lr.ph.i19.i.preheader ], [ %i.bq, %middle.block187 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck174 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.br, %middle.block187 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader309, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.by, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader309 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bx, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader309 ] ; 3 uses
  %i.bw = load i32, ptr %.079.i21.i, align 4, !tbaa !247
  store i32 %i.bw, ptr %.010.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !247
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bx, %i.bk
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !2883

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block187, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.t, %bb.f ], [ %i.bq, %middle.block187 ], [ %i.by, %.lr.ph.i19.i ]
  %.not10.i.i = icmp eq i64 %.idx27.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.cc, %.lr.ph.i25.i ], [ %i.bk, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.cd, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bz = load i32, ptr %.012.i.i, align 4, !tbaa !247
  store i32 %i.bz, ptr %.0911.i.i, align 4, !tbaa !247
  store i32 0, ptr %.012.i.i, align 4, !tbaa !247
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.cc, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !39

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !254
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i42, %bb.j ], [ %i.t, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 11 uses
  %.01626.i = phi ptr [ %i.dh, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 8 uses
  %.01725.i = phi ptr [ %.118.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 5 uses
  %i.cf = icmp eq ptr %.01725.i, %2
  br i1 %i.cf, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i41
  %.027.i193.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.cg = add i64 %i.u, %i.d
  %i.ch = add i64 %i.cg, -4
  %i.ci = add i64 %.114.i192.le, %.027.i193.le
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.cj, 108
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.preheader302, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cm = shl i64 %indvar, 2
  %i.cn = getelementptr i8, ptr %.114.i, i64 %i.cm
  %scevgep = getelementptr i8, ptr %i.cn, i64 4
  %i.co = add i64 %i.u, %i.d
  %i.cp = add i64 %i.co, -4
  %i.cq = add i64 %.114.i192.le, %.027.i193.le
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = and i64 %i.cr, -4                       ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep, i64 %i.cs
  %scevgep195 = getelementptr i8, ptr %.027.i, i64 4
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.cs
  %bound0197 = icmp ult ptr %.01626.i, %scevgep196
  %bound1198 = icmp ult ptr %.027.i, %scevgep194
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.preheader302, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck191
  %n.vec203 = and i64 %i.cl, 9223372036854775800  ; 3 uses
  %i.ct = shl i64 %n.vec203, 2                    ; 2 uses
  %i.cu = getelementptr i8, ptr %.01626.i, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.027.i, i64 %i.ct
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next210, %vector.body204 ] ; 2 uses
  %i.cw = shl i64 %index205, 2                    ; 2 uses
  %next.gep206 = getelementptr i8, ptr %.01626.i, i64 %i.cw ; 2 uses
  %next.gep207 = getelementptr i8, ptr %.027.i, i64 %i.cw ; 3 uses
  %i.cx = getelementptr i8, ptr %next.gep207, i64 16 ; 2 uses
  %wide.load208 = load <4 x i32>, ptr %next.gep207, align 4, !tbaa !247, !alias.scope !2909
  %wide.load209 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !247, !alias.scope !2909
  %i.cy = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x i32> %wide.load208, ptr %next.gep206, align 4, !tbaa !247, !alias.scope !2910, !noalias !2909
  store <4 x i32> %wide.load209, ptr %i.cy, align 4, !tbaa !247, !alias.scope !2910, !noalias !2909
  store <4 x i32> zeroinitializer, ptr %next.gep207, align 4, !tbaa !247, !alias.scope !2909
  store <4 x i32> zeroinitializer, ptr %i.cx, align 4, !tbaa !247, !alias.scope !2909
  %index.next210 = add nuw i64 %index205, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.cz, label %middle.block211, label %vector.body204, !llvm.loop !2887

middle.block211:                                  ; preds = %vector.body204
  %cmp.n212 = icmp eq i64 %i.cl, %n.vec203
  br i1 %cmp.n212, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i.preheader302

.lr.ph.i.i.i.preheader302:                        ; preds = %vector.memcheck191, %.lr.ph.i.i.i.preheader, %middle.block211
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck191 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.cu, %middle.block211 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck191 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.cv, %middle.block211 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader302, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader302 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader302 ] ; 3 uses
  %i.da = load i32, ptr %.079.i.i.i, align 4, !tbaa !247
  store i32 %i.da, ptr %.010.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.db, %i.ce
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2888

bb.g:                                             ; preds = %.lr.ph.i41
  %i.dd = load i32, ptr %.027.i, align 4, !tbaa !247 ; 2 uses
  %i.de = load i32, ptr %.01725.i, align 4, !tbaa !247 ; 2 uses
  %.not20.i = icmp slt i32 %i.dd, %i.de
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.de, ptr %.01626.i, align 4, !tbaa !247
  store i32 0, ptr %.01725.i, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.dd, ptr %.01626.i, align 4, !tbaa !247
  store i32 0, ptr %.027.i, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.027.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.118.i = phi ptr [ %i.df, %bb.h ], [ %.01725.i, %bb.i ]
  %.1.i42 = phi ptr [ %.027.i, %bb.h ], [ %i.dg, %bb.i ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.01626.i, i64 4
  %.not.i43 = icmp eq ptr %.1.i42, %i.ce
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i43, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i41, !llvm.loop !36

.lr.ph.i45:                                       ; preds = %bb.c
  %i.di = ashr exact i64 %i.h, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i45
  %.018.i46 = phi i64 [ %i.di, %.lr.ph.i45 ], [ %.1.i51, %bb.k ] ; 2 uses
  %.01317.i47 = phi ptr [ %1, %.lr.ph.i45 ], [ %.114.i50, %bb.k ] ; 2 uses
  %i.dj = lshr i64 %.018.i46, 1                   ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.01317.i47, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !247
  %.not15.i48 = icmp slt i32 %i.b, %i.dl          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %.neg.i49 = xor i64 %i.dj, -1
  %i.dn = add i64 %.018.i46, %.neg.i49
  %.114.i50 = select i1 %.not15.i48, ptr %.01317.i47, ptr %i.dm ; 9 uses
  %.1.i51 = select i1 %.not15.i48, i64 %i.dj, i64 %i.dn ; 2 uses
  %.not.i52 = icmp eq i64 %.1.i51, 0
  br i1 %.not.i52, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.k, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i50224.le = ptrtoaddr ptr %.114.i50 to i64
  %i.do = ptrtoint ptr %.114.i50 to i64
  %i.dp = sub i64 %i.do, %i.d                     ; 3 uses
  %i.dq = ashr exact i64 %i.dp, 2                 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !254 ; 8 uses
  %.not.i54 = icmp ugt i64 %i.dq, %i.ds
  %i.dt = load ptr, ptr %4, align 8, !tbaa !255   ; 22 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 2 uses
  br i1 %.not.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not8.i.i55 = icmp eq ptr %.114.i50, %1
  br i1 %.not8.i.i55, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %bb.l
  %i.dv = add i64 %.114.i50224.le, -4
  %i.dw = sub i64 %i.dv, %i.d                     ; 3 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.dw, 60
  br i1 %min.iters.check225, label %.lr.ph.i.i56.preheader301, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.lr.ph.i.i56.preheader
  %i.dz = and i64 %i.dw, -4
  %i.ea = add i64 %i.dz, 4                        ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 %i.ea
  %i.ec = getelementptr i8, ptr %1, i64 %i.ea
  %bound0227 = icmp ult ptr %i.dt, %i.ec
  %bound1228 = icmp ult ptr %1, %i.eb
  %found.conflict229 = and i1 %bound0227, %bound1228
  br i1 %found.conflict229, label %.lr.ph.i.i56.preheader301, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %n.vec231 = and i64 %i.dy, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec231, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 %i.ed
  %i.ef = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next238, %vector.body232 ] ; 2 uses
  %i.eg = shl i64 %index233, 2                    ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.dt, i64 %i.eg ; 2 uses
  %next.gep235 = getelementptr i8, ptr %1, i64 %i.eg ; 3 uses
  %i.eh = getelementptr i8, ptr %next.gep235, i64 16 ; 2 uses
  %wide.load236 = load <4 x i32>, ptr %next.gep235, align 4, !tbaa !247, !alias.scope !2911
  %wide.load237 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !247, !alias.scope !2911
  %i.ei = getelementptr i8, ptr %next.gep234, i64 16
  store <4 x i32> %wide.load236, ptr %next.gep234, align 4, !tbaa !247, !alias.scope !2912, !noalias !2911
  store <4 x i32> %wide.load237, ptr %i.ei, align 4, !tbaa !247, !alias.scope !2912, !noalias !2911
  store <4 x i32> zeroinitializer, ptr %next.gep235, align 4, !tbaa !247, !alias.scope !2911
  store <4 x i32> zeroinitializer, ptr %i.eh, align 4, !tbaa !247, !alias.scope !2911
  %index.next238 = add nuw i64 %index233, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.ej, label %middle.block239, label %vector.body232, !llvm.loop !2892

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.dy, %n.vec231
  br i1 %cmp.n240, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60, label %.lr.ph.i.i56.preheader301

.lr.ph.i.i56.preheader301:                        ; preds = %vector.memcheck226, %.lr.ph.i.i56.preheader, %middle.block239
  %.010.i.i57.ph = phi ptr [ %i.dt, %vector.memcheck226 ], [ %i.dt, %.lr.ph.i.i56.preheader ], [ %i.ee, %middle.block239 ]
  %.079.i.i58.ph = phi ptr [ %1, %vector.memcheck226 ], [ %1, %.lr.ph.i.i56.preheader ], [ %i.ef, %middle.block239 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader301, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.em, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader301 ] ; 2 uses
  %.079.i.i58 = phi ptr [ %i.el, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader301 ] ; 3 uses
  %i.ek = load i32, ptr %.079.i.i58, align 4, !tbaa !247
  store i32 %i.ek, ptr %.010.i.i57, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i58, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  %.not.i.i59 = icmp eq ptr %i.el, %.114.i50
  br i1 %.not.i.i59, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60, label %.lr.ph.i.i56, !llvm.loop !2893

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60: ; preds = %.lr.ph.i.i56, %middle.block239, %bb.l
  %.not1730.i61 = icmp eq i64 %i.ds, %i.dq
  br i1 %.not1730.i61, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60
  %i.en = sub i64 %i.ds, %i.dq
  %xtraiter313 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph.i62.prol.loopexit, label %.lr.ph.i62.prol

.lr.ph.i62.prol:                                  ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62.prol
  %.031.i63.prol = phi i64 [ %i.eo, %.lr.ph.i62.prol ], [ %i.ds, %.lr.ph.i62.preheader ]
  %prol.iter315 = phi i64 [ %prol.iter315.next, %.lr.ph.i62.prol ], [ 0, %.lr.ph.i62.preheader ]
  %i.eo = add i64 %.031.i63.prol, -1              ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.eo
  store i32 -2147483648, ptr %i.ep, align 4, !tbaa !247
  %i.eq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.er = add i32 %i.eq, -1
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %prol.iter315.next = add i64 %prol.iter315, 1   ; 2 uses
  %prol.iter315.cmp.not = icmp eq i64 %prol.iter315.next, %xtraiter313
  br i1 %prol.iter315.cmp.not, label %.lr.ph.i62.prol.loopexit, label %.lr.ph.i62.prol, !llvm.loop !2894

.lr.ph.i62.prol.loopexit:                         ; preds = %.lr.ph.i62.prol, %.lr.ph.i62.preheader
  %.031.i63.unr = phi i64 [ %i.ds, %.lr.ph.i62.preheader ], [ %i.eo, %.lr.ph.i62.prol ]
  %i.es = sub i64 %i.dq, %i.ds
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.prol.loopexit, %.lr.ph.i62
  %.031.i63 = phi i64 [ %i.fg, %.lr.ph.i62 ], [ %.031.i63.unr, %.lr.ph.i62.prol.loopexit ] ; 4 uses
  %i.eu = getelementptr [4 x i8], ptr %i.dt, i64 %.031.i63
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4
  store i32 -2147483648, ptr %i.ev, align 4, !tbaa !247
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ey = getelementptr [4 x i8], ptr %i.dt, i64 %.031.i63
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  store i32 -2147483648, ptr %i.ez, align 4, !tbaa !247
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fc = getelementptr [4 x i8], ptr %i.dt, i64 %.031.i63
  %i.fd = getelementptr i8, ptr %i.fc, i64 -12
  store i32 -2147483648, ptr %i.fd, align 4, !tbaa !247
  %i.fe = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ff = add i32 %i.fe, -1
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fg = add i64 %.031.i63, -4                   ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.fg
  store i32 -2147483648, ptr %i.fh, align 4, !tbaa !247
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fj = add i32 %i.fi, -1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not17.i64.3 = icmp eq i64 %i.fg, %i.dq
  br i1 %.not17.i64.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i62, !llvm.loop !38

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.idx27.i65 = shl i64 %i.ds, 2                  ; 4 uses
  %i.fk = getelementptr i8, ptr %1, i64 %.idx27.i65 ; 3 uses
  %.not8.i18.i66 = icmp eq i64 %i.ds, 0
  br i1 %.not8.i18.i66, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67.preheader

.lr.ph.i19.i67.preheader:                         ; preds = %bb.m
  %i.fl = add i64 %.idx27.i65, -4                 ; 2 uses
  %i.fm = lshr exact i64 %i.fl, 2
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.fl, 28
  br i1 %min.iters.check249, label %.lr.ph.i19.i67.preheader299, label %vector.memcheck250

vector.memcheck250:                               ; preds = %.lr.ph.i19.i67.preheader
  %i.fo = getelementptr i8, ptr %i.dt, i64 %.idx27.i65
  %bound0251 = icmp ult ptr %i.dt, %i.fk
  %bound1252 = icmp ult ptr %1, %i.fo
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i19.i67.preheader299, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck250
  %n.vec255 = and i64 %i.fn, 9223372036854775800  ; 3 uses
  %i.fp = shl i64 %n.vec255, 2                    ; 2 uses
  %i.fq = getelementptr i8, ptr %i.dt, i64 %i.fp  ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 %i.fp
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %i.fs = shl i64 %index257, 2                    ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.dt, i64 %i.fs ; 2 uses
  %next.gep259 = getelementptr i8, ptr %1, i64 %i.fs ; 3 uses
  %i.ft = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !247, !alias.scope !2913
  %wide.load261 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !247, !alias.scope !2913
  %i.fu = getelementptr i8, ptr %next.gep258, i64 16
  store <4 x i32> %wide.load260, ptr %next.gep258, align 4, !tbaa !247, !alias.scope !2914, !noalias !2913
  store <4 x i32> %wide.load261, ptr %i.fu, align 4, !tbaa !247, !alias.scope !2914, !noalias !2913
  store <4 x i32> zeroinitializer, ptr %next.gep259, align 4, !tbaa !247, !alias.scope !2913
  store <4 x i32> zeroinitializer, ptr %i.ft, align 4, !tbaa !247, !alias.scope !2913
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.fv, label %middle.block263, label %vector.body256, !llvm.loop !2898

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.fn, %n.vec255
  br i1 %cmp.n264, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67.preheader299

.lr.ph.i19.i67.preheader299:                      ; preds = %vector.memcheck250, %.lr.ph.i19.i67.preheader, %middle.block263
  %.010.i20.i68.ph = phi ptr [ %i.dt, %vector.memcheck250 ], [ %i.dt, %.lr.ph.i19.i67.preheader ], [ %i.fq, %middle.block263 ]
  %.079.i21.i69.ph = phi ptr [ %1, %vector.memcheck250 ], [ %1, %.lr.ph.i19.i67.preheader ], [ %i.fr, %middle.block263 ]
  br label %.lr.ph.i19.i67

.lr.ph.i19.i67:                                   ; preds = %.lr.ph.i19.i67.preheader299, %.lr.ph.i19.i67
  %.010.i20.i68 = phi ptr [ %i.fy, %.lr.ph.i19.i67 ], [ %.010.i20.i68.ph, %.lr.ph.i19.i67.preheader299 ] ; 2 uses
  %.079.i21.i69 = phi ptr [ %i.fx, %.lr.ph.i19.i67 ], [ %.079.i21.i69.ph, %.lr.ph.i19.i67.preheader299 ] ; 3 uses
  %i.fw = load i32, ptr %.079.i21.i69, align 4, !tbaa !247
  store i32 %i.fw, ptr %.010.i20.i68, align 4, !tbaa !247
  store i32 0, ptr %.079.i21.i69, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %.079.i21.i69, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.010.i20.i68, i64 4 ; 2 uses
  %.not.i22.i70 = icmp eq ptr %i.fx, %i.fk
  br i1 %.not.i22.i70, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67, !llvm.loop !2899

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71: ; preds = %.lr.ph.i19.i67, %middle.block263, %bb.m
  %.0.lcssa.i23.i72 = phi ptr [ %i.dt, %bb.m ], [ %i.fq, %middle.block263 ], [ %i.fy, %.lr.ph.i19.i67 ]
  %.not10.i.i73 = icmp eq i64 %.idx27.i65, %i.dp
  br i1 %.not10.i.i73, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i25.i74

.lr.ph.i25.i74:                                   ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71, %.lr.ph.i25.i74
  %.012.i.i75 = phi ptr [ %i.gc, %.lr.ph.i25.i74 ], [ %i.fk, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71 ] ; 3 uses
  %.0911.i.i76 = phi ptr [ %i.gd, %.lr.ph.i25.i74 ], [ %.0.lcssa.i23.i72, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71 ] ; 2 uses
  %i.fz = load i32, ptr %.012.i.i75, align 4, !tbaa !247
  store i32 %i.fz, ptr %.0911.i.i76, align 4, !tbaa !247
  store i32 0, ptr %.012.i.i75, align 4, !tbaa !247
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i75, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i76, i64 4
  %.not.i26.i77 = icmp eq ptr %i.gc, %.114.i50
  br i1 %.not.i26.i77, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i25.i74, !llvm.loop !39

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78: ; preds = %.lr.ph.i62.prol.loopexit, %.lr.ph.i62, %.lr.ph.i25.i74, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i60, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i71
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !254
  %.not28.i = icmp eq ptr %.114.i50, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dp
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.q
  %indvar268 = phi i64 [ 0, %.lr.ph.i79.preheader ], [ %indvar.next269, %bb.q ] ; 2 uses
  %.031.i80 = phi ptr [ %1, %.lr.ph.i79.preheader ], [ %.1.i82, %bb.q ] ; 3 uses
  %.01930.i = phi ptr [ %i.ge, %.lr.ph.i79.preheader ], [ %.120.i, %bb.q ] ; 9 uses
  %.02129.i = phi ptr [ %.114.i50, %.lr.ph.i79.preheader ], [ %i.hf, %bb.q ] ; 6 uses
  %i.gf = icmp eq ptr %0, %.031.i80
  br i1 %i.gf, label %.lr.ph.i.i.i84.preheader, label %bb.n

.lr.ph.i.i.i84.preheader:                         ; preds = %.lr.ph.i79
  %.01930.i271.le = ptrtoaddr ptr %.01930.i to i64 ; 2 uses
  %i.gg = add i64 %.01930.i271.le, -4
  %i.gh = sub i64 %i.gg, %i.du                    ; 2 uses
  %i.gi = lshr i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check279 = icmp ult i64 %i.gh, 108
  br i1 %min.iters.check279, label %.lr.ph.i.i.i84.preheader293, label %vector.memcheck267

vector.memcheck267:                               ; preds = %.lr.ph.i.i.i84.preheader
  %i.gk = shl i64 %indvar268, 2
  %i.gl = sub nuw nsw i64 -4, %i.gk
  %scevgep270 = getelementptr i8, ptr %.114.i50, i64 %i.gl
  %reass.sub = sub i64 %.01930.i271.le, %i.du
  %i.gm = add i64 %reass.sub, -4
  %i.gn = lshr i64 %i.gm, 2
  %i.go = mul i64 %i.gn, -4                       ; 2 uses
  %scevgep272 = getelementptr i8, ptr %scevgep270, i64 %i.go
  %scevgep273 = getelementptr i8, ptr %.01930.i, i64 -4
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.go
  %bound0275 = icmp ult ptr %scevgep272, %.01930.i
  %bound1276 = icmp ult ptr %scevgep274, %.02129.i
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %.lr.ph.i.i.i84.preheader293, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck267
  %n.vec281 = and i64 %i.gj, 9223372036854775800  ; 3 uses
  %i.gp = mul i64 %n.vec281, -4                   ; 2 uses
  %i.gq = getelementptr i8, ptr %.02129.i, i64 %i.gp
  %i.gr = getelementptr i8, ptr %.01930.i, i64 %i.gp
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.gs = mul i64 %index283, -4                   ; 2 uses
  %next.gep284 = getelementptr i8, ptr %.02129.i, i64 %i.gs ; 2 uses
  %next.gep285 = getelementptr i8, ptr %.01930.i, i64 %i.gs ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %next.gep285, i64 -16 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %next.gep285, i64 -32 ; 2 uses
  %wide.load286 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !247, !alias.scope !2915
  %wide.load287 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !247, !alias.scope !2915
  %i.gv = getelementptr inbounds i8, ptr %next.gep284, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %next.gep284, i64 -32
  store <4 x i32> %wide.load286, ptr %i.gv, align 4, !tbaa !247, !alias.scope !2916, !noalias !2915
  store <4 x i32> %wide.load287, ptr %i.gw, align 4, !tbaa !247, !alias.scope !2916, !noalias !2915
  store <4 x i32> zeroinitializer, ptr %i.gt, align 4, !tbaa !247, !alias.scope !2915
  store <4 x i32> zeroinitializer, ptr %i.gu, align 4, !tbaa !247, !alias.scope !2915
  %index.next288 = add nuw i64 %index283, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.gx, label %middle.block289, label %vector.body282, !llvm.loop !2903

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.gj, %n.vec281
  br i1 %cmp.n290, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i84.preheader293

.lr.ph.i.i.i84.preheader293:                      ; preds = %vector.memcheck267, %.lr.ph.i.i.i84.preheader, %middle.block289
  %.010.i.i.i85.ph = phi ptr [ %.02129.i, %vector.memcheck267 ], [ %.02129.i, %.lr.ph.i.i.i84.preheader ], [ %i.gq, %middle.block289 ]
  %.079.i.i.i86.ph = phi ptr [ %.01930.i, %vector.memcheck267 ], [ %.01930.i, %.lr.ph.i.i.i84.preheader ], [ %i.gr, %middle.block289 ]
  br label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %.lr.ph.i.i.i84.preheader293, %.lr.ph.i.i.i84
  %.010.i.i.i85 = phi ptr [ %i.gz, %.lr.ph.i.i.i84 ], [ %.010.i.i.i85.ph, %.lr.ph.i.i.i84.preheader293 ]
  %.079.i.i.i86 = phi ptr [ %i.gy, %.lr.ph.i.i.i84 ], [ %.079.i.i.i86.ph, %.lr.ph.i.i.i84.preheader293 ]
  %i.gy = getelementptr inbounds i8, ptr %.079.i.i.i86, i64 -4 ; 4 uses
  %i.gz = getelementptr inbounds i8, ptr %.010.i.i.i85, i64 -4 ; 2 uses
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !247
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !247
  store i32 0, ptr %i.gy, align 4, !tbaa !247
  %.not.i.i.i87 = icmp eq ptr %i.dt, %i.gy
  br i1 %.not.i.i.i87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i84, !llvm.loop !2904

bb.n:                                             ; preds = %.lr.ph.i79
  %i.hb = getelementptr inbounds i8, ptr %.01930.i, i64 -4 ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %.031.i80, i64 -4 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !247 ; 2 uses
  %i.he = load i32, ptr %i.hb, align 4, !tbaa !247 ; 2 uses
  %.not24.i81 = icmp slt i32 %i.hd, %i.he
  %i.hf = getelementptr i8, ptr %.02129.i, i64 -4 ; 3 uses
  br i1 %.not24.i81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.hd, ptr %i.hf, align 4, !tbaa !247
  store i32 0, ptr %i.hc, align 4, !tbaa !247
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !247
  store i32 0, ptr %i.hb, align 4, !tbaa !247
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.120.i = phi ptr [ %.01930.i, %bb.o ], [ %i.hb, %bb.p ] ; 2 uses
  %.1.i82 = phi ptr [ %i.hc, %bb.o ], [ %.031.i80, %bb.p ]
  %.not.i83 = icmp eq ptr %i.dt, %.120.i
  %indvar.next269 = add i64 %indvar268, 1
  br i1 %.not.i83, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i79, !llvm.loop !82

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.q, %.lr.ph.i.i.i84, %middle.block211, %middle.block289, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = ptrtoaddr ptr %5 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::range_xbuf.66", align 8 ; 6 uses
  %12 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %14 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not76 = icmp ugt i64 %4, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %11, align 8, !tbaa !340
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !341
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !342
  %i.f = load ptr, ptr %7, align 8, !tbaa !334, !nonnull !322
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.f, ptr %10, align 8, !tbaa !327
  call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_10range_xbufIS5_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %0, align 4, !tbaa !247    ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !247
  %.not91 = icmp slt i32 %i.i, %i.j
  br i1 %.not91, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 4, !tbaa !247
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.m = load i32, ptr %1, align 4, !tbaa !247
  store i32 %i.m, ptr %0, align 4, !tbaa !247
  store i32 %i.i, ptr %1, align 4, !tbaa !247
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.g, 16
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %7, align 8, !tbaa !334, !nonnull !322
  store ptr %i.q, ptr %12, align 8, !tbaa !327
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.r = icmp ugt i64 %3, %4
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.s = lshr i64 %3, 1                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %.not16.i = icmp eq ptr %2, %1
  %.pre = ptrtoint ptr %1 to i64                  ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.u = ptrtoint ptr %2 to i64
  %i.v = sub i64 %i.u, %.pre
  %i.w = ashr exact i64 %i.v, 2
  %i.x = load i32, ptr %i.t, align 4, !tbaa !247
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01317.i = phi ptr [ %1, %.lr.ph.i ], [ %.114.i, %bb.k ] ; 2 uses
  %i.y = lshr i64 %.018.i, 1                      ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !247
  %.not15.i = icmp slt i32 %i.x, %i.aa            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.neg.i = xor i64 %i.y, -1
  %i.ac = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.ab ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.y, i64 %i.ac ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.k
  %.pre104 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit
  %.pre-phi105 = phi i64 [ %.pre104, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %1, %bb.j ]
  %i.ad = sub i64 %.pre-phi105, %.pre
  %i.ae = ashr exact i64 %i.ad, 2
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.af = lshr i64 %4, 1                          ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %.not16.i78 = icmp eq ptr %1, %0
  %.pre102 = ptrtoint ptr %0 to i64               ; 3 uses
  br i1 %.not16.i78, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.l
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ah, %.pre102
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !247
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i79
  %.018.i80 = phi i64 [ %i.aj, %.lr.ph.i79 ], [ %.1.i85, %bb.m ] ; 2 uses
  %.01317.i81 = phi ptr [ %0, %.lr.ph.i79 ], [ %.114.i84, %bb.m ] ; 2 uses
  %i.al = lshr i64 %.018.i80, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.01317.i81, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !247
  %.not15.i82 = icmp slt i32 %i.an, %i.ak         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.neg.i83 = xor i64 %i.al, -1
  %i.ap = add i64 %.018.i80, %.neg.i83
  %.114.i84 = select i1 %.not15.i82, ptr %i.ao, ptr %.01317.i81 ; 3 uses
  %.1.i85 = select i1 %.not15.i82, i64 %i.ap, i64 %i.al ; 2 uses
  %.not.i86 = icmp eq i64 %.1.i85, 0
  br i1 %.not.i86, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !81

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre106 = ptrtoint ptr %.114.i84 to i64
  br label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.pre102, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.aq = sub i64 %.pre-phi107, %.pre102
  %i.ar = ashr exact i64 %i.aq, 2
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 14 uses
  %.070 = phi i64 [ %i.s, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.ae, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.t, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 27 uses
  %.0139 = ptrtoaddr ptr %.0 to i64               ; 2 uses
  %.071129 = ptrtoaddr ptr %.071 to i64           ; 2 uses
  %i.as = sub i64 %3, %.070                       ; 3 uses
  %i.at = icmp ule i64 %i.as, %.069
  %.not.i88 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.at, %.not.i88
  br i1 %or.cond.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not8.i.i = icmp eq ptr %1, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.au = add i64 %.071129, -4
  %i.av = sub i64 %i.au, %9                       ; 3 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader266, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ay = and i64 %i.av, -4
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  %bound0 = icmp ult ptr %5, %i.bb
  %bound1 = icmp ult ptr %1, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.bc = shl i64 %n.vec, 2                       ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 %i.bc     ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.bf ; 2 uses
  %next.gep129 = getelementptr i8, ptr %1, i64 %i.bf ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !247, !alias.scope !2947
  %wide.load130 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !247, !alias.scope !2947
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !2948, !noalias !2947
  store <4 x i32> %wide.load130, ptr %i.bh, align 4, !tbaa !247, !alias.scope !2948, !noalias !2947
  store <4 x i32> zeroinitializer, ptr %next.gep129, align 4, !tbaa !247, !alias.scope !2947
  store <4 x i32> zeroinitializer, ptr %i.bg, align 4, !tbaa !247, !alias.scope !2947
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !2920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader266

.lr.ph.i.i.preheader266:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.preheader ], [ %i.bd, %middle.block ]
  %.079.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader266, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader266 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader266 ] ; 3 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %.071
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !2921

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.p
  %.0.lcssa.i.i = phi ptr [ %5, %bb.p ], [ %i.bd, %middle.block ], [ %i.bl, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i165 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %.not8.i37.i = icmp eq ptr %.0, %1
  br i1 %.not8.i37.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bm = add i64 %9, -4
  %i.bn = sub i64 %i.bm, %.0139                   ; 3 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.bn, 76
  br i1 %min.iters.check139, label %.lr.ph.i38.i.preheader265, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i38.i.preheader
  %.not257 = and i64 %i.bn, -4
  %i.bq = xor i64 %.not257, -4                    ; 2 uses
  %i.br = getelementptr i8, ptr %.071, i64 %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  %bound0141 = icmp ult ptr %i.br, %1
  %bound1142 = icmp ult ptr %i.bs, %.071
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph.i38.i.preheader265, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck140
  %n.vec145 = and i64 %i.bp, 9223372036854775800  ; 3 uses
  %i.bt = mul i64 %n.vec145, -4                   ; 2 uses
  %i.bu = getelementptr i8, ptr %.071, i64 %i.bt
  %i.bv = getelementptr i8, ptr %1, i64 %i.bt
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.bw = mul i64 %index147, -4                   ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.071, i64 %i.bw ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep149, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep149, i64 -32 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !247, !alias.scope !2949
  %wide.load151 = load <4 x i32>, ptr %i.by, align 4, !tbaa !247, !alias.scope !2949
  %i.bz = getelementptr inbounds i8, ptr %next.gep148, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep148, i64 -32
  store <4 x i32> %wide.load150, ptr %i.bz, align 4, !tbaa !247, !alias.scope !2950, !noalias !2949
  store <4 x i32> %wide.load151, ptr %i.ca, align 4, !tbaa !247, !alias.scope !2950, !noalias !2949
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !247, !alias.scope !2949
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !247, !alias.scope !2949
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.cb, label %middle.block153, label %vector.body146, !llvm.loop !2925

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.bp, %n.vec145
  br i1 %cmp.n154, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader265

.lr.ph.i38.i.preheader265:                        ; preds = %vector.memcheck140, %.lr.ph.i38.i.preheader, %middle.block153
  %.010.i39.i.ph = phi ptr [ %.071, %vector.memcheck140 ], [ %.071, %.lr.ph.i38.i.preheader ], [ %i.bu, %middle.block153 ]
  %.079.i40.i.ph = phi ptr [ %1, %vector.memcheck140 ], [ %1, %.lr.ph.i38.i.preheader ], [ %i.bv, %middle.block153 ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader265, %.lr.ph.i38.i
  %.010.i39.i = phi ptr [ %i.cd, %.lr.ph.i38.i ], [ %.010.i39.i.ph, %.lr.ph.i38.i.preheader265 ]
  %.079.i40.i = phi ptr [ %i.cc, %.lr.ph.i38.i ], [ %.079.i40.i.ph, %.lr.ph.i38.i.preheader265 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i40.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i39.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247
  store i32 0, ptr %i.cc, align 4, !tbaa !247
  %.not.i41.i = icmp eq ptr %.0, %i.cc
  br i1 %.not.i41.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i, !llvm.loop !2926

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i38.i, %middle.block153, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %.not8.i43.i = icmp eq ptr %5, %.0.lcssa.i.i
  br i1 %.not8.i43.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.cf = add i64 %.0.lcssa.i.i165, -4
  %i.cg = sub i64 %i.cf, %8                       ; 3 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.cg, 76
  br i1 %min.iters.check164, label %.lr.ph.i44.i.preheader262, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i44.i.preheader
  %i.cj = and i64 %i.cg, -4
  %i.ck = add i64 %i.cj, 4                        ; 2 uses
  %i.cl = getelementptr i8, ptr %.0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %5, i64 %i.ck
  %bound0166 = icmp ult ptr %.0, %i.cm
  %bound1167 = icmp ult ptr %5, %i.cl
  %found.conflict168 = and i1 %bound0166, %bound1167
  br i1 %found.conflict168, label %.lr.ph.i44.i.preheader262, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck165
  %n.vec170 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cn = shl i64 %n.vec170, 2                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0, i64 %i.cn    ; 2 uses
  %i.cp = getelementptr i8, ptr %5, i64 %i.cn
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.cq = shl i64 %index172, 2                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.0, i64 %i.cq ; 2 uses
  %next.gep174 = getelementptr i8, ptr %5, i64 %i.cq ; 3 uses
  %i.cr = getelementptr i8, ptr %next.gep174, i64 16 ; 2 uses
  %wide.load175 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !247, !alias.scope !2951
  %wide.load176 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !247, !alias.scope !2951
  %i.cs = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x i32> %wide.load175, ptr %next.gep173, align 4, !tbaa !247, !alias.scope !2952, !noalias !2951
  store <4 x i32> %wide.load176, ptr %i.cs, align 4, !tbaa !247, !alias.scope !2952, !noalias !2951
  store <4 x i32> zeroinitializer, ptr %next.gep174, align 4, !tbaa !247, !alias.scope !2951
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !247, !alias.scope !2951
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.ct, label %middle.block178, label %vector.body171, !llvm.loop !2930

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.ci, %n.vec170
  br i1 %cmp.n179, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader262

.lr.ph.i44.i.preheader262:                        ; preds = %vector.memcheck165, %.lr.ph.i44.i.preheader, %middle.block178
  %.010.i45.i.ph = phi ptr [ %.0, %vector.memcheck165 ], [ %.0, %.lr.ph.i44.i.preheader ], [ %i.co, %middle.block178 ]
  %.079.i46.i.ph = phi ptr [ %5, %vector.memcheck165 ], [ %5, %.lr.ph.i44.i.preheader ], [ %i.cp, %middle.block178 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader262, %.lr.ph.i44.i
  %.010.i45.i = phi ptr [ %i.cw, %.lr.ph.i44.i ], [ %.010.i45.i.ph, %.lr.ph.i44.i.preheader262 ] ; 2 uses
  %.079.i46.i = phi ptr [ %i.cv, %.lr.ph.i44.i ], [ %.079.i46.i.ph, %.lr.ph.i44.i.preheader262 ] ; 3 uses
  %i.cu = load i32, ptr %.079.i46.i, align 4, !tbaa !247
  store i32 %i.cu, ptr %.010.i45.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i46.i, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i46.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i45.i, i64 4 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.cv, %.0.lcssa.i.i
  br i1 %.not.i47.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i, !llvm.loop !2931

bb.q:                                             ; preds = %bb.n
  %.not34.i = icmp ugt i64 %i.as, %6
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not35.i = icmp eq i64 %3, %.070
  br i1 %.not35.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not8.i50.i = icmp eq ptr %.0, %1
  br i1 %.not8.i50.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader

.lr.ph.i51.i.preheader:                           ; preds = %bb.s
  %i.cx = add i64 %9, -4
  %i.cy = sub i64 %i.cx, %.0139                   ; 3 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.cy, 76
  br i1 %min.iters.check189, label %.lr.ph.i51.i.preheader260, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.lr.ph.i51.i.preheader
  %i.db = and i64 %i.cy, -4
  %i.dc = add i64 %i.db, 4                        ; 2 uses
  %i.dd = getelementptr i8, ptr %5, i64 %i.dc
  %i.de = getelementptr i8, ptr %.0, i64 %i.dc
  %bound0191 = icmp ult ptr %5, %i.de
  %bound1192 = icmp ult ptr %.0, %i.dd
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %.lr.ph.i51.i.preheader260, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck190
  %n.vec195 = and i64 %i.da, 9223372036854775800  ; 3 uses
  %i.df = shl i64 %n.vec195, 2                    ; 2 uses
  %i.dg = getelementptr i8, ptr %5, i64 %i.df     ; 2 uses
  %i.dh = getelementptr i8, ptr %.0, i64 %i.df
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.di = shl i64 %index197, 2                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %5, i64 %i.di ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.0, i64 %i.di ; 3 uses
  %i.dj = getelementptr i8, ptr %next.gep199, i64 16 ; 2 uses
  %wide.load200 = load <4 x i32>, ptr %next.gep199, align 4, !tbaa !247, !alias.scope !2953
  %wide.load201 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !247, !alias.scope !2953
  %i.dk = getelementptr i8, ptr %next.gep198, i64 16
  store <4 x i32> %wide.load200, ptr %next.gep198, align 4, !tbaa !247, !alias.scope !2954, !noalias !2953
  store <4 x i32> %wide.load201, ptr %i.dk, align 4, !tbaa !247, !alias.scope !2954, !noalias !2953
  store <4 x i32> zeroinitializer, ptr %next.gep199, align 4, !tbaa !247, !alias.scope !2953
  store <4 x i32> zeroinitializer, ptr %i.dj, align 4, !tbaa !247, !alias.scope !2953
  %index.next202 = add nuw i64 %index197, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.dl, label %middle.block203, label %vector.body196, !llvm.loop !2935

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.da, %n.vec195
  br i1 %cmp.n204, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader260

.lr.ph.i51.i.preheader260:                        ; preds = %vector.memcheck190, %.lr.ph.i51.i.preheader, %middle.block203
  %.010.i52.i.ph = phi ptr [ %5, %vector.memcheck190 ], [ %5, %.lr.ph.i51.i.preheader ], [ %i.dg, %middle.block203 ]
  %.079.i53.i.ph = phi ptr [ %.0, %vector.memcheck190 ], [ %.0, %.lr.ph.i51.i.preheader ], [ %i.dh, %middle.block203 ]
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.preheader260, %.lr.ph.i51.i
  %.010.i52.i = phi ptr [ %i.do, %.lr.ph.i51.i ], [ %.010.i52.i.ph, %.lr.ph.i51.i.preheader260 ] ; 2 uses
  %.079.i53.i = phi ptr [ %i.dn, %.lr.ph.i51.i ], [ %.079.i53.i.ph, %.lr.ph.i51.i.preheader260 ] ; 3 uses
  %i.dm = load i32, ptr %.079.i53.i, align 4, !tbaa !247
  store i32 %i.dm, ptr %.010.i52.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i53.i, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i53.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i52.i, i64 4 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.dn, %1
  br i1 %.not.i54.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !2936

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i: ; preds = %.lr.ph.i51.i, %middle.block203, %bb.s
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.s ], [ %i.dg, %middle.block203 ], [ %i.do, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i239 = ptrtoaddr ptr %.0.lcssa.i55.i to i64
  %.not8.i57.i = icmp eq ptr %1, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %i.dp = add i64 %.071129, -4
  %i.dq = sub i64 %i.dp, %9                       ; 3 uses
  %i.dr = lshr i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.dq, 76
  br i1 %min.iters.check214, label %.lr.ph.i58.i.preheader259, label %vector.memcheck215

vector.memcheck215:                               ; preds = %.lr.ph.i58.i.preheader
  %i.dt = and i64 %i.dq, -4
  %i.du = add i64 %i.dt, 4                        ; 2 uses
  %i.dv = getelementptr i8, ptr %.0, i64 %i.du
  %i.dw = getelementptr i8, ptr %1, i64 %i.du
  %bound0216 = icmp ult ptr %.0, %i.dw
  %bound1217 = icmp ult ptr %1, %i.dv
  %found.conflict218 = and i1 %bound0216, %bound1217
  br i1 %found.conflict218, label %.lr.ph.i58.i.preheader259, label %vector.ph219

vector.ph219:                                     ; preds = %vector.memcheck215
  %n.vec220 = and i64 %i.ds, 9223372036854775800  ; 3 uses
  %i.dx = shl i64 %n.vec220, 2                    ; 2 uses
  %i.dy = getelementptr i8, ptr %.0, i64 %i.dx    ; 2 uses
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.ea = shl i64 %index222, 2                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.0, i64 %i.ea ; 2 uses
  %next.gep224 = getelementptr i8, ptr %1, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep224, i64 16 ; 2 uses
  %wide.load225 = load <4 x i32>, ptr %next.gep224, align 4, !tbaa !247, !alias.scope !2955
  %wide.load226 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2955
  %i.ec = getelementptr i8, ptr %next.gep223, i64 16
  store <4 x i32> %wide.load225, ptr %next.gep223, align 4, !tbaa !247, !alias.scope !2956, !noalias !2955
  store <4 x i32> %wide.load226, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2956, !noalias !2955
  store <4 x i32> zeroinitializer, ptr %next.gep224, align 4, !tbaa !247, !alias.scope !2955
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !247, !alias.scope !2955
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.ed, label %middle.block228, label %vector.body221, !llvm.loop !2940

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.ds, %n.vec220
  br i1 %cmp.n229, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader259

.lr.ph.i58.i.preheader259:                        ; preds = %vector.memcheck215, %.lr.ph.i58.i.preheader, %middle.block228
  %.010.i59.i.ph = phi ptr [ %.0, %vector.memcheck215 ], [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dy, %middle.block228 ]
  %.079.i60.i.ph = phi ptr [ %1, %vector.memcheck215 ], [ %1, %.lr.ph.i58.i.preheader ], [ %i.dz, %middle.block228 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader259, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.eg, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader259 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.ef, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader259 ] ; 3 uses
  %i.ee = load i32, ptr %.079.i60.i, align 4, !tbaa !247
  store i32 %i.ee, ptr %.010.i59.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i60.i, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ef, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !2941

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i: ; preds = %.lr.ph.i58.i, %middle.block228, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i ], [ %i.dy, %middle.block228 ], [ %i.eg, %.lr.ph.i58.i ] ; 9 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i
  %i.eh = add i64 %.0.lcssa.i55.i239, -4
  %i.ei = sub i64 %i.eh, %8                       ; 3 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %i.ei, 76
  br i1 %min.iters.check239, label %.lr.ph.i65.i.preheader258, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.i65.i.preheader
  %i.el = and i64 %i.ei, -4
  %i.em = add i64 %i.el, 4                        ; 2 uses
  %i.en = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.em
  %i.eo = getelementptr i8, ptr %5, i64 %i.em
  %bound0241 = icmp ult ptr %.0.lcssa.i62.i, %i.eo
  %bound1242 = icmp ult ptr %5, %i.en
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %.lr.ph.i65.i.preheader258, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck240
  %n.vec245 = and i64 %i.ek, 9223372036854775800  ; 3 uses
  %i.ep = shl i64 %n.vec245, 2                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ep
  %i.er = getelementptr i8, ptr %5, i64 %i.ep
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next252, %vector.body246 ] ; 2 uses
  %i.es = shl i64 %index247, 2                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.es ; 2 uses
  %next.gep249 = getelementptr i8, ptr %5, i64 %i.es ; 3 uses
  %i.et = getelementptr i8, ptr %next.gep249, i64 16 ; 2 uses
  %wide.load250 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !247, !alias.scope !2957
  %wide.load251 = load <4 x i32>, ptr %i.et, align 4, !tbaa !247, !alias.scope !2957
  %i.eu = getelementptr i8, ptr %next.gep248, i64 16
  store <4 x i32> %wide.load250, ptr %next.gep248, align 4, !tbaa !247, !alias.scope !2958, !noalias !2957
  store <4 x i32> %wide.load251, ptr %i.eu, align 4, !tbaa !247, !alias.scope !2958, !noalias !2957
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !247, !alias.scope !2957
  store <4 x i32> zeroinitializer, ptr %i.et, align 4, !tbaa !247, !alias.scope !2957
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.ev, label %middle.block253, label %vector.body246, !llvm.loop !2945

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.ek, %n.vec245
  br i1 %cmp.n254, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader258

.lr.ph.i65.i.preheader258:                        ; preds = %vector.memcheck240, %.lr.ph.i65.i.preheader, %middle.block253
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %vector.memcheck240 ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.eq, %middle.block253 ]
  %.079.i67.i.ph = phi ptr [ %5, %vector.memcheck240 ], [ %5, %.lr.ph.i65.i.preheader ], [ %i.er, %middle.block253 ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader258, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.ey, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader258 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.ex, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader258 ] ; 3 uses
  %i.ew = load i32, ptr %.079.i67.i, align 4, !tbaa !247
  store i32 %i.ew, ptr %.010.i66.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i67.i, align 4, !tbaa !247
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.ex, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i, !llvm.loop !2946

bb.t:                                             ; preds = %bb.q
  %i.ez = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block178, %middle.block253, %bb.o, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.r, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, %bb.t
  %.0.i = phi ptr [ %.071, %bb.r ], [ %i.ez, %bb.t ], [ %.0.lcssa.i62.i, %middle.block253 ], [ %.0, %bb.o ], [ %.0, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.co, %middle.block178 ], [ %i.cw, %.lr.ph.i44.i ] ; 2 uses
  %i.fa = load ptr, ptr %7, align 8, !tbaa !334, !nonnull !322
  store ptr %i.fa, ptr %13, align 8, !tbaa !327
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %13)
  %i.fb = sub i64 %4, %.069
  %i.fc = load ptr, ptr %7, align 8, !tbaa !334, !nonnull !322
  store ptr %i.fc, ptr %14, align 8, !tbaa !327
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %.0.i, ptr noundef %.071, ptr noundef %2, i64 noundef %i.as, i64 noundef %i.fb, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %14)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.h, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #5 comdat {
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
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !2959

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = load i32, ptr %.04085, align 4, !tbaa !247
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !247
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.b, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 4 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !247
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !247
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !2959

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !2960

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -4
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 2
  %i.z = load i32, ptr %i.v, align 4, !tbaa !247
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !247
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.d, !llvm.loop !81

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -4 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -8
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !247
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !247
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !2960

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_10range_xbufIS5_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !247    ; 2 uses
  %.not78 = icmp slt i32 %i.b, %i.c
  br i1 %.not78, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !247
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 11 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.d, !llvm.loop !81

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i139.le = ptrtoaddr ptr %.114.i to i64    ; 3 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !340    ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %i.q = add i64 %i.d, -4
  %i.r = sub i64 %i.q, %.114.i139.le              ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader234, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %.114.i, i64 %i.v
  %bound0 = icmp ult ptr %i.o, %i.x
  %bound1 = icmp ult ptr %.114.i, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader234, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.114.i, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep139, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !247, !alias.scope !2982
  %wide.load140 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !247, !alias.scope !2982
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !2983, !noalias !2982
  store <4 x i32> %wide.load140, ptr %i.ad, align 4, !tbaa !247, !alias.scope !2983, !noalias !2982
  store <4 x i32> zeroinitializer, ptr %next.gep139, align 4, !tbaa !247, !alias.scope !2982
  store <4 x i32> zeroinitializer, ptr %i.ac, align 4, !tbaa !247, !alias.scope !2982
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !2964

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.z, i64 -4
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i.preheader234

.lr.ph.i.i.i.preheader234:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader234, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader234 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader234 ] ; 3 uses
  %i.af = load i32, ptr %.079.i.i.i, align 4, !tbaa !247
  store i32 %i.af, ptr %.010.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !247
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !2965

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa134 = phi ptr [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa237 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa134, ptr %i.ai, align 8, !tbaa !341
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.027.i = phi ptr [ %i.o, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 11 uses
  %.01626.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %i.cp, %bb.h ] ; 8 uses
  %.01725.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.118.i, %bb.h ] ; 5 uses
  %i.aj = icmp eq ptr %.01725.i, %2
  br i1 %i.aj, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.027.i143.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.ak = add i64 %i.d, -4
  %i.al = sub i64 %i.ak, %.114.i139.le
  %i.am = and i64 %i.al, -4
  %i.an = add i64 %i.am, %i.p
  %i.ao = sub i64 %i.an, %.027.i143.le            ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.ao, 108
  br i1 %min.iters.check151, label %.lr.ph.i.i.i42.preheader227, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.ar = shl i64 %indvar, 2
  %i.as = getelementptr i8, ptr %.114.i, i64 %i.ar
  %scevgep = getelementptr i8, ptr %i.as, i64 4
  %i.at = add i64 %i.d, -4
  %i.au = sub i64 %i.at, %.114.i139.le
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, %i.p
  %i.ax = sub i64 %i.aw, %.027.i143.le
  %i.ay = and i64 %i.ax, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep, i64 %i.ay
  %scevgep145 = getelementptr i8, ptr %.027.i, i64 4
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.ay
  %bound0147 = icmp ult ptr %.01626.i, %scevgep146
  %bound1148 = icmp ult ptr %.027.i, %scevgep144
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i42.preheader227, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck142
  %n.vec153 = and i64 %i.aq, 9223372036854775800  ; 3 uses
  %i.az = shl i64 %n.vec153, 2                    ; 2 uses
  %i.ba = getelementptr i8, ptr %.01626.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.027.i, i64 %i.az
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.bc = shl i64 %index155, 2                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.01626.i, i64 %i.bc ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.027.i, i64 %i.bc ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep157, i64 16 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !247, !alias.scope !2984
  %wide.load159 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !247, !alias.scope !2984
  %i.be = getelementptr i8, ptr %next.gep156, i64 16
  store <4 x i32> %wide.load158, ptr %next.gep156, align 4, !tbaa !247, !alias.scope !2985, !noalias !2984
  store <4 x i32> %wide.load159, ptr %i.be, align 4, !tbaa !247, !alias.scope !2985, !noalias !2984
  store <4 x i32> zeroinitializer, ptr %next.gep157, align 4, !tbaa !247, !alias.scope !2984
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !247, !alias.scope !2984
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.bf, label %middle.block161, label %vector.body154, !llvm.loop !2969

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.aq, %n.vec153
  br i1 %cmp.n162, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i42.preheader227

.lr.ph.i.i.i42.preheader227:                      ; preds = %vector.memcheck142, %.lr.ph.i.i.i42.preheader, %middle.block161
  %.010.i.i.i43.ph = phi ptr [ %.01626.i, %vector.memcheck142 ], [ %.01626.i, %.lr.ph.i.i.i42.preheader ], [ %i.ba, %middle.block161 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.027.i, %vector.memcheck142 ], [ %.027.i, %.lr.ph.i.i.i42.preheader ], [ %i.bb, %middle.block161 ] ; 3 uses
  %.079.i.i.i44.ph238 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bg = sub i64 %.010.i.i.i.lcssa237, %.079.i.i.i44.ph238 ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1
  %xtraiter = and i64 %i.bi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader227, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader227 ] ; 2 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader227 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader227 ]
  %i.bj = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !247
  store i32 %i.bj, ptr %.010.i.i.i43.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !2970

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader227
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader227 ], [ %i.bl, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader227 ], [ %i.bk, %.lr.ph.i.i.i42.prol ]
  %i.bm = icmp ult i64 %i.bg, 28
  br i1 %i.bm, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.ck, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cj, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.bn = load i32, ptr %.079.i.i.i44, align 4, !tbaa !247
  store i32 %i.bn, ptr %.010.i.i.i43, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !247
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !247
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !247
  store i32 0, ptr %i.bo, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !247
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !247
  store i32 0, ptr %i.br, align 4, !tbaa !247
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !247
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !247
  store i32 0, ptr %i.bu, align 4, !tbaa !247
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !247
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !247
  store i32 0, ptr %i.bx, align 4, !tbaa !247
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !247
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !247
  store i32 0, ptr %i.ca, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !247
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !247
  store i32 0, ptr %i.cd, align 4, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !247
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !247
  store i32 0, ptr %i.cg, align 4, !tbaa !247
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.7 = icmp eq ptr %i.cg, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.7, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !2971

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cl = load i32, ptr %.027.i, align 4, !tbaa !247 ; 2 uses
  %i.cm = load i32, ptr %.01725.i, align 4, !tbaa !247 ; 2 uses
  %.not20.i = icmp slt i32 %i.cl, %i.cm
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.cm, ptr %.01626.i, align 4, !tbaa !247
  store i32 0, ptr %.01725.i, align 4, !tbaa !247
  %i.cn = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.cl, ptr %.01626.i, align 4, !tbaa !247
  store i32 0, ptr %.027.i, align 4, !tbaa !247
  %i.co = getelementptr inbounds nuw i8, ptr %.027.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.118.i = phi ptr [ %i.cn, %bb.f ], [ %.01725.i, %bb.g ]
  %.1.i40 = phi ptr [ %.027.i, %bb.f ], [ %i.co, %bb.g ] ; 2 uses
  %i.cp = getelementptr i8, ptr %.01626.i, i64 4
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa134
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !36

.lr.ph.i47:                                       ; preds = %bb.c
  %i.cq = ashr exact i64 %i.h, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.018.i48 = phi i64 [ %i.cq, %.lr.ph.i47 ], [ %.1.i53, %bb.i ] ; 2 uses
  %.01317.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i52, %bb.i ] ; 2 uses
  %i.cr = lshr i64 %.018.i48, 1                   ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.01317.i49, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !247
  %.not15.i50 = icmp slt i32 %i.b, %i.ct          ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.neg.i51 = xor i64 %i.cr, -1
  %i.cv = add i64 %.018.i48, %.neg.i51
  %.114.i52 = select i1 %.not15.i50, ptr %.01317.i49, ptr %i.cu ; 6 uses
  %.1.i53 = select i1 %.not15.i50, i64 %i.cr, i64 %i.cv ; 2 uses
  %.not.i54 = icmp eq i64 %.1.i53, 0
  br i1 %.not.i54, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.i, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.i
  %.114.i52175.le = ptrtoaddr ptr %.114.i52 to i64
  %i.cw = load ptr, ptr %4, align 8, !tbaa !340   ; 10 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %.not8.i.i.i56 = icmp eq ptr %.114.i52, %1
  br i1 %.not8.i.i.i56, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split, label %.lr.ph.i.i.i57.preheader

.lr.ph.i.i.i57.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %i.cy = add i64 %.114.i52175.le, -4
  %i.cz = sub i64 %i.cy, %i.d                     ; 3 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check175 = icmp ult i64 %i.cz, 60
  br i1 %min.iters.check175, label %.lr.ph.i.i.i57.preheader225, label %vector.memcheck176

vector.memcheck176:                               ; preds = %.lr.ph.i.i.i57.preheader
  %i.dc = and i64 %i.cz, -4
  %i.dd = add i64 %i.dc, 4                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.dd
  %i.df = getelementptr i8, ptr %1, i64 %i.dd
  %bound0177 = icmp ult ptr %i.cw, %i.df
  %bound1178 = icmp ult ptr %1, %i.de
  %found.conflict179 = and i1 %bound0177, %bound1178
  br i1 %found.conflict179, label %.lr.ph.i.i.i57.preheader225, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck176
  %n.vec181 = and i64 %i.db, 9223372036854775800  ; 3 uses
  %i.dg = shl i64 %n.vec181, 2                    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %1, i64 %i.dg
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.dj = shl i64 %index183, 2                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.cw, i64 %i.dj ; 2 uses
  %next.gep185 = getelementptr i8, ptr %1, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep185, i64 16 ; 2 uses
  %wide.load186 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !247, !alias.scope !2986
  %wide.load187 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !247, !alias.scope !2986
  %i.dl = getelementptr i8, ptr %next.gep184, i64 16
  store <4 x i32> %wide.load186, ptr %next.gep184, align 4, !tbaa !247, !alias.scope !2987, !noalias !2986
  store <4 x i32> %wide.load187, ptr %i.dl, align 4, !tbaa !247, !alias.scope !2987, !noalias !2986
  store <4 x i32> zeroinitializer, ptr %next.gep185, align 4, !tbaa !247, !alias.scope !2986
  store <4 x i32> zeroinitializer, ptr %i.dk, align 4, !tbaa !247, !alias.scope !2986
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dm, label %middle.block189, label %vector.body182, !llvm.loop !2975

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.db, %n.vec181
  br i1 %cmp.n190, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62, label %.lr.ph.i.i.i57.preheader225

.lr.ph.i.i.i57.preheader225:                      ; preds = %vector.memcheck176, %.lr.ph.i.i.i57.preheader, %middle.block189
  %.010.i.i.i58.ph = phi ptr [ %i.cw, %vector.memcheck176 ], [ %i.cw, %.lr.ph.i.i.i57.preheader ], [ %i.dh, %middle.block189 ]
  %.079.i.i.i59.ph = phi ptr [ %1, %vector.memcheck176 ], [ %1, %.lr.ph.i.i.i57.preheader ], [ %i.di, %middle.block189 ]
  br label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i57.preheader225, %.lr.ph.i.i.i57
  %.010.i.i.i58 = phi ptr [ %i.dp, %.lr.ph.i.i.i57 ], [ %.010.i.i.i58.ph, %.lr.ph.i.i.i57.preheader225 ] ; 2 uses
  %.079.i.i.i59 = phi ptr [ %i.do, %.lr.ph.i.i.i57 ], [ %.079.i.i.i59.ph, %.lr.ph.i.i.i57.preheader225 ] ; 3 uses
  %i.dn = load i32, ptr %.079.i.i.i59, align 4, !tbaa !247
  store i32 %i.dn, ptr %.010.i.i.i58, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i59, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i.i59, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i.i58, i64 4 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.do, %.114.i52
  br i1 %.not.i.i.i60, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62, label %.lr.ph.i.i.i57, !llvm.loop !2976

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62: ; preds = %.lr.ph.i.i.i57, %middle.block189
  %.lcssa = phi ptr [ %i.dh, %middle.block189 ], [ %i.dp, %.lr.ph.i.i.i57 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa, ptr %i.dq, align 8, !tbaa !341
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62, %bb.m
  %indvar194 = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62 ], [ %indvar.next195, %bb.m ] ; 2 uses
  %.031.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62 ], [ %.1.i65, %bb.m ] ; 3 uses
  %.01930.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62 ], [ %.120.i, %bb.m ] ; 9 uses
  %.02129.i = phi ptr [ %.114.i52, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit62 ], [ %i.er, %bb.m ] ; 6 uses
  %i.dr = icmp eq ptr %0, %.031.i
  br i1 %i.dr, label %.lr.ph.i.i.i67.preheader, label %bb.j

.lr.ph.i.i.i67.preheader:                         ; preds = %.lr.ph.i63
  %.01930.i197.le = ptrtoaddr ptr %.01930.i to i64 ; 2 uses
  %i.ds = add i64 %.01930.i197.le, -4
  %i.dt = sub i64 %i.ds, %i.cx                    ; 2 uses
  %i.du = lshr i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.dt, 108
  br i1 %min.iters.check205, label %.lr.ph.i.i.i67.preheader219, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i.i.i67.preheader
  %i.dw = shl i64 %indvar194, 2
  %i.dx = sub nuw nsw i64 -4, %i.dw
  %scevgep196 = getelementptr i8, ptr %.114.i52, i64 %i.dx
  %reass.sub = sub i64 %.01930.i197.le, %i.cx
  %i.dy = add i64 %reass.sub, -4
  %i.dz = lshr i64 %i.dy, 2
  %i.ea = mul i64 %i.dz, -4                       ; 2 uses
  %scevgep198 = getelementptr i8, ptr %scevgep196, i64 %i.ea
  %scevgep199 = getelementptr i8, ptr %.01930.i, i64 -4
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %i.ea
  %bound0201 = icmp ult ptr %scevgep198, %.01930.i
  %bound1202 = icmp ult ptr %scevgep200, %.02129.i
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.i67.preheader219, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck193
  %n.vec207 = and i64 %i.dv, 9223372036854775800  ; 3 uses
  %i.eb = mul i64 %n.vec207, -4                   ; 2 uses
  %i.ec = getelementptr i8, ptr %.02129.i, i64 %i.eb
  %i.ed = getelementptr i8, ptr %.01930.i, i64 %i.eb
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %i.ee = mul i64 %index209, -4                   ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.02129.i, i64 %i.ee ; 2 uses
  %next.gep211 = getelementptr i8, ptr %.01930.i, i64 %i.ee ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %next.gep211, i64 -16 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %next.gep211, i64 -32 ; 2 uses
  %wide.load212 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !247, !alias.scope !2988
  %wide.load213 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !247, !alias.scope !2988
  %i.eh = getelementptr inbounds i8, ptr %next.gep210, i64 -16
  %i.ei = getelementptr inbounds i8, ptr %next.gep210, i64 -32
  store <4 x i32> %wide.load212, ptr %i.eh, align 4, !tbaa !247, !alias.scope !2989, !noalias !2988
  store <4 x i32> %wide.load213, ptr %i.ei, align 4, !tbaa !247, !alias.scope !2989, !noalias !2988
  store <4 x i32> zeroinitializer, ptr %i.ef, align 4, !tbaa !247, !alias.scope !2988
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !247, !alias.scope !2988
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.ej, label %middle.block215, label %vector.body208, !llvm.loop !2980

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %i.dv, %n.vec207
  br i1 %cmp.n216, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i67.preheader219

.lr.ph.i.i.i67.preheader219:                      ; preds = %vector.memcheck193, %.lr.ph.i.i.i67.preheader, %middle.block215
  %.010.i.i.i68.ph = phi ptr [ %.02129.i, %vector.memcheck193 ], [ %.02129.i, %.lr.ph.i.i.i67.preheader ], [ %i.ec, %middle.block215 ]
  %.079.i.i.i69.ph = phi ptr [ %.01930.i, %vector.memcheck193 ], [ %.01930.i, %.lr.ph.i.i.i67.preheader ], [ %i.ed, %middle.block215 ]
  br label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %.lr.ph.i.i.i67.preheader219, %.lr.ph.i.i.i67
  %.010.i.i.i68 = phi ptr [ %i.el, %.lr.ph.i.i.i67 ], [ %.010.i.i.i68.ph, %.lr.ph.i.i.i67.preheader219 ]
  %.079.i.i.i69 = phi ptr [ %i.ek, %.lr.ph.i.i.i67 ], [ %.079.i.i.i69.ph, %.lr.ph.i.i.i67.preheader219 ]
  %i.ek = getelementptr inbounds i8, ptr %.079.i.i.i69, i64 -4 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %.010.i.i.i68, i64 -4 ; 2 uses
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.em, ptr %i.el, align 4, !tbaa !247
  store i32 0, ptr %i.ek, align 4, !tbaa !247
  %.not.i.i.i70 = icmp eq ptr %i.cw, %i.ek
  br i1 %.not.i.i.i70, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i67, !llvm.loop !2981

bb.j:                                             ; preds = %.lr.ph.i63
  %i.en = getelementptr inbounds i8, ptr %.01930.i, i64 -4 ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.031.i, i64 -4 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !247 ; 2 uses
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !247 ; 2 uses
  %.not24.i64 = icmp slt i32 %i.ep, %i.eq
  %i.er = getelementptr i8, ptr %.02129.i, i64 -4 ; 3 uses
  br i1 %.not24.i64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !247
  store i32 0, ptr %i.eo, align 4, !tbaa !247
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !247
  store i32 0, ptr %i.en, align 4, !tbaa !247
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.120.i = phi ptr [ %.01930.i, %bb.k ], [ %i.en, %bb.l ] ; 2 uses
  %.1.i65 = phi ptr [ %i.eo, %bb.k ], [ %.031.i, %bb.l ]
  %.not.i66 = icmp eq ptr %i.cw, %.120.i
  %indvar.next195 = add i64 %indvar194, 1
  br i1 %.not.i66, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i63, !llvm.loop !82

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.sink = phi ptr [ %i.o, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.cw, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sink, ptr %i.es, align 8, !tbaa !341
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.m, %.lr.ph.i.i.i67, %middle.block161, %middle.block215, %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef align 8 dead_on_return %5) local_unnamed_addr #5 comdat {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %7 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %8 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond94 = and i1 %i.a, %i.b
  br i1 %or.cond94, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.067101 = phi ptr [ %.1, %bb.n ], [ %0, %bb.a ] ; 11 uses
  %.068100 = phi i64 [ %.169, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.07099 = phi i64 [ %.171, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07297 = phi ptr [ %.173, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07495 = phi ptr [ %.175, %bb.n ], [ %1, %bb.a ] ; 12 uses
  %i.c = or i64 %.068100, %.07099
  %i.d = icmp eq i64 %i.c, 1
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_:bb.a
  br i1 %.not.i54.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !3012

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i: ; preds = %.lr.ph.i51.i, %middle.block211, %bb.r
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.r ], [ %i.dc, %middle.block211 ], [ %i.dk, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i159 = ptrtoaddr ptr %.0.lcssa.i55.i to i64 ; 2 uses
  %.not8.i57.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %i.dl = add i64 %.071168, -4
  %i.dm = sub i64 %i.dl, %.tr88106169             ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.dm, 28
  br i1 %min.iters.check177, label %.lr.ph.i58.i.preheader287, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i58.i.preheader
  %scevgep167 = getelementptr i8, ptr %.0, i64 4
  %i.dp = add i64 %.071168, -4
  %i.dq = sub i64 %i.dp, %.tr88106169
  %i.dr = and i64 %i.dq, -4                       ; 2 uses
  %scevgep170 = getelementptr i8, ptr %scevgep167, i64 %i.dr
  %scevgep171 = getelementptr i8, ptr %.tr88106, i64 4
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.dr
  %bound0173 = icmp ult ptr %.0, %scevgep172
  %bound1174 = icmp ult ptr %.tr88106, %scevgep170
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i58.i.preheader287, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck166
  %n.vec179 = and i64 %i.do, 9223372036854775800  ; 3 uses
  %i.ds = shl i64 %n.vec179, 2                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.0, i64 %i.ds    ; 2 uses
  %i.du = getelementptr i8, ptr %.tr88106, i64 %i.ds
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %i.dv = shl i64 %index181, 2                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %.0, i64 %i.dv ; 2 uses
  %next.gep183 = getelementptr i8, ptr %.tr88106, i64 %i.dv ; 3 uses
  %i.dw = getelementptr i8, ptr %next.gep183, i64 16 ; 2 uses
  %wide.load184 = load <4 x i32>, ptr %next.gep183, align 4, !tbaa !247, !alias.scope !3031
  %wide.load185 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !247, !alias.scope !3031
  %i.dx = getelementptr i8, ptr %next.gep182, i64 16
  store <4 x i32> %wide.load184, ptr %next.gep182, align 4, !tbaa !247, !alias.scope !3032, !noalias !3031
  store <4 x i32> %wide.load185, ptr %i.dx, align 4, !tbaa !247, !alias.scope !3032, !noalias !3031
  store <4 x i32> zeroinitializer, ptr %next.gep183, align 4, !tbaa !247, !alias.scope !3031
  store <4 x i32> zeroinitializer, ptr %i.dw, align 4, !tbaa !247, !alias.scope !3031
  %index.next186 = add nuw i64 %index181, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.dy, label %middle.block187, label %vector.body180, !llvm.loop !3016

middle.block187:                                  ; preds = %vector.body180
  %cmp.n188 = icmp eq i64 %i.do, %n.vec179
  br i1 %cmp.n188, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader287

.lr.ph.i58.i.preheader287:                        ; preds = %vector.memcheck166, %.lr.ph.i58.i.preheader, %middle.block187
  %.010.i59.i.ph = phi ptr [ %.0, %vector.memcheck166 ], [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dt, %middle.block187 ]
  %.079.i60.i.ph = phi ptr [ %.tr88106, %vector.memcheck166 ], [ %.tr88106, %.lr.ph.i58.i.preheader ], [ %i.du, %middle.block187 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader287, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.eb, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader287 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.ea, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader287 ] ; 3 uses
  %i.dz = load i32, ptr %.079.i60.i, align 4, !tbaa !247
  store i32 %i.dz, ptr %.010.i59.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i60.i, align 4, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ea, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !3017

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i: ; preds = %.lr.ph.i58.i, %middle.block187, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i ], [ %i.dt, %middle.block187 ], [ %i.eb, %.lr.ph.i58.i ] ; 9 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i
  %.reass312 = add i64 %.0.lcssa.i55.i159, %invariant.op311 ; 2 uses
  %i.ec = lshr i64 %.reass312, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %.reass312, 28
  br i1 %min.iters.check, label %.lr.ph.i65.i.preheader286, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i65.i.preheader
  %reass.sub285 = sub i64 %.0.lcssa.i55.i159, %i.a
  %i.ee = and i64 %reass.sub285, -4               ; 2 uses
  %scevgep160 = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ee
  %scevgep162 = getelementptr i8, ptr %5, i64 %i.ee
  %bound0 = icmp ult ptr %.0.lcssa.i62.i, %scevgep162
  %bound1 = icmp ult ptr %5, %scevgep160
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i65.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 9223372036854775800     ; 3 uses
  %i.ef = shl i64 %n.vec, 2                       ; 2 uses
  %i.eg = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ef
  %i.eh = getelementptr i8, ptr %5, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ei ; 2 uses
  %next.gep163 = getelementptr i8, ptr %5, i64 %i.ei ; 3 uses
  %i.ej = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep163, align 4, !tbaa !247, !alias.scope !3033
  %wide.load164 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !247, !alias.scope !3033
  %i.ek = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3034, !noalias !3033
  store <4 x i32> %wide.load164, ptr %i.ek, align 4, !tbaa !247, !alias.scope !3034, !noalias !3033
  store <4 x i32> zeroinitializer, ptr %next.gep163, align 4, !tbaa !247, !alias.scope !3033
  store <4 x i32> zeroinitializer, ptr %i.ej, align 4, !tbaa !247, !alias.scope !3033
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !3021

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader286

.lr.ph.i65.i.preheader286:                        ; preds = %vector.memcheck, %.lr.ph.i65.i.preheader, %middle.block
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %vector.memcheck ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.eg, %middle.block ]
  %.079.i67.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i65.i.preheader ], [ %i.eh, %middle.block ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader286, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.eo, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader286 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.en, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader286 ] ; 3 uses
  %i.em = load i32, ptr %.079.i67.i, align 4, !tbaa !247
  store i32 %i.em, ptr %.010.i66.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i67.i, align 4, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.en, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i, !llvm.loop !3022

bb.s:                                             ; preds = %bb.p
  %i.ep = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.0, ptr noundef %.tr88106, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block235, %middle.block, %bb.n, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.q, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, %bb.s
  %.0.i = phi ptr [ %.071, %bb.q ], [ %i.ep, %bb.s ], [ %.0.lcssa.i62.i, %middle.block ], [ %.0, %bb.n ], [ %.0, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.cl, %middle.block235 ], [ %i.ct, %.lr.ph.i44.i ] ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.tr105, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.eq = sub i64 %.tr91108, %.069                ; 2 uses
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = icmp ne i64 %i.au, 0
  %or.cond = and i1 %i.es, %i.er
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.a, %_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_10range_xbufIS5_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !247
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 11 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !49

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i133.le = ptrtoaddr ptr %.114.i to i64    ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !340    ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.s = add i64 %i.e, -4
  %i.t = sub i64 %i.s, %.114.i133.le              ; 3 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -4
  %i.x = add i64 %i.w, 4                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %.114.i, i64 %i.x
  %bound0 = icmp ult ptr %i.q, %i.z
  %bound1 = icmp ult ptr %.114.i, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 3 uses
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep133 = getelementptr i8, ptr %.114.i, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep133, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !247, !alias.scope !3056
  %wide.load134 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !247, !alias.scope !3056
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3057, !noalias !3056
  store <4 x i32> %wide.load134, ptr %i.af, align 4, !tbaa !247, !alias.scope !3057, !noalias !3056
  store <4 x i32> zeroinitializer, ptr %next.gep133, align 4, !tbaa !247, !alias.scope !3056
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !247, !alias.scope !3056
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3038

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ab, i64 -4
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i.preheader228

.lr.ph.i.i.i.preheader228:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader228, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader228 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader228 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !247
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !3039

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa128 = phi ptr [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa231 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa128, ptr %i.ak, align 8, !tbaa !341
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.026.i = phi ptr [ %i.q, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 11 uses
  %.01625.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.117.i, %bb.h ] ; 5 uses
  %.01824.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %i.cs, %bb.h ] ; 8 uses
  %i.al = icmp eq ptr %.01625.i, %2
  br i1 %i.al, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.026.i137.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.am = add i64 %i.e, -4
  %i.an = sub i64 %i.am, %.114.i133.le
  %i.ao = and i64 %i.an, -4
  %i.ap = add i64 %i.ao, %i.r
  %i.aq = sub i64 %i.ap, %.026.i137.le            ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.aq, 108
  br i1 %min.iters.check145, label %.lr.ph.i.i.i42.preheader221, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.at = shl i64 %indvar, 2
  %i.au = getelementptr i8, ptr %.114.i, i64 %i.at
  %scevgep = getelementptr i8, ptr %i.au, i64 4
  %i.av = add i64 %i.e, -4
  %i.aw = sub i64 %i.av, %.114.i133.le
  %i.ax = and i64 %i.aw, -4
  %i.ay = add i64 %i.ax, %i.r
  %i.az = sub i64 %i.ay, %.026.i137.le
  %i.ba = and i64 %i.az, -4                       ; 2 uses
  %scevgep138 = getelementptr i8, ptr %scevgep, i64 %i.ba
  %scevgep139 = getelementptr i8, ptr %.026.i, i64 4
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.ba
  %bound0141 = icmp ult ptr %.01824.i, %scevgep140
  %bound1142 = icmp ult ptr %.026.i, %scevgep138
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph.i.i.i42.preheader221, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck136
  %n.vec147 = and i64 %i.as, 9223372036854775800  ; 3 uses
  %i.bb = shl i64 %n.vec147, 2                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.01824.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.026.i, i64 %i.bb
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.be = shl i64 %index149, 2                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %.01824.i, i64 %i.be ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.026.i, i64 %i.be ; 3 uses
  %i.bf = getelementptr i8, ptr %next.gep151, i64 16 ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !247, !alias.scope !3058
  %wide.load153 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !247, !alias.scope !3058
  %i.bg = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x i32> %wide.load152, ptr %next.gep150, align 4, !tbaa !247, !alias.scope !3059, !noalias !3058
  store <4 x i32> %wide.load153, ptr %i.bg, align 4, !tbaa !247, !alias.scope !3059, !noalias !3058
  store <4 x i32> zeroinitializer, ptr %next.gep151, align 4, !tbaa !247, !alias.scope !3058
  store <4 x i32> zeroinitializer, ptr %i.bf, align 4, !tbaa !247, !alias.scope !3058
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.bh, label %middle.block155, label %vector.body148, !llvm.loop !3043

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.as, %n.vec147
  br i1 %cmp.n156, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i42.preheader221

.lr.ph.i.i.i42.preheader221:                      ; preds = %vector.memcheck136, %.lr.ph.i.i.i42.preheader, %middle.block155
  %.010.i.i.i43.ph = phi ptr [ %.01824.i, %vector.memcheck136 ], [ %.01824.i, %.lr.ph.i.i.i42.preheader ], [ %i.bc, %middle.block155 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.026.i, %vector.memcheck136 ], [ %.026.i, %.lr.ph.i.i.i42.preheader ], [ %i.bd, %middle.block155 ] ; 3 uses
  %.079.i.i.i44.ph232 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bi = sub i64 %.010.i.i.i.lcssa231, %.079.i.i.i44.ph232 ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader221, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader221 ] ; 2 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader221 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader221 ]
  %i.bl = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !247
  store i32 %i.bl, ptr %.010.i.i.i43.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !3044

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader221
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader221 ], [ %i.bn, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader221 ], [ %i.bm, %.lr.ph.i.i.i42.prol ]
  %i.bo = icmp ult i64 %i.bi, 28
  br i1 %i.bo, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.cm, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cl, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.bp = load i32, ptr %.079.i.i.i44, align 4, !tbaa !247
  store i32 %i.bp, ptr %.010.i.i.i43, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !247
  store i32 0, ptr %i.bq, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !247
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !247
  store i32 0, ptr %i.bt, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !247
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !247
  store i32 0, ptr %i.bw, align 4, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !247
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !247
  store i32 0, ptr %i.bz, align 4, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247
  store i32 0, ptr %i.cc, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !247
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !247
  store i32 0, ptr %i.cf, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !247
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !247
  store i32 0, ptr %i.ci, align 4, !tbaa !247
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.7 = icmp eq ptr %i.ci, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.7, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !3045

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cn = load i32, ptr %.01625.i, align 4, !tbaa !247 ; 2 uses
  %i.co = load i32, ptr %.026.i, align 4, !tbaa !247 ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.cn, ptr %.01824.i, align 4, !tbaa !247
  store i32 0, ptr %.01625.i, align 4, !tbaa !247
  %i.cq = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.co, ptr %.01824.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i = phi ptr [ %i.cq, %bb.f ], [ %.01625.i, %bb.g ]
  %.1.i40 = phi ptr [ %.026.i, %bb.f ], [ %i.cr, %bb.g ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.01824.i, i64 4
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !42

.lr.ph.i47:                                       ; preds = %bb.c
  %i.ct = ashr exact i64 %i.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.017.i48 = phi i64 [ %i.ct, %.lr.ph.i47 ], [ %.1.i52, %bb.i ] ; 2 uses
  %.01316.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i51, %bb.i ] ; 2 uses
  %i.cu = lshr i64 %.017.i48, 1                   ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01316.i49, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !247
  %i.cx = icmp slt i32 %i.cw, %i.c                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.neg.i50 = xor i64 %i.cu, -1
  %i.cz = add i64 %.017.i48, %.neg.i50
  %.114.i51 = select i1 %i.cx, ptr %i.cy, ptr %.01316.i49 ; 6 uses
  %.1.i52 = select i1 %i.cx, i64 %i.cz, i64 %i.cu ; 2 uses
  %.not.i53 = icmp eq i64 %.1.i52, 0
  br i1 %.not.i53, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.i, !llvm.loop !45

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.i
  %.114.i51169.le = ptrtoaddr ptr %.114.i51 to i64
  %i.da = load ptr, ptr %3, align 8, !tbaa !340   ; 10 uses
  %i.db = ptrtoaddr ptr %i.da to i64              ; 2 uses
  %.not8.i.i.i55 = icmp eq ptr %.114.i51, %1
  br i1 %.not8.i.i.i55, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit.sink.split, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.dc = add i64 %.114.i51169.le, -4
  %i.dd = sub i64 %i.dc, %i.e                     ; 3 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.dd, 60
  br i1 %min.iters.check169, label %.lr.ph.i.i.i56.preheader219, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i56.preheader
  %i.dg = and i64 %i.dd, -4
  %i.dh = add i64 %i.dg, 4                        ; 2 uses
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh
  %bound0171 = icmp ult ptr %i.da, %i.dj
  %bound1172 = icmp ult ptr %1, %i.di
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.i.i56.preheader219, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck170
  %n.vec175 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec175, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %i.da, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dk
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.dn = shl i64 %index177, 2                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.da, i64 %i.dn ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !247, !alias.scope !3060
  %wide.load181 = load <4 x i32>, ptr %i.do, align 4, !tbaa !247, !alias.scope !3060
  %i.dp = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x i32> %wide.load180, ptr %next.gep178, align 4, !tbaa !247, !alias.scope !3061, !noalias !3060
  store <4 x i32> %wide.load181, ptr %i.dp, align 4, !tbaa !247, !alias.scope !3061, !noalias !3060
  store <4 x i32> zeroinitializer, ptr %next.gep179, align 4, !tbaa !247, !alias.scope !3060
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !247, !alias.scope !3060
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.dq, label %middle.block183, label %vector.body176, !llvm.loop !3049

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.df, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61, label %.lr.ph.i.i.i56.preheader219

.lr.ph.i.i.i56.preheader219:                      ; preds = %vector.memcheck170, %.lr.ph.i.i.i56.preheader, %middle.block183
  %.010.i.i.i57.ph = phi ptr [ %i.da, %vector.memcheck170 ], [ %i.da, %.lr.ph.i.i.i56.preheader ], [ %i.dl, %middle.block183 ]
  %.079.i.i.i58.ph = phi ptr [ %1, %vector.memcheck170 ], [ %1, %.lr.ph.i.i.i56.preheader ], [ %i.dm, %middle.block183 ]
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56.preheader219, %.lr.ph.i.i.i56
  %.010.i.i.i57 = phi ptr [ %i.dt, %.lr.ph.i.i.i56 ], [ %.010.i.i.i57.ph, %.lr.ph.i.i.i56.preheader219 ] ; 2 uses
  %.079.i.i.i58 = phi ptr [ %i.ds, %.lr.ph.i.i.i56 ], [ %.079.i.i.i58.ph, %.lr.ph.i.i.i56.preheader219 ] ; 3 uses
  %i.dr = load i32, ptr %.079.i.i.i58, align 4, !tbaa !247
  store i32 %i.dr, ptr %.010.i.i.i57, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i58, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 4 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.ds, %.114.i51
  br i1 %.not.i.i.i59, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61, label %.lr.ph.i.i.i56, !llvm.loop !3050

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61: ; preds = %.lr.ph.i.i.i56, %middle.block183
  %.lcssa = phi ptr [ %i.dl, %middle.block183 ], [ %i.dt, %.lr.ph.i.i.i56 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.du, align 8, !tbaa !341
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61, %bb.m
  %indvar188 = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61 ], [ %indvar.next189, %bb.m ] ; 2 uses
  %.030.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61 ], [ %.1.i63, %bb.m ] ; 9 uses
  %.01929.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61 ], [ %.120.i, %bb.m ] ; 3 uses
  %.02128.i = phi ptr [ %.114.i51, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit61 ], [ %i.ew, %bb.m ] ; 6 uses
  %i.dv = icmp eq ptr %0, %.01929.i
  br i1 %i.dv, label %.lr.ph.i.i.i65.preheader, label %bb.j

.lr.ph.i.i.i65.preheader:                         ; preds = %.lr.ph.i62
  %.030.i191.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.dw = add i64 %.030.i191.le, -4
  %i.dx = sub i64 %i.dw, %i.db                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.dx, 108
  br i1 %min.iters.check199, label %.lr.ph.i.i.i65.preheader213, label %vector.memcheck187

vector.memcheck187:                               ; preds = %.lr.ph.i.i.i65.preheader
  %i.ea = shl i64 %indvar188, 2
  %i.eb = sub nuw nsw i64 -4, %i.ea
  %scevgep190 = getelementptr i8, ptr %.114.i51, i64 %i.eb
  %reass.sub = sub i64 %.030.i191.le, %i.db
  %i.ec = add i64 %reass.sub, -4
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = mul i64 %i.ed, -4                       ; 2 uses
  %scevgep192 = getelementptr i8, ptr %scevgep190, i64 %i.ee
  %scevgep193 = getelementptr i8, ptr %.030.i, i64 -4
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.ee
  %bound0195 = icmp ult ptr %scevgep192, %.030.i
  %bound1196 = icmp ult ptr %scevgep194, %.02128.i
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %.lr.ph.i.i.i65.preheader213, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck187
  %n.vec201 = and i64 %i.dz, 9223372036854775800  ; 3 uses
  %i.ef = mul i64 %n.vec201, -4                   ; 2 uses
  %i.eg = getelementptr i8, ptr %.02128.i, i64 %i.ef
  %i.eh = getelementptr i8, ptr %.030.i, i64 %i.ef
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next208, %vector.body202 ] ; 2 uses
  %i.ei = mul i64 %index203, -4                   ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.02128.i, i64 %i.ei ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.030.i, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %next.gep205, i64 -16 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %next.gep205, i64 -32 ; 2 uses
  %wide.load206 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !247, !alias.scope !3062
  %wide.load207 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !247, !alias.scope !3062
  %i.el = getelementptr inbounds i8, ptr %next.gep204, i64 -16
  %i.em = getelementptr inbounds i8, ptr %next.gep204, i64 -32
  store <4 x i32> %wide.load206, ptr %i.el, align 4, !tbaa !247, !alias.scope !3063, !noalias !3062
  store <4 x i32> %wide.load207, ptr %i.em, align 4, !tbaa !247, !alias.scope !3063, !noalias !3062
  store <4 x i32> zeroinitializer, ptr %i.ej, align 4, !tbaa !247, !alias.scope !3062
  store <4 x i32> zeroinitializer, ptr %i.ek, align 4, !tbaa !247, !alias.scope !3062
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.en, label %middle.block209, label %vector.body202, !llvm.loop !3054

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.dz, %n.vec201
  br i1 %cmp.n210, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i65.preheader213

.lr.ph.i.i.i65.preheader213:                      ; preds = %vector.memcheck187, %.lr.ph.i.i.i65.preheader, %middle.block209
  %.010.i.i.i66.ph = phi ptr [ %.02128.i, %vector.memcheck187 ], [ %.02128.i, %.lr.ph.i.i.i65.preheader ], [ %i.eg, %middle.block209 ]
  %.079.i.i.i67.ph = phi ptr [ %.030.i, %vector.memcheck187 ], [ %.030.i, %.lr.ph.i.i.i65.preheader ], [ %i.eh, %middle.block209 ]
  br label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i.i.i65.preheader213, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.ep, %.lr.ph.i.i.i65 ], [ %.010.i.i.i66.ph, %.lr.ph.i.i.i65.preheader213 ]
  %.079.i.i.i67 = phi ptr [ %i.eo, %.lr.ph.i.i.i65 ], [ %.079.i.i.i67.ph, %.lr.ph.i.i.i65.preheader213 ]
  %i.eo = getelementptr inbounds i8, ptr %.079.i.i.i67, i64 -4 ; 4 uses
  %i.ep = getelementptr inbounds i8, ptr %.010.i.i.i66, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !247
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !247
  store i32 0, ptr %i.eo, align 4, !tbaa !247
  %.not.i.i.i68 = icmp eq ptr %i.da, %i.eo
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i65, !llvm.loop !3055

bb.j:                                             ; preds = %.lr.ph.i62
  %i.er = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 3 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !247 ; 2 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !247 ; 2 uses
  %i.ev = icmp slt i32 %i.et, %i.eu
  %i.ew = getelementptr i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.ev, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !247
  store i32 0, ptr %i.es, align 4, !tbaa !247
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !247
  store i32 0, ptr %i.er, align 4, !tbaa !247
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.120.i = phi ptr [ %i.es, %bb.k ], [ %.01929.i, %bb.l ]
  %.1.i63 = phi ptr [ %.030.i, %bb.k ], [ %i.er, %bb.l ] ; 2 uses
  %.not.i64 = icmp eq ptr %i.da, %.1.i63
  %indvar.next189 = add i64 %indvar188, 1
  br i1 %.not.i64, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i62, !llvm.loop !83

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.sink = phi ptr [ %i.q, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.da, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ]
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.ex, align 8, !tbaa !341
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.m, %.lr.ph.i.i.i65, %middle.block155, %middle.block209, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i45, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !247
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 19 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !49

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i185.le = ptrtoaddr ptr %.114.i to i64    ; 3 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !254  ; 8 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  %i.v = load ptr, ptr %3, align 8, !tbaa !255    ; 21 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.x = add i64 %i.e, -4
  %i.y = sub i64 %i.x, %.114.i185.le              ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = add i64 %i.ab, 4                        ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %.114.i, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %i.ae
  %bound1 = icmp ult ptr %.114.i, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader305, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %.114.i, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.114.i, i64 %i.ai ; 3 uses
  %i.aj = getelementptr i8, ptr %next.gep158, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !247, !alias.scope !3096
  %wide.load159 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !247, !alias.scope !3096
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3097, !noalias !3096
  store <4 x i32> %wide.load159, ptr %i.ak, align 4, !tbaa !247, !alias.scope !3097, !noalias !3096
  store <4 x i32> zeroinitializer, ptr %next.gep158, align 4, !tbaa !247, !alias.scope !3096
  store <4 x i32> zeroinitializer, ptr %i.aj, align 4, !tbaa !247, !alias.scope !3096
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3067

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader305

.lr.ph.i.i.preheader305:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ag, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader305, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 3 uses
  %i.am = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.am, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !3068

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1730.i = icmp eq i64 %i.u, %i.s
  br i1 %.not1730.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ap = sub i64 %i.u, %i.s
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol

.lr.ph.i40.prol:                                  ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40.prol
  %.031.i.prol = phi i64 [ %i.aq, %.lr.ph.i40.prol ], [ %i.u, %.lr.ph.i40.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.prol ], [ 0, %.lr.ph.i40.preheader ]
  %i.aq = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aq
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !247
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol, !llvm.loop !3069

.lr.ph.i40.prol.loopexit:                         ; preds = %.lr.ph.i40.prol, %.lr.ph.i40.preheader
  %.031.i.unr = phi i64 [ %i.u, %.lr.ph.i40.preheader ], [ %i.aq, %.lr.ph.i40.prol ]
  %i.au = sub i64 %i.s, %i.u
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40
  %.031.i = phi i64 [ %i.bi, %.lr.ph.i40 ], [ %.031.i.unr, %.lr.ph.i40.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr [4 x i8], ptr %i.v, i64 %.031.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !247
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ba = getelementptr [4 x i8], ptr %i.v, i64 %.031.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !247
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.be = getelementptr [4 x i8], ptr %i.v, i64 %.031.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -12
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !247
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bi = add i64 %.031.i, -4                     ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bi
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !247
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not17.i.3 = icmp eq i64 %i.bi, %i.s
  br i1 %.not17.i.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i40, !llvm.loop !38

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.idx27.i = shl i64 %i.u, 2                     ; 4 uses
  %i.bm = getelementptr i8, ptr %.114.i, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.bn = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.bn, 28
  br i1 %min.iters.check166, label %.lr.ph.i19.i.preheader302, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bq = getelementptr i8, ptr %i.v, i64 %.idx27.i
  %bound0168 = icmp ult ptr %i.v, %i.bm
  %bound1169 = icmp ult ptr %.114.i, %i.bq
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i19.i.preheader302, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.bp, 9223372036854775800  ; 3 uses
  %i.br = shl i64 %n.vec172, 2                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.v, i64 %i.br   ; 2 uses
  %i.bt = getelementptr i8, ptr %.114.i, i64 %i.br
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.bu = shl i64 %index174, 2                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.v, i64 %i.bu ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.114.i, i64 %i.bu ; 3 uses
  %i.bv = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !247, !alias.scope !3098
  %wide.load178 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !247, !alias.scope !3098
  %i.bw = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %wide.load177, ptr %next.gep175, align 4, !tbaa !247, !alias.scope !3099, !noalias !3098
  store <4 x i32> %wide.load178, ptr %i.bw, align 4, !tbaa !247, !alias.scope !3099, !noalias !3098
  store <4 x i32> zeroinitializer, ptr %next.gep176, align 4, !tbaa !247, !alias.scope !3098
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !247, !alias.scope !3098
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.bx, label %middle.block180, label %vector.body173, !llvm.loop !3073

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.bp, %n.vec172
  br i1 %cmp.n181, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader302

.lr.ph.i19.i.preheader302:                        ; preds = %vector.memcheck167, %.lr.ph.i19.i.preheader, %middle.block180
  %.010.i20.i.ph = phi ptr [ %i.v, %vector.memcheck167 ], [ %i.v, %.lr.ph.i19.i.preheader ], [ %i.bs, %middle.block180 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck167 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.bt, %middle.block180 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader302, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.ca, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader302 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bz, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader302 ] ; 3 uses
  %i.by = load i32, ptr %.079.i21.i, align 4, !tbaa !247
  store i32 %i.by, ptr %.010.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bz, %i.bm
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !3074

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block180, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.v, %bb.f ], [ %i.bs, %middle.block180 ], [ %i.ca, %.lr.ph.i19.i ]
  %.not10.i.i = icmp eq i64 %.idx27.i, %i.r
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.ce, %.lr.ph.i25.i ], [ %i.bm, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.cf, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.cb = load i32, ptr %.012.i.i, align 4, !tbaa !247
  store i32 %i.cb, ptr %.0911.i.i, align 4, !tbaa !247
  store i32 0, ptr %.012.i.i, align 4, !tbaa !247
  %i.cc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.ce, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !39

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !254
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i42, %bb.j ], [ %i.v, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 11 uses
  %.01625.i = phi ptr [ %.117.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 5 uses
  %.01824.i = phi ptr [ %i.dk, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit ] ; 8 uses
  %i.ch = icmp eq ptr %.01625.i, %2
  br i1 %i.ch, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i41
  %.026.i186.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.ci = add i64 %i.w, %i.e
  %i.cj = add i64 %i.ci, -4
  %i.ck = add i64 %.114.i185.le, %.026.i186.le
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.cl, 108
  br i1 %min.iters.check194, label %.lr.ph.i.i.i.preheader295, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.co = shl i64 %indvar, 2
  %i.cp = getelementptr i8, ptr %.114.i, i64 %i.co
  %scevgep = getelementptr i8, ptr %i.cp, i64 4
  %i.cq = add i64 %i.w, %i.e
  %i.cr = add i64 %i.cq, -4
  %i.cs = add i64 %.114.i185.le, %.026.i186.le
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %scevgep187 = getelementptr i8, ptr %scevgep, i64 %i.cu
  %scevgep188 = getelementptr i8, ptr %.026.i, i64 4
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.cu
  %bound0190 = icmp ult ptr %.01824.i, %scevgep189
  %bound1191 = icmp ult ptr %.026.i, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  br i1 %found.conflict192, label %.lr.ph.i.i.i.preheader295, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck184
  %n.vec196 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.cv = shl i64 %n.vec196, 2                    ; 2 uses
  %i.cw = getelementptr i8, ptr %.01824.i, i64 %i.cv
  %i.cx = getelementptr i8, ptr %.026.i, i64 %i.cv
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 2 uses
  %i.cy = shl i64 %index198, 2                    ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.01824.i, i64 %i.cy ; 2 uses
  %next.gep200 = getelementptr i8, ptr %.026.i, i64 %i.cy ; 3 uses
  %i.cz = getelementptr i8, ptr %next.gep200, i64 16 ; 2 uses
  %wide.load201 = load <4 x i32>, ptr %next.gep200, align 4, !tbaa !247, !alias.scope !3100
  %wide.load202 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !247, !alias.scope !3100
  %i.da = getelementptr i8, ptr %next.gep199, i64 16
  store <4 x i32> %wide.load201, ptr %next.gep199, align 4, !tbaa !247, !alias.scope !3101, !noalias !3100
  store <4 x i32> %wide.load202, ptr %i.da, align 4, !tbaa !247, !alias.scope !3101, !noalias !3100
  store <4 x i32> zeroinitializer, ptr %next.gep200, align 4, !tbaa !247, !alias.scope !3100
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !247, !alias.scope !3100
  %index.next203 = add nuw i64 %index198, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.db, label %middle.block204, label %vector.body197, !llvm.loop !3078

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.cn, %n.vec196
  br i1 %cmp.n205, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i.preheader295

.lr.ph.i.i.i.preheader295:                        ; preds = %vector.memcheck184, %.lr.ph.i.i.i.preheader, %middle.block204
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck184 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.cw, %middle.block204 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck184 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.cx, %middle.block204 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader295, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 3 uses
  %i.dc = load i32, ptr %.079.i.i.i, align 4, !tbaa !247
  store i32 %i.dc, ptr %.010.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.dd, %i.cg
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3079

bb.g:                                             ; preds = %.lr.ph.i41
  %i.df = load i32, ptr %.01625.i, align 4, !tbaa !247 ; 2 uses
  %i.dg = load i32, ptr %.026.i, align 4, !tbaa !247 ; 2 uses
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.df, ptr %.01824.i, align 4, !tbaa !247
  store i32 0, ptr %.01625.i, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.dg, ptr %.01824.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i = phi ptr [ %i.di, %bb.h ], [ %.01625.i, %bb.i ]
  %.1.i42 = phi ptr [ %.026.i, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %i.dk = getelementptr i8, ptr %.01824.i, i64 4
  %.not.i43 = icmp eq ptr %.1.i42, %i.cg
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i43, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i41, !llvm.loop !42

.lr.ph.i45:                                       ; preds = %bb.c
  %i.dl = ashr exact i64 %i.i, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i45
  %.017.i46 = phi i64 [ %i.dl, %.lr.ph.i45 ], [ %.1.i50, %bb.k ] ; 2 uses
  %.01316.i47 = phi ptr [ %1, %.lr.ph.i45 ], [ %.114.i49, %bb.k ] ; 2 uses
  %i.dm = lshr i64 %.017.i46, 1                   ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.01316.i47, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !247
  %i.dp = icmp slt i32 %i.do, %i.c                ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.neg.i48 = xor i64 %i.dm, -1
  %i.dr = add i64 %.017.i46, %.neg.i48
  %.114.i49 = select i1 %i.dp, ptr %i.dq, ptr %.01316.i47 ; 9 uses
  %.1.i50 = select i1 %i.dp, i64 %i.dr, i64 %i.dm ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.k, !llvm.loop !45

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i49217.le = ptrtoaddr ptr %.114.i49 to i64
  %i.ds = ptrtoint ptr %.114.i49 to i64
  %i.dt = sub i64 %i.ds, %i.e                     ; 3 uses
  %i.du = ashr exact i64 %i.dt, 2                 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !254 ; 8 uses
  %.not.i53 = icmp ugt i64 %i.du, %i.dw
  %i.dx = load ptr, ptr %3, align 8, !tbaa !255   ; 22 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 2 uses
  br i1 %.not.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  br i1 %.not8.i.i54, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i59, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.l
  %i.dz = add i64 %.114.i49217.le, -4
  %i.ea = sub i64 %i.dz, %i.e                     ; 3 uses
  %i.eb = lshr i64 %i.ea, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.ea, 60
  br i1 %min.iters.check218, label %.lr.ph.i.i55.preheader294, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph.i.i55.preheader
  %i.ed = and i64 %i.ea, -4
  %i.ee = add i64 %i.ed, 4                        ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dx, i64 %i.ee
  %i.eg = getelementptr i8, ptr %1, i64 %i.ee
  %bound0220 = icmp ult ptr %i.dx, %i.eg
  %bound1221 = icmp ult ptr %1, %i.ef
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %.lr.ph.i.i55.preheader294, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck219
  %n.vec224 = and i64 %i.ec, 9223372036854775800  ; 3 uses
  %i.eh = shl i64 %n.vec224, 2                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dx, i64 %i.eh
  %i.ej = getelementptr i8, ptr %1, i64 %i.eh
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph223
  %index226 = phi i64 [ 0, %vector.ph223 ], [ %index.next231, %vector.body225 ] ; 2 uses
  %i.ek = shl i64 %index226, 2                    ; 2 uses
  %next.gep227 = getelementptr i8, ptr %i.dx, i64 %i.ek ; 2 uses
  %next.gep228 = getelementptr i8, ptr %1, i64 %i.ek ; 3 uses
  %i.el = getelementptr i8, ptr %next.gep228, i64 16 ; 2 uses
  %wide.load229 = load <4 x i32>, ptr %next.gep228, align 4, !tbaa !247, !alias.scope !3102
  %wide.load230 = load <4 x i32>, ptr %i.el, align 4, !tbaa !247, !alias.scope !3102
  %i.em = getelementptr i8, ptr %next.gep227, i64 16
  store <4 x i32> %wide.load229, ptr %next.gep227, align 4, !tbaa !247, !alias.scope !3103, !noalias !3102
  store <4 x i32> %wide.load230, ptr %i.em, align 4, !tbaa !247, !alias.scope !3103, !noalias !3102
  store <4 x i32> zeroinitializer, ptr %next.gep228, align 4, !tbaa !247, !alias.scope !3102
  store <4 x i32> zeroinitializer, ptr %i.el, align 4, !tbaa !247, !alias.scope !3102
  %index.next231 = add nuw i64 %index226, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next231, %n.vec224
  br i1 %i.en, label %middle.block232, label %vector.body225, !llvm.loop !3083

middle.block232:                                  ; preds = %vector.body225
  %cmp.n233 = icmp eq i64 %i.ec, %n.vec224
  br i1 %cmp.n233, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i59, label %.lr.ph.i.i55.preheader294

.lr.ph.i.i55.preheader294:                        ; preds = %vector.memcheck219, %.lr.ph.i.i55.preheader, %middle.block232
  %.010.i.i56.ph = phi ptr [ %i.dx, %vector.memcheck219 ], [ %i.dx, %.lr.ph.i.i55.preheader ], [ %i.ei, %middle.block232 ]
  %.079.i.i57.ph = phi ptr [ %1, %vector.memcheck219 ], [ %1, %.lr.ph.i.i55.preheader ], [ %i.ej, %middle.block232 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader294, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.eq, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader294 ] ; 2 uses
  %.079.i.i57 = phi ptr [ %i.ep, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader294 ] ; 3 uses
  %i.eo = load i32, ptr %.079.i.i57, align 4, !tbaa !247
  store i32 %i.eo, ptr %.010.i.i56, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i57, align 4, !tbaa !247
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  %.not.i.i58 = icmp eq ptr %i.ep, %.114.i49
  br i1 %.not.i.i58, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i59, label %.lr.ph.i.i55, !llvm.loop !3084

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i59: ; preds = %.lr.ph.i.i55, %middle.block232, %bb.l
  %.not1730.i60 = icmp eq i64 %i.dw, %i.du
  br i1 %.not1730.i60, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit77, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i59
  %i.er = sub i64 %i.dw, %i.du
  %xtraiter306 = and i64 %i.er, 3                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol

.lr.ph.i61.prol:                                  ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61.prol
  %.031.i62.prol = phi i64 [ %i.es, %.lr.ph.i61.prol ], [ %i.dw, %.lr.ph.i61.preheader ]
  %prol.iter308 = phi i64 [ %prol.iter308.next, %.lr.ph.i61.prol ], [ 0, %.lr.ph.i61.preheader ]
  %i.es = add i64 %.031.i62.prol, -1              ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.es
  store i32 -2147483648, ptr %i.et, align 4, !tbaa !247
  %i.eu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ev = add i32 %i.eu, -1
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol, !llvm.loop !3085

.lr.ph.i61.prol.loopexit:                         ; preds = %.lr.ph.i61.prol, %.lr.ph.i61.preheader
  %.031.i62.unr = phi i64 [ %i.dw, %.lr.ph.i61.preheader ], [ %i.es, %.lr.ph.i61.prol ]
  %i.ew = sub i64 %i.du, %i.dw
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit77, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.prol.loopexit, %.lr.ph.i61
  %.031.i62 = phi i64 [ %i.fk, %.lr.ph.i61 ], [ %.031.i62.unr, %.lr.ph.i61.prol.loopexit ] ; 4 uses
  %i.ey = getelementptr [4 x i8], ptr %i.dx, i64 %.031.i62
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  store i32 -2147483648, ptr %i.ez, align 4, !tbaa !247
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fc = getelementptr [4 x i8], ptr %i.dx, i64 %.031.i62
  %i.fd = getelementptr i8, ptr %i.fc, i64 -8
  store i32 -2147483648, ptr %i.fd, align 4, !tbaa !247
  %i.fe = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ff = add i32 %i.fe, -1
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fg = getelementptr [4 x i8], ptr %i.dx, i64 %.031.i62
  %i.fh = getelementptr i8, ptr %i.fg, i64 -12
  store i32 -2147483648, ptr %i.fh, align 4, !tbaa !247
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fj = add i32 %i.fi, -1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fk = add i64 %.031.i62, -4                   ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fk
  store i32 -2147483648, ptr %i.fl, align 4, !tbaa !247
  %i.fm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fn = add i32 %i.fm, -1
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not17.i63.3 = icmp eq i64 %i.fk, %i.du
  br i1 %.not17.i63.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit77, label %.lr.ph.i61, !llvm.loop !38

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.idx27.i64 = shl i64 %i.dw, 2                  ; 4 uses
  %i.fo = getelementptr i8, ptr %1, i64 %.idx27.i64 ; 3 uses
  %.not8.i18.i65 = icmp eq i64 %i.dw, 0
  br i1 %.not8.i18.i65, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70, label %.lr.ph.i19.i66.preheader

.lr.ph.i19.i66.preheader:                         ; preds = %bb.m
  %i.fp = add i64 %.idx27.i64, -4                 ; 2 uses
  %i.fq = lshr exact i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check242 = icmp ult i64 %i.fp, 28
  br i1 %min.iters.check242, label %.lr.ph.i19.i66.preheader292, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i19.i66.preheader
  %i.fs = getelementptr i8, ptr %i.dx, i64 %.idx27.i64
  %bound0244 = icmp ult ptr %i.dx, %i.fo
  %bound1245 = icmp ult ptr %1, %i.fs
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %.lr.ph.i19.i66.preheader292, label %vector.ph247

vector.ph247:                                     ; preds = %vector.memcheck243
  %n.vec248 = and i64 %i.fr, 9223372036854775800  ; 3 uses
  %i.ft = shl i64 %n.vec248, 2                    ; 2 uses
  %i.fu = getelementptr i8, ptr %i.dx, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %1, i64 %i.ft
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 2 uses
  %i.fw = shl i64 %index250, 2                    ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.dx, i64 %i.fw ; 2 uses
  %next.gep252 = getelementptr i8, ptr %1, i64 %i.fw ; 3 uses
  %i.fx = getelementptr i8, ptr %next.gep252, i64 16 ; 2 uses
  %wide.load253 = load <4 x i32>, ptr %next.gep252, align 4, !tbaa !247, !alias.scope !3104
  %wide.load254 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !247, !alias.scope !3104
  %i.fy = getelementptr i8, ptr %next.gep251, i64 16
  store <4 x i32> %wide.load253, ptr %next.gep251, align 4, !tbaa !247, !alias.scope !3105, !noalias !3104
  store <4 x i32> %wide.load254, ptr %i.fy, align 4, !tbaa !247, !alias.scope !3105, !noalias !3104
  store <4 x i32> zeroinitializer, ptr %next.gep252, align 4, !tbaa !247, !alias.scope !3104
  store <4 x i32> zeroinitializer, ptr %i.fx, align 4, !tbaa !247, !alias.scope !3104
  %index.next255 = add nuw i64 %index250, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.fz, label %middle.block256, label %vector.body249, !llvm.loop !3089

middle.block256:                                  ; preds = %vector.body249
  %cmp.n257 = icmp eq i64 %i.fr, %n.vec248
  br i1 %cmp.n257, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70, label %.lr.ph.i19.i66.preheader292

.lr.ph.i19.i66.preheader292:                      ; preds = %vector.memcheck243, %.lr.ph.i19.i66.preheader, %middle.block256
  %.010.i20.i67.ph = phi ptr [ %i.dx, %vector.memcheck243 ], [ %i.dx, %.lr.ph.i19.i66.preheader ], [ %i.fu, %middle.block256 ]
  %.079.i21.i68.ph = phi ptr [ %1, %vector.memcheck243 ], [ %1, %.lr.ph.i19.i66.preheader ], [ %i.fv, %middle.block256 ]
  br label %.lr.ph.i19.i66

.lr.ph.i19.i66:                                   ; preds = %.lr.ph.i19.i66.preheader292, %.lr.ph.i19.i66
  %.010.i20.i67 = phi ptr [ %i.gc, %.lr.ph.i19.i66 ], [ %.010.i20.i67.ph, %.lr.ph.i19.i66.preheader292 ] ; 2 uses
  %.079.i21.i68 = phi ptr [ %i.gb, %.lr.ph.i19.i66 ], [ %.079.i21.i68.ph, %.lr.ph.i19.i66.preheader292 ] ; 3 uses
  %i.ga = load i32, ptr %.079.i21.i68, align 4, !tbaa !247
  store i32 %i.ga, ptr %.010.i20.i67, align 4, !tbaa !247
  store i32 0, ptr %.079.i21.i68, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %.079.i21.i68, i64 4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.010.i20.i67, i64 4 ; 2 uses
  %.not.i22.i69 = icmp eq ptr %i.gb, %i.fo
  br i1 %.not.i22.i69, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70, label %.lr.ph.i19.i66, !llvm.loop !3090

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70: ; preds = %.lr.ph.i19.i66, %middle.block256, %bb.m
  %.0.lcssa.i23.i71 = phi ptr [ %i.dx, %bb.m ], [ %i.fu, %middle.block256 ], [ %i.gc, %.lr.ph.i19.i66 ]
  %.not10.i.i72 = icmp eq i64 %.idx27.i64, %i.dt
  br i1 %.not10.i.i72, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit77, label %.lr.ph.i25.i73

.lr.ph.i25.i73:                                   ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70, %.lr.ph.i25.i73
  %.012.i.i74 = phi ptr [ %i.gg, %.lr.ph.i25.i73 ], [ %i.fo, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70 ] ; 3 uses
  %.0911.i.i75 = phi ptr [ %i.gh, %.lr.ph.i25.i73 ], [ %.0.lcssa.i23.i71, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i70 ] ; 2 uses
  %i.gd = load i32, ptr %.012.i.i74, align 4, !tbaa !247
  store i32 %i.gd, ptr %.0911.i.i75, align 4, !tbaa !247
  store i32 0, ptr %.012.i.i74, align 4, !tbaa !247
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i74, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0911.i.i75, i64 4
  %.not.i26.i76 = icmp eq ptr %i.gg, %.114.i49
  br i1 %.not.i26.i76, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit77, label %.lr.ph.i25.i73, !llvm.loop !39
end_hunk_12
begin_hunk_13_@_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE:bb.a
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.preheader.i.i.i

.lr.ph.i21.i.preheader.i.i.i:                     ; preds = %_ZN5boost9container6move_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i
  %.pre.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %min.iters.check47 = icmp ult i64 %i.fo, 12
  br i1 %min.iters.check47, label %.lr.ph.i21.i.i.i.i.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i21.i.preheader.i.i.i
  %i.fp = sub i64 %i.bk, %i.bl
  %i.fq = shl i64 %i.fp, 2
  %i.fr = getelementptr i8, ptr %.0.lcssa.i20.i.i.i.i, i64 %i.fq
  %bound049 = icmp ult ptr %.0.lcssa.i20.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound150 = icmp ugt ptr %i.fr, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph.i21.i.i.i.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck48
  %n.vec53 = and i64 %i.fo, -8                    ; 3 uses
  %i.fs = and i64 %i.fo, 7
  %i.ft = shl i64 %n.vec53, 2
  %i.fu = getelementptr i8, ptr %.0.lcssa.i20.i.i.i.i, i64 %i.ft
  %i.fv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre.i.i.i, i64 0
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fv, %vector.ph52 ], [ %i.fy, %vector.body54 ]
  %vec.phi56 = phi <4 x i32> [ zeroinitializer, %vector.ph52 ], [ %i.fz, %vector.body54 ]
  %i.fw = shl i64 %index55, 2
  %next.gep57 = getelementptr i8, ptr %.0.lcssa.i20.i.i.i.i, i64 %i.fw ; 2 uses
  %i.fx = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep57, align 4, !tbaa !247, !alias.scope !14991, !noalias !14992
  store <4 x i32> splat (i32 -2147483648), ptr %i.fx, align 4, !tbaa !247, !alias.scope !14991, !noalias !14992
  %i.fy = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.fz = add <4 x i32> %vec.phi56, splat (i32 -1) ; 2 uses
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.ga = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.ga, label %middle.block59, label %vector.body54, !llvm.loop !14978

middle.block59:                                   ; preds = %vector.body54
  %bin.rdx = add <4 x i32> %i.fz, %i.fy
  %i.gb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !14992
  %cmp.n60 = icmp eq i64 %i.fo, %n.vec53
  br i1 %cmp.n60, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i.preheader

.lr.ph.i21.i.i.i.i.preheader:                     ; preds = %vector.memcheck48, %.lr.ph.i21.i.preheader.i.i.i, %middle.block59
  %.ph155 = phi i32 [ %.pre.i.i.i, %vector.memcheck48 ], [ %.pre.i.i.i, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.gb, %middle.block59 ] ; 2 uses
  %.05.i.i.i.i.i.ph = phi i64 [ %i.fo, %vector.memcheck48 ], [ %i.fo, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.fs, %middle.block59 ] ; 4 uses
  %storemerge4.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i20.i.i.i.i, %vector.memcheck48 ], [ %.0.lcssa.i20.i.i.i.i, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.fu, %middle.block59 ] ; 2 uses
  %i.gc = add i64 %.05.i.i.i.i.i.ph, -1
  %xtraiter171 = and i64 %.05.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i21.i.i.i.i.prol.loopexit, label %.lr.ph.i21.i.i.i.i.prol

.lr.ph.i21.i.i.i.i.prol:                          ; preds = %.lr.ph.i21.i.i.i.i.preheader, %.lr.ph.i21.i.i.i.i.prol
  %i.gd = phi i32 [ %i.gf, %.lr.ph.i21.i.i.i.i.prol ], [ %.ph155, %.lr.ph.i21.i.i.i.i.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ge, %.lr.ph.i21.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.gg, %.lr.ph.i21.i.i.i.i.prol ], [ %storemerge4.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i21.i.i.i.i.prol ], [ 0, %.lr.ph.i21.i.i.i.i.preheader ]
  %i.ge = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !247
  %i.gf = add i32 %i.gd, -1                       ; 3 uses
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i21.i.i.i.i.prol.loopexit, label %.lr.ph.i21.i.i.i.i.prol, !llvm.loop !14979

.lr.ph.i21.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i21.i.i.i.i.prol, %.lr.ph.i21.i.i.i.i.preheader
  %.unr = phi i32 [ %.ph155, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.gf, %.lr.ph.i21.i.i.i.i.prol ]
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.ge, %.lr.ph.i21.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %storemerge4.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.gg, %.lr.ph.i21.i.i.i.i.prol ]
  %i.gh = icmp ult i64 %i.gc, 3
  br i1 %i.gh, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i

.lr.ph.i21.i.i.i.i:                               ; preds = %.lr.ph.i21.i.i.i.i.prol.loopexit, %.lr.ph.i21.i.i.i.i
  %i.gi = phi i32 [ %i.gq, %.lr.ph.i21.i.i.i.i ], [ %.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ] ; 4 uses
  %.05.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i21.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i21.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !247
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.gk, align 4, !tbaa !247
  %i.gl = add i32 %i.gi, -2
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.gm, align 4, !tbaa !247
  %i.gn = add i32 %i.gi, -3
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.go = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.gp = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.go, align 4, !tbaa !247
  %i.gq = add i32 %i.gi, -4                       ; 2 uses
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i22.i.i.i.i.3 = icmp eq i64 %i.gp, 0
  br i1 %.not.i22.i.i.i.i.3, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i, !llvm.loop !14980

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i: ; preds = %.lr.ph.i21.i.i.i.i.prol.loopexit, %.lr.ph.i21.i.i.i.i, %.lr.ph.i14.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i, %middle.block59, %middle.block131, %_ZN5boost9container6move_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !294
  %i.gs = load i64, ptr %i.m, align 8, !tbaa !296 ; 7 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %min.iters.check139 = icmp ult i64 %i.gs, 8
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %n.vec141 = and i64 %i.gs, -8                   ; 3 uses
  %i.gt = and i64 %i.gs, 7
  %i.gu = shl i64 %n.vec141, 2
  %i.gv = getelementptr i8, ptr %1, i64 %i.gu
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next145, %vector.body142 ] ; 2 uses
  %i.gw = shl i64 %index143, 2
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.gw ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep144, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep144, align 8, !tbaa !247
  store <4 x i32> splat (i32 -2147483648), ptr %i.gx, align 8, !tbaa !247
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.gy, label %middle.block146, label %vector.body142, !llvm.loop !14981

middle.block146:                                  ; preds = %vector.body142
  %cmp.n147 = icmp eq i64 %i.gs, %n.vec141
  br i1 %cmp.n147, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %middle.block146
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.gs, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.gt, %middle.block146 ]
  %storemerge4.i.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.gv, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gz = add i64 %.05.i.i.i.i.i.i, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !247
  %i.ha = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14982

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block146
  %i.hb = trunc i64 %i.gs to i32
  %i.hc = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.hb
  store i32 %i.hc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !296
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEaSEOS4_.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEaSEOS4_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i, align 4, !tbaa !247
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.k) #28
  br label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !303
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !301  ; 21 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.q, ptr %.013.i.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !247
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14993

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.v, ptr %i.g, align 8, !tbaa !301
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 8 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check138 = icmp ult i64 %i.y, 16
  br i1 %min.iters.check138, label %.lr.ph.i.i.i.i.i55.preheader203, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.aa = mul nsw i64 %i.y, -4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = add i64 %i.x, %i.a
  %i.ad = sub i64 %i.b, %i.ac
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %bound0 = icmp ult ptr %i.ab, %i.p
  %bound1 = icmp ult ptr %i.ae, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i55.preheader203, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck139
  %n.vec141 = and i64 %i.y, 9223372036854775800   ; 3 uses
  %i.af = and i64 %i.y, 7
  %i.ag = mul i64 %n.vec141, -4                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.h, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ag
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next148, %vector.body142 ] ; 2 uses
  %i.aj = mul i64 %index143, -4                   ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.h, i64 %i.aj ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.p, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !247, !alias.scope !15009
  %wide.load147 = load <4 x i32>, ptr %i.al, align 4, !tbaa !247, !alias.scope !15009
  %i.am = getelementptr inbounds i8, ptr %next.gep144, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep144, i64 -32
  store <4 x i32> %wide.load146, ptr %i.am, align 4, !tbaa !247, !alias.scope !15010, !noalias !15009
  store <4 x i32> %wide.load147, ptr %i.an, align 4, !tbaa !247, !alias.scope !15010, !noalias !15009
  store <4 x i32> zeroinitializer, ptr %i.ak, align 4, !tbaa !247, !alias.scope !15009
  store <4 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !247, !alias.scope !15009
  %index.next148 = add nuw i64 %index143, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.ao, label %middle.block149, label %vector.body142, !llvm.loop !14997

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.y, %n.vec141
  br i1 %cmp.n150, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i55.preheader203

.lr.ph.i.i.i.i.i55.preheader203:                  ; preds = %vector.memcheck139, %.lr.ph.i.i.i.i.i55.preheader, %middle.block149
  %.010.i.i.i.i.i.ph = phi i64 [ %i.y, %vector.memcheck139 ], [ %i.y, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.af, %middle.block149 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck139 ], [ %i.h, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %middle.block149 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck139 ], [ %i.p, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %middle.block149 ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader203, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i55 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader203 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i55 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader203 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i55 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader203 ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !247
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !247
  store i32 0, ptr %i.ap, align 4, !tbaa !247
  %i.as = add nsw i64 %.010.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, !llvm.loop !14998

_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i55, %middle.block149, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.au = icmp sgt i64 %i.d, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit
  %min.iters.check157 = icmp ult i64 %i.d, 8
  %i.av = sub i64 %i.b, %i.l
  %diff.check155 = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check157, %diff.check155
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i56.preheader202, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %n.vec159 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.aw = and i64 %i.d, 7
  %i.ax = shl i64 %n.vec159, 2                    ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %2, i64 %i.ax
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.ba = shl i64 %index161, 2                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  %next.gep163 = getelementptr i8, ptr %2, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load164 = load <4 x i32>, ptr %next.gep163, align 4, !tbaa !247
  %wide.load165 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !247
  %i.bc = getelementptr i8, ptr %next.gep162, i64 16
  store <4 x i32> %wide.load164, ptr %next.gep162, align 4, !tbaa !247
  store <4 x i32> %wide.load165, ptr %i.bc, align 4, !tbaa !247
  %index.next166 = add nuw i64 %index161, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.bd, label %middle.block167, label %vector.body160, !llvm.loop !14999

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.d, %n.vec159
  br i1 %cmp.n168, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i56.preheader202

.lr.ph.i.i.i.i.i56.preheader202:                  ; preds = %.lr.ph.i.i.i.i.i56.preheader, %middle.block167
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.aw, %middle.block167 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ay, %middle.block167 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.az, %middle.block167 ]
  br label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader202, %.lr.ph.i.i.i.i.i56
  %.012.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader202 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i56 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader202 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i56 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i56.preheader202 ] ; 2 uses
  %i.be = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.be, ptr %.0811.i.i.i.i.i, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bh = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, !llvm.loop !15000

_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.bj, %3
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bk = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !247
  store i32 %i.bk, ptr %.015.i.i.i.i, align 4, !tbaa !247
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bn, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15001

_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__advanceIPKN5boost9container4test24movable_and_copyable_intElEvRT_T0_St26random_access_iterator_tag.exit
  %.not11.i.i.i.i.i57 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit
  %i.bp = sub nuw nsw i64 %i.d, %i.n
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader, %.lr.ph.i.i.i.i.i58
  %.013.i.i.i.i.i59 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i58 ], [ %i.bq, %.lr.ph.i.i.i.i.i58.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i60 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i58 ], [ %1, %.lr.ph.i.i.i.i.i58.preheader ] ; 3 uses
  %i.br = load i32, ptr %.sroa.08.012.i.i.i.i.i60, align 4, !tbaa !247
  store i32 %i.br, ptr %.013.i.i.i.i.i59, align 4, !tbaa !247
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i60, align 4, !tbaa !247
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i60, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i59, i64 4
  %.not.i.i.i.i.i61 = icmp eq ptr %i.bu, %i.h
  br i1 %.not.i.i.i.i.i61, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63, label %.lr.ph.i.i.i.i.i58, !llvm.loop !14993

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63: ; preds = %.lr.ph.i.i.i.i.i58, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !301
  %i.bx = ashr exact i64 %i.m, 2                  ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i65.preheader, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond196 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond196, label %.lr.ph.i.i.i.i.i65.preheader204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i65.preheader
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec, 2                       ; 2 uses
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr i8, ptr %2, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.ce ; 2 uses
  %next.gep131 = getelementptr i8, ptr %2, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !247
  %wide.load132 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !247
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247
  store <4 x i32> %wide.load132, ptr %i.cg, align 4, !tbaa !247
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !15002

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i65.preheader204

.lr.ph.i.i.i.i.i65.preheader204:                  ; preds = %.lr.ph.i.i.i.i.i65.preheader, %middle.block
  %.012.i.i.i.i.i66.ph = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.ca, %middle.block ]
  %.0811.i.i.i.i.i67.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.cc, %middle.block ]
  %.0910.i.i.i.i.i68.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader204, %.lr.ph.i.i.i.i.i65
  %.012.i.i.i.i.i66 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i65 ], [ %.012.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader204 ] ; 2 uses
  %.0811.i.i.i.i.i67 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i65 ], [ %.0811.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader204 ] ; 2 uses
  %.0910.i.i.i.i.i68 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i65 ], [ %.0910.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i65.preheader204 ] ; 2 uses
  %i.ci = load i32, ptr %.0910.i.i.i.i.i68, align 4, !tbaa !247
  store i32 %i.ci, ptr %.0811.i.i.i.i.i67, align 4, !tbaa !247
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i68, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i67, i64 4
  %i.cl = add nsw i64 %.012.i.i.i.i.i66, -1
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i66, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i65, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, !llvm.loop !15003

bb.e:                                             ; preds = %bb.b
  %i.cn = load ptr, ptr %0, align 8, !tbaa !302   ; 12 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = sub i64 %i.j, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 4 uses
  %i.cr = sub nsw i64 2305843009213693951, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.d
  br i1 %i.cs, label %bb.f, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.d)
  %i.ct = add nsw i64 %.sroa.speculated.i, %i.cq  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cq
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 3 uses
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.cz = phi ptr [ %i.cy, %bb.g ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.cn, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.da = add i64 %4, -4
  %i.db = sub i64 %i.da, %i.co                    ; 3 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.db, 60
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i70.preheader198, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %i.de = and i64 %i.db, -4
  %i.df = getelementptr i8, ptr %i.cn, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %bound0179 = icmp ugt ptr %i.dg, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1180 = icmp ult ptr %i.cn, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i70.preheader198, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck178
  %n.vec183 = and i64 %i.dd, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec183, 2                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.cz, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cn, i64 %i.dh
  %i.dk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next191, %vector.body184 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dk, %vector.ph182 ], [ %i.do, %vector.body184 ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.dp, %vector.body184 ]
  %i.dl = shl i64 %index185, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.cz, i64 %i.dl ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.cn, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <4 x i32>, ptr %next.gep188, align 4, !tbaa !247, !alias.scope !15011
  %wide.load190 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !247, !alias.scope !15011
  %i.dn = getelementptr i8, ptr %next.gep187, i64 16
  store <4 x i32> %wide.load189, ptr %next.gep187, align 4, !tbaa !247
  store <4 x i32> %wide.load190, ptr %i.dn, align 4, !tbaa !247
  %i.do = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dp = add <4 x i32> %vec.phi186, splat (i32 1) ; 2 uses
  %index.next191 = add nuw i64 %index185, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next191, %n.vec183
  br i1 %i.dq, label %middle.block192, label %vector.body184, !llvm.loop !15006

middle.block192:                                  ; preds = %vector.body184
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15012, !noalias !15011
  %cmp.n193 = icmp eq i64 %i.dd, %n.vec183
  br i1 %cmp.n193, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader198

.lr.ph.i.i.i.i.i70.preheader198:                  ; preds = %vector.memcheck178, %.lr.ph.i.i.i.i.i70.preheader, %middle.block192
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck178 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dr, %middle.block192 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.cz, %vector.memcheck178 ], [ %i.cz, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.di, %middle.block192 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck178 ], [ %i.cn, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dj, %middle.block192 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader198, %.lr.ph.i.i.i.i.i70
  %i.ds = phi i32 [ %i.du, %.lr.ph.i.i.i.i.i70 ], [ %.ph, %.lr.ph.i.i.i.i.i70.preheader198 ]
  %.015.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i70 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader198 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i70 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader198 ] ; 2 uses
  %i.dt = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.dt, ptr %.015.i.i.i.i.i, align 4, !tbaa !247
  %i.du = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %i.dv, %1
  br i1 %.not.i.i.i.i.i71, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70, !llvm.loop !15008

.lr.ph.i.i.i.i74.preheader:                       ; preds = %.lr.ph.i.i.i.i.i70, %middle.block192, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %.015.i.i.i.i75.ph = phi ptr [ %i.cz, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit ], [ %i.di, %middle.block192 ], [ %i.dw, %.lr.ph.i.i.i.i.i70 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74
  %.015.i.i.i.i75 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i74 ], [ %.015.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %.01214.i.i.i.i76 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i74 ], [ %2, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %i.dx = load i32, ptr %.01214.i.i.i.i76, align 4, !tbaa !247
  store i32 %i.dx, ptr %.015.i.i.i.i75, align 4, !tbaa !247
  %i.dy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ea = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i76, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i75, i64 4 ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.ea, %3
  br i1 %.not.i.i.i.i77, label %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, label %.lr.ph.i.i.i.i74, !llvm.loop !15001

_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79: ; preds = %.lr.ph.i.i.i.i74
  %.not13.i.i.i.i.i80 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, %.lr.ph.i.i.i.i.i81
  %.015.i.i.i.i.i82 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i81 ], [ %i.eb, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %.01214.i.i.i.i.i83 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i81 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %i.ec = load i32, ptr %.01214.i.i.i.i.i83, align 4, !tbaa !247
  store i32 %i.ec, ptr %.015.i.i.i.i.i82, align 4, !tbaa !247
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i83, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i82, i64 4 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.ef, %i.h
  br i1 %.not.i.i.i.i.i84, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81, !llvm.loop !15001

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86: ; preds = %.lr.ph.i.i.i.i.i81, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.eb, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ], [ %i.eg, %.lr.ph.i.i.i.i.i81 ]
  %.not4.i.i = icmp eq ptr %i.cn, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.cn, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ej, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86
  %.not.i87 = icmp eq ptr %i.cn, null
  br i1 %.not.i87, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !303
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.em) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.h
  store ptr %i.cz, ptr %0, align 8, !tbaa !302
  store ptr %.0.lcssa.i.i.i.i.i85, ptr %i.g, align 8, !tbaa !301
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cw
  store ptr %i.en, ptr %i.e, align 8, !tbaa !303
  br label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit

_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %.lr.ph.i.i.i.i.i56, %middle.block, %middle.block167, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63, %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 16 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = load ptr, ptr %0, align 8, !tbaa !302    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 10 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.d, -4
  %i.r = sub i64 %i.q, %i.e                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.r, 124
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.p, %i.x
end_hunk_13

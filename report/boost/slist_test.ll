Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/slist_test?download=true
inline.NumInlined: 14897
inline.NumDeleted: 3516
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN5boost7movelib11make_uniqueINS_9container5slistIiNS2_14node_allocatorIiLm256ELm2EEEEEJRS6_S5_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_:bb.a
  %i.y = load ptr, ptr %.sroa.033.03637.i.i.i, align 8, !tbaa !168, !noalias !7015
  store ptr %i.y, ptr %.sroa.033.038.i.i.i, align 8, !tbaa !168, !noalias !7015
  store ptr %.sroa.033.038.i.i.i, ptr %.sroa.033.03637.i.i.i, align 8, !tbaa !168, !noalias !7015
  %i.z = add nsw i64 %.01539.i.i.i, -2            ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !168, !noalias !7013
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !172, !noalias !7013
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !172, !noalias !7013
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !168, !noalias !7013
  %i.af = load ptr, ptr %.sroa.033.038.i.i.i, align 8, !tbaa !168, !noalias !7015
  store ptr %i.af, ptr %i.t, align 8, !tbaa !168, !noalias !7015
  store ptr %i.t, ptr %.sroa.033.038.i.i.i, align 8, !tbaa !168, !noalias !7015
  %.not17.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not17.i.i.i.1, label %_ZN5boost9container3dtl18scoped_deallocatorINS0_14node_allocatorINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEELm256ELm2EEEED2Ev.exit.i.i.i, label %_ZN5boost9container5slistIiNS0_14node_allocatorIiLm256ELm2EEEE17insertion_functorclERNS0_9base_nodeIiNS0_3dtl10slist_hookIPvEELb0EEE.exit.i.i.i, !llvm.loop !147

_ZN5boost9container3dtl18scoped_deallocatorINS0_14node_allocatorINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEELm256ELm2EEEED2Ev.exit.i.i.i: ; preds = %_ZN5boost9container5slistIiNS0_14node_allocatorIiLm256ELm2EEEE17insertion_functorclERNS0_9base_nodeIiNS0_3dtl10slist_hookIPvEELb0EEE.exit.i.i.i, %_ZN5boost9container5slistIiNS0_14node_allocatorIiLm256ELm2EEEE17insertion_functorclERNS0_9base_nodeIiNS0_3dtl10slist_hookIPvEELb0EEE.exit.i.i.i.prol.loopexit
  %i.ag = add i64 %.pre41.i.i.i, %indvars.iv.i.i
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !175, !noalias !7015
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !7013
  br label %_ZN5boost9container5slistIiNS0_14node_allocatorIiLm256ELm2EEEEC2ERKS4_RKS3_.exit

.body:                                            ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_14slist_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_14node_allocatorIiLm256ELm2EEENS_9intrusive10slist_implINS5_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS5_17slist_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj2EEEmLm2EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.ah

_ZN5boost9container5slistIiNS0_14node_allocatorIiLm256ELm2EEEEC2ERKS4_RKS3_.exit: ; preds = %_ZN5boost9container3dtl18scoped_deallocatorINS0_14node_allocatorINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEELm256ELm2EEEED2Ev.exit.i.i.i, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::slist.369", align 8 ; 17 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 28) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !182
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !204
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 5 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @_ZTSN5boost9container5slistINS0_4test10EmplaceIntEvEE, i64 noundef 49) ; 0 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !198  ; 6 uses
  %.not.i.i.i118 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i118, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !204
  %.not.i1.i.i120 = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122: ; preds = %bb.f, %bb.g
  %.0.i.i.i121 = phi i8 [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i121)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  %i.aj = load atomic i8, ptr @_ZGVZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !244

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #24
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 264), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 308), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 352), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 396), i8 0, i64 20, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #24
  br label %bb.i

bb.i:                                             ; preds = %.preheader.preheader, %bb.h, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !172
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 32 uses
  store ptr %i.am, ptr %i.am, align 8, !tbaa !168
  store i64 0, ptr %0, align 8, !tbaa !175
  %i.an = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.critedge unwind label %bb.br ; 3 uses

.critedge:                                        ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, i8 0, i64 20, i1 false), !noalias !7040
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7041
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !168, !noalias !7041
  store ptr %i.an, ptr %i.am, align 8, !tbaa !168, !noalias !7041
  %i.aq = load i64, ptr %0, align 8, !tbaa !175, !noalias !7041
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %0, align 8, !tbaa !175, !noalias !7041
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.critedge22 unwind label %bb.br ; 4 uses

.critedge22:                                      ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.at, align 4, !tbaa !369, !noalias !7042
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !noalias !7042
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7043
  store ptr %i.av, ptr %i.as, align 8, !tbaa !168, !noalias !7043
  store ptr %i.as, ptr %i.am, align 8, !tbaa !168, !noalias !7043
  %i.aw = load i64, ptr %0, align 8, !tbaa !175, !noalias !7043
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %0, align 8, !tbaa !175, !noalias !7043
  %i.ay = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.j unwind label %bb.br      ; 15 uses

bb.j:                                             ; preds = %.critedge22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr %i.az, align 4, !tbaa !172, !noalias !7044
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 0, ptr %i.ba, align 4, !tbaa !368, !noalias !7044
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7045 ; 8 uses
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !168, !noalias !7045
  store ptr %i.ay, ptr %i.am, align 8, !tbaa !168, !noalias !7045
  %i.bc = load i64, ptr %0, align 8, !tbaa !175, !noalias !7045
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !175, !noalias !7045
  %i.be = icmp ugt i64 %i.bd, 2
  %i.bf = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4
  %.fr = freeze <4 x i32> %i.bf
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4
  %.not27.i55 = icmp eq i32 %i.bg, 0
  %i.bh = icmp ne <4 x i32> %.fr, <i32 1, i32 2, i32 0, i32 0>
  %i.bi = bitcast <4 x i1> %i.bh to i4
  %i.bj = icmp eq i4 %i.bi, 0
  %1 = and i1 %i.be, %i.bj
  %op.rdx229 = select i1 %1, i1 %.not27.i55, i1 false
  br i1 %op.rdx229, label %bb.k, label %.lr.ph.i.i.i.i.i.preheader

bb.k:                                             ; preds = %bb.j
  %.not26.i57 = icmp eq ptr %i.bb, %i.am
  br i1 %.not26.i57, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit58, label %.lr.ph.i48.1

.lr.ph.i48.1:                                     ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !369
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.l, label %.lr.ph.i.i.i.i.i.preheader

bb.l:                                             ; preds = %.lr.ph.i48.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !370
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), align 4, !tbaa !370
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.m, label %.lr.ph.i.i.i.i.i.preheader

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !371
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 184), align 8, !tbaa !371
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.n, label %.lr.ph.i.i.i.i.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !372
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4, !tbaa !372
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.1, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.1: ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !368
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  %.not27.i55.1 = icmp eq i32 %i.cb, %i.cc
  br i1 %.not27.i55.1, label %bb.o, label %.lr.ph.i.i.i.i.i.preheader

bb.o:                                             ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.1
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 6 uses
  %.not26.i57.1 = icmp eq ptr %i.cd, %i.am
  br i1 %.not26.i57.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit58, label %.lr.ph.i48.2

.lr.ph.i48.2:                                     ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !369
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !369
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %.lr.ph.i.i.i.i.i.preheader

bb.p:                                             ; preds = %.lr.ph.i48.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !370
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 224), align 16, !tbaa !370
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.q, label %.lr.ph.i.i.i.i.i.preheader

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !371
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 228), align 4, !tbaa !371
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.r, label %.lr.ph.i.i.i.i.i.preheader

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !372
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8, !tbaa !372
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.2, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.2: ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !368
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  %.not27.i55.2 = icmp eq i32 %i.cv, %i.cw
  br i1 %.not27.i55.2, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit58, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit58: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i54.2, %bb.k, %bb.o
  %i.cx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.s unwind label %bb.br      ; 20 uses

bb.s:                                             ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr %i.cy, align 4, !tbaa !172, !noalias !7046
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 0, ptr %i.cz, align 4, !tbaa !368, !noalias !7046
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7047 ; 8 uses
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !168, !noalias !7047
  store ptr %i.cx, ptr %i.am, align 8, !tbaa !168, !noalias !7047
  %i.db = load i64, ptr %0, align 8, !tbaa !175, !noalias !7047
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %0, align 8, !tbaa !175, !noalias !7047
  %i.dd = icmp ugt i64 %i.dc, 3
  %i.de = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8
  %.fr230 = freeze <4 x i32> %i.de
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8
  %.not27.i73 = icmp eq i32 %i.df, 0
  %i.dg = icmp ne <4 x i32> %.fr230, <i32 1, i32 2, i32 3, i32 0>
  %i.dh = bitcast <4 x i1> %i.dg to i4
  %i.di = icmp eq i4 %i.dh, 0
  %2 = and i1 %i.dd, %i.di
  %op.rdx227 = select i1 %2, i1 %.not27.i73, i1 false
  br i1 %op.rdx227, label %bb.t, label %.lr.ph.i.i.i.i.i.preheader

bb.t:                                             ; preds = %bb.s
  %.not26.i75 = icmp eq ptr %i.da, %i.am
  br i1 %.not26.i75, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76, label %.lr.ph.i66.1

.lr.ph.i66.1:                                     ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !369
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !369
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.u, label %.lr.ph.i.i.i.i.i.preheader

bb.u:                                             ; preds = %.lr.ph.i66.1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !370
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 136), align 8, !tbaa !370
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.v, label %.lr.ph.i.i.i.i.i.preheader

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !371
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 140), align 4, !tbaa !371
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.w, label %.lr.ph.i.i.i.i.i.preheader

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !372
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 144), align 16, !tbaa !372
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.1, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.1: ; preds = %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !368
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  %.not27.i73.1 = icmp eq i32 %i.ea, %i.eb
  br i1 %.not27.i73.1, label %bb.x, label %.lr.ph.i.i.i.i.i.preheader

bb.x:                                             ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.1
  %i.ec = load ptr, ptr %i.da, align 8, !tbaa !168 ; 7 uses
  %.not26.i75.1 = icmp eq ptr %i.ec, %i.am
  br i1 %.not26.i75.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76, label %.lr.ph.i66.2

.lr.ph.i66.2:                                     ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !369
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.y, label %.lr.ph.i.i.i.i.i.preheader

bb.y:                                             ; preds = %.lr.ph.i66.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !370
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), align 4, !tbaa !370
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.z, label %.lr.ph.i.i.i.i.i.preheader

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !371
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 184), align 8, !tbaa !371
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.aa, label %.lr.ph.i.i.i.i.i.preheader

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !372
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4, !tbaa !372
  %i.es = icmp eq i32 %i.eq, %i.er
  br i1 %i.es, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.2, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.2: ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !368
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  %.not27.i73.2 = icmp eq i32 %i.eu, %i.ev
  br i1 %.not27.i73.2, label %bb.ab, label %.lr.ph.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.2
  %i.ew = load ptr, ptr %i.ec, align 8, !tbaa !168 ; 6 uses
  %.not26.i75.2 = icmp eq ptr %i.ew, %i.am
  br i1 %.not26.i75.2, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76, label %.lr.ph.i66.3

.lr.ph.i66.3:                                     ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !369
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !369
  %i.fa = icmp eq i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ac, label %.lr.ph.i.i.i.i.i.preheader

bb.ac:                                            ; preds = %.lr.ph.i66.3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !370
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 224), align 16, !tbaa !370
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ad, label %.lr.ph.i.i.i.i.i.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !371
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 228), align 4, !tbaa !371
  %i.fi = icmp eq i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ae, label %.lr.ph.i.i.i.i.i.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !372
  %i.fl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8, !tbaa !372
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.3, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.3: ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !368
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  %.not27.i73.3 = icmp eq i32 %i.fo, %i.fp
  br i1 %.not27.i73.3, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i72.3, %bb.t, %bb.x, %bb.ab
  %i.fq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.af unwind label %bb.br     ; 25 uses

bb.af:                                            ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit76
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.fr, align 4, !tbaa !172, !noalias !7048
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i32 0, ptr %i.fs, align 4, !tbaa !368, !noalias !7048
  %i.ft = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7049 ; 8 uses
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !168, !noalias !7049
  store ptr %i.fq, ptr %i.am, align 8, !tbaa !168, !noalias !7049
  %i.fu = load i64, ptr %0, align 8, !tbaa !175, !noalias !7049
  %i.fv = add i64 %i.fu, 1                        ; 2 uses
  store i64 %i.fv, ptr %0, align 8, !tbaa !175, !noalias !7049
  %i.fw = icmp ugt i64 %i.fv, 4
  %i.fx = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4
  %.fr231 = freeze <4 x i32> %i.fx
  %i.fy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4
  %.not27.i91 = icmp eq i32 %i.fy, 0
  %i.fz = icmp ne <4 x i32> %.fr231, <i32 1, i32 2, i32 3, i32 4>
  %i.ga = bitcast <4 x i1> %i.fz to i4
  %i.gb = icmp eq i4 %i.ga, 0
  %3 = and i1 %i.fw, %i.gb
  %op.rdx225 = select i1 %3, i1 %.not27.i91, i1 false
  br i1 %op.rdx225, label %bb.ag, label %.lr.ph.i.i.i.i.i.preheader

bb.ag:                                            ; preds = %bb.af
  %.not26.i93 = icmp eq ptr %i.ft, %i.am
  br i1 %.not26.i93, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94, label %.lr.ph.i84.1

.lr.ph.i84.1:                                     ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !369
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !369
  %i.gf = icmp eq i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.ah, label %.lr.ph.i.i.i.i.i.preheader

bb.ah:                                            ; preds = %.lr.ph.i84.1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !370
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 92), align 4, !tbaa !370
  %i.gj = icmp eq i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.ai, label %.lr.ph.i.i.i.i.i.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !371
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16, !tbaa !371
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.aj, label %.lr.ph.i.i.i.i.i.preheader

bb.aj:                                            ; preds = %bb.ai
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !372
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4, !tbaa !372
  %i.gr = icmp eq i32 %i.gp, %i.gq
  br i1 %i.gr, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.1, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.1: ; preds = %bb.aj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !368
  %i.gu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  %.not27.i91.1 = icmp eq i32 %i.gt, %i.gu
  br i1 %.not27.i91.1, label %bb.ak, label %.lr.ph.i.i.i.i.i.preheader

bb.ak:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.1
  %i.gv = load ptr, ptr %i.ft, align 8, !tbaa !168 ; 7 uses
  %.not26.i93.1 = icmp eq ptr %i.gv, %i.am
  br i1 %.not26.i93.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94, label %.lr.ph.i84.2

.lr.ph.i84.2:                                     ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !369
  %i.gy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !369
  %i.gz = icmp eq i32 %i.gx, %i.gy
  br i1 %i.gz, label %bb.al, label %.lr.ph.i.i.i.i.i.preheader

bb.al:                                            ; preds = %.lr.ph.i84.2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !370
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 136), align 8, !tbaa !370
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.am, label %.lr.ph.i.i.i.i.i.preheader

bb.am:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !371
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 140), align 4, !tbaa !371
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.an, label %.lr.ph.i.i.i.i.i.preheader

bb.an:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !372
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 144), align 16, !tbaa !372
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.2, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.2: ; preds = %bb.an
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !368
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  %.not27.i91.2 = icmp eq i32 %i.hn, %i.ho
  br i1 %.not27.i91.2, label %bb.ao, label %.lr.ph.i.i.i.i.i.preheader

bb.ao:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.2
  %i.hp = load ptr, ptr %i.gv, align 8, !tbaa !168 ; 7 uses
  %.not26.i93.2 = icmp eq ptr %i.hp, %i.am
  br i1 %.not26.i93.2, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94, label %.lr.ph.i84.3

.lr.ph.i84.3:                                     ; preds = %bb.ao
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !369
  %i.hs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  %i.ht = icmp eq i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.ap, label %.lr.ph.i.i.i.i.i.preheader

bb.ap:                                            ; preds = %.lr.ph.i84.3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !370
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), align 4, !tbaa !370
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.aq, label %.lr.ph.i.i.i.i.i.preheader

bb.aq:                                            ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !371
  %i.ia = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 184), align 8, !tbaa !371
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ar, label %.lr.ph.i.i.i.i.i.preheader

bb.ar:                                            ; preds = %bb.aq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !372
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4, !tbaa !372
  %i.if = icmp eq i32 %i.id, %i.ie
  br i1 %i.if, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.3, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.3: ; preds = %bb.ar
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !368
  %i.ii = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  %.not27.i91.3 = icmp eq i32 %i.ih, %i.ii
  br i1 %.not27.i91.3, label %bb.as, label %.lr.ph.i.i.i.i.i.preheader

bb.as:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.3
  %i.ij = load ptr, ptr %i.hp, align 8, !tbaa !168 ; 6 uses
  %.not26.i93.3 = icmp eq ptr %i.ij, %i.am
  br i1 %.not26.i93.3, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94, label %.lr.ph.i84.4

.lr.ph.i84.4:                                     ; preds = %bb.as
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !369
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !369
  %i.in = icmp eq i32 %i.il, %i.im
  br i1 %i.in, label %bb.at, label %.lr.ph.i.i.i.i.i.preheader

bb.at:                                            ; preds = %.lr.ph.i84.4
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !370
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 224), align 16, !tbaa !370
  %i.ir = icmp eq i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.au, label %.lr.ph.i.i.i.i.i.preheader

bb.au:                                            ; preds = %bb.at
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !371
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 228), align 4, !tbaa !371
  %i.iv = icmp eq i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.av, label %.lr.ph.i.i.i.i.i.preheader

bb.av:                                            ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !372
  %i.iy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8, !tbaa !372
  %i.iz = icmp eq i32 %i.ix, %i.iy
  br i1 %i.iz, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.4, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.4: ; preds = %bb.av
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !368
  %i.jc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  %.not27.i91.4 = icmp eq i32 %i.jb, %i.jc
  br i1 %.not27.i91.4, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i90.4, %bb.ag, %bb.ak, %bb.ao, %bb.as
  %i.jd = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.aw unwind label %bb.br     ; 35 uses

bb.aw:                                            ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit94
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.je, align 4, !tbaa !172, !noalias !7050
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store i32 5, ptr %i.jf, align 4, !tbaa !368, !noalias !7050
  %i.jg = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7051 ; 8 uses
  store ptr %i.jg, ptr %i.jd, align 8, !tbaa !168, !noalias !7051
  store ptr %i.jd, ptr %i.am, align 8, !tbaa !168, !noalias !7051
  %i.jh = load i64, ptr %0, align 8, !tbaa !175, !noalias !7051
  %i.ji = add i64 %i.jh, 1                        ; 2 uses
  store i64 %i.ji, ptr %0, align 8, !tbaa !175, !noalias !7051
  %i.jj = icmp ugt i64 %i.ji, 5
  %i.jk = load <4 x i32>, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16
  %.fr232 = freeze <4 x i32> %i.jk
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16
  %.not27.i109 = icmp eq i32 %i.jl, 5
  %i.jm = icmp ne <4 x i32> %.fr232, <i32 1, i32 2, i32 3, i32 4>
  %i.jn = bitcast <4 x i1> %i.jm to i4
  %i.jo = icmp eq i4 %i.jn, 0
  %4 = and i1 %i.jj, %i.jo
  %op.rdx223 = select i1 %4, i1 %.not27.i109, i1 false
  br i1 %op.rdx223, label %bb.ax, label %.lr.ph.i.i.i.i.i.preheader

bb.ax:                                            ; preds = %bb.aw
  %.not26.i111 = icmp eq ptr %i.jg, %i.am
  br i1 %.not26.i111, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i102.1

.lr.ph.i102.1:                                    ; preds = %bb.ax
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !369
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.js = icmp eq i32 %i.jq, %i.jr
  br i1 %i.js, label %bb.ay, label %.lr.ph.i.i.i.i.i.preheader

bb.ay:                                            ; preds = %.lr.ph.i102.1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !370
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %bb.az, label %.lr.ph.i.i.i.i.i.preheader

bb.az:                                            ; preds = %bb.ay
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !371
  %i.jz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.ka = icmp eq i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.ba, label %.lr.ph.i.i.i.i.i.preheader

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !372
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.ke = icmp eq i32 %i.kc, %i.kd
  br i1 %i.ke, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.1, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.1: ; preds = %bb.ba
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !368
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i109.1 = icmp eq i32 %i.kg, %i.kh
  br i1 %.not27.i109.1, label %bb.bb, label %.lr.ph.i.i.i.i.i.preheader

bb.bb:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.1
  %i.ki = load ptr, ptr %i.jg, align 8, !tbaa !168 ; 7 uses
  %.not26.i111.1 = icmp eq ptr %i.ki, %i.am
  br i1 %.not26.i111.1, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i102.2

.lr.ph.i102.2:                                    ; preds = %bb.bb
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !369
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !369
  %i.km = icmp eq i32 %i.kk, %i.kl
  br i1 %i.km, label %bb.bc, label %.lr.ph.i.i.i.i.i.preheader

bb.bc:                                            ; preds = %.lr.ph.i102.2
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !370
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 92), align 4, !tbaa !370
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.bd, label %.lr.ph.i.i.i.i.i.preheader

bb.bd:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !371
  %i.kt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16, !tbaa !371
  %i.ku = icmp eq i32 %i.ks, %i.kt
  br i1 %i.ku, label %bb.be, label %.lr.ph.i.i.i.i.i.preheader

bb.be:                                            ; preds = %bb.bd
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !372
  %i.kx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4, !tbaa !372
  %i.ky = icmp eq i32 %i.kw, %i.kx
  br i1 %i.ky, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.2, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.2: ; preds = %bb.be
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !368
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  %.not27.i109.2 = icmp eq i32 %i.la, %i.lb
  br i1 %.not27.i109.2, label %bb.bf, label %.lr.ph.i.i.i.i.i.preheader

bb.bf:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.2
  %i.lc = load ptr, ptr %i.ki, align 8, !tbaa !168 ; 7 uses
  %.not26.i111.2 = icmp eq ptr %i.lc, %i.am
  br i1 %.not26.i111.2, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i102.3

.lr.ph.i102.3:                                    ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !369
  %i.lf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !369
  %i.lg = icmp eq i32 %i.le, %i.lf
  br i1 %i.lg, label %bb.bg, label %.lr.ph.i.i.i.i.i.preheader

bb.bg:                                            ; preds = %.lr.ph.i102.3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !370
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 136), align 8, !tbaa !370
  %i.lk = icmp eq i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.bh, label %.lr.ph.i.i.i.i.i.preheader

bb.bh:                                            ; preds = %bb.bg
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !371
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 140), align 4, !tbaa !371
  %i.lo = icmp eq i32 %i.lm, %i.ln
  br i1 %i.lo, label %bb.bi, label %.lr.ph.i.i.i.i.i.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 20
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !372
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 144), align 16, !tbaa !372
  %i.ls = icmp eq i32 %i.lq, %i.lr
  br i1 %i.ls, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.3, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.3: ; preds = %bb.bi
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !368
  %i.lv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  %.not27.i109.3 = icmp eq i32 %i.lu, %i.lv
  br i1 %.not27.i109.3, label %bb.bj, label %.lr.ph.i.i.i.i.i.preheader

bb.bj:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.3
  %i.lw = load ptr, ptr %i.lc, align 8, !tbaa !168 ; 7 uses
  %.not26.i111.3 = icmp eq ptr %i.lw, %i.am
  br i1 %.not26.i111.3, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i102.4

.lr.ph.i102.4:                                    ; preds = %bb.bj
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !369
  %i.lz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.bk, label %.lr.ph.i.i.i.i.i.preheader

bb.bk:                                            ; preds = %.lr.ph.i102.4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !370
  %i.md = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), align 4, !tbaa !370
  %i.me = icmp eq i32 %i.mc, %i.md
  br i1 %i.me, label %bb.bl, label %.lr.ph.i.i.i.i.i.preheader

bb.bl:                                            ; preds = %bb.bk
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !371
  %i.mh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 184), align 8, !tbaa !371
  %i.mi = icmp eq i32 %i.mg, %i.mh
  br i1 %i.mi, label %bb.bm, label %.lr.ph.i.i.i.i.i.preheader

bb.bm:                                            ; preds = %bb.bl
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !372
  %i.ml = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4, !tbaa !372
  %i.mm = icmp eq i32 %i.mk, %i.ml
  br i1 %i.mm, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.4, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.4: ; preds = %bb.bm
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !368
  %i.mp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  %.not27.i109.4 = icmp eq i32 %i.mo, %i.mp
  br i1 %.not27.i109.4, label %bb.bn, label %.lr.ph.i.i.i.i.i.preheader

bb.bn:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.4
  %i.mq = load ptr, ptr %i.lw, align 8, !tbaa !168 ; 6 uses
  %.not26.i111.4 = icmp eq ptr %i.mq, %i.am
  br i1 %.not26.i111.4, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i102.5

.lr.ph.i102.5:                                    ; preds = %bb.bn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !369
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !369
  %i.mu = icmp eq i32 %i.ms, %i.mt
  br i1 %i.mu, label %bb.bo, label %.lr.ph.i.i.i.i.i.preheader

bb.bo:                                            ; preds = %.lr.ph.i102.5
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !370
  %i.mx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 224), align 16, !tbaa !370
  %i.my = icmp eq i32 %i.mw, %i.mx
  br i1 %i.my, label %bb.bp, label %.lr.ph.i.i.i.i.i.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !371
  %i.nb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 228), align 4, !tbaa !371
  %i.nc = icmp eq i32 %i.na, %i.nb
  br i1 %i.nc, label %bb.bq, label %.lr.ph.i.i.i.i.i.preheader

bb.bq:                                            ; preds = %bb.bp
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mq, i64 20
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !372
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8, !tbaa !372
  %i.ng = icmp eq i32 %i.ne, %i.nf
  br i1 %i.ng, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.5, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i108.5: ; preds = %bb.bq
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !368
  %i.nj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_frontINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  %.not27.i109.5 = icmp eq i32 %i.ni, %i.nj
  br label %.lr.ph.i.i.i.i.i.preheader
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test19test_emplace_beforeINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEE:bb.a
  br i1 %i.xj, label %bb.en, label %_ZNSolsEPFRSoS_E.exit

bb.em:                                            ; preds = %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i208, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i200, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i192, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i179, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i135, %bb.dk, %bb.do, %bb.ds, %bb.du, %bb.dw, %bb.dy, %bb.ea, %bb.ec, %bb.ee, %bb.eg, %bb.ei, %bb.ek, %bb.en, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i64, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i60, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i57, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i54, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i51, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i48, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i91, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i113, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i157, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i183, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i196, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i204, %_ZN5boost9container5slistINS0_4test10EmplaceIntEvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS3_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEE.exit.i212
  %i.xk = landingpad { ptr, i32 }
          cleanup
  %i.xl = load ptr, ptr %i.fi, align 8, !tbaa !168 ; 2 uses
  %.not11.i.i.i.i.i219 = icmp eq ptr %i.xl, %i.fi
  br i1 %.not11.i.i.i.i.i219, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit223, label %.lr.ph.i.i.i.i.i220

bb.en:                                            ; preds = %bb.el
  %i.xm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.em ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.en
  %i.xn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.em, !inline_history !18 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.lr.ph.i73.preheader, %bb.au, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79, %bb.aw, %bb.av, %.lr.ph.i73.1, %bb.ay, %bb.az, %bb.ba, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.1, %.lr.ph.i73.2, %bb.bc, %bb.bd, %bb.be, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.2, %.lr.ph.i73.3, %bb.bg, %bb.bh, %bb.bi, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.3, %.lr.ph.i73.4, %bb.bk, %bb.bl, %bb.bm, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.4, %.lr.ph.i73.5, %bb.bo, %bb.bp, %bb.bq, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.5, %.lr.ph.i100.preheader, %bb.bt, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i106, %bb.bv, %bb.bu, %.lr.ph.i122.preheader, %bb.by, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i128, %bb.ca, %bb.bz, %.lr.ph.i122.1, %bb.cc, %bb.cd, %bb.ce, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i128.1, %.lr.ph.i144.preheader, %bb.ch, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150, %bb.cj, %bb.ci, %.lr.ph.i144.1, %bb.cl, %bb.cm, %bb.cn, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150.1, %.lr.ph.i144.2, %bb.cp, %bb.cq, %bb.cr, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150.2, %.lr.ph.i166.preheader, %bb.cu, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172, %bb.cw, %bb.cv, %.lr.ph.i166.1, %bb.cy, %bb.cz, %bb.da, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.1, %.lr.ph.i166.2, %bb.dc, %bb.dd, %bb.de, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.2, %.lr.ph.i166.3, %bb.dg, %bb.dh, %bb.di, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.3, %bb.ct, %bb.cg, %bb.bx, %bb.bs, %bb.at, %bb.dl, %bb.dp, %bb.dt, %bb.dv, %bb.dx, %bb.dz, %bb.eb, %bb.ed, %bb.ef, %bb.eh, %bb.ej, %bb.el, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.xo = phi i1 [ true, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ false, %bb.el ], [ false, %bb.ej ], [ false, %bb.eh ], [ false, %bb.ef ], [ false, %bb.ed ], [ false, %bb.eb ], [ false, %bb.dz ], [ false, %bb.dx ], [ false, %bb.dv ], [ false, %bb.dt ], [ false, %bb.dp ], [ false, %bb.dl ], [ false, %.lr.ph.i144.preheader ], [ false, %bb.ct ], [ false, %.lr.ph.i100.preheader ], [ false, %bb.bs ], [ false, %bb.at ], [ false, %bb.bx ], [ false, %.lr.ph.i122.preheader ], [ false, %bb.cg ], [ false, %.lr.ph.i166.preheader ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.3 ], [ false, %bb.di ], [ false, %bb.dh ], [ false, %bb.dg ], [ false, %.lr.ph.i166.3 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.2 ], [ false, %bb.de ], [ false, %bb.dd ], [ false, %bb.dc ], [ false, %.lr.ph.i166.2 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172.1 ], [ false, %bb.da ], [ false, %bb.cz ], [ false, %bb.cy ], [ false, %.lr.ph.i166.1 ], [ false, %bb.cv ], [ false, %bb.cw ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i172 ], [ false, %bb.cu ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150.2 ], [ false, %bb.cr ], [ false, %bb.cq ], [ false, %bb.cp ], [ false, %.lr.ph.i144.2 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150.1 ], [ false, %bb.cn ], [ false, %bb.cm ], [ false, %bb.cl ], [ false, %.lr.ph.i144.1 ], [ false, %bb.ci ], [ false, %bb.cj ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i150 ], [ false, %bb.ch ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i128.1 ], [ false, %bb.ce ], [ false, %bb.cd ], [ false, %bb.cc ], [ false, %.lr.ph.i122.1 ], [ false, %bb.bz ], [ false, %bb.ca ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i128 ], [ false, %bb.by ], [ false, %bb.bu ], [ false, %bb.bv ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i106 ], [ false, %bb.bt ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.5 ], [ false, %bb.bq ], [ false, %bb.bp ], [ false, %bb.bo ], [ false, %.lr.ph.i73.5 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.4 ], [ false, %bb.bm ], [ false, %bb.bl ], [ false, %bb.bk ], [ false, %.lr.ph.i73.4 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.3 ], [ false, %bb.bi ], [ false, %bb.bh ], [ false, %bb.bg ], [ false, %.lr.ph.i73.3 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.2 ], [ false, %bb.be ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %.lr.ph.i73.2 ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79.1 ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %.lr.ph.i73.1 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i79 ], [ false, %bb.au ], [ false, %.lr.ph.i73.preheader ]
  %i.xp = load ptr, ptr %i.fi, align 8, !tbaa !168 ; 2 uses
  %.not11.i.i.i.i.i214 = icmp eq ptr %i.xp, %i.fi
  br i1 %.not11.i.i.i.i.i214, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit218, label %.lr.ph.i.i.i.i.i215

.lr.ph.i.i.i.i.i215:                              ; preds = %_ZNSolsEPFRSoS_E.exit, %.lr.ph.i.i.i.i.i215
  %.013.i.i.i.i.i216 = phi ptr [ %i.xq, %.lr.ph.i.i.i.i.i215 ], [ %i.xp, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.xq = load ptr, ptr %.013.i.i.i.i.i216, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i216, i64 noundef 56) #24
  %.not.i.i.i.i.i217 = icmp eq ptr %i.xq, %i.fi
  br i1 %.not.i.i.i.i.i217, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit218, label %.lr.ph.i.i.i.i.i215, !llvm.loop !148

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit218: ; preds = %.lr.ph.i.i.i.i.i215, %_ZNSolsEPFRSoS_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.eo

.lr.ph.i.i.i.i.i220:                              ; preds = %bb.em, %.lr.ph.i.i.i.i.i220
  %.013.i.i.i.i.i221 = phi ptr [ %i.xr, %.lr.ph.i.i.i.i.i220 ], [ %i.xl, %bb.em ] ; 2 uses
  %i.xr = load ptr, ptr %.013.i.i.i.i.i221, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i221, i64 noundef 56) #24
  %.not.i.i.i.i.i222 = icmp eq ptr %i.xr, %i.fi
  br i1 %.not.i.i.i.i.i222, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit223, label %.lr.ph.i.i.i.i.i220, !llvm.loop !148

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit223: ; preds = %.lr.ph.i.i.i.i.i220, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.ep

bb.eo:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit218, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit
  %.314 = phi i1 [ false, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit ], [ %i.xo, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit218 ]
  ret i1 %.314

bb.ep:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit223, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit88
  %.pn17.pn.pn = phi { ptr, i32 } [ %i.xk, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit223 ], [ %i.fd, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit88 ]
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::slist.369", align 8 ; 11 uses
  %1 = alloca %"class.boost::container::slist.369", align 8 ; 46 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 28) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !182
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !204
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 5 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @_ZTSN5boost9container5slistINS0_4test10EmplaceIntEvEE, i64 noundef 49) ; 0 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !198  ; 6 uses
  %.not.i.i.i164 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i164, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !204
  %.not.i1.i.i166 = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i166, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit168

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i165
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit168

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit168: ; preds = %bb.f, %bb.g
  %.0.i.i.i167 = phi i8 [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i167)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  %i.aj = load atomic i8, ptr @_ZGVZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !244

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit168
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #24
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 264), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 308), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 352), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 396), i8 0, i64 20, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #24
  br label %bb.i

bb.i:                                             ; preds = %.preheader.preheader, %bb.h, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  store ptr %i.am, ptr %i.am, align 8, !tbaa !168
  store i64 0, ptr %0, align 8, !tbaa !175
  %i.an = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.j unwind label %bb.ab      ; 6 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1, ptr %i.ao, align 4, !tbaa !369, !noalias !7523
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !7523
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7524
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !168, !noalias !7524
  store ptr %i.an, ptr %i.am, align 8, !tbaa !168, !noalias !7524
  %i.ar = load i64, ptr %0, align 8, !tbaa !175, !noalias !7524
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %0, align 8, !tbaa !175, !noalias !7524
  %i.at = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.k unwind label %bb.ab      ; 9 uses

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false), !noalias !7525
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !168, !noalias !7526 ; 7 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !168, !noalias !7526
  store ptr %i.at, ptr %i.am, align 8, !tbaa !168, !noalias !7526
  %i.aw = load i64, ptr %0, align 8, !tbaa !175, !noalias !7526
  %i.ax = add i64 %i.aw, 1                        ; 2 uses
  store i64 %i.ax, ptr %0, align 8, !tbaa !175, !noalias !7526
  %i.ay = icmp ugt i64 %i.ax, 1
  %i.az = load <4 x i32>, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16
  %.fr = freeze <4 x i32> %i.az
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16
  %.not27.i = icmp eq i32 %i.ba, 0
  %i.bb = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp eq i4 %i.bc, 0
  %2 = and i1 %i.ay, %i.bd
  %op.rdx371 = select i1 %2, i1 %.not27.i, i1 false
  br i1 %op.rdx371, label %bb.l, label %.lr.ph.i.i.i.i.i.preheader

bb.l:                                             ; preds = %bb.k
  %.not26.i = icmp eq ptr %i.av, %i.am
  br i1 %.not26.i, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !369
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %.lr.ph.i.i.i.i.i.preheader

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !370
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.n, label %.lr.ph.i.i.i.i.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !371
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.o, label %.lr.ph.i.i.i.i.i.preheader

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !372
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !368
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i.1 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not27.i.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit, label %.lr.ph.i.i.i.i.i.preheader

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1, %bb.l
  %i.bx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.p unwind label %bb.ab      ; 3 uses

bb.p:                                             ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.by, i8 0, i64 20, i1 false), !noalias !7527
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !168, !noalias !7528
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !168, !noalias !7528
  store ptr %i.bx, ptr %i.an, align 8, !tbaa !168, !noalias !7528
  %i.ca = load i64, ptr %0, align 8, !tbaa !175, !noalias !7528
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.cb, ptr %0, align 8, !tbaa !175, !noalias !7528
  %i.cc = icmp ult i64 %i.cb, 3
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !168 ; 9 uses
  br i1 %i.cc, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39, label %.preheader28.i22.preheader

.preheader28.i22.preheader:                       ; preds = %bb.p
  %.not2629.i28 = icmp eq ptr %.pre, %i.am
  br i1 %.not2629.i28, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %.preheader28.i22.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !369
  %i.cf = load i32, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !369
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.q, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.q:                                             ; preds = %.lr.ph.i29.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !370
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !370
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.r, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !371
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !371
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.s, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !372
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !372
  %i.cs = icmp eq i32 %i.cq, %i.cr
  br i1 %i.cs, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35: ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !368
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !368
  %.not27.i36 = icmp eq i32 %i.cu, %i.cv
  br i1 %.not27.i36, label %bb.t, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.t:                                             ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35
  %i.cw = load ptr, ptr %.pre, align 8, !tbaa !168 ; 7 uses
  %.not26.i38 = icmp eq ptr %i.cw, %i.am
  br i1 %.not26.i38, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !369
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.u, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.u:                                             ; preds = %.lr.ph.i29.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !370
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.de = icmp eq i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.v, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !371
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.w, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !372
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.1: ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !368
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i36.1 = icmp eq i32 %i.do, %i.dp
  br i1 %.not27.i36.1, label %bb.x, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.x:                                             ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.1
  %i.dq = load ptr, ptr %i.cw, align 8, !tbaa !168 ; 6 uses
  %.not26.i38.1 = icmp eq ptr %i.dq, %i.am
  br i1 %.not26.i38.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39, label %.lr.ph.i29.2

.lr.ph.i29.2:                                     ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !369
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !369
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.y, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.y:                                             ; preds = %.lr.ph.i29.2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !370
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 92), align 4, !tbaa !370
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.z, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !371
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16, !tbaa !371
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.aa, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !372
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4, !tbaa !372
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.2, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.2: ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !368
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  %.not27.i36.2 = icmp eq i32 %i.ei, %i.ej
  br label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39

bb.ab:                                            ; preds = %bb.j, %bb.i, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %i.am, align 8, !tbaa !168 ; 2 uses
  %.not11.i.i.i.i.i60 = icmp eq ptr %i.el, %i.am
  br i1 %.not11.i.i.i.i.i60, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit64, label %.lr.ph.i.i.i.i.i61

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.2, %.lr.ph.i29.preheader, %bb.q, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35, %bb.s, %bb.r, %bb.t, %.lr.ph.i29.1, %bb.u, %bb.v, %bb.w, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.1, %bb.x, %.lr.ph.i29.2, %bb.y, %bb.z, %bb.aa, %bb.p, %.preheader28.i22.preheader
  %i.em = phi i1 [ false, %bb.z ], [ false, %bb.y ], [ true, %.preheader28.i22.preheader ], [ false, %bb.p ], [ %.not27.i36.2, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.2 ], [ false, %bb.r ], [ false, %bb.s ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35 ], [ false, %bb.q ], [ false, %.lr.ph.i29.preheader ], [ true, %bb.t ], [ false, %.lr.ph.i29.2 ], [ false, %.lr.ph.i29.1 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i35.1 ], [ true, %bb.x ], [ false, %bb.aa ] ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.pre, %i.am
  br i1 %.not11.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.1, %bb.m, %bb.n, %bb.o, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1, %bb.k, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39
  %i.en = phi i1 [ %i.em, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39 ], [ false, %bb.k ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %.lr.ph.i.1 ]
  %i.eo = phi ptr [ %.pre, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39 ], [ %i.at, %bb.k ], [ %i.at, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ], [ %i.at, %bb.o ], [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %.lr.ph.i.1 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ep = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i, i64 noundef 56) #24
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !148

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39
  %i.eq = phi i1 [ %i.em, %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit39 ], [ %i.en, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br i1 %i.eq, label %bb.ac, label %bb.de

bb.ac:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), i8 0, i64 16, i1 false)
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !172
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !172
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 49 uses
  store ptr %i.er, ptr %i.er, align 8, !tbaa !168
  store i64 0, ptr %1, align 8, !tbaa !175
  %i.es = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.ad unwind label %bb.dc     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.et, align 4, !tbaa !172, !noalias !7529
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i32 5, ptr %i.eu, align 4, !tbaa !368, !noalias !7529
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7530
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !168, !noalias !7530
  store ptr %i.es, ptr %i.er, align 8, !tbaa !168, !noalias !7530
  %i.ew = load i64, ptr %1, align 8, !tbaa !175, !noalias !7530
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %1, align 8, !tbaa !175, !noalias !7530
  %i.ey = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.ae unwind label %bb.dc     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.ez, align 4, !tbaa !172, !noalias !7531
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i32 0, ptr %i.fa, align 4, !tbaa !368, !noalias !7531
  %i.fb = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7532
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !168, !noalias !7532
  store ptr %i.ey, ptr %i.er, align 8, !tbaa !168, !noalias !7532
  %i.fc = load i64, ptr %1, align 8, !tbaa !175, !noalias !7532
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %1, align 8, !tbaa !175, !noalias !7532
  %i.fe = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.af unwind label %bb.dc     ; 4 uses

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr %i.ff, align 4, !tbaa !172, !noalias !7533
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i32 0, ptr %i.fg, align 4, !tbaa !368, !noalias !7533
  %i.fh = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7534
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !168, !noalias !7534
  store ptr %i.fe, ptr %i.er, align 8, !tbaa !168, !noalias !7534
  %i.fi = load i64, ptr %1, align 8, !tbaa !175, !noalias !7534
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %1, align 8, !tbaa !175, !noalias !7534
  %i.fk = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.ag unwind label %bb.dc     ; 4 uses

bb.ag:                                            ; preds = %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr %i.fl, align 4, !tbaa !172, !noalias !7535
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i32 0, ptr %i.fm, align 4, !tbaa !368, !noalias !7535
  %i.fn = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7536
  store ptr %i.fn, ptr %i.fk, align 8, !tbaa !168, !noalias !7536
  store ptr %i.fk, ptr %i.er, align 8, !tbaa !168, !noalias !7536
  %i.fo = load i64, ptr %1, align 8, !tbaa !175, !noalias !7536
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %1, align 8, !tbaa !175, !noalias !7536
  %i.fq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.ah unwind label %bb.dc     ; 4 uses

bb.ah:                                            ; preds = %bb.ag
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i32 1, ptr %i.fr, align 4, !tbaa !369, !noalias !7537
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false), !noalias !7537
  %i.ft = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7538
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !168, !noalias !7538
  store ptr %i.fq, ptr %i.er, align 8, !tbaa !168, !noalias !7538
  %i.fu = load i64, ptr %1, align 8, !tbaa !175, !noalias !7538
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %1, align 8, !tbaa !175, !noalias !7538
  %i.fw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.ai unwind label %bb.dc     ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fx, i8 0, i64 20, i1 false), !noalias !7539
  %i.fy = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7540 ; 8 uses
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !168, !noalias !7540
  store ptr %i.fw, ptr %i.er, align 8, !tbaa !168, !noalias !7540
  %i.fz = load i64, ptr %1, align 8, !tbaa !175, !noalias !7540
  %i.ga = add i64 %i.fz, 1                        ; 2 uses
  store i64 %i.ga, ptr %1, align 8, !tbaa !175, !noalias !7540
  %i.gb = icmp ugt i64 %i.ga, 5
  %i.gc = load <4 x i32>, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16
  %.fr372 = freeze <4 x i32> %i.gc
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16
  %.not27.i56 = icmp eq i32 %i.gd, 0
  %i.ge = icmp ne <4 x i32> %.fr372, zeroinitializer
  %i.gf = bitcast <4 x i1> %i.ge to i4
  %i.gg = icmp eq i4 %i.gf, 0
  %3 = and i1 %i.gb, %i.gg
  %op.rdx369 = select i1 %3, i1 %.not27.i56, i1 false
  br i1 %op.rdx369, label %bb.aj, label %_ZNSolsEPFRSoS_E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not26.i58 = icmp eq ptr %i.fy, %i.er
  br i1 %.not26.i58, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i49.1

.lr.ph.i49.1:                                     ; preds = %bb.aj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !369
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.gk = icmp eq i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.ak, label %_ZNSolsEPFRSoS_E.exit

bb.ak:                                            ; preds = %.lr.ph.i49.1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !370
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.go = icmp eq i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.al, label %_ZNSolsEPFRSoS_E.exit

bb.al:                                            ; preds = %bb.ak
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !371
  %i.gr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.gs = icmp eq i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.am, label %_ZNSolsEPFRSoS_E.exit

bb.am:                                            ; preds = %bb.al
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !372
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.gw = icmp eq i32 %i.gu, %i.gv
  br i1 %i.gw, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.1, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.1: ; preds = %bb.am
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !368
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i56.1 = icmp eq i32 %i.gy, %i.gz
  br i1 %.not27.i56.1, label %bb.an, label %_ZNSolsEPFRSoS_E.exit

bb.an:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.1
  %i.ha = load ptr, ptr %i.fy, align 8, !tbaa !168 ; 7 uses
  %.not26.i58.1 = icmp eq ptr %i.ha, %i.er
  br i1 %.not26.i58.1, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i49.2

.lr.ph.i49.2:                                     ; preds = %bb.an
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !369
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !369
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ao, label %_ZNSolsEPFRSoS_E.exit

bb.ao:                                            ; preds = %.lr.ph.i49.2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !370
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 92), align 4, !tbaa !370
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.ap, label %_ZNSolsEPFRSoS_E.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !371
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16, !tbaa !371
  %i.hm = icmp eq i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !372
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4, !tbaa !372
  %i.hq = icmp eq i32 %i.ho, %i.hp
  br i1 %i.hq, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.2, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.2: ; preds = %bb.aq
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !368
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !368
  %.not27.i56.2 = icmp eq i32 %i.hs, %i.ht
  br i1 %.not27.i56.2, label %bb.ar, label %_ZNSolsEPFRSoS_E.exit

bb.ar:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.2
  %i.hu = load ptr, ptr %i.ha, align 8, !tbaa !168 ; 7 uses
  %.not26.i58.2 = icmp eq ptr %i.hu, %i.er
  br i1 %.not26.i58.2, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i49.3

.lr.ph.i49.3:                                     ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !369
  %i.hx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !369
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.as, label %_ZNSolsEPFRSoS_E.exit

bb.as:                                            ; preds = %.lr.ph.i49.3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !370
  %i.ib = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 136), align 8, !tbaa !370
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.at, label %_ZNSolsEPFRSoS_E.exit

bb.at:                                            ; preds = %bb.as
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !371
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 140), align 4, !tbaa !371
  %i.ig = icmp eq i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.au, label %_ZNSolsEPFRSoS_E.exit

bb.au:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !372
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 144), align 16, !tbaa !372
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.3, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.3: ; preds = %bb.au
  %i.il = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.im = load i32, ptr %i.il, align 4, !tbaa !368
  %i.in = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !368
  %.not27.i56.3 = icmp eq i32 %i.im, %i.in
  br i1 %.not27.i56.3, label %bb.av, label %_ZNSolsEPFRSoS_E.exit

bb.av:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.3
  %i.io = load ptr, ptr %i.hu, align 8, !tbaa !168 ; 7 uses
  %.not26.i58.3 = icmp eq ptr %i.io, %i.er
  br i1 %.not26.i58.3, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i49.4

.lr.ph.i49.4:                                     ; preds = %bb.av
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !369
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !369
  %i.is = icmp eq i32 %i.iq, %i.ir
  br i1 %i.is, label %bb.aw, label %_ZNSolsEPFRSoS_E.exit

bb.aw:                                            ; preds = %.lr.ph.i49.4
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !370
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 180), align 4, !tbaa !370
  %i.iw = icmp eq i32 %i.iu, %i.iv
  br i1 %i.iw, label %bb.ax, label %_ZNSolsEPFRSoS_E.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !371
  %i.iz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 184), align 8, !tbaa !371
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.ay, label %_ZNSolsEPFRSoS_E.exit

bb.ay:                                            ; preds = %bb.ax
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !372
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4, !tbaa !372
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.4, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.4: ; preds = %bb.ay
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !368
  %i.jh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !368
  %.not27.i56.4 = icmp eq i32 %i.jg, %i.jh
  br i1 %.not27.i56.4, label %bb.az, label %_ZNSolsEPFRSoS_E.exit

bb.az:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.4
  %i.ji = load ptr, ptr %i.io, align 8, !tbaa !168 ; 6 uses
  %.not26.i58.4 = icmp eq ptr %i.ji, %i.er
  br i1 %.not26.i58.4, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i49.5

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.5, %bb.aj, %bb.an, %bb.ar, %bb.av, %bb.az
  br label %.lr.ph.i.i.i.i

.lr.ph.i49.5:                                     ; preds = %bb.az
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !369
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !369
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %bb.ba, label %_ZNSolsEPFRSoS_E.exit

bb.ba:                                            ; preds = %.lr.ph.i49.5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !370
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 224), align 16, !tbaa !370
  %i.jq = icmp eq i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.bb, label %_ZNSolsEPFRSoS_E.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !371
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 228), align 4, !tbaa !371
  %i.ju = icmp eq i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.bc, label %_ZNSolsEPFRSoS_E.exit

bb.bc:                                            ; preds = %bb.bb
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !372
  %i.jx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8, !tbaa !372
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.5, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i55.5: ; preds = %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !368
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !368
  %.not27.i56.5 = icmp eq i32 %i.ka, %i.kb
  br i1 %.not27.i56.5, label %.lr.ph.i.i.i.i.preheader, label %_ZNSolsEPFRSoS_E.exit

.lr.ph.i.i.i.i.i61:                               ; preds = %bb.ab, %.lr.ph.i.i.i.i.i61
  %.013.i.i.i.i.i62 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i61 ], [ %i.el, %bb.ab ] ; 2 uses
  %i.kc = load ptr, ptr %.013.i.i.i.i.i62, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i62, i64 noundef 56) #24
  %.not.i.i.i.i.i63 = icmp eq ptr %i.kc, %i.am
  br i1 %.not.i.i.i.i.i63, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit64, label %.lr.ph.i.i.i.i.i61, !llvm.loop !148

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test10EmplaceIntEEENS_9intrusive10slist_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEEmLm2EvEEED2Ev.exit64: ; preds = %.lr.ph.i.i.i.i.i61, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br label %bb.df

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.kd, %.lr.ph.i.i.i.i ], [ %i.fw, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.kd = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 56) #24
  %.not.i.i.i.i = icmp eq ptr %i.kd, %i.er
  br i1 %.not.i.i.i.i, label %bb.bd, label %.lr.ph.i.i.i.i, !llvm.loop !148

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  store ptr %i.er, ptr %i.er, align 8, !tbaa !168
  store i64 0, ptr %1, align 8, !tbaa !175
  %i.ke = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.be unwind label %bb.dc     ; 5 uses

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kf, i8 0, i64 20, i1 false), !noalias !7541
  %i.kg = load ptr, ptr %i.er, align 8, !tbaa !168, !noalias !7542
  store ptr %i.kg, ptr %i.ke, align 8, !tbaa !168, !noalias !7542
  store ptr %i.ke, ptr %i.er, align 8, !tbaa !168, !noalias !7542
  %i.kh = load i64, ptr %1, align 8, !tbaa !175, !noalias !7542
  %i.ki = add i64 %i.kh, 1                        ; 2 uses
  store i64 %i.ki, ptr %1, align 8, !tbaa !175, !noalias !7542
  %i.kj = icmp ne i64 %i.ki, 0
  %i.kk = load <4 x i32>, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16
  %.fr373 = freeze <4 x i32> %i.kk
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16
  %.not27.i80 = icmp eq i32 %i.kl, 0
  %i.km = icmp ne <4 x i32> %.fr373, zeroinitializer
  %i.kn = bitcast <4 x i1> %i.km to i4
  %i.ko = icmp eq i4 %i.kn, 0
  %4 = and i1 %i.kj, %i.ko
  %op.rdx367 = select i1 %4, i1 %.not27.i80, i1 false
  br i1 %op.rdx367, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit83, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit83: ; preds = %bb.be
  %i.kp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.bf unwind label %bb.dc     ; 6 uses

bb.bf:                                            ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit83
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 1, ptr %i.kq, align 4, !tbaa !369, !noalias !7543
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kr, i8 0, i64 16, i1 false), !noalias !7543
  %i.ks = load ptr, ptr %i.ke, align 8, !tbaa !168, !noalias !7544
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !168, !noalias !7544
  store ptr %i.kp, ptr %i.ke, align 8, !tbaa !168, !noalias !7544
  %i.kt = load i64, ptr %1, align 8, !tbaa !175, !noalias !7544
  %i.ku = add i64 %i.kt, 1                        ; 2 uses
  store i64 %i.ku, ptr %1, align 8, !tbaa !175, !noalias !7544
  %i.kv = icmp ult i64 %i.ku, 2
  br i1 %i.kv, label %_ZNSolsEPFRSoS_E.exit, label %.preheader28.i85.preheader

.preheader28.i85.preheader:                       ; preds = %bb.bf
  %.sroa.020.0.i88 = load ptr, ptr %i.er, align 8, !tbaa !168 ; 7 uses
  %.not2629.i91 = icmp eq ptr %.sroa.020.0.i88, %i.er
  br i1 %.not2629.i91, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit102, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %.preheader28.i85.preheader
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i88, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !369
  %i.ky = load i32, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !369
  %i.kz = icmp eq i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.bg, label %_ZNSolsEPFRSoS_E.exit

bb.bg:                                            ; preds = %.lr.ph.i92.preheader
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i88, i64 12
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !370
  %i.lc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !370
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bh, label %_ZNSolsEPFRSoS_E.exit

bb.bh:                                            ; preds = %bb.bg
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i88, i64 16
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !371
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !371
  %i.lh = icmp eq i32 %i.lf, %i.lg
  br i1 %i.lh, label %bb.bi, label %_ZNSolsEPFRSoS_E.exit

bb.bi:                                            ; preds = %bb.bh
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i88, i64 20
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !372
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !372
  %i.ll = icmp eq i32 %i.lj, %i.lk
  br i1 %i.ll, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98: ; preds = %bb.bi
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i88, i64 24
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !368
  %i.lo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !368
  %.not27.i99 = icmp eq i32 %i.ln, %i.lo
  br i1 %.not27.i99, label %bb.bj, label %_ZNSolsEPFRSoS_E.exit

bb.bj:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98
  %i.lp = load ptr, ptr %.sroa.020.0.i88, align 8, !tbaa !168 ; 6 uses
  %.not26.i101 = icmp eq ptr %i.lp, %i.er
  br i1 %.not26.i101, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit102, label %.lr.ph.i92.1

.lr.ph.i92.1:                                     ; preds = %bb.bj
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !369
  %i.ls = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.lt = icmp eq i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.bk, label %_ZNSolsEPFRSoS_E.exit

bb.bk:                                            ; preds = %.lr.ph.i92.1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !370
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.lx = icmp eq i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.bl, label %_ZNSolsEPFRSoS_E.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !371
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.mb = icmp eq i32 %i.lz, %i.ma
  br i1 %i.mb, label %bb.bm, label %_ZNSolsEPFRSoS_E.exit

bb.bm:                                            ; preds = %bb.bl
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !372
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.mf = icmp eq i32 %i.md, %i.me
  br i1 %i.mf, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98.1, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98.1: ; preds = %bb.bm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !368
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i99.1 = icmp eq i32 %i.mh, %i.mi
  br i1 %.not27.i99.1, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit102, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit102: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i98.1, %bb.bj, %.preheader28.i85.preheader
  %i.mj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %bb.bn unwind label %bb.dc     ; 6 uses

bb.bn:                                            ; preds = %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit102
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr %i.mk, align 4, !tbaa !172, !noalias !7545
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store i32 0, ptr %i.ml, align 4, !tbaa !368, !noalias !7545
  %i.mm = load ptr, ptr %i.kp, align 8, !tbaa !168, !noalias !7546
  store ptr %i.mm, ptr %i.mj, align 8, !tbaa !168, !noalias !7546
  store ptr %i.mj, ptr %i.kp, align 8, !tbaa !168, !noalias !7546
  %i.mn = load i64, ptr %1, align 8, !tbaa !175, !noalias !7546
  %i.mo = add i64 %i.mn, 1                        ; 2 uses
  store i64 %i.mo, ptr %1, align 8, !tbaa !175, !noalias !7546
  %i.mp = icmp ult i64 %i.mo, 3
  br i1 %i.mp, label %_ZNSolsEPFRSoS_E.exit, label %.preheader28.i104.preheader

.preheader28.i104.preheader:                      ; preds = %bb.bn
  %.sroa.020.0.i107 = load ptr, ptr %i.er, align 8, !tbaa !168 ; 7 uses
  %.not2629.i110 = icmp eq ptr %.sroa.020.0.i107, %i.er
  br i1 %.not2629.i110, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit121, label %.lr.ph.i111.preheader

.lr.ph.i111.preheader:                            ; preds = %.preheader28.i104.preheader
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i107, i64 8
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !369
  %i.ms = load i32, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !369
  %i.mt = icmp eq i32 %i.mr, %i.ms
  br i1 %i.mt, label %bb.bo, label %_ZNSolsEPFRSoS_E.exit

bb.bo:                                            ; preds = %.lr.ph.i111.preheader
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i107, i64 12
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !370
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !370
  %i.mx = icmp eq i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.bp, label %_ZNSolsEPFRSoS_E.exit

bb.bp:                                            ; preds = %bb.bo
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i107, i64 16
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !371
  %i.na = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !371
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.bq, label %_ZNSolsEPFRSoS_E.exit

bb.bq:                                            ; preds = %bb.bp
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i107, i64 20
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !372
  %i.ne = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !372
  %i.nf = icmp eq i32 %i.nd, %i.ne
  br i1 %i.nf, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117: ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i107, i64 24
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !368
  %i.ni = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !368
  %.not27.i118 = icmp eq i32 %i.nh, %i.ni
  br i1 %.not27.i118, label %bb.br, label %_ZNSolsEPFRSoS_E.exit

bb.br:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117
  %i.nj = load ptr, ptr %.sroa.020.0.i107, align 8, !tbaa !168 ; 7 uses
  %.not26.i120 = icmp eq ptr %i.nj, %i.er
  br i1 %.not26.i120, label %_ZN5boost9container4test23test_expected_containerINS0_5slistINS1_10EmplaceIntEvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit121, label %.lr.ph.i111.1

.lr.ph.i111.1:                                    ; preds = %bb.br
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !369
  %i.nm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !369
  %i.nn = icmp eq i32 %i.nl, %i.nm
  br i1 %i.nn, label %bb.bs, label %_ZNSolsEPFRSoS_E.exit

bb.bs:                                            ; preds = %.lr.ph.i111.1
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  %i.np = load i32, ptr %i.no, align 4, !tbaa !370
  %i.nq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !370
  %i.nr = icmp eq i32 %i.np, %i.nq
  br i1 %i.nr, label %bb.bt, label %_ZNSolsEPFRSoS_E.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !371
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !371
  %i.nv = icmp eq i32 %i.nt, %i.nu
  br i1 %i.nv, label %bb.bu, label %_ZNSolsEPFRSoS_E.exit

bb.bu:                                            ; preds = %bb.bt
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !372
  %i.ny = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !372
  %i.nz = icmp eq i32 %i.nx, %i.ny
  br i1 %i.nz, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117.1, label %_ZNSolsEPFRSoS_E.exit

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117.1: ; preds = %bb.bu
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !368
  %i.oc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test18test_emplace_afterINS0_5slistINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !368
  %.not27.i118.1 = icmp eq i32 %i.ob, %i.oc
  br i1 %.not27.i118.1, label %bb.bv, label %_ZNSolsEPFRSoS_E.exit

bb.bv:                                            ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i117.1
  %i.od = load ptr, ptr %i.nj, align 8, !tbaa !168 ; 6 uses
end_hunk_1

inline.NumInlined: 1468
inline.NumDeleted: 648
begin_hunk_0_@_ZN6Assimp11LWSImporter10BuildGraphEP6aiNodeRNS_3LWS8NodeDescERSt6vectorINS_14AttachmentInfoESaIS7_EERNS_11BatchLoaderERPP8aiCameraRPP7aiLightRS6_IP10aiNodeAnimSaISM_EE:bb.a
  store i8 0, ptr %i.gd, align 1
  br label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE12emplace_backIJRP7aiSceneRP6aiNodeEEERS1_DpOT_.exit

_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE12emplace_backIJRP7aiSceneRP6aiNodeEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_M_realloc_insertIJRP7aiSceneRP6aiNodeEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q, %bb.ag, %bb.af, %bb.o, %bb.a, %bb.ac, %bb.ae, %bb.ad
  %.0129 = phi ptr [ %1, %bb.a ], [ %i.cw, %bb.o ], [ %1, %bb.ae ], [ %1, %bb.ac ], [ %1, %bb.ad ], [ %1, %bb.ag ], [ %1, %bb.af ], [ %i.cw, %bb.q ], [ %i.cw, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_M_realloc_insertIJRP7aiSceneRP6aiNodeEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWSImporter11FindLWOFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.t, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = load ptr, ptr %2, align 8                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 58
end_hunk_1
begin_hunk_2_@_ZN6Assimp11LWSImporter11FindLWOFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.aa = load i8, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
end_hunk_2
begin_hunk_3_@_ZN6Assimp11LWSImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.al = load ptr, ptr %5, align 8, !nonnull !41, !noundef !41 ; 3 uses
  store ptr %i.al, ptr %i.f, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load ptr, ptr %i.am, align 8
end_hunk_3
begin_hunk_4_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e
end_hunk_4
begin_hunk_5_@_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.i, %bb.u, %._crit_edge.thread.i47, %bb.p, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.c, %bb.r, %bb.k, %bb.o
  %.sroa.070.2 = phi ptr [ null, %bb.c ], [ null, %bb.p ], [ %spec.select, %bb.k ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i47 ], [ null, %._crit_edge.thread.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ %i.ab, %bb.i ]
  %.sroa.12.2 = phi ptr [ %i.f, %bb.c ], [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %i.ab, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_6
begin_hunk_7_@_ZNSt7__cxx114listIN6Assimp3LWO8EnvelopeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_:bb.a

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc8.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %.noexc8.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %.noexc8.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.08.i.i.i.i.i.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i.i, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40 ; 2 uses
end_hunk_7

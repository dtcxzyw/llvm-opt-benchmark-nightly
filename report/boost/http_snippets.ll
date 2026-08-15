inline.NumInlined: 8774
inline.NumDeleted: 3539
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5boost5beast4http9to_stringENS1_5fieldE
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE4findINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::intrusive::tree_value_compare", align 1 ; 5 uses
  %4 = alloca %"struct.boost::intrusive::tree_value_compare", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %.not10.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.1.i.i, %bb.g ] ; 2 uses
  %storemerge211.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ %storemerge.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %storemerge211.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !99
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %storemerge211.i.i, i64 40
  %i.d = load i16, ptr %i.b, align 2, !tbaa !106
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = icmp ult i64 %i.f, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.g, label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread.i.i, label %bb.c

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.f, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.h, label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread7.i.i, label %bb.d

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread7.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 @_ZNK5boost5beast5ilessclENS_4core17basic_string_viewIcEES4_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nonnull %i.c, i64 %i.f, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i)
          to label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread7.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread.i.i
  %.sink.i.i = phi i64 [ 8, %bb.f ], [ 16, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread.i.i ], [ 16, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i ]
  %.1.i.i = phi ptr [ %storemerge211.i.i, %bb.f ], [ %.012.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread.i.i ], [ %.012.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclIPNS0_11rbtree_nodeISC_EENS_4core17basic_string_viewIcEEEEbRKT_RKT0_NSH_11enable_if_cIXaasr30is_same_or_nodeptr_convertibleISS_EE5valuentsr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.i.i ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge211.i.i, i64 %.sink.i.i
  %storemerge.i.i = load ptr, ptr %i.l, align 8, !tbaa !508 ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit, label %bb.b, !llvm.loop !673

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit: ; preds = %bb.g
  %i.m = icmp eq ptr %.1.i.i, %0
  br i1 %i.m, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !99
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !15 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.p = load i16, ptr %i.n, align 2, !tbaa !106
  %i.q = zext i16 %i.p to i64
  %i.r = add nsw i64 %i.q, -2                     ; 3 uses
  %i.s = icmp ult i64 %.sroa.2.0.copyload.i.i, %i.r
  br i1 %i.s, label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread, label %bb.i

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ugt i64 %.sroa.2.0.copyload.i.i, %i.r
  br i1 %i.t, label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread8, label %bb.j

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread8: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef zeroext i1 @_ZNK5boost5beast5ilessclENS_4core17basic_string_viewIcEES4_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, ptr nonnull %i.o, i64 %i.r)
          to label %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.u, label %bb.l, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread

bb.l:                                             ; preds = %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit.thread: ; preds = %bb.a, %bb.l, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread8, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit
  %i.x = phi ptr [ %0, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE11lower_boundINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_.exit ], [ %.1.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit.thread8 ], [ %0, %bb.l ], [ %.1.i.i, %_ZNK5boost9intrusive6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINS7_7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISA_EEEclINS_4core17basic_string_viewIcEEPNS0_11rbtree_nodeISC_EEEEbRKT_RKT0_NSH_11enable_if_cIXaantsr30is_same_or_nodeptr_convertibleISS_EE5valuesr30is_same_or_nodeptr_convertibleISV_EE5valueEPNSK_11sfinae_typeEE4typeE.exit ], [ %0, %bb.a ]
  ret ptr %i.x
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJEED2Ev"(ptr noundef nonnull align 8 dead_on_return(276) dereferenceable(276) initializes((104, 112)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !191 ; 2 uses
  %.not5.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not5.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %i.c = phi ptr [ %i.e, %.noexc.i ], [ %.pr.i.i, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc.i unwind label %bb.c, !inline_history !205

.noexc.i:                                         ; preds = %.lr.ph.i.i
  store ptr %i.e, ptr %i.b, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !206

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i: ; preds = %.noexc.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.a, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load i8, ptr %i.i, align 8, !tbaa !142, !range !190, !noundef !35
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %"_ZN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEED2Ev.exit"

bb.b:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #32, !inline_history !207
  br label %"_ZN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEED2Ev.exit"

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33, !inline_history !208
  unreachable

"_ZN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.o) #32, !inline_history !207
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #32
  ret void
}

declare { ptr, i64 } @_ZN5boost4asio17cancellation_slot14prepare_memoryEmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5boost4asio17cancellation_slot18auto_delete_helperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN5boost4asio19cancellation_signalD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #12

declare void @_ZN5boost4asio17cancellation_slot5clearEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost5beast4http6detail7read_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0ENS2_14parser_is_doneEEclINS4_6detail11composed_opISE_NSG_13composed_workIFvS8_EEENS2_11read_msg_opIS9_SC_Lb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEvRT_SU_m"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(276) %1, ptr nofree noundef readonly byval(%"class.boost::system::error_code") align 8 captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::cancellation_slot::auto_delete_helper", align 8 ; 5 uses
  %5 = alloca %"class.boost::asio::cancellation_slot", align 8 ; 5 uses
  %6 = alloca %"class.boost::asio::cancellation_slot", align 8 ; 4 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %8 = alloca %"class.boost::asio::detail::composed_op.101", align 8 ; 22 uses
  %9 = alloca %"struct.boost::asio::detail::composed_work", align 8 ; 7 uses
  %10 = alloca %"struct.boost::asio::detail::composed_io_executors", align 8 ; 5 uses
  %11 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %12 = alloca %"class.boost::asio::detail::initiate_composed.100", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %15 = alloca %"class.boost::beast::http::message.8", align 8 ; 13 uses
  %16 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::composed_op<boost::beast::http::detail::read_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::basic_flat_buffer<std::allocator<char>>, false, boost::beast::http::detail::parser_is_done>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::beast::http::detail::read_msg_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::basic_flat_buffer<std::allocator<char>>, false, boost::beast::http::basic_string_body<char>, std::allocator<char>, (lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:89:9)>, void (boost::system::error_code, unsigned long)>, boost::asio::any_io_executor>, std::allocator<void>>::ptr", align 8 ; 6 uses
  %17 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %18 = alloca %"class.boost::asio::detail::work_dispatcher", align 8 ; 17 uses
  %19 = alloca %"class.std::allocator.1", align 1 ; 4 uses
  %20 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %21 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %22 = alloca %"class.boost::asio::any_io_executor", align 8 ; 4 uses
  %23 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %24 = alloca %"class.boost::asio::detail::work_dispatcher", align 8 ; 20 uses
  %25 = alloca %"class.boost::asio::detail::initiate_dispatch_with_executor", align 8 ; 10 uses
  %26 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %i.a, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split [
    i32 22, label %bb.as
    i32 0, label %bb.c
    i32 5, label %..critedge_crit_edge
  ]

..critedge_crit_edge:                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload.pre = load i64, ptr %.sroa.3.0..sroa_idx.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %.pre = and i64 %.sroa.3.0.copyload.pre, 1
  br label %.critedge

bb.b:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body15.thread59

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !674, !nonnull !35, !align !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !604
  %i.g = icmp eq i32 %i.f, 11
  br i1 %i.g, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  store i32 5, ptr %0, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %24, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 232 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 176 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 240 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %24, i64 248 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %24, i64 256 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %24, i64 264 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 272 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 280 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 120 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 232 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 176 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 240 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 248 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 256 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 264 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 272 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 280 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.ae, %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i.i.i
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.o) #32, !inline_history !675
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #32, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #32, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #32, !inline_history !677
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.au = load i32, ptr %0, align 8, !tbaa !192
  %.not11 = icmp eq i32 %i.au, 0
  br i1 %.not11, label %bb.f, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !678, !nonnull !35, !align !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %26, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail10blocking_tILi0EE5neverE, i32 noundef 0)
          to label %"_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS2_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSX_RKSY_NS0_10constraintIXoosr11is_executorISY_EE5valuesr9execution11is_executorISY_EE5valueEiE4typeE.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #33
  unreachable

"_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS2_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSX_RKSY_NS0_10constraintIXoosr11is_executorISY_EE5valuesr9execution11is_executorISY_EE5valueEiE4typeE.exit": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %25, ptr noundef nonnull align 8 dereferenceable(56) %26) #32, !inline_history !677
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32, !noalias !679
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(56) %i.i) #32, !noalias !679, !inline_history !676
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32, !noalias !686
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull align 8 dereferenceable(113) %i.j) #32, !noalias !686, !inline_history !676
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(56) %21) #32, !inline_history !676
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #32, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32, !noalias !686
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #32, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32, !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.az = load i64, ptr %1, align 8, !tbaa !203
  store i64 %i.az, ptr %24, align 8, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.i) #32, !inline_history !676
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.n, align 8, !tbaa !9
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.o, ptr noundef nonnull align 8 dereferenceable(113) %i.j) #32, !inline_history !676
  %i.ba = load i8, ptr %i.q, align 8, !tbaa !142, !range !190, !noundef !35 ; 2 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  store i8 %i.ba, ptr %i.p, align 8, !tbaa !142
  br i1 %i.bb, label %bb.h, label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEC2EOSV_.exit.i.i.i.i.i"

bb.h:                                             ; preds = %"_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS2_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSX_RKSY_NS0_10constraintIXoosr11is_executorISY_EE5valuesr9execution11is_executorISY_EE5valueEiE4typeE.exit"
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.s) #32, !inline_history !676
  store i8 0, ptr %i.q, align 8, !tbaa !142
  br label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEC2EOSV_.exit.i.i.i.i.i"

"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEC2EOSV_.exit.i.i.i.i.i": ; preds = %bb.h, %"_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS2_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSX_RKSY_NS0_10constraintIXoosr11is_executorISY_EE5valuesr9execution11is_executorISY_EE5valueEiE4typeE.exit"
  %i.bc = load i32, ptr %i.u, align 8, !tbaa !146
  store i32 %i.bc, ptr %i.t, align 8, !tbaa !146
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !191
  store ptr null, ptr %i.w, align 8, !tbaa !191
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !150
  %i.be = load i32, ptr %i.y, align 8, !tbaa !192
  store i32 %i.be, ptr %i.x, align 8, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast4http6detail11read_msg_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EE", i64 16), ptr %i.n, align 8, !tbaa !9
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !193, !nonnull !35, !align !36
  store ptr %i.bf, ptr %i.z, align 8, !tbaa !161
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !195
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !195
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2IS3_SX_EEOT_OT0_RKSC_.exit.i.i.i.i" unwind label %bb.i, !inline_history !676

bb.i:                                             ; preds = %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEC2EOSV_.exit.i.i.i.i.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJEED2Ev"(ptr noundef nonnull align 8 dead_on_return(276) dereferenceable(336) %24) #32, !inline_history !676
  br label %.body.i.i.i.i

"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2IS3_SX_EEOT_OT0_RKSC_.exit.i.i.i.i": ; preds = %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEC2EOSV_.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !45
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2IS3_SX_EEOT_OT0_RKSC_.exit.i.i.i.i"
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !693 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not6.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(56) %25, ptr nonnull @"_ZN5boost4asio6detail22executor_function_view8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESE_vEEEEvPv", ptr nonnull align 8 dereferenceable(336) %24)
          to label %bb.ad unwind label %bb.ag, !inline_history !695

bb.l:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.bo = load i64, ptr %24, align 8, !tbaa !203
  store i64 %i.bo, ptr %18, align 8, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.m) #32, !inline_history !695
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.ai, align 8, !tbaa !9
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.aj, ptr noundef nonnull align 8 dereferenceable(113) %i.o) #32, !inline_history !695
  %i.bp = load i8, ptr %i.p, align 8, !tbaa !142, !range !190, !noundef !35 ; 2 uses
  %i.bq = trunc nuw i8 %i.bp to i1
  store i8 %i.bp, ptr %i.ak, align 8, !tbaa !142
  br i1 %i.bq, label %bb.m, label %"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2EOSY_.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.r) #32, !inline_history !695
  store i8 0, ptr %i.p, align 8, !tbaa !142
  br label %"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2EOSY_.exit.i.i.i.i.i"

"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEC2EOSY_.exit.i.i.i.i.i": ; preds = %bb.m, %bb.l
  %i.br = load i32, ptr %i.t, align 8, !tbaa !146
  store i32 %i.br, ptr %i.am, align 8, !tbaa !146
end_hunk_0
begin_hunk_1_@"_ZN5boost5beast4http6detail7read_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0ENS2_14parser_is_doneEEclINS4_6detail11composed_opISE_NSG_13composed_workIFvS8_EEENS2_11read_msg_opIS9_SC_Lb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEvRT_SU_m":bb.a
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #32, !inline_history !716
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ed) #32, !inline_history !717
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.fe = load i32, ptr %0, align 8, !tbaa !192
  %.not9 = icmp eq i32 %i.fe, 0
  br i1 %.not9, label %bb.aj, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ff = load ptr, ptr %i.ec, align 8, !tbaa !674, !nonnull !35, !align !36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !718
  %i.fg = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !453
  %i.fh = load ptr, ptr %i.eb, align 8, !tbaa !678, !nonnull !35, !align !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %i.fi) #32, !noalias !718, !inline_history !717
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %11) #32, !noalias !718, !inline_history !717
  store i32 0, ptr %12, align 8
  store <2 x ptr> %i.fg, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.ff, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ed, ptr noundef nonnull align 8 dereferenceable(56) %10) #32, !inline_history !717
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #32, !inline_history !717
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #32, !inline_history !717
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !718
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %i.ed, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %_ZN5boost4asio6detail13composed_workIFvNS0_15any_io_executorEEEC2ERKNS1_21composed_io_executorsIS4_EE.exit.i unwind label %bb.ak, !inline_history !716

bb.ak:                                            ; preds = %bb.aj
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #33, !inline_history !716
  unreachable

_ZN5boost4asio6detail13composed_workIFvNS0_15any_io_executorEEEC2ERKNS1_21composed_io_executorsIS4_EE.exit.i: ; preds = %bb.aj
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !187 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.val.i.i.i, ptr %5, align 8
  %.not.i.i.i.i3.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i3.i, label %"_ZN5boost4asio6detail28base_from_cancellation_stateINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS1_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEvEC2INS0_19cancellation_filterILNS0_17cancellation_typeE1EEEEERKSW_T_.exit.i.i.i", label %bb.al

bb.al:                                            ; preds = %_ZN5boost4asio6detail13composed_workIFvNS0_15any_io_executorEEEC2ERKNS1_21composed_io_executorsIS4_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.fl = invoke { ptr, i64 } @_ZN5boost4asio17cancellation_slot14prepare_memoryEmm(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, i64 noundef 8)
          to label %.noexc4.i unwind label %bb.ao, !inline_history !716 ; 2 uses

.noexc4.i:                                        ; preds = %bb.al
  %i.fm = extractvalue { ptr, i64 } %i.fl, 0      ; 5 uses
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1      ; 2 uses
  store i64 %i.fn, ptr %i.ee, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost4asio6detail20cancellation_handlerINS0_18cancellation_state4implINS0_19cancellation_filterILNS0_17cancellation_typeE1EEES7_EEEE, i64 16), ptr %i.fm, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !721
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 0, ptr %i.fp, align 8, !tbaa !724
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %i.fn, ptr %i.fq, align 8, !tbaa !726
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.fr = load ptr, ptr %5, align 8, !tbaa !734
  store ptr %i.fm, ptr %i.fr, align 8, !tbaa !738
  call void @_ZN5boost4asio17cancellation_slot18auto_delete_helperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32, !inline_history !716
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %"_ZN5boost4asio6detail28base_from_cancellation_stateINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS1_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEvEC2INS0_19cancellation_filterILNS0_17cancellation_typeE1EEEEERKSW_T_.exit.i.i.i"

"_ZN5boost4asio6detail28base_from_cancellation_stateINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS1_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEvEC2INS0_19cancellation_filterILNS0_17cancellation_typeE1EEEEERKSW_T_.exit.i.i.i": ; preds = %.noexc4.i, %_ZN5boost4asio6detail13composed_workIFvNS0_15any_io_executorEEEC2ERKNS1_21composed_io_executorsIS4_EE.exit.i
  %i.fs = phi ptr [ %i.fo, %.noexc4.i ], [ null, %_ZN5boost4asio6detail13composed_workIFvNS0_15any_io_executorEEEC2ERKNS1_21composed_io_executorsIS4_EE.exit.i ]
  store ptr %i.fs, ptr %8, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(104) %12, i64 48, i1 false)
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %9) #32, !inline_history !716
  %i.ft = load i64, ptr %1, align 8, !tbaa !203
  store i64 %i.ft, ptr %i.eh, align 8, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i64 40, i1 false)
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ek, ptr noundef nonnull align 8 dereferenceable(56) %i.el) #32, !inline_history !716
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.em, align 8, !tbaa !9
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.en, ptr noundef nonnull align 8 dereferenceable(113) %i.eo) #32, !inline_history !716
  %i.fu = load i8, ptr %i.eq, align 8, !tbaa !142, !range !190, !noundef !35 ; 2 uses
  %i.fv = trunc nuw i8 %i.fu to i1
  store i8 %i.fu, ptr %i.ep, align 8, !tbaa !142
  br i1 %i.fv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %"_ZN5boost4asio6detail28base_from_cancellation_stateINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS1_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEvEC2INS0_19cancellation_filterILNS0_17cancellation_typeE1EEEEERKSW_T_.exit.i.i.i"
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.er, ptr noundef nonnull align 8 dereferenceable(56) %i.es) #32, !inline_history !716
  store i8 0, ptr %i.eq, align 8, !tbaa !142
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZN5boost4asio6detail28base_from_cancellation_stateINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0ENS6_14parser_is_doneEEENS1_13composed_workIFvSB_EEENS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEvEC2INS0_19cancellation_filterILNS0_17cancellation_typeE1EEEEERKSW_T_.exit.i.i.i"
  %i.fw = load i32, ptr %i.eu, align 8, !tbaa !146
  store i32 %i.fw, ptr %i.et, align 8, !tbaa !146
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !191
  store ptr null, ptr %i.ew, align 8, !tbaa !191
  store ptr %i.fx, ptr %i.ev, align 8, !tbaa !150
  %i.fy = load i32, ptr %i.ey, align 8, !tbaa !192
  store i32 %i.fy, ptr %i.ex, align 8, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast4http6detail11read_msg_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EE", i64 16), ptr %i.em, align 8, !tbaa !9
  %i.fz = load ptr, ptr %i.fa, align 8, !tbaa !193, !nonnull !35, !align !36
  store ptr %i.fz, ptr %i.ez, align 8, !tbaa !161
  %i.ga = load i32, ptr %i.fc, align 8, !tbaa !195
  store i32 %i.ga, ptr %i.fb, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 1, ptr %i.fd, align 8, !tbaa !739
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %.val.i.i = load ptr, ptr %8, align 8, !tbaa !203
  store ptr %.val.i.i, ptr %6, align 8
  invoke void @_ZN5boost4asio17cancellation_slot5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i unwind label %bb.ap, !inline_history !744

.noexc.i:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZN5boost5beast4http6detail12read_some_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0EEclINS4_6detail11composed_opISD_NSF_13composed_workIFvS8_EEENSG_INS2_7read_opIS9_SC_Lb0ENS2_14parser_is_doneEEESJ_NS2_11read_msg_opIS9_SC_Lb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEEEvRT_SW_m"(ptr noundef nonnull align 8 dereferenceable(41) %i.ef, ptr noundef nonnull align 8 dereferenceable(396) %8, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %7, i64 noundef 0)
          to label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSW_EEclIJEEEvDpOT_.exit.i" unwind label %bb.ap, !inline_history !744

"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSW_EEclIJEEEvDpOT_.exit.i": ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.em, align 8, !tbaa !9
  %.pr.i.i.i.i.i = load ptr, ptr %i.ev, align 8, !tbaa !191 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i21

bb.ao:                                            ; preds = %bb.al
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.ap:                                            ; preds = %.noexc.i, %bb.an
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJEED2Ev"(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %8) #32, !inline_history !745
  br label %.body24

.body24:                                          ; preds = %bb.ap, %bb.ao
  %.pn.i.i = phi { ptr, i32 } [ %i.gc, %bb.ap ], [ %i.gb, %bb.ao ]
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #32, !inline_history !716
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ed) #32, !inline_history !717
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit17

.lr.ph.i.i.i.i.i21:                               ; preds = %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSW_EEclIJEEEvDpOT_.exit.i", %.noexc.i.i.i.i22
  %i.gd = phi ptr [ %i.gf, %.noexc.i.i.i.i22 ], [ %.pr.i.i.i.i.i, %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSW_EEclIJEEEvDpOT_.exit.i" ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !155 ; 3 uses
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
          to label %.noexc.i.i.i.i22 unwind label %bb.ar, !inline_history !746

.noexc.i.i.i.i22:                                 ; preds = %.lr.ph.i.i.i.i.i21
  store ptr %i.gf, ptr %i.ev, align 8, !tbaa !191
  %.not.i.i.i.i.i23 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i23, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i21, !llvm.loop !206

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i22, %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSW_EEclIJEEEvDpOT_.exit.i"
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.em, align 8, !tbaa !9
  %i.gj = load i8, ptr %i.ep, align 8, !tbaa !142, !range !190, !noundef !35
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.aq, label %bb.ai

bb.aq:                                            ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.er) #32, !inline_history !715
  br label %bb.ai

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i21
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #33, !inline_history !747
  unreachable

bb.as:                                            ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !748
  %i.gp = add i64 %i.go, %3
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !748
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !127 ; 4 uses
  %i.gs = and i64 %i.gr, 1                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread51, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = icmp ne i64 %i.gr, 1
  %i.gu = load i32, ptr %2, align 8
  %i.gv = icmp ne i32 %i.gu, 0
  %or.cond = select i1 %i.gt, i1 true, i1 %i.gv
  br i1 %or.cond, label %.critedge.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread51

.critedge.thread:                                 ; preds = %bb.at
  %.sroa.048.0.copyload97 = load i32, ptr %2, align 8
  %.sroa.2.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.446.sroa.0.0.copyload109 = load <12 x i8>, ptr %.sroa.2.0..sroa_idx98, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.au

_ZNK5boost6system10error_codecvbEv.exit.thread51: ; preds = %bb.at, %bb.as
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !674, !nonnull !35, !align !36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !604
  %i.hb = icmp eq i32 %i.ha, 11
  br i1 %i.hb, label %.critedge, label %bb.ah, !llvm.loop !749

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZNK5boost6system10error_codecvbEv.exit.thread51
  %.pre-phi = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.gs, %_ZNK5boost6system10error_codecvbEv.exit.thread51 ]
  %.sroa.3.0.copyload = phi i64 [ %.sroa.3.0.copyload.pre, %..critedge_crit_edge ], [ %i.gr, %_ZNK5boost6system10error_codecvbEv.exit.thread51 ] ; 2 uses
  %.sroa.048.0.copyload = load i32, ptr %2, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.446.sroa.0.0.copyload110 = load <12 x i8>, ptr %.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread5.i.i, label %bb.au

bb.au:                                            ; preds = %.critedge.thread, %.critedge
  %.sroa.446.sroa.0.0 = phi <12 x i8> [ %.sroa.446.sroa.0.0.copyload110, %.critedge ], [ %.sroa.446.sroa.0.0.copyload109, %.critedge.thread ] ; 2 uses
  %i.hd = phi ptr [ %i.hc, %.critedge ], [ %i.gw, %.critedge.thread ] ; 2 uses
  %.sroa.048.0.copyload103 = phi i32 [ %.sroa.048.0.copyload, %.critedge ], [ %.sroa.048.0.copyload97, %.critedge.thread ] ; 2 uses
  %.sroa.3.0.copyload102 = phi i64 [ %.sroa.3.0.copyload, %.critedge ], [ %i.gr, %.critedge.thread ] ; 2 uses
  %i.he = icmp ne i64 %.sroa.3.0.copyload102, 1
  %i.hf = icmp ne i32 %.sroa.048.0.copyload103, 0
  %or.cond.i.i = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %or.cond.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread5.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread5.i.i: ; preds = %bb.au, %.critedge
  %.sroa.446.sroa.0.1 = phi <12 x i8> [ %.sroa.446.sroa.0.0.copyload110, %.critedge ], [ %.sroa.446.sroa.0.0, %bb.au ]
  %i.hg = phi ptr [ %i.hc, %.critedge ], [ %i.hd, %bb.au ]
  %.sroa.048.0.copyload104 = phi i32 [ %.sroa.048.0.copyload, %.critedge ], [ 0, %bb.au ]
  %.sroa.3.0.copyload100 = phi i64 [ %.sroa.3.0.copyload, %.critedge ], [ 1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !193, !nonnull !35, !align !36 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 96
  call void @_ZN5boost5beast4http12basic_fieldsISaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(120) %i.hj) #32
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 176
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !750
  store i64 %i.hm, ptr %i.hk, align 8, !alias.scope !750
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 184 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 5 uses
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !11, !alias.scope !750
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !17, !noalias !750 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 200 ; 5 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread5.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 192
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !20, !noalias !750 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nuw nsw i64 %i.hu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hp, ptr noundef nonnull align 8 dereferenceable(1) %i.hr, i64 %i.hw, i1 false)
  br label %_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E7releaseEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread5.i.i
  store ptr %i.hq, ptr %i.hn, align 8, !tbaa !17, !alias.scope !750
  %i.hx = load i64, ptr %i.hr, align 8, !tbaa !19, !noalias !750
  store i64 %i.hx, ptr %i.hp, align 8, !tbaa !19, !alias.scope !750
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 192
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !20, !noalias !750
  br label %_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E7releaseEv.exit.i.i

_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E7releaseEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.av
  %i.hy = phi i64 [ %i.hu, %bb.av ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hi, i64 192
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 96
  store i64 %i.hy, ptr %i.ia, align 8, !tbaa !20, !alias.scope !750
  store ptr %i.hr, ptr %i.ho, align 8, !tbaa !17, !noalias !750
  store i64 0, ptr %i.hz, align 8, !tbaa !20, !noalias !750
  store i8 0, ptr %i.hr, align 8, !tbaa !19, !noalias !750
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !193, !nonnull !35, !align !36
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !753, !nonnull !35, !align !36
  %i.ie = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(120) %i.id, ptr noundef nonnull align 8 dereferenceable(120) %15) #32 ; 0 uses
  %i.if = load ptr, ptr %i.hn, align 8, !tbaa !17 ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.hp
  br i1 %i.ig, label %_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i.i: ; preds = %_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E7releaseEv.exit.i.i
  %i.ih = load i64, ptr %i.hp, align 8, !tbaa !19
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #36
  br label %_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i

_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i: ; preds = %_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_E7releaseEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !77, !noalias !754 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ik, %i.ij
  br i1 %.not4.i.i.i.i.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.02.05.i.i.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i ], [ %i.ik, %_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i ] ; 4 uses
  %i.il = load ptr, ptr %.sroa.02.05.i.i.i.i.i, align 8, !tbaa !77, !noalias !757 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 48
  %i.in = load i16, ptr %i.im, align 8, !tbaa !106
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 50
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !110
  %i.ir = zext i16 %i.iq to i64
  %i.is = add nuw nsw i64 %i.io, 65
  %i.it = add nuw nsw i64 %i.is, %i.ir
  %i.iu = and i64 %i.it, 262136
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(54) %.sroa.02.05.i.i.i.i.i, i64 noundef %i.iu) #36
  %.not.i.i.i.i.i13 = icmp eq ptr %i.il, %i.ij
  br i1 %.not.i.i.i.i.i13, label %_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !111

_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost6empty_11empty_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0ELb0EED2Ev.exit.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !113 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !114
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.iw) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i.i.i

_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i.i.i: ; preds = %bb.aw, %_ZN5boost5beast4http12basic_fieldsISaIcEE11delete_listEv.exit.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !113 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !114
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jb) #36
  br label %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i

_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i: ; preds = %bb.ax, %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i: ; preds = %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i, %bb.au
  %.sroa.446.sroa.0.2 = phi <12 x i8> [ %.sroa.446.sroa.0.1, %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i ], [ %.sroa.446.sroa.0.0, %bb.au ]
  %i.jf = phi ptr [ %i.hg, %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i ], [ %i.hd, %bb.au ] ; 2 uses
  %.sroa.048.0.copyload105 = phi i32 [ %.sroa.048.0.copyload104, %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i ], [ %.sroa.048.0.copyload103, %bb.au ]
  %.sroa.3.0.copyload101 = phi i64 [ %.sroa.3.0.copyload100, %_ZN5boost5beast4http7messageILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEED2Ev.exit.i.i ], [ %.sroa.3.0.copyload102, %bb.au ]
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !9
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(168) %i.jf)
          to label %.noexc unwind label %bb.b, !inline_history !760

.noexc:                                           ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !142, !range !190, !noundef !35
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.ay, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i.i.i

bb.ay:                                            ; preds = %.noexc
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.jl) #32
  store i8 0, ptr %i.ji, align 8, !tbaa !142
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i.i.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i.i.i: ; preds = %bb.ay, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 %.sroa.048.0.copyload105, ptr %14, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 4
  store <12 x i8> %.sroa.446.sroa.0.2, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %.sroa.3.0.copyload101, ptr %.sroa.53.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i.i.i
  %i.jm = load ptr, ptr %13, align 8, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !20
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.jm, i64 noundef %i.jo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bc ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %.noexc14
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !9
  %i.jr = getelementptr i8, ptr %i.jq, i64 -24
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 240
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !223 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.az, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc.i.i.i.i unwind label %bb.bc

.noexc.i.i.i.i:                                   ; preds = %bb.az
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !238
  %.not.i1.i.i.i.i.i.i = icmp eq i8 %i.jx, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 67
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jv)
          to label %.noexc4.i.i.i.i unwind label %bb.bc

.noexc4.i.i.i.i:                                  ; preds = %bb.bb
  %i.ka = load ptr, ptr %i.jv, align 8, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef signext i8 %i.kc(ptr noundef nonnull align 8 dereferenceable(570) %i.jv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i unwind label %bb.bc, !inline_history !244

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.jz, %bb.ba ], [ %i.kd, %.noexc4.i.i.i.i ]
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i8 noundef signext %.0.i.i.i.i.i.i.i)
          to label %.noexc6.i.i.i.i unwind label %bb.bc

.noexc6.i.i.i.i:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ke)
          to label %_ZNSolsEPFRSoS_E.exit.i.i.i.i unwind label %bb.bc ; 0 uses

_ZNSolsEPFRSoS_E.exit.i.i.i.i:                    ; preds = %.noexc6.i.i.i.i
  %i.kg = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEE8completeEST_m.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i.i
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !19
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #36
  br label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEE8completeEST_m.exit"

bb.bc:                                            ; preds = %.noexc6.i.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i, %.noexc4.i.i.i.i, %bb.bb, %bb.az, %.noexc14
  %i.kl = landingpad { ptr, i32 }
          cleanup
  %i.km = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %bb.bc
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !19
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %.body15.thread59

"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEE8completeEST_m.exit": ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split

_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split: ; preds = %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEE8completeEST_m.exit", %bb.a
  store i32 -1, ptr %0, align 8, !tbaa !192
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.e, %bb.ai, %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split
  ret void

.body15.thread59:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, %bb.b
  %.pn62 = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i ]
  store i32 -1, ptr %0, align 8, !tbaa !192
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit17

_ZN5boost4asio6detail13coroutine_refD2Ev.exit17:  ; preds = %.body24, %.body.i.i.i.i, %.body15.thread59
  %.pn56 = phi { ptr, i32 } [ %.pn62, %.body15.thread59 ], [ %.pn.i.i, %.body24 ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %.pn56
}

declare void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind writable sret(%"class.boost::asio::any_io_executor") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vED2Ev"(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !191 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %i.d = phi ptr [ %i.f, %.noexc.i.i ], [ %.pr.i.i.i, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i.i unwind label %bb.c, !inline_history !205

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  store ptr %i.f, ptr %i.c, align 8, !tbaa !191
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i: ; preds = %.noexc.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.b, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i8, ptr %i.j, align 8, !tbaa !142, !range !190, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJEED2Ev.exit"

bb.b:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #32, !inline_history !207
  br label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJEED2Ev.exit"

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #33, !inline_history !208
  unreachable

"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.p) #32, !inline_history !207
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #32
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionINS_4asio9execution12bad_executorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !761
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !763
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, i64 64), ptr %i.b, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, i64 104), ptr %i.c, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, ptr nonnull @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEED2Ev) #34
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail22executor_function_view8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESE_vEEEEvPv"(ptr noundef nonnull %0) #10 align 2 {
bb.a:
  tail call fastcc void @"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEclEv"(ptr noundef nonnull align 8 dereferenceable(336) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_17basic_flat_bufferISaIcEEELb0ENS7_14parser_is_doneEEENS1_13composed_workIFvSC_EEENS7_11read_msg_opISD_SG_Lb0ENS6_17basic_string_bodyIcSt11char_traitsIcESF_EESF_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEESC_vEclEv"(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::composed_op<boost::beast::http::detail::read_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::basic_flat_buffer<std::allocator<char>>, false, boost::beast::http::detail::parser_is_done>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::beast::http::detail::read_msg_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::basic_flat_buffer<std::allocator<char>>, false, boost::beast::http::basic_string_body<char>, std::allocator<char>, (lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:89:9)>, void (boost::system::error_code, unsigned long)>>, std::allocator<void>>::ptr", align 8 ; 6 uses
  %2 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.boost::asio::detail::binder0", align 8 ; 18 uses
  %4 = alloca %"class.std::allocator.1", align 1  ; 4 uses
  %5 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %6 = alloca %"class.boost::asio::detail::binder0", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.b = load i64, ptr %0, align 8, !tbaa !203, !noalias !770
  store i64 %i.b, ptr %6, align 8, !tbaa !203, !alias.scope !770
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.g, align 8, !tbaa !9, !alias.scope !770
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.h, ptr noundef nonnull align 8 dereferenceable(113) %i.i) #32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !142, !range !190, !noalias !770, !noundef !35 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  store i8 %i.l, ptr %i.j, align 8, !tbaa !142, !alias.scope !770
  br i1 %i.m, label %bb.b, label %"_ZN5boost4asio6detail24work_dispatcher_functionINS1_19empty_work_functionELb1ELb1EE11bind_resultINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEDTclsr5boost4asio6detailE12bind_handlerscT_fp_EEOS10_.exit"

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o) #32
  store i8 0, ptr %i.k, align 8, !tbaa !142, !noalias !770
  br label %"_ZN5boost4asio6detail24work_dispatcher_functionINS1_19empty_work_functionELb1ELb1EE11bind_resultINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEDTclsr5boost4asio6detailE12bind_handlerscT_fp_EEOS10_.exit"

"_ZN5boost4asio6detail24work_dispatcher_functionINS1_19empty_work_functionELb1ELb1EE11bind_resultINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEDTclsr5boost4asio6detailE12bind_handlerscT_fp_EEOS10_.exit": ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load i32, ptr %i.q, align 8, !tbaa !146, !noalias !770
  store i32 %i.r, ptr %i.p, align 8, !tbaa !146, !alias.scope !770
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191, !noalias !770
  store ptr null, ptr %i.t, align 8, !tbaa !191, !noalias !770
  store ptr %i.u, ptr %i.s, align 8, !tbaa !150, !alias.scope !770
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i32, ptr %i.w, align 8, !tbaa !192, !noalias !770
  store i32 %i.x, ptr %i.v, align 8, !tbaa !192, !alias.scope !770
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast4http6detail11read_msg_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESB_EESB_ZN17doc_http_snippets3fxxEvE3$_0EE", i64 16), ptr %i.g, align 8, !tbaa !9, !alias.scope !770
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !193, !noalias !770, !nonnull !35, !align !36
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !161, !alias.scope !770
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !195, !noalias !770
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !195, !alias.scope !770
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.t, label %bb.c

bb.c:                                             ; preds = %"_ZN5boost4asio6detail24work_dispatcher_functionINS1_19empty_work_functionELb1ELb1EE11bind_resultINS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0ENS9_14parser_is_doneEEENS1_13composed_workIFvSE_EEENS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEDTclsr5boost4asio6detailE12bind_handlerscT_fp_EEOS10_.exit"
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !693 ; 2 uses
  %.not6.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr nonnull @"_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0ENS8_14parser_is_doneEEENS1_13composed_workIFvSD_EEENS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEEEEEvPv", ptr nonnull align 8 dereferenceable(280) %6)
          to label %bb.w unwind label %bb.z, !inline_history !771

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.am = load i64, ptr %6, align 8, !tbaa !203
  store i64 %i.am, ptr %3, align 8, !tbaa !203
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %i.e) #32, !inline_history !771
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.aq, ptr noundef nonnull align 8 dereferenceable(113) %i.h) #32, !inline_history !771
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 4 uses
end_hunk_1

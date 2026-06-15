inline.NumInlined: 22186
inline.NumDeleted: 7876
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE6insertIPS6_Li0EEESt4pairINSE_8iteratorEbERKT_:bb.a
  store ptr %.sink87.i.sink.i.ph.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i5.i6.i.i.i.i.i, align 8, !alias.scope !494
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !473, !alias.scope !494
  store ptr %.0.val, ptr %.sink87.i.sink.i.ph.i.i.i.i.i, align 8, !tbaa !498, !noalias !505
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE7emplaceIJRKPS6_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE7emplaceIJRKPS6_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf19EnumValueDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE22find_or_prepare_insertIPS6_EESt4pairINSE_8iteratorEbERKT_.exit.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool6Tables12AddExtensionEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.172", align 8    ; 6 uses
  %3 = alloca %"struct.std::pair.175", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !430
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !343
  store ptr %i.c, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !506
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13insert_uniqueISA_JSH_EEES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.172") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !509, !range !49, !noundef !51
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE9push_backERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %2, align 8, !tbaa !512
  %i.m = load i32, ptr %i.k, align 8, !tbaa !513
  %i.n = and i32 %i.m, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !121  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !121
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.r, align 8, !tbaa !121
  br label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !56   ; 5 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %bb.e, label %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
  unreachable

_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ac = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487)
  %i.ag = select i1 %i.ae, i64 576460752303423487, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #45 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !514
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !518

_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #41
  br label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !56
  store ptr %i.am, ptr %i.r, align 8, !tbaa !121
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.t, align 8, !tbaa !59
  br label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.1094", align 8   ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteISD_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SG_EEE30find_or_prepare_insert_non_sooIS9_EESK_INSO_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1094") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !525, !range !49, !alias.scope !528, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !528 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !16
  %i.g = load ptr, ptr %3, align 8, !tbaa !20, !noalias !528 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23, !noalias !528 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.l, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.g, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !20
  %i.m = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !528
  store i64 %i.m, ptr %i.f, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23, !noalias !528
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !23
  store ptr %i.e, ptr %3, align 8, !tbaa !20, !noalias !528
  store i64 0, ptr %i.o, align 8, !tbaa !23, !noalias !528
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !529
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %.noexc
  %.pre12 = load ptr, ptr %3, align 8, !tbaa !20  ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.r = icmp eq ptr %.pre12, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %.pre12, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.2.0.copyload.i.pn = phi ptr [ %.sroa.2.0.copyload.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.2.0.copyload.i24, %.thread ], [ %.sroa.2.0.copyload.i, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pn, i64 32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !531  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45, !noalias !532 ; 6 uses
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef null)
          to label %bb.f unwind label %bb.n, !noalias !532

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !535, !noalias !532 ; 3 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h, !prof !163

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !537, !noalias !532
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.y to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !535, !noalias !532 ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !163

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !537, !noalias !532
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.ak = inttoptr i64 %i.af to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.m, !noalias !532

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.m, !noalias !532

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #42, !noalias !532
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #42, !noalias !532
  unreachable

_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.k, %bb.l
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !531 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !531
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.aq) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 72) #41
  %.pre13 = load ptr, ptr %i.u, align 8, !tbaa !531
  br label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.o
  %i.av = load i64, ptr %i.at, align 8, !tbaa !22
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.ar

_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = phi ptr [ %i.w, %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %.pre13, %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %i.ax
}

declare void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables13AllocateBytesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(416) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = add nsw i64 %i.b, 8
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !90
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !87   ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
  unreachable

_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.d, ptr %i.w, align 8, !tbaa !91
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.l, -8
  %i.ac = sub i64 %i.ab, %i.m
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ae
  %scevgep13 = getelementptr i8, ptr %i.k, i64 %i.ae
  %bound0 = icmp ult ptr %i.v, %scevgep13
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %wide.load15 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !91, !alias.scope !548, !noalias !545
  store <2 x i64> %wide.load15, ptr %i.ak, align 8, !tbaa !91, !alias.scope !548, !noalias !545
  %i.al = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !543, !noalias !540
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !540, !noalias !543
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !543, !noalias !540
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !551

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #41
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !87
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !94
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  store i32 %1, ptr %i.d, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit
  %.0 = phi ptr [ %i.as, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20FileDescriptorTables20BuildLocationsByPathEPSt4pairIPKS1_PKNS0_14SourceCodeInfoEE(ptr nofree noundef readonly captures(none) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1109", align 8   ; 6 uses
  %2 = alloca %"struct.absl::lts_20250512::strings_internal::AlphaNumFormatterImpl", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !552
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !554  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf14DescriptorPool21SetFeatureSetDefaultsENS0_18FeatureSetDefaultsE:bb.a
  store ptr %.sroa.4.0.i.i.i.i.i102, ptr %i.fq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %7, ptr %6, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fr, align 8, !tbaa !766
  %i.fs = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %24, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.328, i64 2, ptr nonnull %6, i64 1)
          to label %bb.z unwind label %bb.ad      ; 0 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ft = load ptr, ptr %24, align 8, !tbaa !20
  %i.fu = load i64, ptr %i.fd, align 8, !tbaa !23
  %i.fv = load i32, ptr %i.fa, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  %i.fw = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.fx, ptr %25, align 8, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i64 0, ptr %i.fy, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.fz = invoke noundef ptr @_ZN6google8protobuf18Edition_descriptorEv()
          to label %.noexc114 unwind label %bb.ae

.noexc114:                                        ; preds = %bb.z
  %i.ga = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal10NameOfEnumB5cxx11EPKNS0_14EnumDescriptorEi(ptr noundef %i.fz, i32 noundef %i.fv)
          to label %.noexc115 unwind label %bb.ae ; 2 uses

.noexc115:                                        ; preds = %.noexc114
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !20 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !23 ; 4 uses
  %i.ge = icmp ult i64 %i.gd, 8
  br i1 %i.ge, label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108: ; preds = %.noexc115
  %i.gf = load i64, ptr %i.gb, align 1
  %i.gg = icmp ne i64 %i.gf, 6867513658151879749
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i113, label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i113: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gk = add i64 %i.gd, -8
  br label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110

_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i113, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108, %.noexc115
  %.sroa.05.0.i.i.i.i.i111 = phi i64 [ %i.gk, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i113 ], [ %i.gd, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108 ], [ %i.gd, %.noexc115 ]
  %.sroa.4.0.i.i.i.i.i112 = phi ptr [ %i.gj, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i113 ], [ %i.gb, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i108 ], [ %i.gb, %.noexc115 ]
  store i64 %.sroa.05.0.i.i.i.i.i111, ptr %5, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.4.0.i.i.i.i.i112, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %5, ptr %4, align 8, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.gm, align 8, !tbaa !766
  %i.gn = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %25, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.328, i64 2, ptr nonnull %4, i64 1)
          to label %bb.aa unwind label %bb.ae     ; 0 uses

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.go = load ptr, ptr %25, align 8, !tbaa !20
  %i.gp = load i64, ptr %i.fy, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1178
  store i64 59, ptr %3, align 8, !noalias !1178
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.126, ptr %i.gq, align 8, !noalias !1178
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.fu, ptr %i.gr, align 8, !noalias !1178
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ft, ptr %i.gs, align 8, !noalias !1178
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 37, ptr %i.gt, align 8, !noalias !1178
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.127, ptr %i.gu, align 8, !noalias !1178
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.gp, ptr %i.gv, align 8, !noalias !1178
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.go, ptr %i.gw, align 8, !noalias !1178
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.gx, align 8, !noalias !1178
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @.str.73, ptr %i.gy, align 8, !noalias !1178
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull %3, i64 5)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1178
  %i.gz = load ptr, ptr %23, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !23
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.hb, ptr %i.gz)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.hc = load ptr, ptr %23, align 8, !tbaa !20   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ac
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !22
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.hh = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.fx
  br i1 %i.hi, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.hj = load i64, ptr %i.fx, align 8, !tbaa !22
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #41
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit142

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  %i.hl = load ptr, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.fc
  br i1 %i.hm, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit142
  %i.hn = load i64, ptr %i.fc, align 8, !tbaa !22
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #41
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit145

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit145: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %.critedge

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i100, %.noexc104, %bb.y
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i110, %.noexc114, %bb.z
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.af:                                            ; preds = %bb.aa
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ag:                                            ; preds = %bb.ab
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %23, align 8, !tbaa !20   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ag
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !22
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.ag, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.ae ], [ %i.hr, %bb.af ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.hs, %bb.ag ]
  %i.hy = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.fx
  br i1 %i.hz, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ia = load i64, ptr %i.fx, align 8, !tbaa !22
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #41
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit151

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit151, %bb.ad
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.ad ], [ %.pn.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit151 ]
  %i.ic = load ptr, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fc
  br i1 %i.id, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152: ; preds = %bb.ah
  %i.ie = load i64, ptr %i.fc, align 8, !tbaa !22
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #41
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit154

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit154: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %bb.ar

.critedge48:                                      ; preds = %bb.o, %bb.n
  %i.ig = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !1181 ; 5 uses
  invoke void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.ig, ptr noundef null)
          to label %bb.ai unwind label %bb.aq, !noalias !1181

bb.ai:                                            ; preds = %.critedge48
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !535, !noalias !1181 ; 3 uses
  %i.ij = trunc i64 %i.ii to i1
  br i1 %i.ij, label %bb.aj, label %bb.ak, !prof !163

bb.aj:                                            ; preds = %bb.ai
  %i.ik = add nsw i64 %i.ii, -1
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !537, !noalias !1181
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.in = inttoptr i64 %i.ii to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i = phi ptr [ %i.im, %bb.aj ], [ %i.in, %bb.ak ]
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !535, !noalias !1181 ; 3 uses
  %i.iq = trunc i64 %i.ip to i1
  br i1 %i.iq, label %bb.al, label %bb.am, !prof !163

bb.al:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.ir = add nsw i64 %i.ip, -1
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !537, !noalias !1181
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.am:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.iu = inttoptr i64 %i.ip to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i7.i.i.i.i = phi ptr [ %i.it, %bb.al ], [ %i.iu, %bb.am ]
  %i.iv = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.iv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf18FeatureSetDefaults12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ig, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZSt11make_uniqueIN6google8protobuf18FeatureSetDefaultsEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ap, !noalias !1181

bb.ao:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf18FeatureSetDefaults8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ig, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZSt11make_uniqueIN6google8protobuf18FeatureSetDefaultsEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ap, !noalias !1181

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  tail call void @__clang_call_terminate(ptr %i.ix) #42, !noalias !1181
  unreachable

bb.aq:                                            ; preds = %.critedge48
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  tail call void @__clang_call_terminate(ptr %i.iz) #42, !noalias !1181
  unreachable

_ZSt11make_uniqueIN6google8protobuf18FeatureSetDefaultsEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.an, %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !622 ; 3 uses
  store ptr %i.ig, ptr %i.ja, align 8, !tbaa !622
  %.not.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf18FeatureSetDefaultsESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf18FeatureSetDefaultsEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf18FeatureSetDefaultsEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN6google8protobuf18FeatureSetDefaultsEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  tail call void @_ZN6google8protobuf18FeatureSetDefaultsD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.jb) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 48) #41
  br label %_ZNSt10unique_ptrIN6google8protobuf18FeatureSetDefaultsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf18FeatureSetDefaultsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6google8protobuf18FeatureSetDefaultsEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN6google8protobuf18FeatureSetDefaultsEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 1, ptr %0, align 8, !tbaa !1184, !alias.scope !1186
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN6google8protobuf18FeatureSetDefaultsESt14default_deleteIS2_EED2Ev.exit, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit91, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit145, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit64, %bb.b
  ret void

bb.ar:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit97, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit154, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit73
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit73 ], [ %.pn37.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit97 ], [ %.pn.pn.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit154 ]
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn.pn
}

declare void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #13

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool33ShouldEnforceExtensionDeclarationERKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1189
  switch i8 %i.b, label %bb.c [
    i8 1, label %bb.b
    i8 2, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !669
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = icmp eq i64 %i.j, 32
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.m = load i128, ptr %i.l, align 1
  %i.n = xor i128 %i.m, 63005710922238749866870542373108019047
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i128, ptr %i.o, align 1
  %i.q = xor i128 %i.p, 148148874381910705952234547080544347492
  %i.r = or i128 %i.n, %i.q
  %i.s = icmp ne i128 %i.r, 0                     ; 2 uses
  %i.t = zext i1 %i.s to i32                      ; 0 uses
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ], [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !622  ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f, !prof !640

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke fastcc noundef ptr @"_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvENK3$_0clEv"()
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.f)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit unwind label %bb.g

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit: ; preds = %bb.e
  store ptr %i.f, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit, %bb.c, %bb.b
  %i.g = load ptr, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  resume { ptr, i32 } %i.h

bb.h:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.g, %bb.f ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull ptr @"_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvENK3$_0clEv"() unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 15 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45 ; 8 uses
  invoke void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef null)
          to label %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit unwind label %bb.h

_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit: ; preds = %bb.a
  %i.b = tail call noundef nonnull align 1 dereferenceable(1) ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN6google8protobuf8internal3cpp20IsTrackingEnabledVarEvE19is_tracking_enabled) ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !639, !range !49, !noalias !1190, !noundef !51 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !639, !noalias !1190
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !274
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  %i.g = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.h, i8 0, i64 52, i1 false)
  store i32 %i.g, ptr %i.j, align 8, !tbaa !1193
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -32768, ptr %i.k, align 4, !tbaa !1199
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.i, align 4, !tbaa !1200
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.m, align 4, !tbaa !1201
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.289, i64 138), ptr %i.n, align 8, !tbaa !1202
  store ptr getelementptr inbounds nuw (i8, ptr @.str.289, i64 138), ptr %0, align 8, !tbaa !1203
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1204
  %i.q = invoke noundef ptr @_ZN6google8protobuf11MessageLite14_InternalParseEPKcPNS0_8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.289, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = icmp ne ptr %i.q, null
  %i.t = load i32, ptr %i.r, align 8
  %i.u = icmp eq i32 %i.t, 0
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit

bb.d:                                             ; preds = %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"

bb.f:                                             ; preds = %bb.c
  %i.x = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.f
  br i1 %i.x, label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  invoke void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.h, %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i" ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i": ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  store i8 %i.c, ptr %i.b, align 1, !tbaa !639
  br label %common.resume

_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  store i8 %i.c, ptr %i.b, align 1, !tbaa !639
  ret ptr %i.a
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
bb.q:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.ch, i32 0, i32 1, i32 1)
  %i.ci = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cj = xor i64 %i.ci, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ck = mul i64 %i.cj, -2543921745674291987
  %i.cl = tail call noundef i64 @llvm.bswap.i64(i64 %i.ck)
  %i.cm = xor i64 %i.cl, %i.ci
  %i.cn = mul i64 %i.cm, -2543921745674291987
  %i.co = tail call noundef i64 @llvm.bswap.i64(i64 %i.cn) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !79, !noalias !1286
  %i.cr = and i64 %i.cq, 65535
  %i.cs = lshr i64 %i.co, 7
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = trunc i64 %i.co to i8
  %i.cv = and i8 %i.cu, 127
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3 = load ptr, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cv, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.pn.i6.i.i.i4 = phi i64 [ %i.ct, %bb.q ], [ %i.dq, %bb.t ]
  %.sroa.13.0.i.i.i.i5 = phi i64 [ 0, %bb.q ], [ %i.dp, %bb.t ]
  %.sroa.6.0.i.i.i.i6 = and i64 %.pn.i6.i.i.i4, %i.by ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %.sroa.6.0.i.i.i.i6
  tail call void @llvm.prefetch.p0(ptr %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.6.0.i.i.i.i6
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !22 ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.cy, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not46.i.i.i.i7 = icmp eq i16 %i.dd, 0
  br i1 %.not46.i.i.i.i7, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.r, %bb.s
  %.sroa.017.047.i.i.i.i9 = phi i16 [ %i.dm, %bb.s ], [ %i.dd, %bb.r ] ; 3 uses
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i9, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.6.0.i.i.i.i6, %i.df
  %i.dh = and i64 %i.dg, %i.by
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !166
  %i.dk = icmp eq ptr %i.dj, %.0.i
  br i1 %i.dk, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16, label %bb.s, !prof !322

bb.s:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.dl = add i16 %.sroa.017.047.i.i.i.i9, -1
  %i.dm = and i16 %i.dl, %.sroa.017.047.i.i.i.i9  ; 2 uses
  %.not.i.i.i.i10 = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i10, label %._crit_edge.i.i.i.i11, label %.lr.ph.i.i.i.i8

._crit_edge.i.i.i.i11:                            ; preds = %bb.s, %bb.r
  %i.dn = icmp eq <16 x i8> %i.db, splat (i8 -128)
  %i.do = bitcast <16 x i1> %i.dn to i16
  %.not43.i.i.i.i12 = icmp eq i16 %i.do, 0
  br i1 %.not43.i.i.i.i12, label %bb.t, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, !prof !163

bb.t:                                             ; preds = %._crit_edge.i.i.i.i11
  %i.dp = add i64 %.sroa.13.0.i.i.i.i5, 16        ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.6.0.i.i.i.i6
  br label %bb.r, !llvm.loop !1285

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16: ; preds = %.lr.ph.i.i.i.i8
  %.not26 = icmp eq ptr %i.ch, null
  br i1 %.not26, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.k, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %i.dr = add i8 %i.d, -9
  %spec.select.i = icmp ult i8 %i.dr, 2
  br i1 %spec.select.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dt = call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16.thread: ; preds = %._crit_edge.i.i.i.i11, %bb.p, %bb.v, %bb.u, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.h = load ptr, ptr %1, align 8, !tbaa !166
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !1289
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !22 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !166
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !322

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, !prof !163

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !1285

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %i.av = icmp eq ptr %i.k, null
  br i1 %i.av, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !19
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %bb.h, %.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %.0 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %.thread ], [ 1, %bb.h ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = tail call ptr @_ZN6google8protobuf17DescriptorBuilder26FindSymbolNotEnforcingDepsESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, i1 noundef zeroext %3) ; 23 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !135   ; 5 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !799
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !606, !range !49, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

bb.c:                                             ; preds = %bb.b
  switch i8 %i.c, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !671
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !465
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.i:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.j:                                             ; preds = %bb.c
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.k:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ad, %bb.k ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.x, %bb.h ], [ %i.ab, %bb.i ], [ %i.b, %bb.j ], [ null, %bb.c ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1281 ; 2 uses
  %i.ag = icmp eq ptr %.0.i, %i.af
  br i1 %i.ag, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !73 ; 5 uses
  %i.aj = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ult i64 %i.ai, 2
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.am, 131071
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %.0.i
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ap, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 1, i32 1)
  %i.as = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.at = xor i64 %i.as, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = tail call noundef i64 @llvm.bswap.i64(i64 %i.au)
  %i.aw = xor i64 %i.av, %i.as
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !1292 ; 3 uses
  %i.bb = and i64 %i.ba, 65535
  %i.bc = lshr i64 %i.ay, 7
  %i.bd = xor i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.ay to i8
  %i.bf = and i8 %i.be, 127
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 2 uses
  %i.bh = insertelement <16 x i8> poison, i8 %i.bf, i64 0
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i6.i.i.i = phi i64 [ %i.bd, %bb.n ], [ %i.ca, %bb.q ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bz, %bb.q ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.ai ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.6.0.i.i.i.i
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !22 ; 2 uses
  %i.bm = icmp eq <16 x i8> %i.bi, %i.bl
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.bw, %bb.p ], [ %i.bn, %bb.o ] ; 3 uses
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.6.0.i.i.i.i, %i.bp
  %i.br = and i64 %i.bq, %i.ai
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166
  %i.bu = icmp eq ptr %i.bt, %.0.i
  br i1 %i.bu, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, label %bb.p, !prof !322

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.bw = and i16 %i.bv, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %i.bx = icmp eq <16 x i8> %i.bl, splat (i8 -128)
  %i.by = bitcast <16 x i1> %i.bx to i16
  %.not43.i.i.i.i = icmp eq i16 %i.by, 0
  br i1 %.not43.i.i.i.i, label %bb.q, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, !prof !163

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bz = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.6.0.i.i.i.i
  br label %bb.o, !llvm.loop !1285

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not107 = icmp eq ptr %i.ar, null
  br i1 %.not107, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.m, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  %i.cb = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.ao, %bb.m ], [ %i.ar, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cc = phi i64 [ %i.ba, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.am, %bb.m ], [ %i.ba, %._crit_edge.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !73 ; 4 uses
  %i.cf = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp ult i64 %i.ce, 2
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %.not.i.i.i.i.i50 = icmp ugt i64 %i.ci, 131071
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp eq ptr %i.ck, %.0.i
  %or.cond106 = select i1 %.not.i.i.i.i.i50, i1 %i.cl, i1 false
  %.not = icmp eq i8 %i.c, 2
  %or.cond112 = and i1 %.not, %or.cond106
  br i1 %or.cond112, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.cn, i32 0, i32 1, i32 1)
  %i.co = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cp = xor i64 %i.co, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cq = mul i64 %i.cp, -2543921745674291987
  %i.cr = tail call noundef i64 @llvm.bswap.i64(i64 %i.cq)
  %i.cs = xor i64 %i.cr, %i.co
  %i.ct = mul i64 %i.cs, -2543921745674291987
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ex ; 2 uses
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !300
  %i.fb = icmp slt i8 %i.fa, -1
  br i1 %i.fb, label %.lr.ph.i.i162, label %.lr.ph.preheader, !llvm.loop !1298

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i162, %bb.y, %bb.z
  %.sroa.075.0.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.y ], [ %i.cb, %bb.z ], [ %i.ey, %.lr.ph.i.i162 ]
  %.sroa.1078.0.ph = phi ptr [ %i.el, %bb.y ], [ %.sroa.0.0.copyload.i.i.i, %bb.z ], [ %i.ez, %.lr.ph.i.i162 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.075.0 = phi ptr [ %.sroa.075.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.075.0.ph, %.lr.ph.preheader ]
  %.sroa.1078.0 = phi ptr [ %.sroa.1078.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.1078.0.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fc = load ptr, ptr %.sroa.1078.0, align 8, !tbaa !166 ; 2 uses
  %.not26 = icmp eq ptr %i.fc, null
  br i1 %.not26, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !146 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ed, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = icmp ult i64 %i.fh, %1
  br i1 %i.fi, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53: ; preds = %bb.ab
  %bcmp.i.i.i54 = tail call i32 @bcmp(ptr %i.ff, ptr readonly %2, i64 %1)
  %i.fj = icmp eq i32 %bcmp.i.i.i54, 0
  br i1 %i.fj, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53, %bb.aa
  %i.fk = icmp eq i64 %i.fh, %1
  br i1 %i.fk, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !22
  %i.fn = icmp eq i8 %i.fm, 46
  br i1 %i.fn, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread: ; preds = %bb.ab, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i53, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56, %.lr.ph
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.075.0, i64 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.1078.0, i64 8 ; 2 uses
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !300 ; 2 uses
  %i.fr = icmp slt i8 %i.fq, -1
  br i1 %i.fr, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread, %.lr.ph.i.i
  %i.fs = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.fp, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ]
  %i.ft = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fo, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ] ; 2 uses
  %i.fu = load <16 x i8>, ptr %i.ft, align 1, !tbaa !22
  %i.fv = icmp slt <16 x i8> %i.fu, splat (i8 -1)
  %i.fw = bitcast <16 x i1> %i.fv to i16
  %i.fx = zext i16 %i.fw to i32
  %i.fy = add nuw nsw i32 %i.fx, 1
  %i.fz = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fy, i1 true)
  %i.ga = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ga ; 2 uses
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !300 ; 2 uses
  %i.ge = icmp slt i8 %i.gd, -1
  br i1 %i.ge, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread
  %.sroa.075.1 = phi ptr [ %i.fo, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gb, %.lr.ph.i.i ]
  %.sroa.1078.1 = phi ptr [ %i.fp, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gc, %.lr.ph.i.i ]
  %i.gf = phi i8 [ %i.fq, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56.thread ], [ %i.gd, %.lr.ph.i.i ]
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %._crit_edge, label %.lr.ph, !prof !163

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.gh = tail call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cd) ; 2 uses
  %i.gi = extractvalue { ptr, ptr } %i.gh, 0      ; 2 uses
  %.not111 = icmp eq ptr %i.gi, null
  br i1 %.not111, label %.critedge33, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %._crit_edge
  %i.gj = extractvalue { ptr, ptr } %i.gh, 1
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61
  %.sroa.068.0 = phi ptr [ %.sroa.068.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61 ], [ %i.gi, %.lr.ph35.preheader ]
  %.sroa.10.0 = phi ptr [ %.sroa.10.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61 ], [ %i.gj, %.lr.ph35.preheader ] ; 2 uses
  %i.gk = load ptr, ptr %.sroa.10.0, align 8, !tbaa !166 ; 2 uses
  %.not27 = icmp eq ptr %i.gk, null
  br i1 %.not27, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !146 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ed, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = icmp ult i64 %i.gp, %1
  br i1 %i.gq, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57: ; preds = %bb.ad
  %bcmp.i.i.i58 = tail call i32 @bcmp(ptr %i.gn, ptr readonly %2, i64 %1)
  %i.gr = icmp eq i32 %bcmp.i.i.i58, 0
  br i1 %i.gr, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57, %bb.ac
  %i.gs = icmp eq i64 %i.gp, %1
  br i1 %i.gs, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %i.gv = icmp eq i8 %i.gu, 46
  br i1 %i.gv, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97, label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread: ; preds = %bb.ad, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i57, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60, %.lr.ph35
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 1 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 8 ; 2 uses
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !300 ; 2 uses
  %i.gz = icmp slt i8 %i.gy, -1
  br i1 %i.gz, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61

.lr.ph.i.i62:                                     ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread, %.lr.ph.i.i62
  %i.ha = phi ptr [ %i.hk, %.lr.ph.i.i62 ], [ %i.gx, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ]
  %i.hb = phi ptr [ %i.hj, %.lr.ph.i.i62 ], [ %i.gw, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ] ; 2 uses
  %i.hc = load <16 x i8>, ptr %i.hb, align 1, !tbaa !22
  %i.hd = icmp slt <16 x i8> %i.hc, splat (i8 -1)
  %i.he = bitcast <16 x i1> %i.hd to i16
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, 1
  %i.hh = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hg, i1 true)
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hi ; 2 uses
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !300 ; 2 uses
  %i.hm = icmp slt i8 %i.hl, -1
  br i1 %i.hm, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61: ; preds = %.lr.ph.i.i62, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread
  %.sroa.068.1 = phi ptr [ %i.gw, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hj, %.lr.ph.i.i62 ]
  %.sroa.10.1 = phi ptr [ %i.gx, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hk, %.lr.ph.i.i62 ]
  %i.hn = phi i8 [ %i.gy, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60.thread ], [ %i.hl, %.lr.ph.i.i62 ]
  %i.ho = icmp eq i8 %i.hn, -1
  br i1 %i.ho, label %.critedge33, label %.lr.ph35, !prof !163

.critedge33:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i61, %._crit_edge, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51.thread
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %.0.i, ptr %i.hp, align 8, !tbaa !821
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.hq, ptr %4, align 8, !tbaa !16
  %i.hr = icmp eq ptr %2, null
  %i.hs = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.hs, %i.hr
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.ae

.noexc:                                           ; preds = %.critedge33
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.ae:                                            ; preds = %.critedge33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %i.ht = icmp ugt i64 %1, 15
  br i1 %i.ht, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i64

.noexc.i.i.i:                                     ; preds = %bb.ae
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.hu, ptr %4, align 8, !tbaa !20
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.hv, ptr %i.hq, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i64

._crit_edge.i.i.i.i64:                            ; preds = %.noexc.i.i.i, %bb.ae
  %i.hw = phi ptr [ %i.hu, %.noexc.i.i.i ], [ %i.hq, %bb.ae ] ; 2 uses
  switch i64 %1, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i64
  %i.hx = load i8, ptr %2, align 1, !tbaa !22
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !22
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i64
  %i.hy = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !23
  %i.ia = load ptr, ptr %4, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy
  store i8 0, ptr %i.ib, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  %i.ig = load ptr, ptr %4, align 8, !tbaa !20    ; 5 uses
  %i.ih = icmp eq ptr %i.ig, %i.hq                ; 2 uses
  br i1 %i.if, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ah
  br i1 %i.ih, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ah
  br i1 %i.ih, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ii = load i64, ptr %i.hz, align 8, !tbaa !23 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  switch i64 %i.ii, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !22
  store i8 %i.ik, ptr %i.id, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr align 1 %i.ig, i64 %i.ii, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.il, ptr %i.im, align 8, !tbaa !23
  %i.in = load ptr, ptr %i.ic, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.ig, ptr %i.ic, align 8, !tbaa !20
  %i.iq = load <2 x i64>, ptr %i.hz, align 8, !tbaa !22
  store <2 x i64> %i.iq, ptr %i.ip, align 8, !tbaa !22
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ir = load i64, ptr %i.ie, align 8, !tbaa !22
  store ptr %i.ig, ptr %i.ic, align 8, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.it = load <2 x i64>, ptr %i.hz, align 8, !tbaa !22
  store <2 x i64> %i.it, ptr %i.is, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.id, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.id, ptr %4, align 8, !tbaa !20
  store i64 %i.ir, ptr %i.hq, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hq, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.al, %bb.am
  %5 = phi ptr [ %i.id, %bb.al ], [ %i.hq, %bb.am ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hz, align 8, !tbaa !23
  store i8 0, ptr %5, align 1, !tbaa !22
  %i.iu = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.hq
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.iw = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97

_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread97: ; preds = %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i, %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, %bb.m, %bb.r, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51, %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iy = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit60 ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ %i.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit51 ], [ %i.b, %bb.r ], [ %i.b, %bb.m ], [ %i.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i59 ], [ %i.b, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i55 ], [ %i.b, %_ZN6google8protobuf17DescriptorBuilder11IsInPackageEPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE.exit56 ]
  ret ptr %i.iy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %.not.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !51, !noundef !51 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !300
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  %i.l = phi ptr [ %i.t, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !300
  %i.w = icmp slt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit, !llvm.loop !1298

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.u, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.b ], [ %i.g, %bb.c ], [ %i.t, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6google8protobuf17DescriptorBuilder25LookupSymbolNoPlaceholderESt17basic_string_viewIcSt11char_traitsIcEES5_NS1_11ResolveModeEb(ptr noundef nonnull align 8 dereferenceable(396) initializes((320, 328), (368, 376)) %0, i64 %1, ptr %2, i64 %3, ptr nofree readonly captures(address_is_null) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 14 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.b, align 8, !tbaa !821
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.d, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 1, !tbaa !22
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !22
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.h = add i64 %1, -1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = tail call ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.h, ptr nonnull %i.i, i1 noundef zeroext %6)
  br label %bb.y

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.k = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 46, i64 noundef %1) #40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %or.cond = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.n)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c
  %.sroa.067.0 = phi i64 [ %.sroa.speculated.i, %bb.c ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !16
  %i.q = icmp eq ptr %4, null
  %i.r = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %3, ptr %i.a, align 8, !tbaa !19
  %i.s = icmp ugt i64 %3, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !20
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.u, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %4, align 1, !tbaa !22
  store i8 %i.w, ptr %i.v, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %4, i64 %3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 20 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !23
  %i.z = load ptr, ptr %7, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ab = icmp eq i32 %5, 1
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 46, i64 noundef -1) #40 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.af = icmp ult i64 %.sroa.067.0, %1
  %.fr = freeze i1 %i.af
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us
  %i.ag = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit63.us ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23
  %i.aj = load ptr, ptr %7, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 0, ptr %i.ak, align 1, !tbaa !22
  %i.al = load i64, ptr %i.y, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 1, ptr %8, align 8
  store ptr @.str.73, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %.sroa.067.0, ptr %9, align 8, !tbaa !19
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i49, align 8, !tbaa !270
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.i unwind label %.split115.us

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.am = load ptr, ptr %7, align 8, !tbaa !20
  %i.an = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ao = invoke ptr @_ZN6google8protobuf17DescriptorBuilder10FindSymbolESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.an, ptr %i.am, i1 noundef zeroext %6)
end_hunk_3

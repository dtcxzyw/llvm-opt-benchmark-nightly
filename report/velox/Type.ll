inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11Ev
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE8RegisterERKS7_St8functionISG_ESt8optionalISt17basic_string_viewIcS5_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef byval(%"class.std::optional.186") align 8 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"struct.std::pair.922", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.925", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.928", align 1    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE8RegisterERKS7_St8functionISG_ESt8optionalISt17basic_string_viewIcS5_EE:bb.a
  %i.f = load ptr, ptr %.sroa.03.0.copyload.i.i, align 8, !tbaa !318 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !307
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE8RegisterERKS7_St8functionISG_ESt8optionalISt17basic_string_viewIcS5_EE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i

_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.k, align 16, !tbaa !47
  store <2 x ptr> %i.i, ptr %i.l, align 8, !tbaa !47
  %.not.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i5, label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10OpaqueType26clearSerializationRegistryEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.311", align 16 ; 9 uses
  %5 = alloca %"class.std::function.308", align 16 ; 9 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.996", align 16 ; 9 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.820", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EE:bb.a
  store i8 0, ptr %i.hl, align 1, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.hn = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !47
  %i.ho = load ptr, ptr %i.cu, align 8, !tbaa !307
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i: ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.hm, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.hm, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64 ; 3 uses
  %i.hr = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !47
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !47 ; 2 uses
  store <2 x ptr> %i.hr, ptr %i.hp, align 16, !tbaa !47
  store <2 x ptr> %i.hn, ptr %i.hq, align 8, !tbaa !47
  %.not.i.i.i67 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i67, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i, label %bb.bm
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.hx = load <2 x ptr>, ptr %i.df, align 8, !tbaa !47
  %i.hy = load ptr, ptr %i.df, align 8, !tbaa !307
  %.not.i.i.not.i.i5.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.not.i.i5.i, label %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i

_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i: ; preds = %bb.bo, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i
  %.sroa.0.i.i.i4.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i4.i.sroa.0.0.copyload, ptr %i.hw, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 96 ; 3 uses
  %i.ib = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !47
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !47 ; 2 uses
  store <2 x ptr> %i.ib, ptr %i.hz, align 16, !tbaa !47
  store <2 x ptr> %i.hx, ptr %i.ia, align 8, !tbaa !47
  %.not.i.i6.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i6.i, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit, label %bb.bp
end_hunk_5

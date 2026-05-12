inline.NumInlined: 3078
inline.NumDeleted: 1441
begin_hunk_0_@_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRS7_St17integral_constantImLm0EEEEDaSE_SF_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm1EEEEDaSE_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !210    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !161
end_hunk_0
begin_hunk_1_@_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm1EEEEDaSE_SF_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm1EEEEDaSE_SF_:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbvEEC2EOS1_.exit.i

_ZNSt8functionIFbvEEC2EOS1_.exit.i:               ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !216
  store ptr %i.h, ptr %i.j, align 8, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !216
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !347   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_:bb.a
_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_4
begin_hunk_5_@_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_5
begin_hunk_6_@_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_:bb.a

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.n = phi <2 x ptr> [ splat (ptr null), %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !216
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !216  ; 2 uses
  store <2 x ptr> %i.p, ptr %i.e, align 8, !tbaa !216
  store <2 x ptr> %i.n, ptr %i.o, align 8, !tbaa !216
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.g
end_hunk_6

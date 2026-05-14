inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4 align 2

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool7MessageEEclEPS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 3 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !409
  %i.j = and i64 %i.i, 65536
  %i.k = icmp ne i64 %i.j, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.c, ptr noundef %i.g, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.k)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !405  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = load i64, ptr %i.s, align 8, !tbaa !409
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.o, ptr noundef %i.r, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i: ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !413  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit, label %_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #30
  br label %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit

_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEED2Ev.exit.i, %_ZNKSt14default_deleteIA_N6google8protobuf13json_internal12ResolverPool5FieldEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.aa) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 184) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13json_internal12ResolverPool7MessageD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISH_EEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SK_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSV_SW_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN6google8protobuf13json_internal12ResolverPool7MessageEEclEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b)
  br label %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SJ_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSU_SV_EENSt13invoke_resultIT_JDpT0_EE4typeEOS10_DpOS11_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.f = load i64, ptr %i.d, align 8, !tbaa !21
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SJ_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSU_SV_EENSt13invoke_resultIT_JDpT0_EE4typeEOS10_DpOS11_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SJ_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSU_SV_EENSt13invoke_resultIT_JDpT0_EE4typeEOS10_DpOS11_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN6google8protobuf13json_internal14UntypedMessage6DecodeERNS0_2io16CodedInputStreamESt8optionalIiE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(80), i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !22     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !22
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit, !prof !414

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #28
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS9_OT_EE5valueEiE4typeELi0EEESD_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = load i64, ptr %1, align 8, !tbaa !405      ; 3 uses
  %3 = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ult i64 %2, 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %6 = load i64, ptr %5, align 8                  ; 2 uses
  %.not.i.i = icmp ugt i64 %6, 131071
  %7 = select i1 %4, i1 %.not.i.i, i1 false       ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.0.0 = select i1 %7, <16 x i8> undef, <16 x i8> %.sroa.6.sroa.0.0.copyload
  %.sroa.513.0 = select i1 %7, i64 131072, i64 %6
  store i64 %2, ptr %0, align 8
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.513.0, ptr %.sroa.513.0..sroa_idx14, align 8
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <16 x i8> %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx16, align 8
  %i.a = load i64, ptr %1, align 8, !tbaa !405    ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  %i.d = load i64, ptr %5, align 8
  %.not.i.i10 = icmp ugt i64 %i.d, 131071
  %i.e = select i1 %i.c, i1 %.not.i.i10, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !415
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx16, align 8, !tbaa !415
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !424
  store i64 %i.j, ptr %i.h, align 8, !tbaa !424
  store ptr null, ptr %i.i, align 8, !tbaa !424
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 1, ptr %1, align 8
  store i64 0, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSD_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSD_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSD_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRS6_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit unwind label %bb.b, !inline_history !425

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29, !inline_history !425
  unreachable

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRS6_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm9EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !426    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSG_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !428
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSG_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSG_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm10EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !429    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSI_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSI_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSI_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !432    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSK_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !434
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSK_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSK_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm12EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !435    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSM_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !438
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSM_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSM_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm13EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !439    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSO_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !441
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSO_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSO_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St6vectorIS8_SaIS8_EESF_IiSaIiEESF_IjSaIjEESF_IlSaIlEESF_ImSaImEESF_IfSaIfEESF_IdSaIdEESF_ISE_SaISE_EESF_IS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_ijlmfdSE_S7_SH_SJ_SL_SN_SP_SR_ST_SV_SX_EEEJEEESt16integer_sequenceImJLm14EEEE14__visit_invokeES12_S15_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !442    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSQ_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSQ_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit

_ZSt10__invoke_rIvZNSt8__detail9__variant16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSQ_EENSt9enable_ifIX16is_invocable_r_vISY_T0_DpT1_EESY_E4typeEOS13_DpOS14_.exit: ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0

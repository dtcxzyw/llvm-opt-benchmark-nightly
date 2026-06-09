inline.NumInlined: 2799
inline.NumDeleted: 1236
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEED2Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf8internal12ExtensionSet10GetMessageEPNS0_5ArenaEiRKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf14EnumDescriptor9is_closedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !108
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !30
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !163  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #13 comdat personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #28
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88, !noalias !220
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !81, !noalias !220 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !30 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !223

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !23

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !91
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf19EnumValueDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #16 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !23

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSO_PFvSO_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !224

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bc, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !223

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !223

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !30
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !225
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bb = add i16 %.sroa.054.061, -1
  %i.bc = and i16 %i.bb, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #19

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #20

declare noundef zeroext i1 @_ZN6google8protobuf8compiler4java17NestedInFileClassERKNS0_14EnumDescriptorEb(ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !227, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !227
  %i.d = tail call noundef zeroext i1 @_ZN6google8protobuf8internal5IsOssEv()
  br i1 %i.d, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_0clEv.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !231, !nonnull !48, !align !232
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !30
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !30
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.164") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !90 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !389
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88, !noalias !458
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !81, !noalias !458 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !30 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !30 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.w, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.034.060 = phi i16 [ %i.af, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !90
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !389
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !461

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ae = add i16 %.sroa.034.060, -1
  %i.af = and i16 %i.ae, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ag = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ah, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !23

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !396
  ret void
}

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !455, !range !47, !noundef !48
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !445  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !445
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !445  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !464    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #30
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !449
  store i64 %i.u, ptr %i.q, align 8, !tbaa !449
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !450
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !163
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !465, !noalias !468
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !450, !alias.scope !468, !noalias !465
  store ptr %i.x, ptr %i.v, align 8, !tbaa !450, !alias.scope !465, !noalias !468
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !163, !alias.scope !468, !noalias !465 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !470, !alias.scope !471
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !163, !alias.scope !465, !noalias !468
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !468, !noalias !465
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !472

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !473, !noalias !476
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !450, !alias.scope !476, !noalias !473
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !450, !alias.scope !473, !noalias !476
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !163, !alias.scope !476, !noalias !473 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !470, !alias.scope !478
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !163, !alias.scope !473, !noalias !476
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !476, !noalias !473
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !472

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !448
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #28
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !464
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !445
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !448
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.206") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !90, !noalias !485
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !389, !noalias !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.a = load ptr, ptr %1, align 8, !tbaa !442, !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !489
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !489
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !489
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !489 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !489
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !90, !noalias !489
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !389, !noalias !489
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !90, !alias.scope !485
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !389, !alias.scope !485
  store i8 0, ptr %i.h, align 8, !tbaa !490, !alias.scope !489
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !100, !alias.scope !489
  store i8 0, ptr %i.j, align 8, !alias.scope !489
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !102, !alias.scope !489
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !492, !alias.scope !489
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !500, !alias.scope !489
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !233
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !203
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !449
  store i64 %i.a, ptr %0, align 8, !tbaa !449
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !81
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !88
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !30 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !389
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !389
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30, !nonnull !48, !noundef !48
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !90 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !389
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !88, !noalias !502
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !81, !noalias !502 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !30   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !30 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !30 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !23

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !505

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !90
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !461

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !30 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !90
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !461

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !389
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !23

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !505

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !506, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !506
  %i.d = tail call noundef zeroext i1 @_ZN6google8protobuf8internal5IsOssEv()
  br i1 %i.d, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_11clEv.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !509, !nonnull !48, !align !232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  tail call void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.f, ptr null, i64 0, i64 106, ptr nonnull @.str.74)
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_11clEv.exit.i.i.i"

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_11clEv.exit.i.i.i": ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !506
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_11clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !235
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_11vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"struct.std::pair.115", align 8   ; 5 uses
  %i.m = alloca ptr, align 8                      ; 12 uses
  %17 = alloca %"struct.google::protobuf::compiler::java::Options", align 8 ; 9 uses
  %18 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %19 = alloca [4 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 75 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca [4 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 75 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca [3 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 59 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !510, !range !47, !noundef !48
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  br i1 %i.p, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.n, align 8, !tbaa !510
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  %i.q = load ptr, ptr %.val, align 8, !tbaa !514, !nonnull !48, !align !246
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !515, !nonnull !48, !align !246
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = icmp slt i32 %i.r, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_12clEv.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 176 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 184 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 200 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 216 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 232 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 248 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 256 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 272 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 264
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %29, i64 232 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %29, i64 224
  %i.gl = getelementptr inbounds nuw i8, ptr %29, i64 248 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %29, i64 256 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %29, i64 272 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %29, i64 264
  %i.gp = getelementptr inbounds nuw i8, ptr %29, i64 288
  %i.gq = getelementptr inbounds nuw i8, ptr %29, i64 360 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %29, i64 368 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %29, i64 384 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %29, i64 376
  %i.gw = getelementptr inbounds nuw i8, ptr %29, i64 400 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %29, i64 416 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %29, i64 408
  %i.hb = getelementptr inbounds nuw i8, ptr %29, i64 432 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %29, i64 440 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %29, i64 456 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %29, i64 448
  %i.hf = getelementptr inbounds nuw i8, ptr %29, i64 472
  %i.hg = getelementptr inbounds nuw i8, ptr %29, i64 544 ; 3 uses
  %i.hh = sext i32 %i.r to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.hj = getelementptr inbounds nuw i8, ptr %21, i64 30
  %i.hk = getelementptr inbounds nuw i8, ptr %23, i64 27
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 664
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 688
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 704 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 680
  %i.hp = getelementptr inbounds nuw i8, ptr %19, i64 480
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 504
  %i.hr = getelementptr inbounds nuw i8, ptr %19, i64 520 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 496
  %i.ht = getelementptr inbounds nuw i8, ptr %19, i64 296
  %i.hu = getelementptr inbounds nuw i8, ptr %19, i64 320
  %i.hv = getelementptr inbounds nuw i8, ptr %19, i64 336 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %19, i64 312
  %i.hx = getelementptr inbounds nuw i8, ptr %19, i64 112
  %i.hy = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.hz = getelementptr inbounds nuw i8, ptr %19, i64 152 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.ic = getelementptr inbounds nuw i8, ptr %26, i64 22
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 21
  %i.ie = getelementptr inbounds nuw i8, ptr %28, i64 27
  %i.if = getelementptr inbounds nuw i8, ptr %24, i64 664
  %i.ig = getelementptr inbounds nuw i8, ptr %24, i64 688
  %i.ih = getelementptr inbounds nuw i8, ptr %24, i64 704 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %24, i64 680
  %i.ij = getelementptr inbounds nuw i8, ptr %24, i64 480
  %i.ik = getelementptr inbounds nuw i8, ptr %24, i64 504
  %i.il = getelementptr inbounds nuw i8, ptr %24, i64 520 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %24, i64 496
  %i.in = getelementptr inbounds nuw i8, ptr %24, i64 296
  %i.io = getelementptr inbounds nuw i8, ptr %24, i64 320
  %i.ip = getelementptr inbounds nuw i8, ptr %24, i64 336 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %24, i64 312
  %i.ir = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.is = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.it = getelementptr inbounds nuw i8, ptr %24, i64 152 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.iv = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.iw = getelementptr inbounds nuw i8, ptr %31, i64 22
  %i.ix = getelementptr inbounds nuw i8, ptr %32, i64 27
  %i.iy = getelementptr inbounds nuw i8, ptr %29, i64 480
  %i.iz = getelementptr inbounds nuw i8, ptr %29, i64 504
  %i.ja = getelementptr inbounds nuw i8, ptr %29, i64 520 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %29, i64 496
  %i.jc = getelementptr inbounds nuw i8, ptr %29, i64 296
  %i.jd = getelementptr inbounds nuw i8, ptr %29, i64 320
  %i.je = getelementptr inbounds nuw i8, ptr %29, i64 336 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %29, i64 312
  %i.jg = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.jh = getelementptr inbounds nuw i8, ptr %29, i64 136
  %i.ji = getelementptr inbounds nuw i8, ptr %29, i64 152 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %29, i64 128
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.jk = load ptr, ptr %i.w, align 8, !tbaa !516, !nonnull !48, !align !232
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !52
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !65
  %i.jo = getelementptr inbounds [48 x i8], ptr %i.jn, i64 %indvars.iv.i.i.i.i ; 2 uses
  store ptr %i.jo, ptr %i.m, align 8, !tbaa !66
  %i.jp = load ptr, ptr %i.x, align 8, !tbaa !517, !nonnull !48, !align !232
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !50
  %i.jr = load ptr, ptr %i.y, align 8, !tbaa !518, !nonnull !48, !align !232
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  call void @_ZN6google8protobuf8compiler4java7OptionsC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(76) %17, ptr noundef nonnull align 8 dereferenceable(76) %i.jt)
  invoke void @_ZN6google8protobuf8compiler4java24WriteEnumValueDocCommentEPNS0_2io7PrinterEPKNS0_19EnumValueDescriptorENS2_7OptionsE(ptr noundef %i.jq, ptr noundef %i.jo, ptr noundef nonnull %17)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ju = load ptr, ptr %i.z, align 8, !tbaa !104 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.aa
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.jw = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.jy = load ptr, ptr %i.ab, align 8, !tbaa !104 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.ac
  br i1 %i.jz, label %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ka = load i64, ptr %i.ac, align 8, !tbaa !30
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #28
  br label %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit.i.i.i.i

_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.kc = load ptr, ptr %i.m, align 8, !tbaa !66  ; 8 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !519
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !30, !range !47, !noundef !48
  %i.kh = trunc nuw i8 %i.kg to i1                ; 4 uses
  %i.ki = select i1 %i.kh, i64 22, i64 0          ; 3 uses
  %i.kj = load ptr, ptr %i.ad, align 8, !tbaa !520, !nonnull !48, !align !232 ; 6 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !81 ; 4 uses
  %i.kl = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp ult i64 %i.kk, 2
  br i1 %i.km, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit.i.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ko, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !66
  %i.kr = icmp eq ptr %i.kq, %i.kc
  %.fca.1.insert.i.i.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.kp, 1
  %spec.select.i.i.i.i.i.i = select i1 %i.kr, { ptr, ptr } %.fca.1.insert.i.i.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit.i.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !30 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.kt, i32 0, i32 1, i32 1)
  %i.ku = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.kv = xor i64 %i.ku, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.kw = mul i64 %i.kv, -2543921745674291987
  %i.kx = call noundef i64 @llvm.bswap.i64(i64 %i.kw)
  %i.ky = xor i64 %i.kx, %i.ku
  %i.kz = mul i64 %i.ky, -2543921745674291987
  %i.la = call noundef i64 @llvm.bswap.i64(i64 %i.kz) ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !88, !noalias !521
  %i.ld = and i64 %i.lc, 65535
  %i.le = lshr i64 %i.la, 7
  %i.lf = xor i64 %i.ld, %i.le
  %i.lg = trunc i64 %i.la to i8
  %i.lh = and i8 %i.lg, 127
  %i.li = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.li, align 8, !tbaa !30 ; 2 uses
  %i.lj = insertelement <16 x i8> poison, i8 %i.lh, i64 0
  %i.lk = shufflevector <16 x i8> %i.lj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i6.i.i.i.i.i = phi i64 [ %i.lf, %bb.g ], [ %i.md, %bb.j ]
  %.sroa.13.0.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.mc, %bb.j ]
  %.sroa.6.0.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i, %i.kk ; 4 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.ll, i32 0, i32 3, i32 1)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.sroa.6.0.i.i.i.i.i.i
  %i.ln = load <16 x i8>, ptr %i.lm, align 1, !tbaa !30 ; 2 uses
  %i.lo = icmp eq <16 x i8> %i.lk, %i.ln
  %i.lp = bitcast <16 x i1> %i.lo to i16          ; 2 uses
  %.not45.i.i.i.i.i.i = icmp eq i16 %i.lp, 0
  br i1 %.not45.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.017.046.i.i.i.i.i.i = phi i16 [ %i.lz, %bb.i ], [ %i.lp, %bb.h ] ; 3 uses
  %i.lq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i, i1 true)
  %i.lr = zext nneg i16 %i.lq to i64
  %i.ls = add i64 %.sroa.6.0.i.i.i.i.i.i, %i.lr
  %i.lt = and i64 %i.ls, %i.kk                    ; 2 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.lt ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !66
  %i.lw = icmp eq ptr %i.lv, %i.kc
  br i1 %i.lw, label %.thread32.i.i.i.i.i.i, label %bb.i, !prof !223

.thread32.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lt ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ly = add i16 %.sroa.017.046.i.i.i.i.i.i, -1
  %i.lz = and i16 %i.ly, %.sroa.017.046.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.ma = icmp eq <16 x i8> %i.ln, splat (i8 -128)
  %i.mb = bitcast <16 x i1> %i.ma to i16
  %.not43.i.i.i.i.i.i = icmp eq i16 %i.mb, 0
  br i1 %.not43.i.i.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i, !prof !23

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.mc = add i64 %.sroa.13.0.i.i.i.i.i.i, 16     ; 2 uses
  %i.md = add i64 %i.mc, %.sroa.6.0.i.i.i.i.i.i
  br label %bb.h, !llvm.loop !524

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %.thread32.i.i.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i.i.i = phi ptr [ %i.lx, %.thread32.i.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i.i.i = phi ptr [ %i.lu, %.thread32.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i ]
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i, %bb.f, %bb.e
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i ], [ { ptr null, ptr undef }, %bb.e ], [ %spec.select.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.me = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0
  %.not.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i197.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i
  %i.mf = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !525 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !527
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !65
  %i.mm = ptrtoint ptr %i.mh to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 48
  %i.mq = trunc i64 %i.mp to i32                  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !527
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !65
  %i.mv = ptrtoint ptr %i.kc to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = sdiv exact i64 %i.mx, 48
  %i.mz = trunc i64 %i.my to i32
  %.not102.not.i.i.i.i = icmp slt i32 %i.mq, %i.mz
  br i1 %.not102.not.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %bb.l, !prof !223

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.26, i32 noundef 518, ptr noundef nonnull @.str.76) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.n

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.l
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #27
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8compiler4java7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %17) #25
  br label %bb.em

bb.n:                                             ; preds = %bb.l
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.nc = sdiv i32 %i.mq, 1000
  %i.nd = load ptr, ptr %i.x, align 8, !tbaa !517, !nonnull !48, !align !232
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store ptr %i.ae, ptr %20, align 8, !tbaa !100
  store i32 1701667182, ptr %i.ae, align 8
  store i64 4, ptr %i.af, align 8, !tbaa !102
  store i8 0, ptr %i.hi, align 4, !tbaa !30
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !528 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !104 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !102 ; 5 uses
  store ptr %i.ag, ptr %19, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ag, ptr noundef nonnull align 8 dereferenceable(5) %i.ae, i64 5, i1 false)
  store i64 4, ptr %i.ah, align 8, !tbaa !102
  store ptr %i.ae, ptr %20, align 8, !tbaa !104
  store i64 0, ptr %i.af, align 8, !tbaa !102
  store i8 0, ptr %i.ae, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !529
  store ptr %i.aj, ptr %15, align 8, !tbaa !100, !noalias !529
  %i.nk = icmp eq ptr %i.nh, null
  %i.nl = icmp ne i64 %i.nj, 0
  %or.cond.i.i.i.i.i.i.i.i.i = and i1 %i.nk, %i.nl
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i, label %bb.o

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #30
          to label %.noexc353.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc353.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25, !noalias !529
  store i64 %i.nj, ptr %i.k, align 8, !tbaa !90, !noalias !529
  %i.nm = icmp ugt i64 %i.nj, 15
  br i1 %i.nm, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.o
  %i.nn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc354.i.i.i.i unwind label %.loopexit512.i.i.i.i ; 2 uses

.noexc354.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.nn, ptr %15, align 8, !tbaa !104, !noalias !529
  %i.no = load i64, ptr %i.k, align 8, !tbaa !90, !noalias !529
  store i64 %i.no, ptr %i.aj, align 8, !tbaa !30, !noalias !529
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc354.i.i.i.i, %bb.o
  %i.np = phi ptr [ %i.nn, %.noexc354.i.i.i.i ], [ %i.aj, %bb.o ] ; 2 uses
  switch i64 %i.nj, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.nq = load i8, ptr %i.nh, align 1, !tbaa !30, !noalias !529
  store i8 %i.nq, ptr %i.np, align 1, !tbaa !30, !noalias !529
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.np, ptr align 1 %i.nh, i64 %i.nj, i1 false), !noalias !529
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.nr = load i64, ptr %i.k, align 8, !tbaa !90, !noalias !529 ; 2 uses
  store i64 %i.nr, ptr %i.ak, align 8, !tbaa !102, !noalias !529
  %i.ns = load ptr, ptr %15, align 8, !tbaa !104, !noalias !529
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  store i8 0, ptr %i.nt, align 1, !tbaa !30, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25, !noalias !529
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !100, !alias.scope !529
  %i.nu = load ptr, ptr %15, align 8, !tbaa !104, !noalias !529 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.aj
  br i1 %i.nv, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.nw = load i64, ptr %i.ak, align 8, !tbaa !102, !noalias !529 ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.nx)
  %i.ny = add nuw nsw i64 %i.nw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ny, i1 false)
  br label %._crit_edge.i.i127.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.nu, ptr %i.ai, align 8, !tbaa !104, !alias.scope !529
  %i.nz = load i64, ptr %i.aj, align 8, !tbaa !30, !noalias !529
  store i64 %i.nz, ptr %i.al, align 8, !tbaa !30, !alias.scope !529
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !102, !noalias !529
  br label %._crit_edge.i.i127.i.i.i.i

.loopexit512.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit512.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit512.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.oa = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.ag
  br i1 %i.ob, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i.i.i.i: ; preds = %bb.t
  %i.oc = load i64, ptr %i.ag, align 8, !tbaa !30
  br label %.body.i.i.i.i.sink.split

._crit_edge.i.i127.i.i.i.i:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.od = phi i64 [ %i.nw, %bb.s ], [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.od, ptr %i.am, align 8, !tbaa !102, !alias.scope !529
  store i8 0, ptr %i.an, align 8, !tbaa !108, !alias.scope !529
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !529
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !100
  store i64 0, ptr %i.aq, align 8, !tbaa !102
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.v, align 8, !tbaa !102
  store i8 0, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.w, align 8, !tbaa !110
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %.body.i.i.i.i.i

.body.i.thread.i.i.i.i:                           ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.o) #25
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %i.ae = icmp eq ptr %.pre.i.i.i.i, %i.m
  br i1 %i.ae, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i
  %i.af = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i.i.i, i64 noundef %i.ag) #28
  br label %.body.i.i.i.i

bb.d:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.ah, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.e, ptr nonnull %1, i64 1, i64 183, ptr nonnull @.str.85)
          to label %bb.e unwind label %.body.loopexit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  %i.ai = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEv.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !30
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEv.exit.i.i.i"

.body.loopexit.i.i.i.i:                           ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.thread.i.i.i.i, %.body.i.i.i.i.i, %.body.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.am, %.body.loopexit.i.i.i.i ], [ %i.ad, %.body.i.thread.i.i.i.i ], [ %i.y, %.body.i.i.i.i.i ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !30
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEv.exit.i.i.i": ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8, !tbaa !580
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !587
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_13vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca [1 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 23 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !588, !range !47, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !588
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = load ptr, ptr %.val, align 8, !tbaa !591, !nonnull !48, !align !246
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !592, !nonnull !48, !align !246
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEvENKUlvE_clEv.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 3 uses
  %i.ac = sext i32 %i.f to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ai = phi i32 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.et, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !593, !nonnull !48, !align !232 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = getelementptr inbounds [48 x i8], ptr %i.am, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !594, !nonnull !48, !align !232 ; 6 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !81 ; 4 uses
  %i.aq = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp ult i64 %i.ap, 2
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.at, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.av, i32 0, i32 1, i32 1)
  %i.aw = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ax = xor i64 %i.aw, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ay = mul i64 %i.ax, -2543921745674291987
  %i.az = call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  %i.ba = xor i64 %i.az, %i.aw
  %i.bb = mul i64 %i.ba, -2543921745674291987
  %i.bc = call noundef i64 @llvm.bswap.i64(i64 %i.bb) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !595
  %i.bf = and i64 %i.be, 65535
  %i.bg = lshr i64 %i.bc, 7
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bc to i8
  %i.bj = and i8 %i.bi, 127
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bl = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.e ], [ %i.ce, %bb.h ]
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.h ]
  %.sroa.6.0.i.i.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i.i, %i.ap ; 4 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.bn, i32 0, i32 3, i32 1)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %i.bp = load <16 x i8>, ptr %i.bo, align 1, !tbaa !30 ; 2 uses
  %i.bq = icmp eq <16 x i8> %i.bm, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i.i.i.i.i.i = phi i16 [ %i.ca, %bb.g ], [ %i.br, %bb.f ] ; 3 uses
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i, %i.bt
  %i.bv = and i64 %i.bu, %i.ap
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !66
  %i.by = icmp eq ptr %i.bx, %i.an
  br i1 %i.by, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i, label %bb.g, !prof !223

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bz = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.017.046.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %i.cb = icmp eq <16 x i8> %i.bp, splat (i8 -128)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %.not43.i.i.i.i.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not43.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, !prof !23

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cd = add i64 %.sroa.13.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.f, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %i.cf = icmp eq ptr %5, %i.an
  br i1 %i.cf, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %bb.d
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !598, !nonnull !48, !align !232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.n, ptr %3, align 8, !tbaa !100
  store i32 1701667182, ptr %i.n, align 8
  store i64 4, ptr %i.o, align 8, !tbaa !102
  store i8 0, ptr %i.ad, align 4, !tbaa !30
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.cl = getelementptr inbounds [48 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !528 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !104 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !102 ; 5 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 8 dereferenceable(5) %i.n, i64 5, i1 false)
  store i64 4, ptr %i.q, align 8, !tbaa !102
  store ptr %i.n, ptr %3, align 8, !tbaa !104
  store i64 0, ptr %i.o, align 8, !tbaa !102
  store i8 0, ptr %i.n, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !599
  store ptr %i.s, ptr %1, align 8, !tbaa !100, !noalias !599
  %i.cr = icmp eq ptr %i.co, null
  %i.cs = icmp ne i64 %i.cq, 0
  %or.cond.i.i.i.i.i.i.i.i.i = and i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #30
          to label %.noexc23.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc23.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !599
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !90, !noalias !599
  %i.ct = icmp ugt i64 %i.cq, 15
  br i1 %i.ct, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24.i.i.i.i unwind label %.loopexit.i.i.i.i ; 2 uses

.noexc24.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.cu, ptr %1, align 8, !tbaa !104, !noalias !599
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !599
  store i64 %i.cv, ptr %i.s, align 8, !tbaa !30, !noalias !599
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc24.i.i.i.i, %bb.i
  %i.cw = phi ptr [ %i.cu, %.noexc24.i.i.i.i ], [ %i.s, %bb.i ] ; 2 uses
  switch i64 %i.cq, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cx = load i8, ptr %i.co, align 1, !tbaa !30, !noalias !599
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !30, !noalias !599
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.co, i64 %i.cq, i1 false), !noalias !599
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !599 ; 2 uses
  store i64 %i.cy, ptr %i.t, align 8, !tbaa !102, !noalias !599
  %i.cz = load ptr, ptr %1, align 8, !tbaa !104, !noalias !599
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !30, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !599
  store ptr %i.u, ptr %i.r, align 8, !tbaa !100, !alias.scope !599
  %i.db = load ptr, ptr %1, align 8, !tbaa !104, !noalias !599 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.s
  br i1 %i.dc, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dd = load i64, ptr %i.t, align 8, !tbaa !102, !noalias !599 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.df, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %i.db, ptr %i.r, align 8, !tbaa !104, !alias.scope !599
  %i.dg = load i64, ptr %i.s, align 8, !tbaa !30, !noalias !599
  store i64 %i.dg, ptr %i.u, align 8, !tbaa !30, !alias.scope !599
  %.pre.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !102, !noalias !599
  br label %bb.o

.loopexit.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.p
  br i1 %i.di, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.dj = load i64, ptr %i.p, align 8, !tbaa !30
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #28
  br label %.body.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.dl = phi i64 [ %i.dd, %bb.m ], [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.dl, ptr %i.v, align 8, !tbaa !102, !alias.scope !599
  store i8 0, ptr %i.w, align 8, !tbaa !108, !alias.scope !599
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !599
  store ptr %i.y, ptr %i.x, align 8, !tbaa !100
  store i64 0, ptr %i.z, align 8, !tbaa !102
  store i8 0, ptr %i.y, align 8, !tbaa !30
  store i8 0, ptr %i.aa, align 8, !tbaa !110
  store i8 0, ptr %i.ab, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.ch, ptr nonnull %2, i64 1, i64 103, ptr nonnull @.str.86)
          to label %.preheader.i.i.i.i unwind label %.body.loopexit.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.o
  %i.dm = load i8, ptr %i.ab, align 8, !tbaa !118, !range !47, !noundef !48
  %i.dn = trunc nuw i8 %i.dm to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !118
  br i1 %i.dn, label %bb.p, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.p:                                             ; preds = %.preheader.i.i.i.i
  %i.do = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ag
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.dq = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !218
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !104 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.y
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.dz = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.eb = load i8, ptr %i.w, align 8, !tbaa !108
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ed = load ptr, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.u
  br i1 %i.ee, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.ef = load i64, ptr %i.u, align 8, !tbaa !30
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.eh = load ptr, ptr %i.u, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(73) %i.r, ptr noundef nonnull align 8 dereferenceable(73) %i.r, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #27
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.r, %bb.t, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.p
  br i1 %i.em, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i
  %i.en = load i64, ptr %i.p, align 8, !tbaa !30
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i.i.i
  %i.ep = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.n
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i
  %i.er = load i64, ptr %i.n, align 8, !tbaa !30
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !592
  %.pre53.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i
  %i.et = phi i32 [ %.pre53.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ai, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.eu
  br i1 %i.ev, label %bb.c, label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEvENKUlvE_clEv.exit.i.i.i", !llvm.loop !602

.body.loopexit.i.i.i.i:                           ; preds = %bb.o
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #25
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.n, %.body.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ew, %.body.loopexit.i.i.i.i ], [ %lpad.phi.i.i.i.i, %bb.n ]
  %i.ex = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.n
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ez = load i64, ptr %i.n, align 8, !tbaa !30
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEvENKUlvE_clEv.exit.i.i.i": ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i8 0, ptr %i.b, align 8, !tbaa !588
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit": ; preds = %bb.a, %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_13clEvENKUlvE_clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.d, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !603
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !604, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !604
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = load ptr, ptr %.val, align 8, !tbaa !607, !nonnull !48, !align !232 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.84, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !284
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !203
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.m, ptr noundef nonnull align 8 dereferenceable(6) %i.f, i64 6, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 5, ptr %i.n, align 8, !tbaa !102
  store ptr %i.f, ptr %2, align 8, !tbaa !104
  store i64 0, ptr %i.g, align 8, !tbaa !102
  store i8 0, ptr %i.f, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.p = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc.i11.i.i.i.i unwind label %.body.i.thread.i.i.i.i ; 5 uses

.noexc.i11.i.i.i.i:                               ; preds = %bb.b
  store <2 x ptr> %i.j, ptr %i.p, align 16, !noalias !608
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x ptr> %i.l, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !608
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16, !noalias !608
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !53, !noalias !608
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.q, align 8, !tbaa !157, !alias.scope !608
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.p, ptr %i.o, align 8, !alias.scope !608
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !608
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation", ptr %i.r, align 8, !tbaa !163, !alias.scope !608
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 1, ptr %i.s, align 8, !tbaa !108, !alias.scope !608
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.v, align 8, !tbaa !102
  store i8 0, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.w, align 8, !tbaa !110
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %.body.i.i.i.i.i

.body.i.thread.i.i.i.i:                           ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.o) #25
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %i.ae = icmp eq ptr %.pre.i.i.i.i, %i.m
  br i1 %i.ae, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i
  %i.af = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i.i.i, i64 noundef %i.ag) #28
  br label %.body.i.i.i.i

bb.d:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.ah, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.e, ptr nonnull %1, i64 1, i64 142, ptr nonnull @.str.87)
          to label %bb.e unwind label %.body.loopexit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  %i.ai = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEv.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !30
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEv.exit.i.i.i"

.body.loopexit.i.i.i.i:                           ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.thread.i.i.i.i, %.body.i.i.i.i.i, %.body.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.am, %.body.loopexit.i.i.i.i ], [ %i.ad, %.body.i.thread.i.i.i.i ], [ %i.y, %.body.i.i.i.i.i ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !30
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEv.exit.i.i.i": ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8, !tbaa !604
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !587
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_14vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca [2 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 43 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !611, !range !47, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !611
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.f = load ptr, ptr %.val, align 8, !tbaa !614, !nonnull !48, !align !246
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !615, !nonnull !48, !align !246
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp slt i32 %i.g, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEvENKUlvE_clEv.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 3 uses
  %i.aw = sext i32 %i.g to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bh = phi i32 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.hr, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i ] ; 2 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !616, !nonnull !48, !align !232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65
  %i.bm = getelementptr inbounds [48 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i ; 5 uses
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !617, !nonnull !48, !align !232 ; 6 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !81 ; 4 uses
  %i.bp = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp ult i64 %i.bo, 2
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bs, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 1, i32 1)
  %i.bv = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bw = xor i64 %i.bv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bx = mul i64 %i.bw, -2543921745674291987
  %i.by = call noundef i64 @llvm.bswap.i64(i64 %i.bx)
  %i.bz = xor i64 %i.by, %i.bv
  %i.ca = mul i64 %i.bz, -2543921745674291987
  %i.cb = call noundef i64 @llvm.bswap.i64(i64 %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !88, !noalias !618
  %i.ce = and i64 %i.cd, 65535
  %i.cf = lshr i64 %i.cb, 7
  %i.cg = xor i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cb to i8
  %i.ci = and i8 %i.ch, 127
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !30 ; 2 uses
  %i.ck = insertelement <16 x i8> poison, i8 %i.ci, i64 0
  %i.cl = shufflevector <16 x i8> %i.ck, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.e ], [ %i.dd, %bb.h ]
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.dc, %bb.h ]
  %.sroa.6.0.i.i.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i.i, %i.bo ; 4 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.cm, i32 0, i32 3, i32 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %i.co = load <16 x i8>, ptr %i.cn, align 1, !tbaa !30 ; 2 uses
  %i.cp = icmp eq <16 x i8> %i.cl, %i.co
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i.i.i.i.i.i = phi i16 [ %i.cz, %bb.g ], [ %i.cq, %bb.f ] ; 3 uses
  %i.cr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i, %i.cs
  %i.cu = and i64 %i.ct, %i.bo
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = icmp eq ptr %i.cw, %i.bm
  br i1 %i.cx, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i, label %bb.g, !prof !223

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cy = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
  %i.cz = and i16 %i.cy, %.sroa.017.046.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %i.da = icmp eq <16 x i8> %i.co, splat (i8 -128)
  %i.db = bitcast <16 x i1> %i.da to i16
  %.not43.i.i.i.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not43.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, !prof !23

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.dc = add i64 %.sroa.13.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.f, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %bb.d
  %7 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %i.de = icmp eq ptr %8, %i.bm
  br i1 %i.de, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %bb.d
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !621, !nonnull !48, !align !232
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.o, ptr %5, align 8, !tbaa !100
  store i32 1701667182, ptr %i.o, align 8
  store i64 4, ptr %i.p, align 8, !tbaa !102
  store i8 0, ptr %i.ax, align 4, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !528 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !104 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !102 ; 5 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.q, ptr noundef nonnull align 8 dereferenceable(5) %i.o, i64 5, i1 false)
  store i64 4, ptr %i.r, align 8, !tbaa !102
  store ptr %i.o, ptr %5, align 8, !tbaa !104
  store i64 0, ptr %i.p, align 8, !tbaa !102
  store i8 0, ptr %i.o, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !622
  store ptr %i.t, ptr %3, align 8, !tbaa !100, !noalias !622
  %i.dm = icmp eq ptr %i.dj, null
  %i.dn = icmp ne i64 %i.dl, 0
  %or.cond.i.i.i.i.i.i.i.i.i = and i1 %i.dm, %i.dn
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #30
          to label %.noexc47.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc47.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !622
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !90, !noalias !622
  %i.do = icmp ugt i64 %i.dl, 15
  br i1 %i.do, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc48.i.i.i.i unwind label %.loopexit71.i.i.i.i ; 2 uses

.noexc48.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.dp, ptr %3, align 8, !tbaa !104, !noalias !622
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !622
  store i64 %i.dq, ptr %i.t, align 8, !tbaa !30, !noalias !622
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc48.i.i.i.i, %bb.i
  %i.dr = phi ptr [ %i.dp, %.noexc48.i.i.i.i ], [ %i.t, %bb.i ] ; 2 uses
  switch i64 %i.dl, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ds = load i8, ptr %i.dj, align 1, !tbaa !30, !noalias !622
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !30, !noalias !622
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dj, i64 %i.dl, i1 false), !noalias !622
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !622 ; 2 uses
  store i64 %i.dt, ptr %i.u, align 8, !tbaa !102, !noalias !622
  %i.du = load ptr, ptr %3, align 8, !tbaa !104, !noalias !622
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !30, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !622
  store ptr %i.v, ptr %i.s, align 8, !tbaa !100, !alias.scope !622
  %i.dw = load ptr, ptr %3, align 8, !tbaa !104, !noalias !622 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.t
  br i1 %i.dx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dy = load i64, ptr %i.u, align 8, !tbaa !102, !noalias !622 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ea, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i28.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %i.dw, ptr %i.s, align 8, !tbaa !104, !alias.scope !622
  %i.eb = load i64, ptr %i.t, align 8, !tbaa !30, !noalias !622
  store i64 %i.eb, ptr %i.v, align 8, !tbaa !30, !alias.scope !622
  %.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !102, !noalias !622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i28.i.i.i.i

.loopexit71.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit71.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit71.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ec = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.q
  br i1 %i.ed, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ee = load i64, ptr %i.q, align 8, !tbaa !30
  br label %.body.i.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i28.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.ef = phi i64 [ %i.dy, %bb.m ], [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.ef, ptr %i.w, align 8, !tbaa !102, !alias.scope !622
  store i8 0, ptr %i.x, align 8, !tbaa !108, !alias.scope !622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !622
  store ptr %i.z, ptr %i.y, align 8, !tbaa !100
  store i64 0, ptr %i.aa, align 8, !tbaa !102
  store i8 0, ptr %i.z, align 8, !tbaa !30
  store i8 0, ptr %i.ab, align 8, !tbaa !110
  store i8 0, ptr %i.ac, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @.str.81, i64 6, i1 false)
  store i8 0, ptr %i.ay, align 2, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !67
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ag, ptr noundef nonnull align 8 dereferenceable(7) %i.ae, i64 7, i1 false)
  store i64 6, ptr %i.ah, align 8, !tbaa !102
  store ptr %i.ae, ptr %6, align 8, !tbaa !104
  store i64 0, ptr %i.af, align 8, !tbaa !102
  store i8 0, ptr %i.ae, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ei = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.eh, ptr noundef nonnull %i.aj)
          to label %.noexc53.i.i.i.i unwind label %bb.s

.noexc53.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i28.i.i.i.i
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.ak                    ; 5 uses
  store i64 %i.ek, ptr %2, align 8, !tbaa !128
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !625
  store ptr %i.am, ptr %1, align 8, !tbaa !100, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !625
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !90, !noalias !625
  %i.el = icmp ugt i64 %i.ek, 15
  br i1 %i.el, label %.noexc.i.i.i.i.i52.i.i.i.i, label %._crit_edge.i.i.i.i.i.i49.i.i.i.i

.noexc.i.i.i.i.i52.i.i.i.i:                       ; preds = %.noexc53.i.i.i.i
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc54.i.i.i.i unwind label %bb.s ; 2 uses

.noexc54.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i52.i.i.i.i
  store ptr %i.em, ptr %1, align 8, !tbaa !104, !noalias !625
  %i.en = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !625
  store i64 %i.en, ptr %i.am, align 8, !tbaa !30, !noalias !625
  br label %._crit_edge.i.i.i.i.i.i49.i.i.i.i

._crit_edge.i.i.i.i.i.i49.i.i.i.i:                ; preds = %.noexc54.i.i.i.i, %.noexc53.i.i.i.i
  %i.eo = phi ptr [ %i.em, %.noexc54.i.i.i.i ], [ %i.am, %.noexc53.i.i.i.i ] ; 2 uses
  switch i64 %i.ek, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i49.i.i.i.i
  %i.ep = load i8, ptr %i.aj, align 8, !tbaa !30, !noalias !625
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !30, !noalias !625
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i49.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 8 %i.aj, i64 %i.ek, i1 false), !noalias !625
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i49.i.i.i.i
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !625 ; 2 uses
  store i64 %i.eq, ptr %i.an, align 8, !tbaa !102, !noalias !625
  %i.er = load ptr, ptr %1, align 8, !tbaa !104, !noalias !625
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !30, !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !625
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !100, !alias.scope !625
  %i.et = load ptr, ptr %1, align 8, !tbaa !104, !noalias !625 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.am
  br i1 %i.eu, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i50.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ev = load i64, ptr %i.an, align 8, !tbaa !102, !noalias !625 ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 16
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ex, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i50.i.i.i.i: ; preds = %bb.q
  store ptr %i.et, ptr %i.ai, align 8, !tbaa !104, !alias.scope !625
  %i.ey = load i64, ptr %i.am, align 8, !tbaa !30, !noalias !625
  store i64 %i.ey, ptr %i.ao, align 8, !tbaa !30, !alias.scope !625
  %.pre.i.i51.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !102, !noalias !625
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  store i8 0, ptr %i.aq, align 8, !tbaa !108, !alias.scope !625
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !100
  store i64 0, ptr %i.at, align 8, !tbaa !102
  store i8 0, ptr %i.as, align 8, !tbaa !30
  store i8 0, ptr %i.au, align 8, !tbaa !110
  store i8 0, ptr %i.av, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.dg, ptr nonnull %4, i64 2, i64 85, ptr nonnull @.str.88)
          to label %.preheader109.i.i.i.i unwind label %.body32.loopexit.i.i.i.i

.preheader109.i.i.i.i:                            ; preds = %bb.t
  %i.ff = load i8, ptr %i.av, align 8, !tbaa !118, !range !47, !noundef !48
  %i.fg = trunc nuw i8 %i.ff to i1
  store i8 0, ptr %i.av, align 8, !tbaa !118
  br i1 %i.fg, label %bb.u, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.u:                                             ; preds = %.preheader109.i.i.i.i
  %i.fh = load ptr, ptr %i.ba, align 8, !tbaa !104 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bb
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.fj = load i64, ptr %i.bb, align 8, !tbaa !30
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = load ptr, ptr %i.az, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.fm = load ptr, ptr %i.bc, align 8, !tbaa !218
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %.preheader109.i.i.i.i
  %i.fq = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.as
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.fs = load i64, ptr %i.as, align 8, !tbaa !30
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fu = load i8, ptr %i.aq, align 8, !tbaa !108
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.fw = load ptr, ptr %i.ai, align 8, !tbaa !104 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ao
  br i1 %i.fx, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.fy = load i64, ptr %i.ao, align 8, !tbaa !30
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ga = load ptr, ptr %i.ao, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gb = invoke noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(73) %i.ai, ptr noundef nonnull align 8 dereferenceable(73) %i.ai, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.ad, %bb.y
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #27
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.y, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ag
  br i1 %i.gf, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i
  %i.gg = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i.i.i.i
  %i.gi = load i8, ptr %i.ac, align 8, !tbaa !118, !range !47, !noundef !48
  %i.gj = trunc nuw i8 %i.gi to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !118
  br i1 %i.gj, label %bb.aa, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i

bb.aa:                                            ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i
  %i.gk = load ptr, ptr %i.be, align 8, !tbaa !104 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.bf
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.aa
  %i.gm = load i64, ptr %i.bf, align 8, !tbaa !30
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i
  %i.go = load ptr, ptr %i.bd, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.1.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.1.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i
  %i.gp = load ptr, ptr %i.bg, align 8, !tbaa !218
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i: ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i, %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i
  %i.gt = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.z
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i
  %i.gv = load i64, ptr %i.z, align 8, !tbaa !30
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i
  %i.gx = load i8, ptr %i.x, align 8, !tbaa !108
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i
  %i.gz = load ptr, ptr %i.v, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ha = invoke noundef zeroext i1 %i.gz(ptr noundef nonnull align 8 dereferenceable(73) %i.s, ptr noundef nonnull align 8 dereferenceable(73) %i.s, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i unwind label %bb.z ; 0 uses

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !104 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.v
  br i1 %i.hc, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.ae
  %i.hd = load i64, ptr %i.v, align 8, !tbaa !30
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, %bb.ad, %bb.ac
  %i.hf = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.q
  br i1 %i.hg, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i
  %i.hh = load i64, ptr %i.q, align 8, !tbaa !30
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.1.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit.1.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1.i.i.i.i
  %i.hj = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ae
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.1.i.i.i.i
  %i.hl = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i
  %i.hn = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.o
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.hp = load i64, ptr %i.o, align 8, !tbaa !30
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !615
  %.pre112.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i
  %i.hr = phi i32 [ %.pre112.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i ], [ %i.bh, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.hs
  br i1 %i.ht, label %bb.c, label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEvENKUlvE_clEv.exit.i.i.i", !llvm.loop !628

.body32.loopexit.i.i.i.i:                         ; preds = %bb.t
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ad) #25
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #25
  br label %.body32.i.i.i.i

.body32.i.i.i.i:                                  ; preds = %bb.s, %.body32.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.i.i.i.i ], [ %i.hu, %.body32.loopexit.i.i.i.i ], [ %i.ez, %bb.s ] ; 2 uses
  %i.hv = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.i.i.i.i ], [ true, %.body32.loopexit.i.i.i.i ], [ false, %bb.s ] ; 2 uses
  %i.hw = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.ae
  br i1 %i.hx, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i: ; preds = %.body32.i.i.i.i
  %i.hy = load i64, ptr %i.ae, align 8, !tbaa !30
  br label %.body.i.i.i.i.sink.split

.body.i.i.i.i.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i
  %.sink47 = phi i64 [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.sink = phi ptr [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.016.i.i.i.i.ph = phi ptr [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.pn.pn.pn.i.i.i.i.ph = phi { ptr, i32 } [ %.pn.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ %lpad.phi.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.2.i.i.i.i.ph = phi i1 [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.hz = add i64 %.sink47, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hz) #28
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.sink.split, %.body32.i.i.i.i, %bb.n
  %.016.i.i.i.i = phi ptr [ %4, %bb.n ], [ %i.ad, %.body32.i.i.i.i ], [ %.016.i.i.i.i.ph, %.body.i.i.i.i.sink.split ] ; 2 uses
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %bb.n ], [ %.pn.i.i.i.i, %.body32.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  %.2.i.i.i.i = phi i1 [ false, %bb.n ], [ %i.hv, %.body32.i.i.i.i ], [ %.2.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  %i.ia = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.o
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ic = load i64, ptr %i.o, align 8, !tbaa !30
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i
  %i.ie = icmp eq ptr %4, %.016.i.i.i.i
  %or.cond.i.i.i.i = select i1 %.2.i.i.i.i, i1 true, i1 %i.ie
  br i1 %or.cond.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i, %.preheader.i.i.i.i
  %i.if = phi ptr [ %i.ig, %.preheader.i.i.i.i ], [ %.016.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i ]
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ig) #25
  %i.ih = icmp eq ptr %i.ig, %4
  br i1 %i.ih, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn.i.i.i.i

"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEvENKUlvE_clEv.exit.i.i.i": ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i8 0, ptr %i.c, align 8, !tbaa !611
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit": ; preds = %bb.a, %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_14clEvENKUlvE_clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.e, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !603
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !629, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !629
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = load ptr, ptr %.val, align 8, !tbaa !632, !nonnull !48, !align !232 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @.str.89, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.h, align 2, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !284
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !203
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.m, ptr noundef nonnull align 8 dereferenceable(7) %i.f, i64 7, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.n, align 8, !tbaa !102
  store ptr %i.f, ptr %2, align 8, !tbaa !104
  store i64 0, ptr %i.g, align 8, !tbaa !102
  store i8 0, ptr %i.f, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.p = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc.i11.i.i.i.i unwind label %.body.i.thread.i.i.i.i ; 5 uses

.noexc.i11.i.i.i.i:                               ; preds = %bb.b
  store <2 x ptr> %i.j, ptr %i.p, align 16, !noalias !633
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x ptr> %i.l, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !633
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16, !noalias !633
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !53, !noalias !633
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.q, align 8, !tbaa !157, !alias.scope !633
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.p, ptr %i.o, align 8, !alias.scope !633
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !633
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation", ptr %i.r, align 8, !tbaa !163, !alias.scope !633
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 1, ptr %i.s, align 8, !tbaa !108, !alias.scope !633
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.v, align 8, !tbaa !102
  store i8 0, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.w, align 8, !tbaa !110
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %.body.i.i.i.i.i

.body.i.thread.i.i.i.i:                           ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.o) #25
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation":bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !636, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !636
  %i.d = load ptr, ptr %.val, align 8, !tbaa !639, !nonnull !48, !align !246
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !640  ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !641, !nonnull !48, !align !232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !100, !alias.scope !642
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !102, !alias.scope !642
  store i8 0, ptr %i.m, align 8, !tbaa !30, !alias.scope !642
  br label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.q = sext i32 %i.e to i64
  br label %bb.f

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i
  %.sroa.9.1.i.i.i.i40.le = ptrtoint ptr %.sroa.9.1.i.i.i.i to i64
  %.sroa.032.1.i.i.i.i41.le = ptrtoint ptr %.sroa.032.1.i.i.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !641, !nonnull !48, !align !232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !100, !alias.scope !655
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.v, align 8, !tbaa !102, !alias.scope !655
  store i8 0, ptr %i.u, align 8, !tbaa !30, !alias.scope !655
  %.not41.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.032.1.i.i.i.i, %.sroa.9.1.i.i.i.i
  br i1 %.not41.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 16 ; 6 uses
  %.not4244.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %.sroa.9.1.i.i.i.i ; 2 uses
  br i1 %.not4244.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c
  %i.y = add i64 %.sroa.9.1.i.i.i.i40.le, -32
  %i.z = sub i64 %i.y, %.sroa.032.1.i.i.i.i41.le  ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 64
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.aa = lshr i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ab, 3                    ; 2 uses
  %i.ac = icmp eq i64 %n.mod.vf, 0
  %i.ad = select i1 %i.ac, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ab, %i.ad               ; 2 uses
  %i.ae = shl i64 %n.vec, 4
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.w, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi42 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.ah = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah
  %next.gep43 = getelementptr i8, ptr %i.ai, i64 32
  %i.aj = add <2 x i64> %vec.phi, splat (i64 2)
  %i.ak = add <2 x i64> %vec.phi42, splat (i64 2)
  %i.al = load <3 x i64>, ptr %next.gep, align 8, !tbaa !128, !noalias !656
  %strided.vec = shufflevector <3 x i64> %i.al, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.am = load <3 x i64>, ptr %next.gep43, align 8, !tbaa !128, !noalias !656
  %strided.vec45 = shufflevector <3 x i64> %i.am, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.an = add <2 x i64> %i.aj, %strided.vec       ; 2 uses
  %i.ao = add <2 x i64> %i.ak, %strided.vec45     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ao, %i.an
  %i.aq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.02545.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %.025.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.025.lcssa.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %bb.d

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ar = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  %.02545.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.02545.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ]
  %i.as = add i64 %.02545.i.i.i.i.i.i.i.i, 2
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !128, !noalias !656
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.not42.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %.sroa.9.1.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !660

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.025.lcssa.i.i.i.i.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i unwind label %bb.e

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aw = load ptr, ptr %2, align 8, !tbaa !104, !alias.scope !655 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130, !noalias !656
  %i.az = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ay, i64 %i.az, i1 false)
  br i1 %.not4244.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %.lr.ph49.preheader.i.i.i.i.i.i.i.i

.lr.ph49.preheader.i.i.i.i.i.i.i.i:               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i
  %i.ba = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  br label %.lr.ph49.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !104, !alias.scope !655 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bf = load i64, ptr %i.u, align 8, !tbaa !30, !alias.scope !655
  br label %.body.i.i.i.i.sink.split

.lr.ph49.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph49.i.i.i.i.i.i.i.i, %.lr.ph49.preheader.i.i.i.i.i.i.i.i
  %i.bg = phi ptr [ %i.bn, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %.048.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %i.bb, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.047.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ]
  store i16 8236, ptr %.048.i.i.i.i.i.i.i.i, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i.i.i.i.i.i.i.i, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130, !noalias !656
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !128, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !128, !noalias !656
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.not43.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %.sroa.9.1.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %.lr.ph49.i.i.i.i.i.i.i.i, !llvm.loop !661

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.pre71.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.pre72.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 4 uses
  %i.bo = phi i32 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.ei, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 2 uses
  %.sroa.032.058.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 10 uses
  %.sroa.9.057.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.9.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 11 uses
  %.sroa.14.056.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 4 uses
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !662, !nonnull !48, !align !232
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds [48 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.i ; 4 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !663, !nonnull !48, !align !232 ; 6 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !81 ; 4 uses
  %i.bw = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp ult i64 %i.bv, 2
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bz, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.cb, i32 0, i32 1, i32 1)
  %i.cc = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cd = xor i64 %i.cc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ce = mul i64 %i.cd, -2543921745674291987
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %i.ce)
  %i.cg = xor i64 %i.cf, %i.cc
  %i.ch = mul i64 %i.cg, -2543921745674291987
  %i.ci = tail call noundef i64 @llvm.bswap.i64(i64 %i.ch) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !88, !noalias !664
  %i.cl = and i64 %i.ck, 65535
  %i.cm = lshr i64 %i.ci, 7
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.ci to i8
  %i.cp = and i8 %i.co, 127
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !30 ; 2 uses
  %i.cr = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cs = shufflevector <16 x i8> %i.cr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i6.i.i.i.i.i.i.i = phi i64 [ %i.cn, %bb.h ], [ %i.dk, %bb.k ]
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.dj, %bb.k ]
  %.sroa.6.0.i.i.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i.i, %i.bv ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ct, i32 0, i32 3, i32 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %i.cv = load <16 x i8>, ptr %i.cu, align 1, !tbaa !30 ; 2 uses
  %i.cw = icmp eq <16 x i8> %i.cs, %i.cv
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i15.i.i.i.i, label %.lr.ph.i.i.i.i13.i.i.i.i

.lr.ph.i.i.i.i13.i.i.i.i:                         ; preds = %bb.i, %bb.j
  %.sroa.017.046.i.i.i.i.i.i.i.i = phi i16 [ %i.dg, %bb.j ], [ %i.cx, %bb.i ] ; 3 uses
  %i.cy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i.i, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i, %i.cz
  %i.db = and i64 %i.da, %i.bv
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !66
  %i.de = icmp eq ptr %i.dd, %i.bt
  br i1 %i.de, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, label %bb.j, !prof !223

bb.j:                                             ; preds = %.lr.ph.i.i.i.i13.i.i.i.i
  %i.df = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
  %i.dg = and i16 %i.df, %.sroa.017.046.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i14.i.i.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i.i.i14.i.i.i.i, label %._crit_edge.i.i.i.i15.i.i.i.i, label %.lr.ph.i.i.i.i13.i.i.i.i

._crit_edge.i.i.i.i15.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %i.dh = icmp eq <16 x i8> %i.cv, splat (i8 -128)
  %i.di = bitcast <16 x i1> %i.dh to i16
  %.not43.i.i.i.i16.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not43.i.i.i.i16.i.i.i.i, label %bb.k, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, !prof !23

bb.k:                                             ; preds = %._crit_edge.i.i.i.i15.i.i.i.i
  %i.dj = add i64 %.sroa.13.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.dk = add i64 %i.dj, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.i, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %bb.g
  %3 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %i.dl = icmp eq ptr %4, %i.bt
  br i1 %i.dl, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i15.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !528 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !104 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9.057.i.i.i.i, %.sroa.14.056.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i
  store i64 %i.dq, ptr %.sroa.9.057.i.i.i.i, align 8, !tbaa !90
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.057.i.i.i.i, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !389
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.057.i.i.i.i, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i

bb.m:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i
  %i.ds = ptrtoint ptr %.sroa.9.057.i.i.i.i to i64
  %i.dt = ptrtoint ptr %.sroa.032.058.i.i.i.i to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.n, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #30
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i.i17.i.i.i.i = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i17.i.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #29
          to label %.noexc18.i.i.i.i unwind label %.loopexit.i.i.i.i ; 5 uses

.noexc18.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i64 %i.dq, ptr %i.ed, align 8, !tbaa !90
  %.sroa.6.0..sroa_idx28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx28.i.i.i.i, align 8, !tbaa !389
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.032.058.i.i.i.i, %.sroa.9.057.i.i.i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc18.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %.noexc18.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %.noexc18.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !412, !alias.scope !667
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, %.sroa.9.057.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !671

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %.noexc18.i.i.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %.sroa.032.058.i.i.i.i, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.058.i.i.i.i, i64 noundef %i.du) #28
  %.pre.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !640
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i
  %.pre.i.i.i.i = phi ptr [ %.pre.pre.i.i.i.i, %bb.o ], [ %.pre71.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  %.pre70.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i13.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, %bb.l, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i
  %.pre72.i.i.i.i = phi ptr [ %.pre71.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.pre71.i.i.i.i, %bb.l ], [ %.pre.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre71.i.i.i.i, %.lr.ph.i.i.i.i13.i.i.i.i ]
  %i.ei = phi i32 [ %i.bo, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %i.bo, %bb.l ], [ %.pre70.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i13.i.i.i.i ] ; 2 uses
  %.sroa.14.1.i.i.i.i = phi ptr [ %.sroa.14.056.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.sroa.14.056.i.i.i.i, %bb.l ], [ %i.eh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.14.056.i.i.i.i, %.lr.ph.i.i.i.i13.i.i.i.i ] ; 7 uses
  %.sroa.9.1.i.i.i.i = phi ptr [ %.sroa.9.057.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %i.dr, %bb.l ], [ %i.eg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.9.057.i.i.i.i, %.lr.ph.i.i.i.i13.i.i.i.i ] ; 6 uses
  %.sroa.032.1.i.i.i.i = phi ptr [ %.sroa.032.058.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %bb.l ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %.lr.ph.i.i.i.i13.i.i.i.i ] ; 15 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.ej
  br i1 %i.ek, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !672

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i: ; preds = %.lr.ph49.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.el = phi ptr [ %i.n, %._crit_edge.thread.i.i.i.i ], [ %i.v, %._crit_edge.i.i.i.i ], [ %i.v, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i ], [ %i.v, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph49.i.i.i.i.i.i.i.i ]
  %i.em = phi ptr [ %i.m, %._crit_edge.thread.i.i.i.i ], [ %i.u, %._crit_edge.i.i.i.i ], [ %i.u, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i ], [ %i.u, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph49.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.en = phi ptr [ %i.l, %._crit_edge.thread.i.i.i.i ], [ %i.t, %._crit_edge.i.i.i.i ], [ %i.t, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i ], [ %i.t, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.t, %.lr.ph49.i.i.i.i.i.i.i.i ]
  %.sroa.032.0.lcssa92.i.i.i.i = phi ptr [ null, %._crit_edge.thread.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.14.0.lcssa90.i.i.i.i = phi ptr [ null, %._crit_edge.thread.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eo = load ptr, ptr %2, align 8, !tbaa !104
  %i.ep = load i64, ptr %i.el, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %i.ep, ptr %i.eo)
          to label %bb.p unwind label %.body19.i.i.i.i

.body19.i.i.i.i:                                  ; preds = %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.er = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.em
  br i1 %i.es, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i

bb.p:                                             ; preds = %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i
  %i.et = load i64, ptr %1, align 8, !tbaa !81    ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ev = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !88
  %i.ey = and i64 %i.ex, 65536
  %i.ez = icmp ne i64 %i.ey, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.et, ptr noundef %i.ev, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ez)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #27
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.fc = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.em
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.fe = load i64, ptr %i.em, align 8, !tbaa !30
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.032.0.lcssa92.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEvENKUlvE_clEv.exit.i.i.i", label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.fg = ptrtoint ptr %.sroa.14.0.lcssa90.i.i.i.i to i64
  %i.fh = ptrtoint ptr %.sroa.032.0.lcssa92.i.i.i.i to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0.lcssa92.i.i.i.i, i64 noundef %i.fi) #28
  br label %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEvENKUlvE_clEv.exit.i.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i: ; preds = %.body19.i.i.i.i
  %i.fj = load i64, ptr %i.em, align 8, !tbaa !30
  br label %.body.i.i.i.i.sink.split

.body.i.i.i.i.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i
  %.sink47 = phi i64 [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sink = phi ptr [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.032.0.lcssa93.i.i.i.i.ph = phi ptr [ %.sroa.032.0.lcssa92.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.14.0.lcssa91.i.i.i.i.ph = phi ptr [ %.sroa.14.0.lcssa90.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.ph = phi { ptr, i32 } [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.fk = add i64 %.sink47, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fk) #28
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.sink.split, %.body19.i.i.i.i, %bb.e
  %.sroa.032.0.lcssa93.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.e ], [ %.sroa.032.0.lcssa92.i.i.i.i, %.body19.i.i.i.i ], [ %.sroa.032.0.lcssa93.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  %.sroa.14.0.lcssa91.i.i.i.i = phi ptr [ %.sroa.14.1.i.i.i.i, %bb.e ], [ %.sroa.14.0.lcssa90.i.i.i.i, %.body19.i.i.i.i ], [ %.sroa.14.0.lcssa91.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %i.eq, %.body19.i.i.i.i ], [ %.pn.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.u

bb.u:                                             ; preds = %.body.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.14.054.i.i.i.i = phi ptr [ %.sroa.14.0.lcssa91.i.i.i.i, %.body.i.i.i.i ], [ %.sroa.9.057.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.9.057.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.sroa.032.048.i.i.i.i = phi ptr [ %.sroa.032.0.lcssa93.i.i.i.i, %.body.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 3 uses
  %.pn10.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.not.i.i.i24.i.i.i.i = icmp eq ptr %.sroa.032.048.i.i.i.i, null
  br i1 %.not.i.i.i24.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit25.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = ptrtoint ptr %.sroa.14.054.i.i.i.i to i64
  %i.fm = ptrtoint ptr %.sroa.032.048.i.i.i.i to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.048.i.i.i.i, i64 noundef %i.fn) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit25.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit25.i.i.i.i: ; preds = %bb.v, %bb.u
  resume { ptr, i32 } %.pn10.pn.i.i.i.i

"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEvENKUlvE_clEv.exit.i.i.i": ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  store i8 0, ptr %i.a, align 8, !tbaa !636
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit": ; preds = %bb.a, %"_ZZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEvENKUlvE_clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !603
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_5

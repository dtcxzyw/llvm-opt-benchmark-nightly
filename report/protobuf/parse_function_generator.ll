inline.NumInlined: 4794
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoD2Ev:bb.a

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, %bb.g
  ret void
}

declare void @_ZN6google8protobuf8compiler3cpp29SetCommonMessageDataVariablesEPKNS0_10DescriptorEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler3cpp24SetUnknownFieldsVariableEPKNS0_10DescriptorERKNS2_7OptionsEPN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.175, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !174
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %0, ptr %1, align 8, !tbaa !175
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.c = load i64, ptr %0, align 8, !tbaa !174
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noundef %i.e, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #33
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare i64 @_ZN6google8protobuf8compiler3cpp22GetPresenceProbabilityEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN6google8protobuf8compiler3cpp12GetLazyStyleEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp15IsStringInlinedEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp19IsImplicitWeakFieldEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp13IsMicroStringEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal17TailCallTableInfoC1EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef, ptr noundef nonnull align 1 dereferenceable(2), ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %12 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 7 uses
  %13 = alloca %"struct.google::protobuf::compiler::cpp::NumToEntryTable", align 8 ; 8 uses
  %14 = alloca [6 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 95 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cleanup") align 8 %12, ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  invoke fastcc void @_ZN6google8protobuf8compiler3cppL19MakeNumToEntryTableEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEE(ptr dead_on_unwind noalias writable align 8 %13, ptr %i.k, i64 %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.r, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.t, align 1, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.u, ptr %14, align 8, !tbaa !145
  %i.v = load i64, ptr %i.r, align 8
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.w, align 8, !tbaa !147
  store ptr %i.r, ptr %15, align 8, !tbaa !150
  store i64 0, ptr %i.s, align 8, !tbaa !147
  store i8 0, ptr %i.r, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.y = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc.i53 unwind label %.body.i.thread ; 4 uses

.noexc.i53:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %0, ptr %i.y, align 16, !noalias !179
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !179
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !tbaa !161, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPS4_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.z, align 8, !tbaa !182, !alias.scope !179
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.y, ptr %i.x, align 8, !alias.scope !179
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !149, !alias.scope !179
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPS4_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation", ptr %i.aa, align 8, !tbaa !185, !alias.scope !179
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i8 1, ptr %i.ab, align 8, !tbaa !186, !alias.scope !179
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 4 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %i.ae, align 8, !tbaa !147
  store i8 0, ptr %i.ad, align 8, !tbaa !149
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 104
  store i8 0, ptr %i.af, align 8, !tbaa !188
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.57, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc.i53
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !150 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ad
  br i1 %i.aj, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !149
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %.body.i

.body.i.thread:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.i:                                          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.x) #31
  %.pre = load ptr, ptr %14, align 8, !tbaa !150  ; 2 uses
  %i.an = icmp eq ptr %.pre, %i.u
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !149
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ap) #30
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59: ; preds = %.noexc.i53
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 176
  store i8 0, ptr %i.aq, align 8, !tbaa !196
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.as, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 31
  store i8 0, ptr %i.au, align 1, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 4 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %.pre194 = load i32, ptr %21, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 192
  store i64 15, ptr %i.ay, align 8, !tbaa !147
  store ptr %i.as, ptr %16, align 8, !tbaa !150
  store i64 0, ptr %i.at, align 8, !tbaa !147
  store i8 0, ptr %i.as, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.bb = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.pre194, ptr noundef nonnull %i.ba)
          to label %.noexc145 unwind label %bb.g

.noexc145:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  store i64 %i.be, ptr %11, align 8, !tbaa !142
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !198
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.bg, ptr %10, align 8, !tbaa !145, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !198
  store i64 %i.be, ptr %i.e, align 8, !tbaa !77, !noalias !198
  %i.bh = icmp ugt i64 %i.be, 15
  br i1 %i.bh, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc145
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc146 unwind label %bb.g  ; 2 uses

.noexc146:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.bi, ptr %10, align 8, !tbaa !150, !noalias !198
  %i.bj = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !198
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !149, !noalias !198
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc146, %.noexc145
  %i.bk = phi ptr [ %i.bi, %.noexc146 ], [ %i.bg, %.noexc145 ] ; 2 uses
  switch i64 %i.be, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bl = load i8, ptr %i.ba, align 8, !tbaa !149, !noalias !198
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !149, !noalias !198
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 8 %i.ba, i64 %i.be, i1 false), !noalias !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !198 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !147, !noalias !198
  %i.bo = load ptr, ptr %10, align 8, !tbaa !150, !noalias !198
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i8 0, ptr %i.bp, align 1, !tbaa !149, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31, !noalias !198
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 232 ; 3 uses
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !145, !alias.scope !198
  %i.br = load ptr, ptr %10, align 8, !tbaa !150, !noalias !198 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bg
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !147, !noalias !198 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bv, i1 false)
  br label %.noexc.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.br, ptr %i.az, align 8, !tbaa !150, !alias.scope !198
  %i.bw = load i64, ptr %i.bg, align 8, !tbaa !149, !noalias !198
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !149, !alias.scope !198
  %.pre.i.i = load i64, ptr %i.bn, align 8, !tbaa !147, !noalias !198
  br label %.noexc.i66

bb.g:                                             ; preds = %.noexc.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !150 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ax
  br i1 %i.bz, label %.body63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.g
  %i.ca = load i64, ptr %i.ax, align 8, !tbaa !149
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #30
  br label %.body63

.noexc.i66:                                       ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = phi i64 [ %i.bt, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 224
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !147, !alias.scope !198
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 248
  store i8 0, ptr %i.ce, align 8, !tbaa !186, !alias.scope !198
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 256
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 272 ; 2 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !145
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 264
  store i64 0, ptr %i.ch, align 8, !tbaa !147
  store i8 0, ptr %i.cg, align 8, !tbaa !149
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 288
  store i8 0, ptr %i.ci, align 8, !tbaa !188
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 360
  store i8 0, ptr %i.cj, align 8, !tbaa !196
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 368 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 11 uses
  store ptr %i.cl, ptr %17, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i64 17, ptr %i.g, align 8, !tbaa !77
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc67 unwind label %bb.al  ; 2 uses

.noexc67:                                         ; preds = %.noexc.i66
  store ptr %i.cm, ptr %17, align 8, !tbaa !150
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cm, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 17, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !147
  %i.cp = load ptr, ptr %17, align 8, !tbaa !150
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 384 ; 5 uses
  store ptr %i.cx, ptr %i.ck, align 8, !tbaa !145
  %i.cy = load ptr, ptr %17, align 8, !tbaa !150  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cl
  br i1 %i.cz, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

bb.h:                                             ; preds = %.noexc67
  %i.da = load i64, ptr %i.co, align 8, !tbaa !147 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %.noexc67
  store ptr %i.cy, ptr %i.ck, align 8, !tbaa !150
  %i.dd = load i64, ptr %i.cl, align 8, !tbaa !149
  store i64 %i.dd, ptr %i.cx, align 8, !tbaa !149
  %.pre195.a = load i64, ptr %i.co, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.h
  %i.de = phi i64 [ %.pre195.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.da, %bb.h ]
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 376
  store i64 %i.de, ptr %i.df, align 8, !tbaa !147
  store ptr %i.cl, ptr %17, align 8, !tbaa !150
  store i64 0, ptr %i.co, align 8, !tbaa !147
  store i8 0, ptr %i.cl, align 8, !tbaa !149
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.di = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.cw, ptr noundef nonnull %i.dh)
          to label %.noexc151 unwind label %bb.m

.noexc151:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i70
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 5 uses
  store i64 %i.dl, ptr %9, align 8, !tbaa !142
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.dh, ptr %i.dm, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !201
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dn, ptr %8, align 8, !tbaa !145, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !201
  store i64 %i.dl, ptr %i.d, align 8, !tbaa !77, !noalias !201
  %i.do = icmp ugt i64 %i.dl, 15
  br i1 %i.do, label %.noexc.i.i.i.i.i150, label %._crit_edge.i.i.i.i.i.i147

.noexc.i.i.i.i.i150:                              ; preds = %.noexc151
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc152 unwind label %bb.m  ; 2 uses

.noexc152:                                        ; preds = %.noexc.i.i.i.i.i150
  store ptr %i.dp, ptr %8, align 8, !tbaa !150, !noalias !201
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !201
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !149, !noalias !201
  br label %._crit_edge.i.i.i.i.i.i147

._crit_edge.i.i.i.i.i.i147:                       ; preds = %.noexc152, %.noexc151
  %i.dr = phi ptr [ %i.dp, %.noexc152 ], [ %i.dn, %.noexc151 ] ; 2 uses
  switch i64 %i.dl, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i147
  %i.ds = load i8, ptr %i.dh, align 8, !tbaa !149, !noalias !201
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !149, !noalias !201
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr nonnull align 8 %i.dh, i64 %i.dl, i1 false), !noalias !201
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i147
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !201 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !147, !noalias !201
  %i.dv = load ptr, ptr %8, align 8, !tbaa !150, !noalias !201
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !149, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !201
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 416 ; 3 uses
  store ptr %i.dx, ptr %i.dg, align 8, !tbaa !145, !alias.scope !201
  %i.dy = load ptr, ptr %8, align 8, !tbaa !150, !noalias !201 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dn
  br i1 %i.dz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i148

bb.l:                                             ; preds = %bb.k
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !147, !noalias !201 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.ec, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i148: ; preds = %bb.k
  store ptr %i.dy, ptr %i.dg, align 8, !tbaa !150, !alias.scope !201
  %i.ed = load i64, ptr %i.dn, align 8, !tbaa !149, !noalias !201
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !149, !alias.scope !201
  %.pre.i.i149 = load i64, ptr %i.du, align 8, !tbaa !147, !noalias !201
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i81

bb.m:                                             ; preds = %.noexc.i.i.i.i.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i70
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %i.ck, align 8, !tbaa !150 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cx
  br i1 %i.eg, label %.body74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.m
  %i.eh = load i64, ptr %i.cx, align 8, !tbaa !149
  br label %.body74.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i81: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i148
  %i.ei = phi i64 [ %i.ea, %bb.l ], [ %.pre.i.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i148 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 408
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !147, !alias.scope !201
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 432
  store i8 0, ptr %i.ek, align 8, !tbaa !186, !alias.scope !201
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 440
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 456 ; 2 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !145
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 448
  store i64 0, ptr %i.en, align 8, !tbaa !147
  store i8 0, ptr %i.em, align 8, !tbaa !149
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 472
  store i8 0, ptr %i.eo, align 8, !tbaa !188
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 544
  store i8 0, ptr %i.ep, align 8, !tbaa !196
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 552 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.er, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 29
  store i8 0, ptr %i.et, align 1, !tbaa !149
  %i.eu = load ptr, ptr %i.av, align 8, !tbaa !132 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !204
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !171
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 568 ; 4 uses
  store ptr %i.fd, ptr %i.eq, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.fd, ptr noundef nonnull align 8 dereferenceable(14) %i.er, i64 14, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 560
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator23GenerateDataDefinitionsEPNS0_2io7PrinterE:bb.a
bb.a:
  tail call void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 7 uses
  %14 = alloca %"struct.google::protobuf::compiler::cpp::NumToEntryTable", align 8 ; 10 uses
  %15 = alloca %class.anon.118, align 8           ; 6 uses
  %16 = alloca [11 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 170 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cleanup") align 8 %13, ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  invoke fastcc void @_ZN6google8protobuf8compiler3cppL19MakeNumToEntryTableEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEE(ptr dead_on_unwind noalias writable align 8 %14, ptr %i.m, i64 %i.s)
          to label %._crit_edge.i.i unwind label %bb.aw

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  store ptr %0, ptr %15, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.j, ptr %i.t, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 11 uses
  store ptr %i.u, ptr %17, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 5, ptr %i.v, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 21
  store i8 0, ptr %i.w, align 1, !tbaa !149
  %i.x = load ptr, ptr %0, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72, !nonnull !73, !align !74
  %i.ac = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp21IsFileDescriptorProtoEPKNS0_14FileDescriptorERKNS2_7OptionsE(ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(217) %i.ab)
          to label %bb.b unwind label %bb.ax      ; 3 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ad = select i1 %i.ac, ptr @.str.11, ptr @.str.12
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.ae, ptr %16, align 8, !tbaa !145
  %i.af = load ptr, ptr %17, align 8, !tbaa !150  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !147 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.aj, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.af, ptr %16, align 8, !tbaa !150
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !149
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !149
  %.pre = load i64, ptr %i.v, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = phi i64 [ %i.ah, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !147
  store ptr %i.u, ptr %17, align 8, !tbaa !150
  store i64 0, ptr %i.v, align 8, !tbaa !147
  store i8 0, ptr %i.u, align 8, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ao, ptr %12, align 8, !tbaa !145
  %i.ap = select i1 %i.ac, i64 9, i64 58          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !77
  br i1 %i.ac, label %._crit_edge.i.i.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc308 unwind label %bb.f  ; 2 uses

.noexc308:                                        ; preds = %.noexc.i.i
  store ptr %i.aq, ptr %12, align 8, !tbaa !150
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !77
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !149
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %.noexc308
  %i.as = phi ptr [ %i.aq, %.noexc308 ], [ %i.ao, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.as, ptr noundef nonnull align 1 dereferenceable(9) %i.ad, i64 %i.ap, i1 false)
  %i.at = load i64, ptr %i.f, align 8, !tbaa !77  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !147
  %i.av = load ptr, ptr %12, align 8, !tbaa !150
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !145, !alias.scope !268
  %i.ay = load ptr, ptr %12, align 8, !tbaa !150, !noalias !268 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ao
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !147, !noalias !268 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !150, !alias.scope !268
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !149, !noalias !268
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !149, !alias.scope !268
  %.pre.i.i = load i64, ptr %i.au, align 8, !tbaa !147, !noalias !268
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i102

bb.f:                                             ; preds = %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %16, align 8, !tbaa !150  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ae
  br i1 %i.bg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bh = load i64, ptr %i.ae, align 8, !tbaa !149
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i102: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi i64 [ %i.ba, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !147, !alias.scope !268
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i8 0, ptr %i.bl, align 8, !tbaa !186, !alias.scope !268
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i64 0, ptr %i.bo, align 8, !tbaa !147
  store i8 0, ptr %i.bn, align 8, !tbaa !149
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 104
  store i8 0, ptr %i.bp, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 176
  store i8 0, ptr %i.bq, align 8, !tbaa !196
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bs, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 31
  store i8 0, ptr %i.bu, align 1, !tbaa !149
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 4 uses
  store ptr %i.bx, ptr %i.br, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %.pre374 = load i32, ptr %28, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 192
  store i64 15, ptr %i.by, align 8, !tbaa !147
  store ptr %i.bs, ptr %18, align 8, !tbaa !150
  store i64 0, ptr %i.bt, align 8, !tbaa !147
  store i8 0, ptr %i.bs, align 8, !tbaa !149
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.cb = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.pre374, ptr noundef nonnull %i.ca)
          to label %.noexc311 unwind label %bb.k

.noexc311:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i102
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  store i64 %i.ce, ptr %11, align 8, !tbaa !142
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !271
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cg, ptr %10, align 8, !tbaa !145, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !271
  store i64 %i.ce, ptr %i.e, align 8, !tbaa !77, !noalias !271
  %i.ch = icmp ugt i64 %i.ce, 15
  br i1 %i.ch, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc311
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc312 unwind label %bb.k  ; 2 uses

.noexc312:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.ci, ptr %10, align 8, !tbaa !150, !noalias !271
  %i.cj = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !271
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !149, !noalias !271
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc312, %.noexc311
  %i.ck = phi ptr [ %i.ci, %.noexc312 ], [ %i.cg, %.noexc311 ] ; 2 uses
  switch i64 %i.ce, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cl = load i8, ptr %i.ca, align 8, !tbaa !149, !noalias !271
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !149, !noalias !271
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 8 %i.ca, i64 %i.ce, i1 false), !noalias !271
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !271 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !147, !noalias !271
  %i.co = load ptr, ptr %10, align 8, !tbaa !150, !noalias !271
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1, !tbaa !149, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31, !noalias !271
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 3 uses
  store ptr %i.cq, ptr %i.bz, align 8, !tbaa !145, !alias.scope !271
  %i.cr = load ptr, ptr %10, align 8, !tbaa !150, !noalias !271 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cg
  br i1 %i.cs, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i309

bb.j:                                             ; preds = %bb.i
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !147, !noalias !271 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i309: ; preds = %bb.i
  store ptr %i.cr, ptr %i.bz, align 8, !tbaa !150, !alias.scope !271
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !149, !noalias !271
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !149, !alias.scope !271
  %.pre.i.i310 = load i64, ptr %i.cn, align 8, !tbaa !147, !noalias !271
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113

bb.k:                                             ; preds = %.noexc.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i102
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %i.br, align 8, !tbaa !150 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bx
  br i1 %i.cz, label %.body106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103: ; preds = %bb.k
  %i.da = load i64, ptr %i.bx, align 8, !tbaa !149
  br label %.body106.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %i.db = phi i64 [ %i.ct, %bb.j ], [ %.pre.i.i310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i309 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 224
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !147, !alias.scope !271
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 248
  store i8 0, ptr %i.dd, align 8, !tbaa !186, !alias.scope !271
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 256
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 272 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !145
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 264
  store i64 0, ptr %i.dg, align 8, !tbaa !147
  store i8 0, ptr %i.df, align 8, !tbaa !149
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 288
  store i8 0, ptr %i.dh, align 8, !tbaa !188
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 360
  store i8 0, ptr %i.di, align 8, !tbaa !196
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 368 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dk, ptr noundef nonnull align 1 dereferenceable(12) @.str.13, i64 12, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i8 0, ptr %i.dm, align 4, !tbaa !149
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 384 ; 4 uses
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dt, ptr noundef nonnull align 8 dereferenceable(13) %i.dk, i64 13, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 376
  store i64 12, ptr %i.du, align 8, !tbaa !147
  store ptr %i.dk, ptr %19, align 8, !tbaa !150
  store i64 0, ptr %i.dl, align 8, !tbaa !147
  store i8 0, ptr %i.dk, align 8, !tbaa !149
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.dx = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.ds, ptr noundef nonnull %i.dw)
          to label %.noexc317 unwind label %bb.p

.noexc317:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 5 uses
  store i64 %i.ea, ptr %9, align 8, !tbaa !142
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.dw, ptr %i.eb, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !274
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ec, ptr %8, align 8, !tbaa !145, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !274
  store i64 %i.ea, ptr %i.d, align 8, !tbaa !77, !noalias !274
  %i.ed = icmp ugt i64 %i.ea, 15
  br i1 %i.ed, label %.noexc.i.i.i.i.i316, label %._crit_edge.i.i.i.i.i.i313

.noexc.i.i.i.i.i316:                              ; preds = %.noexc317
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc318 unwind label %bb.p  ; 2 uses

.noexc318:                                        ; preds = %.noexc.i.i.i.i.i316
  store ptr %i.ee, ptr %8, align 8, !tbaa !150, !noalias !274
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !274
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !149, !noalias !274
  br label %._crit_edge.i.i.i.i.i.i313

._crit_edge.i.i.i.i.i.i313:                       ; preds = %.noexc318, %.noexc317
  %i.eg = phi ptr [ %i.ee, %.noexc318 ], [ %i.ec, %.noexc317 ] ; 2 uses
  switch i64 %i.ea, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i313
  %i.eh = load i8, ptr %i.dw, align 8, !tbaa !149, !noalias !274
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !149, !noalias !274
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i313
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr nonnull align 8 %i.dw, i64 %i.ea, i1 false), !noalias !274
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i313
  %i.ei = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !274 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !147, !noalias !274
  %i.ek = load ptr, ptr %8, align 8, !tbaa !150, !noalias !274
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !149, !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !274
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 416 ; 3 uses
  store ptr %i.em, ptr %i.dv, align 8, !tbaa !145, !alias.scope !274
  %i.en = load ptr, ptr %8, align 8, !tbaa !150, !noalias !274 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ec
  br i1 %i.eo, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i314

bb.o:                                             ; preds = %bb.n
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !147, !noalias !274 ; 3 uses
  %i.eq = icmp ult i64 %i.ep, 16
  call void @llvm.assume(i1 %i.eq)
  %i.er = add nuw nsw i64 %i.ep, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.ec, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i314: ; preds = %bb.n
  store ptr %i.en, ptr %i.dv, align 8, !tbaa !150, !alias.scope !274
  %i.es = load i64, ptr %i.ec, align 8, !tbaa !149, !noalias !274
  store i64 %i.es, ptr %i.em, align 8, !tbaa !149, !alias.scope !274
  %.pre.i.i315 = load i64, ptr %i.ej, align 8, !tbaa !147, !noalias !274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124

bb.p:                                             ; preds = %.noexc.i.i.i.i.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i113
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %i.dj, align 8, !tbaa !150 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dt
  br i1 %i.ev, label %.body117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.p
  %i.ew = load i64, ptr %i.dt, align 8, !tbaa !149
  br label %.body117.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i314
  %i.ex = phi i64 [ %i.ep, %bb.o ], [ %.pre.i.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i314 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 408
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !147, !alias.scope !274
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 432
  store i8 0, ptr %i.ez, align 8, !tbaa !186, !alias.scope !274
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 440
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 456 ; 2 uses
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !145
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 448
  store i64 0, ptr %i.fc, align 8, !tbaa !147
  store i8 0, ptr %i.fb, align 8, !tbaa !149
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 472
  store i8 0, ptr %i.fd, align 8, !tbaa !188
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 544
  store i8 0, ptr %i.fe, align 8, !tbaa !196
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 552 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store i64 7312272889233306977, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i8 0, ptr %i.fi, align 8, !tbaa !149
  %i.fj = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !204
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !171
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 568 ; 4 uses
  store ptr %i.fs, ptr %i.ff, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.fs, ptr noundef nonnull align 8 dereferenceable(9) %i.fg, i64 9, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 560
  store i64 8, ptr %i.ft, align 8, !tbaa !147
  store ptr %i.fg, ptr %20, align 8, !tbaa !150
  store i64 0, ptr %i.fh, align 8, !tbaa !147
  store i8 0, ptr %i.fg, align 8, !tbaa !149
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 584 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.fw = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.fr, ptr noundef nonnull %i.fv)
          to label %.noexc323 unwind label %bb.u

.noexc323:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 5 uses
  store i64 %i.fz, ptr %7, align 8, !tbaa !142
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.fv, ptr %i.ga, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !277
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.gb, ptr %6, align 8, !tbaa !145, !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31, !noalias !277
  store i64 %i.fz, ptr %i.c, align 8, !tbaa !77, !noalias !277
  %i.gc = icmp ugt i64 %i.fz, 15
  br i1 %i.gc, label %.noexc.i.i.i.i.i322, label %._crit_edge.i.i.i.i.i.i319

.noexc.i.i.i.i.i322:                              ; preds = %.noexc323
  %i.gd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc324 unwind label %bb.u  ; 2 uses

.noexc324:                                        ; preds = %.noexc.i.i.i.i.i322
  store ptr %i.gd, ptr %6, align 8, !tbaa !150, !noalias !277
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !77, !noalias !277
  store i64 %i.ge, ptr %i.gb, align 8, !tbaa !149, !noalias !277
  br label %._crit_edge.i.i.i.i.i.i319
end_hunk_1

inline.NumInlined: 1987
inline.NumDeleted: 980
begin_hunk_0_@_ZN6google8protobuf2io7Printer8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_:bb.a
  br label %_ZN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEC2ERKSH_.exit

common.resume:                                    ; preds = %bb.h, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %.body.i.i.i ], [ %eh.lpad-body, %bb.h ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_:bb.a

_ZN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEC2ERKSH_.exit: ; preds = %bb.a, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !125 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEC2ERKSH_.exit
  %6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc unwind label %7        ; 2 uses

7:                                                ; preds = %bb.d
  %8 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %9 = load ptr, ptr %6, align 8, !tbaa !128      ; 2 uses
  %.not.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i.i, label %bb.h, label %10

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %bb.h unwind label %12         ; 0 uses

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #29
  unreachable

.noexc:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEC2EOSJ_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  store ptr %i.i, ptr %i.f, align 8, !tbaa !242
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEvvEEDaOT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.j, align 8, !tbaa !192
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7Printer8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_:bb.a

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEC2ERKSH_.exit
  invoke void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEvvEEDaOT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12emplace_backIJZNS5_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEvvEEDaOT_EUlSC_E_EEERSE_DpOT_.exit unwind label %15

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12emplace_backIJZNS5_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEvvEEDaOT_EUlSC_E_EEERSE_DpOT_.exit: ; preds = %bb.e, %.noexc
  %i.m = load i64, ptr %5, align 8, !tbaa !100
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7Printer8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_:bb.a
  store i8 1, ptr %0, align 8, !tbaa !121, !alias.scope !312
  ret void

15:                                               ; preds = %bb.e
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %7, %10, %15
  %eh.lpad-body = phi { ptr, i32 } [ %16, %15 ], [ %8, %10 ], [ %8, %7 ]
  call void @_ZZN6google8protobuf2io7Printer8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_ENUlSA_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEvvEEDaOT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %bb.d unwind label %4          ; 2 uses

4:                                                ; preds = %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_M_allocateEm.exit
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = load ptr, ptr %i.r, align 8, !tbaa !128    ; 2 uses
  %.not.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i, label %bb.g, label %7

7:                                                ; preds = %4
  %8 = invoke noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.g unwind label %9          ; 0 uses

9:                                                ; preds = %7
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_M_allocateEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEC2EOSJ_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  store ptr %i.s, ptr %3, align 8, !tbaa !242
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEvvEEDaOT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.t, align 8, !tbaa !192
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEvvEEDaOT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation, ptr %i.r, align 8, !tbaa !128
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIRKN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEvvEEDaOT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %4, %7
  %i.ar = extractvalue { ptr, i32 } %5, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #28 ; 0 uses
  %i.at = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.at) #27
end_hunk_5

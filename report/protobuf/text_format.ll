inline.NumInlined: 5150
inline.NumDeleted: 1900
begin_hunk_0_@_ZN6google8protobuf10TextFormat7PrinterD2Ev:bb.a
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %i.w, 2
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53
  %.not.i.i.i2 = icmp ult i64 %i.aa, 131072
  br i1 %.not.i.i.i2, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i3, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #37, !inline_history !60
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.v, ptr %1, align 8, !tbaa !61
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 16, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS7_10TextFormat21FastFieldValuePrinterESt14default_deleteISE_EEEENS3_6HashEqISA_vE4HashENSK_2EqESaISt4pairIKSA_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSU_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i1 unwind label %bb.i

.noexc.i1:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !52  ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.am = and i64 %i.al, 65536
  %i.an = icmp ne i64 %i.am, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ag, ptr noundef %i.aj, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.an)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i1, %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #39
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #37, !inline_history !64
  br label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 6)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 12)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message16ShortDebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 13)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message15Utf8DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 14)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message16PrintDebugStringEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef 12)
  %i.a = load ptr, ptr %1, align 8, !tbaa !49
  %i.b = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.a) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !50
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11ShortFormatB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Utf8FormatB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 8)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat13ParseInfoTree14RecordLocationEPKNS0_15FieldDescriptorENS1_18ParseLocationRangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.313", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.313") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !73, !range !76, !alias.scope !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !77 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !77
  store ptr %i.e, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit: ; preds = %bb.a, %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  store i64 %2, ptr %i.i, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 4
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.h, align 8, !tbaa !86
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !88   ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 4                   ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q ; 2 uses
  store i64 %2, ptr %i.x, align 4
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx2, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !89, !alias.scope !90
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #40
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !88
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf10TextFormat13ParseInfoTree12CreateNestedEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.327", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.327") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !76, !alias.scope !105, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !105 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !105
  store ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.i = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i2.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.l, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !113
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !117  ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store ptr %i.i, ptr %i.z, align 8, !tbaa !115
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = add i64 %i.q, -8
  %i.ab = sub i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ae = add i64 %i.q, -8
  %i.af = sub i64 %i.ae, %i.r
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ah
  %scevgep7 = getelementptr i8, ptr %i.p, i64 %i.ah
  %bound0 = icmp ult ptr %i.y, %scevgep7
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.p, i64 %i.al ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.am = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %wide.load9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  store <2 x i64> %wide.load9, ptr %i.an, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !118, !noalias !121
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #40
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !117
  store ptr %i.at, ptr %i.k, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.au, ptr %i.m, align 8, !tbaa !114
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.av = phi ptr [ %i.l, %bb.d ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !115
  ret ptr %i.aw
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf15CheckFieldIndexEPKNS0_15FieldDescriptorEi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define { i64, i64 } @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetLocationRangeEPKNS0_15FieldDescriptorEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !65
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53, !noalias !132
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.w, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.a    ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !50 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.aq, %bb.g ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.a                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add i16 %.sroa.017.046.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i, !prof !136

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !137

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ao, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.al, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit
  %i.ax = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.ay = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.ay, i32 0, i32 %2
  %i.az = sext i32 %spec.store.select to i64      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !86
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !88 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %.not = icmp sgt i64 %i.bh, %i.az
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.az ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.bi, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, %bb.j
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload, %bb.j ], [ -1, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit ], [ -1, %bb.i ]
  %.sroa.07.0 = phi i64 [ %.sroa.07.0.copyload, %bb.j ], [ -1, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit ], [ -1, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetTreeForNestedEPKNS0_15FieldDescriptorEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !65
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE:bb.a
bb.bb:                                            ; preds = %bb.az
  %i.gb = tail call noundef i32 @_ZNK6google8protobuf10Reflection12GetEnumValueERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gc = phi i32 [ %i.ga, %bb.ba ], [ %i.gb, %bb.bb ] ; 4 uses
  %i.gd = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.ge = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %i.gd, i32 noundef %i.gc) ; 2 uses
  %.not = icmp eq ptr %i.ge, null
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !521
  %i.gh = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 88
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef %5)
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.gl = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.gc, ptr noundef nonnull %i.gk)
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  store i64 %i.go, ptr %11, align 8, !tbaa !237
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.gk, ptr %i.gp, align 8, !tbaa !239
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.gq = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 88
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %5)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gt = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bf
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !50
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.bg
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !50
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bm

bb.bh:                                            ; preds = %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = and i8 %i.hf, 32
  %.not159 = icmp eq i8 %i.hg, 0
  br i1 %.not159, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.hi = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef null)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hj = phi ptr [ %i.hh, %bb.bi ], [ %i.hi, %bb.bj ]
  tail call void @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef %5)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.h, %bb.l, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.bd, %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit
  ret void

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  resume { ptr, i32 } %.pn131.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.google::protobuf::internal::MapEntries") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.117", align 16  ; 16 uses
  %5 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 8 uses
  %6 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = invoke noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase20IsRepeatedFieldValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection19GetRawRepeatedFieldERKNS0_7MessageEPKNS0_15FieldDescriptorENS0_8internal19FieldDescriptorLite7CppTypeEiPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef 10, i32 noundef -1, ptr noundef null)
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !526  ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not161 = icmp eq i32 %i.e, 0
  br i1 %.not161, label %.loopexit, label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38
          to label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit unwind label %bb.h ; 5 uses

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !526 ; 2 uses
  %i.k = icmp sgt i32 %.pre, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.av, %.loopexit, %bb.a
  %.sroa.29.1 = phi ptr [ %.sroa.29.8, %bb.av ], [ %.sroa.29.8, %.loopexit ], [ null, %bb.a ]
  %.sroa.0114.1 = phi ptr [ %.sroa.0114.8, %bb.av ], [ %.sroa.0114.8, %.loopexit ], [ null, %bb.a ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i, %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.thread147

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  %i.n = phi i32 [ %i.aj, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %.pre, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ 0, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 2 uses
  %.sroa.0114.0229 = phi ptr [ %.sroa.0114.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 7 uses
  %.sroa.17.0228 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 6 uses
  %.sroa.29.0227 = phi ptr [ %.sroa.29.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.j, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !529
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = add i64 %i.p, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %.0.i.i.i = select i1 %i.r, ptr %i.c, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i.i, align 8, !tbaa !185 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.0228, %.sroa.29.0227
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store ptr %i.w, ptr %.sroa.17.0228, align 8, !tbaa !506
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %.sroa.17.0228 to i64
  %i.y = ptrtoint ptr %.sroa.0114.0229 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ab = ashr exact i64 %i.z, 3                  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38
          to label %.noexc55 unwind label %.loopexit163 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.z ; 2 uses
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !506
  %i.ah = icmp sgt i64 %i.z, 0
  br i1 %i.ah, label %bb.l, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %.sroa.0114.0229, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.l, %.noexc55
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0114.0229, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0229, i64 noundef %i.z) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  %.pre276 = load i32, ptr %i.d, align 8, !tbaa !526
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.i
  %i.aj = phi i32 [ %.pre276, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.n, %bb.i ] ; 2 uses
  %.sroa.29.11 = phi ptr [ %i.ai, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.29.0227, %bb.i ] ; 2 uses
  %.pn162 = phi ptr [ %i.ag, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.17.0228, %bb.i ]
  %.sroa.0114.11 = phi ptr [ %i.af, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0114.0229, %bb.i ] ; 2 uses
  %.sroa.17.4 = getelementptr inbounds nuw i8, ptr %.pn162, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !530

.loopexit163:                                     ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.n:                                             ; preds = %bb.b
  %i.am = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.o unwind label %bb.ac      ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.an = invoke noundef ptr @_ZNK6google8protobuf10Reflection17GetMessageFactoryEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.p unwind label %bb.ad      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.am)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.as = invoke noundef i32 @_ZNK6google8protobuf10Reflection7MapSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.r unwind label %bb.ad      ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc60 unwind label %bb.ad

.noexc60:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62, label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56: ; preds = %bb.t
  %i.av = shl nuw nsw i64 %i.at, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #38
          to label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 unwind label %bb.ad ; 2 uses

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.at
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59, %bb.t
  %.sroa.29.12 = phi ptr [ %i.ax, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 ], [ null, %bb.t ] ; 5 uses
  %.sroa.17.5 = phi ptr [ %i.aw, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 ], [ null, %bb.t ] ; 6 uses
  %i.ay = invoke noundef i32 @_ZNK6google8protobuf10Reflection7MapSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.u unwind label %bb.ad      ; 2 uses

bb.u:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62
  %i.az = sext i32 %i.ay to i64                   ; 3 uses
  %i.ba = icmp slt i32 %i.ay, 0
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc65 unwind label %bb.ad

.noexc65:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !516
  %i.bd = load ptr, ptr %4, align 16, !tbaa !510  ; 10 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 4 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = icmp ult i64 %i.bh, %i.az
  br i1 %i.bi, label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !513 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bm = sub i64 %i.bl, %i.bf
  %i.bn = shl nuw nsw i64 %i.az, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #38
          to label %.noexc66 unwind label %bb.ad  ; 9 uses

.noexc66:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bd, %i.bk
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc66
  %i.bp = add i64 %i.bl, -8
  %i.bq = sub i64 %i.bp, %i.bf                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader447, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bt = add i64 %i.bl, -8
  %i.bu = sub i64 %i.bt, %i.bf
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bw
  %scevgep376.a = getelementptr i8, ptr %i.bd, i64 %i.bw
  %bound0 = icmp ult ptr %i.bo, %scevgep376.a
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader447, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bo, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.bd, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ca ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.bd, i64 %i.ca ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.cb = getelementptr i8, ptr %next.gep377, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep377, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %wide.load378 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !506, !alias.scope !539, !noalias !536
  store <2 x i64> %wide.load378, ptr %i.cc, align 8, !tbaa !506, !alias.scope !539, !noalias !536
  %i.cd = getelementptr i8, ptr %next.gep377, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep377, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.preheader447

.lr.ph.i.i.i.i.preheader447:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader447, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader447 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader447 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.cf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !506, !alias.scope !534, !noalias !531
  store i64 %i.cf, ptr %.012.i.i.i.i, align 8, !tbaa !506, !alias.scope !531, !noalias !534
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !506, !alias.scope !534, !noalias !531
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i63 = icmp eq ptr %i.cg, %i.bk
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !542

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc66
  %.not.i8.i64 = icmp eq ptr %i.bd, null
  br i1 %.not.i8.i64, label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #40
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  store ptr %i.bo, ptr %4, align 16, !tbaa !510
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store ptr %i.ci, ptr %i.bj, align 8, !tbaa !513
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.az
  store ptr %i.cj, ptr %i.bb, align 16, !tbaa !516
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK6google8protobuf10Reflection13ConstMapBeginEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %.preheader unwind label %.loopexit.split-lp175

.preheader:                                       ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit
  %.sroa.29.2 = phi ptr [ %.sroa.29.13, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.29.12, %.preheader ] ; 7 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.6, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.5, %.preheader ] ; 4 uses
  %.sroa.0114.2 = phi ptr [ %.sroa.0114.13, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.5, %.preheader ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNK6google8protobuf10Reflection11ConstMapEndEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.co = invoke noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %i.co, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit

bb.ac:                                            ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.thread147

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, %bb.v, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56, %bb.s, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62, %bb.q, %bb.p, %bb.o
  %.sroa.29.3 = phi ptr [ null, %bb.s ], [ %.sroa.29.12, %bb.v ], [ %.sroa.29.12, %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i ], [ %.sroa.29.12, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62 ], [ null, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56 ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ]
  %.sroa.0114.3 = phi ptr [ null, %bb.s ], [ %.sroa.17.5, %bb.v ], [ %.sroa.17.5, %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i ], [ %.sroa.17.5, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62 ], [ null, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56 ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit174:                                     ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

.loopexit.split-lp175:                            ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.af:                                            ; preds = %bb.aa
  %i.cs = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef null)
          to label %bb.ag unwind label %bb.as     ; 10 uses

bb.ag:                                            ; preds = %bb.af
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !486
  invoke void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7CopyKeyERKNS0_6MapKeyEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, ptr noundef %i.cs, ptr noundef %i.ct)
          to label %bb.ah unwind label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !486
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  invoke void @_ZN6google8protobuf8internal21MapFieldPrinterHelper9CopyValueERKNS0_16MapValueConstRefEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(12) %i.cm, ptr noundef %i.cs, ptr noundef nonnull %i.cv)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i69 = icmp eq ptr %.sroa.17.1, %.sroa.29.2
  br i1 %.not.i.i69, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cs, ptr %.sroa.17.1, align 8, !tbaa !506
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78

bb.ak:                                            ; preds = %bb.ai
  %i.cw = ptrtoint ptr %.sroa.29.2 to i64
  %i.cx = ptrtoint ptr %.sroa.0114.2 to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.al, label %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc76 unwind label %.loopexit.split-lp165

.noexc76:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70: ; preds = %bb.ak
  %i.da = ashr exact i64 %i.cy, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i71, %i.da ; 2 uses
  %i.dc = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i72 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i72)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #38
          to label %.noexc77 unwind label %.loopexit164 ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cy ; 2 uses
  store ptr %i.cs, ptr %i.df, align 8, !tbaa !506
  %i.dg = icmp sgt i64 %i.cy, 0
  br i1 %i.dg, label %bb.am, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73

bb.am:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %.sroa.0114.2, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73: ; preds = %bb.am, %.noexc77
  %.not.i17.i.i.i74 = icmp eq ptr %.sroa.0114.2, null
  br i1 %.not.i17.i.i.i74, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.2, i64 noundef %i.cy) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75: ; preds = %bb.an, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75, %bb.aj
  %.sroa.29.13 = phi ptr [ %i.dh, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.29.2, %bb.aj ] ; 3 uses
  %.pn = phi ptr [ %i.df, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.17.1, %bb.aj ]
  %.sroa.0114.13 = phi ptr [ %i.de, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.0114.2, %bb.aj ] ; 3 uses
  %.sroa.17.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !513 ; 6 uses
  %i.dj = load ptr, ptr %i.bb, align 16, !tbaa !516
  %.not.i.i79 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78
  %i.dk = ptrtoint ptr %i.cs to i64
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !506
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dl, ptr %i.cn, align 8, !tbaa !513
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

bb.ap:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78
  %i.dm = load ptr, ptr %4, align 16, !tbaa !510  ; 10 uses
  %i.dn = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.aq, label %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc100 unwind label %.loopexit.split-lp170

.noexc100:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ap
  %i.dr = ashr exact i64 %i.dp, 3                 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i, %i.dr ; 2 uses
  %i.dt = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975) ; 2 uses
  %.not.i.i92 = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i92)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #38
          to label %.noexc101 unwind label %.loopexit169 ; 10 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dp
  %i.dx = ptrtoint ptr %i.cs to i64
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !506
  %.not10.i.i.i.i93 = icmp eq ptr %i.dm, %i.di
  br i1 %.not10.i.i.i.i93, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94.preheader

.lr.ph.i.i.i.i94.preheader:                       ; preds = %.noexc101
  %i.dy = add i64 %i.dn, -8
  %i.dz = sub i64 %i.dy, %i.do                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check389 = icmp ult i64 %i.dz, 56
  br i1 %min.iters.check389, label %.lr.ph.i.i.i.i94.preheader408, label %vector.memcheck380

vector.memcheck380:                               ; preds = %.lr.ph.i.i.i.i94.preheader
  %scevgep381 = getelementptr i8, ptr %i.dv, i64 8
  %i.ec = add i64 %i.dn, -8
  %i.ed = sub i64 %i.ec, %i.do
  %i.ee = and i64 %i.ed, -8                       ; 2 uses
  %scevgep382 = getelementptr i8, ptr %scevgep381, i64 %i.ee
  %scevgep383 = getelementptr i8, ptr %i.dm, i64 8
  %scevgep384 = getelementptr i8, ptr %scevgep383, i64 %i.ee
  %bound0385 = icmp ult ptr %i.dv, %scevgep384
  %bound1386 = icmp ult ptr %i.dm, %scevgep382
  %found.conflict387 = and i1 %bound0385, %bound1386
  br i1 %found.conflict387, label %.lr.ph.i.i.i.i94.preheader408, label %vector.ph390

vector.ph390:                                     ; preds = %vector.memcheck380
  %n.vec392 = and i64 %i.eb, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec392, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dv, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ef
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph390
  %index394 = phi i64 [ 0, %vector.ph390 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %i.ei = shl i64 %index394, 3                    ; 2 uses
  %next.gep395 = getelementptr i8, ptr %i.dv, i64 %i.ei ; 2 uses
  %next.gep396 = getelementptr i8, ptr %i.dm, i64 %i.ei ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ej = getelementptr i8, ptr %next.gep396, i64 16
  %wide.load397 = load <2 x i64>, ptr %next.gep396, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %wide.load398 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %i.ek = getelementptr i8, ptr %next.gep395, i64 16
  store <2 x i64> %wide.load397, ptr %next.gep395, align 8, !tbaa !506, !alias.scope !551, !noalias !548
  store <2 x i64> %wide.load398, ptr %i.ek, align 8, !tbaa !506, !alias.scope !551, !noalias !548
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep396, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  store <2 x ptr> splat (ptr null), ptr %i.el, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %index.next399 = add nuw i64 %index394, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.em, label %middle.block400, label %vector.body393, !llvm.loop !553

middle.block400:                                  ; preds = %vector.body393
  %cmp.n401 = icmp eq i64 %i.eb, %n.vec392
  br i1 %cmp.n401, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94.preheader408

.lr.ph.i.i.i.i94.preheader408:                    ; preds = %vector.memcheck380, %.lr.ph.i.i.i.i94.preheader, %middle.block400
  %.012.i.i.i.i95.ph = phi ptr [ %i.dv, %vector.memcheck380 ], [ %i.dv, %.lr.ph.i.i.i.i94.preheader ], [ %i.eg, %middle.block400 ]
  %.0911.i.i.i.i96.ph = phi ptr [ %i.dm, %vector.memcheck380 ], [ %i.dm, %.lr.ph.i.i.i.i94.preheader ], [ %i.eh, %middle.block400 ]
  br label %.lr.ph.i.i.i.i94

.lr.ph.i.i.i.i94:                                 ; preds = %.lr.ph.i.i.i.i94.preheader408, %.lr.ph.i.i.i.i94
  %.012.i.i.i.i95 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i94 ], [ %.012.i.i.i.i95.ph, %.lr.ph.i.i.i.i94.preheader408 ] ; 2 uses
  %.0911.i.i.i.i96 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i94 ], [ %.0911.i.i.i.i96.ph, %.lr.ph.i.i.i.i94.preheader408 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.en = load i64, ptr %.0911.i.i.i.i96, align 8, !tbaa !506, !alias.scope !546, !noalias !543
  store i64 %i.en, ptr %.012.i.i.i.i95, align 8, !tbaa !506, !alias.scope !543, !noalias !546
  store ptr null, ptr %.0911.i.i.i.i96, align 8, !tbaa !506, !alias.scope !546, !noalias !543
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i96, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i95, i64 8 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.eo, %i.di
  br i1 %.not.i.i.i.i97, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94, !llvm.loop !554

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i94, %middle.block400, %.noexc101
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dv, %.noexc101 ], [ %i.eg, %middle.block400 ], [ %i.ep, %.lr.ph.i.i.i.i94 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dm, null
  br i1 %.not.i23.i, label %.noexc80, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #40
  br label %.noexc80

.noexc80:                                         ; preds = %bb.ar, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.dv, ptr %4, align 16, !tbaa !510
  store ptr %i.eq, ptr %i.cn, align 8, !tbaa !513
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.er, ptr %i.bb, align 16, !tbaa !516
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc80, %bb.ao
  %i.es = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf15MapIteratorBaseILb0EEppEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.y unwind label %.loopexit174, !llvm.loop !555 ; 0 uses

bb.as:                                            ; preds = %bb.af
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.at:                                            ; preds = %bb.ah, %bb.ag
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit164:                                     ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit.split-lp165:                            ; preds = %bb.al
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit169:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp170:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp170, %.loopexit169
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  %i.ev = load ptr, ptr %i.cs, align 8, !tbaa !36
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #37, !inline_history !556
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86: ; preds = %.loopexit164, %.loopexit.split-lp165, %bb.at
  %.pn.ph = phi { ptr, i32 } [ %i.eu, %bb.at ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  %i.ey = load ptr, ptr %i.cs, align 8, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #37, !inline_history !484
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87: ; preds = %.loopexit174, %.loopexit.split-lp175, %bb.as, %bb.au, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86, %bb.ae
  %.sroa.29.7 = phi ptr [ %.sroa.29.2, %bb.ae ], [ %.sroa.29.2, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %.sroa.29.2, %bb.as ], [ %.sroa.29.13, %bb.au ], [ %.sroa.29.13, %.loopexit174 ], [ %.sroa.29.12, %.loopexit.split-lp175 ]
  %.sroa.0114.7 = phi ptr [ %.sroa.0114.2, %bb.ae ], [ %.sroa.0114.2, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %.sroa.0114.2, %bb.as ], [ %.sroa.0114.13, %bb.au ], [ %.sroa.0114.13, %.loopexit174 ], [ %.sroa.17.5, %.loopexit.split-lp175 ]
  %.pn45 = phi { ptr, i32 } [ %i.cr, %bb.ae ], [ %.pn.ph, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %i.et, %bb.as ], [ %lpad.phi173, %bb.au ], [ %lpad.loopexit176, %.loopexit174 ], [ %lpad.loopexit.split-lp177, %.loopexit.split-lp175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.aw

.loopexit:                                        ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit, %bb.f, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit, %bb.ab
  %.sroa.29.8 = phi ptr [ %.sroa.29.2, %bb.ab ], [ %i.j, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.29.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1, %bb.ab ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.17.4, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.0114.8 = phi ptr [ %.sroa.0114.2, %bb.ab ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.0114.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %i.fb = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.av unwind label %bb.g

bb.av:                                            ; preds = %.loopexit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !486
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_T0_(ptr %.sroa.0114.8, ptr %.sroa.17.2, ptr %i.fd)
          to label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit unwind label %bb.g

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit: ; preds = %bb.av
  %i.fe = load <2 x ptr>, ptr %4, align 16, !tbaa !557
  store <2 x ptr> %i.fe, ptr %0, align 8, !tbaa !557
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !516
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !516
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0114.8, ptr %i.fi, align 8, !tbaa !503
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.2, ptr %i.fj, align 8, !tbaa !558
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.29.8, ptr %i.fk, align 8, !tbaa !509
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

.thread147:                                       ; preds = %bb.h, %bb.ac
  %.pn49.pn.pn.ph = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.m, %bb.h ]
  call void @_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91

bb.aw:                                            ; preds = %.loopexit163, %.loopexit.split-lp, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87, %bb.ad, %bb.g
  %.sroa.29.9 = phi ptr [ %.sroa.29.7, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %.sroa.29.3, %bb.ad ], [ %.sroa.29.1, %bb.g ], [ %.sroa.17.0228, %.loopexit163 ], [ %.sroa.17.0228, %.loopexit.split-lp ]
  %.sroa.0114.9 = phi ptr [ %.sroa.0114.7, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %.sroa.0114.3, %bb.ad ], [ %.sroa.0114.1, %bb.g ], [ %.sroa.0114.0229, %.loopexit163 ], [ %.sroa.0114.0229, %.loopexit.split-lp ] ; 3 uses
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %i.cq, %bb.ad ], [ %i.l, %bb.g ], [ %lpad.loopexit, %.loopexit163 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not.i.i.i90 = icmp eq ptr %.sroa.0114.9, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = ptrtoint ptr %.sroa.29.9 to i64
  %i.fm = ptrtoint ptr %.sroa.0114.9 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.9, i64 noundef %i.fn) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91: ; preds = %.thread147, %bb.aw, %bb.ax
  %.pn49.pn.pn152 = phi { ptr, i32 } [ %.pn49.pn.pn.ph, %.thread147 ], [ %.pn49.pn.pn, %bb.aw ], [ %.pn49.pn.pn, %bb.ax ]
  resume { ptr, i32 } %.pn49.pn.pn152
}

declare noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase20IsRepeatedFieldValidEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare noundef ptr @_ZNK6google8protobuf10Reflection17GetMessageFactoryEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #10

declare noundef i32 @_ZNK6google8protobuf10Reflection7MapSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection13ConstMapBeginEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.google::protobuf::ConstMapIterator") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection11ConstMapEndEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.google::protobuf::ConstMapIterator") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7CopyKeyERKNS0_6MapKeyEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.c = extractvalue { ptr, ptr } %i.b, 1        ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !255
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !258
  switch i32 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit [
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 8, label %bb.b
    i32 10, label %bb.b
    i32 9, label %bb.d
    i32 2, label %bb.k
    i32 1, label %bb.l
    i32 4, label %bb.m
    i32 3, label %bb.n
    i32 7, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.13, i32 noundef 2536) #42
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 14, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.d:                                             ; preds = %bb.a
  %i.j = tail call { i64, ptr } @_ZNK6google8protobuf6MapKey14GetStringValueEv(ptr noundef nonnull align 8 dereferenceable(20) %0) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 5 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !44
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i64 %i.k, 0
  %or.cond.i.i.i = and i1 %i.o, %i.n
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.96) #41
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.k, ptr %i.a, align 8, !tbaa !243
  %i.p = icmp ugt i64 %i.k, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !49
end_hunk_1

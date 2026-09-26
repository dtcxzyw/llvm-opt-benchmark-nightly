Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/text_format?download=true
inline.NumInlined: 5149
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf10TextFormat7PrinterD2Ev:bb.a
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #37, !inline_history !297
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !71
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 16, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS7_10TextFormat14MessagePrinterESt14default_deleteISE_EEEENS3_6HashEqISA_vE4HashENSK_2EqESaISt4pairIKSA_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSU_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.l = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !66
  %i.r = and i64 %i.q, 65536
  %i.s = icmp ne i64 %i.r, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.l, ptr noundef %i.o, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.s)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %i.w, 2
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !66
  %.not.i.i.i2 = icmp ult i64 %i.aa, 131072
  br i1 %.not.i.i.i2, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i3, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #37, !inline_history !298
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %i.v, ptr %1, align 8, !tbaa !74
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 16, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS7_10TextFormat21FastFieldValuePrinterESt14default_deleteISE_EEEENS3_6HashEqISA_vE4HashENSK_2EqESaISt4pairIKSA_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSU_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i1 unwind label %bb.i

.noexc.i1:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !65  ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
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
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #37, !inline_history !1
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !63
  %i.b = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.a) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !64
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
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.313") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !79, !range !80, !alias.scope !309, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !309 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !76, !noalias !309
  store ptr %i.e, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit: ; preds = %bb.a, %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  store i64 %2, ptr %i.i, align 4, !tbaa !24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !91   ; 5 uses
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775792
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #38 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %2, ptr %i.y, align 4, !tbaa !24
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx2, align 4, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !310, !alias.scope !311
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !306

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ae) #40
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.x, ptr %i.g, align 8, !tbaa !91
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.j, align 8, !tbaa !90
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf10TextFormat13ParseInfoTree12CreateNestedEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.327", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.327") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !95, !range !80, !alias.scope !326, !noundef !81
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !326 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !76, !noalias !326
  store ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !102
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.l, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !103
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !107  ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 4 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !106
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = add i64 %i.q, -8
  %i.ad = sub i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.q, -8
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep7 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep7
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !106, !alias.scope !329, !noalias !327
  %wide.load9 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !106, !alias.scope !329, !noalias !327
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !106, !alias.scope !330, !noalias !329
  store <2 x i64> %wide.load9, ptr %i.ap, align 8, !tbaa !106, !alias.scope !330, !noalias !329
  %i.aq = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !106, !alias.scope !329, !noalias !327
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !106, !alias.scope !329, !noalias !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !328, !noalias !327
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !327, !noalias !328
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !328, !noalias !327
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !323

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ay) #40
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !107
  store ptr %i.av, ptr %i.k, align 8, !tbaa !103
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.az, ptr %i.m, align 8, !tbaa !104
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.ba = phi ptr [ %i.l, %bb.d ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !106
  ret ptr %i.bb
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf15CheckFieldIndexEPKNS0_15FieldDescriptorEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define { i64, i64 } @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetLocationRangeEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !64 ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !76
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64, !nonnull !81, !noundef !81
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !66, !noalias !334
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !64 ; 2 uses
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
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64 ; 2 uses
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %.thread32.i.i.i, label %bb.g, !prof !110

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
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
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i, !prof !111

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !333

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
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !89
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !91 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %.not = icmp sgt i64 %i.bh, %i.az
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.az ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.bi, align 4, !tbaa !24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !24
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
define noundef ptr @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetTreeForNestedEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !76
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64, !nonnull !81, !noundef !81
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !66, !noalias !338
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.v, %i.w
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.x, %bb.e ], [ %i.av, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.b    ; 4 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !64 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.ar, %bb.g ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.b                     ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %.thread32.i.i.i, label %bb.g, !prof !110

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.al
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = add i16 %.sroa.017.046.i.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.as = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not43.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i, !prof !111

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.au = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !337

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ap, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit
  %i.ay = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.az = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.az, i32 0, i32 %2
  %i.ba = sext i32 %spec.store.select to i64      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !107 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %.not = icmp sgt i64 %i.bi, %i.ba
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, %bb.i, %bb.j
  %.0 = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, ptr } @_ZN6google8protobuf10TextFormat6Parser19UnsetFieldsMetadata15GetUnsetFieldIdERKNS0_7MessageERKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat7Printer19HardenedPrintStringESt17basic_string_viewIcSt11char_traitsIcEEPNS1_17BaseTextGeneratorE(i64 %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1), !inline_history !2
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.thread, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.0.039 = phi i64 [ %0, %.lr.ph.i.preheader.lr.ph ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 9 uses
  %.sroa.10.038 = phi ptr [ %1, %.lr.ph.i.preheader.lr.ph ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i
  %.02561.i = phi i64 [ %i.w, %.thread.i ], [ 0, %.lr.ph.i.preheader ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.02561.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !64    ; 3 uses
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i, label %bb.b

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i: ; preds = %.lr.ph.i
  %i.j = add nuw i64 %.02561.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.0.039, i64 %i.j) ; 2 uses
  %.029.i53 = add nuw i64 %.02561.i, 1            ; 2 uses
  %i.k = icmp ult i64 %.029.i53, %.sroa.0.039
  br i1 %i.k, label %.lr.ph, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i8 %i.h, -32
  %i.m = icmp ult i8 %i.l, 95
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.thread.i [
    i8 34, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10TextFormat7Printer14PrintFieldNameERKNS0_7MessageEiiPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.m

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !64
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65 ; 4 uses
  %i.am = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ult i64 %i.al, 2
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !66
  %.not.i.i.i.i.i = icmp ult i64 %i.ap, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.as = icmp eq ptr %i.ar, %5
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.aq, 1
  %spec.select.i.i.i.i = select i1 %i.as, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

bb.i:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 1, i32 1)
  %i.av = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.aw = xor i64 %i.av, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = xor i64 %i.ay, %i.av
  %i.ba = mul i64 %i.az, -2543921745674291987
  %i.bb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !66, !noalias !603
  %i.be = and i64 %i.bd, 65535
  %i.bf = lshr i64 %i.bb, 7
  %i.bg = xor i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bb to i8
  %i.bi = and i8 %i.bh, 127
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !64 ; 2 uses
  %i.bk = insertelement <16 x i8> poison, i8 %i.bi, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.pn.i6.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %i.ce, %bb.l ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.cd, %bb.l ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.al ; 4 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.6.0.i.i.i.i
  %i.bo = load <16 x i8>, ptr %i.bn, align 1, !tbaa !64 ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bl, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.ca, %bb.k ], [ %i.bq, %bb.j ] ; 3 uses
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.6.0.i.i.i.i, %i.bs
  %i.bu = and i64 %i.bt, %i.al                    ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp eq ptr %i.bw, %5
  br i1 %i.bx, label %.thread32.i.i.i.i, label %bb.k, !prof !110

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bu
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.k, %bb.j
  %i.cb = icmp eq <16 x i8> %i.bo, splat (i8 -128)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %.not43.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not43.i.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !111

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cd = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.6.0.i.i.i.i
  br label %bb.j, !llvm.loop !10

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.by, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.bv, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.g, %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.g ], [ %spec.select.i.i.i.i, %bb.h ] ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.cg = icmp eq ptr %i.cf, null
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.in.i = select i1 %i.cg, ptr %i.ch, ptr %i.cj
  %i.ck = load ptr, ptr %.in.i, align 8, !tbaa !54 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.249", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.281", align 8    ; 7 uses
  %7 = alloca %"struct.std::pair.284", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !622
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr %2, ptr %5, align 8, !tbaa !269
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @"_ZZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_E8type_key", ptr %i.e, align 8, !tbaa !623
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !625
  %i.h = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %.not.i = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !271
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit22.i unwind label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %.014.i = phi ptr [ %i.m, %bb.c ], [ undef, %bb.b ]
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #39
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i: ; preds = %bb.e
  br i1 %.not.i, label %bb.g, label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit"

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i
  %i.q = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38, !noalias !626 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !626
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataINS0_10TextFormat14RedactionStateEEE, i64 16), ptr %i.q, align 16, !tbaa !53, !noalias !626
  %i.r = invoke range(i16 0, 2) i16 @_ZN6google8protobuf10TextFormat17GetRedactionStateEPKNS0_15FieldDescriptorE(ptr noundef nonnull readonly %2)
          to label %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i" unwind label %bb.k

"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i": ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.r, ptr %i.s, align 8, !tbaa !146
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i unwind label %bb.l

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i: ; preds = %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !625
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.q, ptr %i.u, align 8, !tbaa !628
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.281") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !274, !range !80, !alias.scope !634, !noundef !81
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !634 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.u, align 8, !tbaa !271, !noalias !635
  store i64 %i.z, ptr %i.y, align 8, !tbaa !271
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.aa = load ptr, ptr %.pr.i, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr.i) #37, !inline_history !620
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !271
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #39
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i

bb.l:                                             ; preds = %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i"
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %i.q, align 16, !tbaa !53
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i

bb.m:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !271 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i23.i, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i24.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i24.i: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #37, !inline_history !620
  br label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i

_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i24.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit22.i unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #39
  unreachable

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i: ; preds = %bb.l, %bb.k
  %i.at = phi ptr [ %.pre.i, %bb.l ], [ getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataINS0_10TextFormat14RedactionStateEEE, i64 16), %bb.k ]
  %.pn17.pn.pn.ph.i = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(10) %i.q) #37, !inline_history !621
  br label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit22.i

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit22.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i, %bb.d
  %.pn17.pn.pn.pn.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn17.pn.pn.ph.i, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i ], [ %i.am, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn17.pn.pn.pn.i

"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit": ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i, %bb.h
  %.115.i = phi ptr [ %.014.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.sroa.01.0.copyload = load i8, ptr %.115.i, align 1, !tbaa !146
  %i.aw = trunc i8 %.sroa.01.0.copyload to i1
  br i1 %i.aw, label %bb.o, label %bb.t

bb.o:                                             ; preds = %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit"
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !56, !range !80, !noundef !81
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ba = atomicrmw add ptr @_ZN6google8protobuf12_GLOBAL__N_118num_redacted_fieldE, i64 1 monotonic, align 8 ; 0 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  br i1 %4, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 2, ptr nonnull @.str.18)
  %i.be = load ptr, ptr %3, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.121, i64 noundef 10), !inline_history !3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !51, !range !80, !noundef !81
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load ptr, ptr %3, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.19, i64 noundef 1), !inline_history !2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.20, i64 noundef 1), !inline_history !2
  br label %bb.t

.critedge:                                        ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.121, i64 noundef 10), !inline_history !3
  br label %bb.t

bb.t:                                             ; preds = %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit", %bb.o, %bb.s, %bb.r, %.critedge
  %.0 = phi i1 [ false, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit" ], [ true, %.critedge ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.o ]
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal10MapEntriesD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !257    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
end_hunk_1

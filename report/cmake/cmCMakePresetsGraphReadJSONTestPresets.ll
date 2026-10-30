Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCMakePresetsGraphReadJSONTestPresets?download=true
inline.NumInlined: 4269
inline.NumDeleted: 1992
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE4BindIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcS9_EMT_T0_T1_b:bb.a
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSK_S7_S9_EEERSD_St17basic_string_viewIcSI_EMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation, ptr %i.k, align 8, !tbaa !36
  store i64 %1, ptr %i.g, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSK_S7_S9_EEERSD_St17basic_string_viewIcSI_EMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 %i.e, ptr %i.n, align 8, !tbaa !89
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.p, ptr %i.f, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !94, !range !54, !noundef !55
  %i.s = or i8 %i.r, %i.e
  store i8 %i.s, ptr %i.q, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberESaIS6_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbRS4_PKN4Json5ValueEP11cmJSONStateEERbEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre.i = load i8, ptr %i.a, align 1, !range !54
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !94, !range !54, !noundef !55
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.v, i8 1, i8 %.pre.i
  store i8 %i.w, ptr %i.t, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.thread, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %0

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not.i7 = icmp eq ptr %i.ab, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(65) ptr @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE4BindIS3_St8optionalINS3_12IndexOptionsEEPFbRS8_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_b(ptr noundef nonnull align 8 dereferenceable(65) %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.std::function.126", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %4, ptr %7, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS2_12IndexOptionsEEPFbRSH_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_, ptr %i.c, align 8, !tbaa !83
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS2_12IndexOptionsEEPFbRSH_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = zext i1 %5 to i8                         ; 3 uses
  store i8 %i.e, ptr %i.a, align 1, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS2_12IndexOptionsEEPFbRSH_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation, ptr %i.k, align 8, !tbaa !36
  store i64 %1, ptr %i.g, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS2_12IndexOptionsEEPFbRSH_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 %i.e, ptr %i.n, align 8, !tbaa !89
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.p, ptr %i.f, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !94, !range !54, !noundef !55
  %i.s = or i8 %i.r, %i.e
  store i8 %i.s, ptr %i.q, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberESaIS6_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbRS4_PKN4Json5ValueEP11cmJSONStateEERbEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre.i = load i8, ptr %i.a, align 1, !range !54
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !94, !range !54, !noundef !55
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.v, i8 1, i8 %.pre.i
  store i8 %i.w, ptr %i.t, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.thread, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %0

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not.i7 = icmp eq ptr %i.ab, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_142TestPresetOptionalFilterIncludeIndexHelperERSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !96
  br i1 %i.e, label %bb.c, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit

bb.e:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZNK4Json5Value8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.s, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !96, !range !54, !noundef !55
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !96
  br i1 %i.v, label %bb.g, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i12: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i13: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i13, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 80, i1 false)
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !101
  store i8 1, ptr %i.t, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4Json5Value8asStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 6 uses
  %i.am = icmp eq ptr %i.al, %i.ak
  %i.an = load ptr, ptr %3, align 8, !tbaa !30    ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao                ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit
  br i1 %i.ap, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit
  br i1 %i.ap, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.an, align 1, !tbaa !31
  store i8 %i.at, ptr %i.al, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.au, ptr %i.av, align 8, !tbaa !29
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !tbaa !31
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !31
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !31
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !31
  store <2 x i64> %i.be, ptr %i.bd, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.al, ptr %3, align 8, !tbaa !30
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %3, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bf = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.al, %bb.l ], [ %i.ao, %bb.m ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !29
  store i8 0, ptr %i.bf, align 1, !tbaa !31
  %i.bh = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !31
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit

bb.n:                                             ; preds = %bb.e
  %i.bm = tail call noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.bm, label %bb.o, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.a, align 8, !tbaa !103
  store ptr %2, ptr %i.b, align 8, !tbaa !105
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_148TestPresetOptionalFilterIncludeIndexObjectHelperE, i64 16), align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.p, label %_ZNKSt8functionIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEEclES6_SA_SC_.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEEclES6_SA_SC_.exit: ; preds = %bb.o
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_148TestPresetOptionalFilterIncludeIndexObjectHelperE, i64 24), align 8, !tbaa !107
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_148TestPresetOptionalFilterIncludeIndexObjectHelperE, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEaSESt9nullopt_t.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %bb.b, %bb.n, %_ZNKSt8functionIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEEclES6_SA_SC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %_ZNKSt8functionIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEEclES6_SA_SC_.exit ], [ false, %bb.n ], [ true, %bb.b ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(65) ptr @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE4BindIS3_St8optionalIbEPFbRS7_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_b(ptr noundef nonnull align 8 dereferenceable(65) %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.std::function.126", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %4, ptr %7, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIbEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_, ptr %i.c, align 8, !tbaa !83
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIbEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = zext i1 %5 to i8                         ; 3 uses
  store i8 %i.e, ptr %i.a, align 1, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIbEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation, ptr %i.k, align 8, !tbaa !36
  store i64 %1, ptr %i.g, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIbEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 %i.e, ptr %i.n, align 8, !tbaa !89
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.p, ptr %i.f, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !94, !range !54, !noundef !55
  %i.s = or i8 %i.r, %i.e
  store i8 %i.s, ptr %i.q, align 8, !tbaa !94
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset13OutputOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIiEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !385
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !382
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset13OutputOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIiEPFbRSG_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIiEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SE_SG_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS3_St8optionalIiEPFbRS7_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SC_SE_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIiEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SE_SG_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIiEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SE_SG_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIiEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SE_SG_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIiEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SE_SG_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset13OutputOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSI_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %i.c = load ptr, ptr %0, align 8, !tbaa !388
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !389
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !386
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset13OutputOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSI_S7_S9_EEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS3_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE4BindIS5_St8optionalIN12cmCTestTypes14TruncationModeEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E9_M_invokeERKSt9_Any_dataS5_OS9_OSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = tail call noundef zeroext i1 @_ZSt13__invoke_implIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EES9_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS7_IS3_ESE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt13__invoke_implIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EES9_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !267, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !267
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !31
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %1, i8 0, i64 128, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !101
  store i8 1, ptr %i.c, align 8, !tbaa !267
  %i.ah = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.a, ptr noundef %i.b)
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_.exit

_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i
  %.0.i = phi i1 [ %i.ah, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13OutputOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !53, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !399
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !399
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !399
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ce

.critedge:                                        ; preds = %bb.a
  %i.an = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %.critedge
  br i1 %i.an, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 1, ptr %i.n, align 4, !tbaa !264, !noalias !400
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36, !noalias !400
  %.not.i.i81 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i81, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc82 unwind label %bb.z

.noexc82:                                         ; preds = %bb.r
  unreachable

end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_St8optionalIiEPFbRSH_S8_SA_EEERSE_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS4_S8_SA_E_E9_M_invokeERKSt9_Any_dataS4_OS8_OSA_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !419
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_St8optionalIiEPFbRSH_S8_SA_EEERSE_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS4_S8_SA_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St8optionalIiEPFbRSA_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SF_SH_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS4_St8optionalIiEPFbRS8_PKN4Json5ValueEP11cmJSONStateEEERS5_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS4_SD_SF_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St8optionalIiEPFbRSA_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SF_SH_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St8optionalIiEPFbRSA_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SF_SH_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St8optionalIiEPFbRSA_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SF_SH_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St8optionalIiEPFbRSA_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SF_SH_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_St6vectorIiSaIiEEPFbRSI_S8_SA_EEERSE_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS4_S8_SA_E_E9_M_invokeERKSt9_Any_dataS4_OS8_OSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %i.c = load ptr, ptr %0, align 8, !tbaa !425
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !426
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !423
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_St6vectorIiSaIiEEPFbRSI_S8_SA_EEERSE_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS4_S8_SA_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St6vectorIiSaIiEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS4_St6vectorIiSaIiEEPFbRS9_PKN4Json5ValueEP11cmJSONStateEEERS5_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS4_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St6vectorIiSaIiEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St6vectorIiSaIiEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St6vectorIiSaIiEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE4BindIS6_St6vectorIiSaIiEEPFbRSB_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS6_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS8_IS4_ESF_SH_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_NSE_6ObjectIS4_EEEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E9_M_invokeERKSt9_Any_dataS6_OSA_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = tail call noundef zeroext i1 @_ZSt13__invoke_implIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS0_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_JSN_SG_SI_EESA_St14__invoke_otherOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_NSE_6ObjectIS4_EEEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt13__invoke_implIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS0_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_JSN_SG_SI_EESA_St14__invoke_otherOSL_DpOT1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !96
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #23
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !31
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i.i.i11.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i11.i, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 80, i1 false)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !101
  store i8 1, ptr %i.c, align 8, !tbaa !96
  %i.ah = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEclERS4_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.a, ptr noundef %i.b)
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_.exit

_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %bb.d, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i
  %.0.i = phi i1 [ %i.ah, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit.i ], [ true, %bb.b ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ true, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsEEclERS4_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !78, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !436
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !436
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !436
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ce

.critedge:                                        ; preds = %bb.a
  %i.an = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %.critedge
  br i1 %i.an, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 1, ptr %i.n, align 4, !tbaa !264, !noalias !437
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36, !noalias !437
  %.not.i.i81 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i81, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc82 unwind label %bb.z

.noexc82:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState:bb.a

bb.bm:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.fs = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.di
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bm
  %i.fu = load i64, ptr %i.di, align 8, !tbaa !31
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0148.0202, i64 56 ; 2 uses
  %.not155 = icmp eq ptr %i.fw, %i.dh
  br i1 %.not155, label %._crit_edge, label %bb.ak

bb.bn:                                            ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit117
  %.pn67 = phi { ptr, i32 } [ %.pn65, %_ZNSt14_Function_baseD2Ev.exit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.di
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bn
  %i.fz = load i64, ptr %i.di, align 8, !tbaa !31
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn67, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ce

bb.bo:                                            ; preds = %._crit_edge
  %i.gb = load ptr, ptr %4, align 16, !tbaa !274
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !274
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 4, !tbaa !264, !noalias !477
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !36, !noalias !477
  %.not.i.i121 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i121, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc122 unwind label %bb.by

.noexc122:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !268, !noalias !477
  invoke void %i.gj(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.bs unwind label %bb.by, !inline_history !9

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  store ptr %3, ptr %i.b, align 8, !tbaa !105
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !36
  %.not.i.i125 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i125, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc126 unwind label %bb.bz

.noexc126:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !257
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bv unwind label %bb.bz, !inline_history !10

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i129 = icmp eq ptr %i.go, null
  br i1 %.not.i129, label %_ZNSt14_Function_baseD2Ev.exit130, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gp = invoke noundef zeroext i1 %i.go(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit130 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit130:                ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cc

bb.by:                                            ; preds = %bb.br, %bb.bq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit132

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i131 = icmp eq ptr %i.gu, null
  br i1 %.not.i131, label %_ZNSt14_Function_baseD2Ev.exit132, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gv = invoke noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit132 unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit132:                ; preds = %bb.ca, %bb.bz, %bb.by
  %.pn63 = phi { ptr, i32 } [ %i.gs, %bb.by ], [ %i.gt, %bb.bz ], [ %i.gt, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ce

bb.cc:                                            ; preds = %._crit_edge, %bb.bo, %_ZNSt14_Function_baseD2Ev.exit130, %_ZNSt14_Function_baseD2Ev.exit90, %_ZNSt14_Function_baseD2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %_ZNSt14_Function_baseD2Ev.exit90 ], [ %.050.lcssa, %._crit_edge ], [ %.050.lcssa, %bb.bo ], [ false, %_ZNSt14_Function_baseD2Ev.exit130 ]
  %i.gy = load ptr, ptr %4, align 16, !tbaa !271  ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i133 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not4.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %bb.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.05.i.i.i135 = phi ptr [ %i.hg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137 ], [ %i.gy, %bb.cc ] ; 3 uses
  %i.hb = load ptr, ptr %.05.i.i.i135, align 8, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136: ; preds = %.lr.ph.i.i.i134
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !31
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137: ; preds = %.lr.ph.i.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 32 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.hg, %i.ha
  br i1 %.not.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, label %.lr.ph.i.i.i134, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.pr.i140 = load ptr, ptr %4, align 16, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, %bb.cc
  %i.hh = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139 ], [ %i.gy, %bb.cc ] ; 3 uses
  %.not.i.i1.i142 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i1.i142, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 16, !tbaa !273
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.0

bb.ce:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt14_Function_baseD2Ev.exit132, %bb.ah, %_ZNSt14_Function_baseD2Ev.exit92, %_ZNSt14_Function_baseD2Ev.exit80
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit80 ], [ %.pn63, %_ZNSt14_Function_baseD2Ev.exit132 ], [ %i.cm, %bb.ah ], [ %.pn59, %_ZNSt14_Function_baseD2Ev.exit92 ], [ %i.de, %bb.aj ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn67.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(161) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !290, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !290
  br i1 %i.c, label %bb.b, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE10_M_destroyEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !96, !range !54, !noundef !55
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !96
  br i1 %i.f, label %bb.c, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptions12IndexOptionsELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE10_M_destroyEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE10_M_destroyEv.exit

_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE10_M_destroyEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.s = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #23
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit

_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbRS5_PKN4Json5ValueEP11cmJSONStateEERbEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !124    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #26
  unreachable

_ZNKSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
  br label %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !43
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEPKN4Json5ValueEP11cmJSONStateEEC2EOSC_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit
  %.sroa.0.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEPKN4Json5ValueEP11cmJSONStateEEC2EOSC_.exit

_ZNSt8functionIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEPKN4Json5ValueEP11cmJSONStateEEC2EOSC_.exit: ; preds = %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit, %bb.d
  %.sroa.0.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_M_allocateEm.exit ], [ %.sroa.0.sroa.0.0.copyload, %bb.d ]
  %i.w = load i8, ptr %4, align 1, !tbaa !38, !range !54, !noundef !55
  store i64 %.sroa.0.0.copyload.i, ptr %i.r, align 8, !tbaa !43
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 24, i1 false)
  store ptr %i.t, ptr %i.y, align 8, !tbaa !112
  %.not.i.i.not.i.i = icmp eq ptr %i.v, null
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbRS5_PKN4Json5ValueEP11cmJSONStateEERbEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZSt19__relocate_object_aIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberC2EOS6_.exit.i.i.i.i35, %.lr.ph.i.i.i31
  %.sink.in.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 48
  %.sink.i.i.i.i38 = load i8, ptr %.sink.in.i.i.i.i37, align 8, !tbaa !118, !range !54, !alias.scope !489, !noundef !55
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 48
  store i8 %.sink.i.i.i.i38, ptr %i.av, align 8, !tbaa !118, !alias.scope !488
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 56 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i31, !llvm.loop !481

_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41: ; preds = %_ZSt19__relocate_object_aIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.am, %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.ax, %_ZSt19__relocate_object_aIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #23
  br label %_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !124
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !115
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSL_S8_SA_EEERSE_St17basic_string_viewIcSJ_EMT_T0_T1_bEUlS4_S8_SA_E_E9_M_invokeERKSt9_Any_dataS4_OS8_OSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %i.c = load ptr, ptr %0, align 8, !tbaa !493
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !494
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !491
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS3_E4BindIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSL_S8_SA_EEERSE_St17basic_string_viewIcSJ_EMT_T0_T1_bEUlS4_S8_SA_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS6_SJ_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSC_PKN4Json5ValueEP11cmJSONStateEEERS5_St17basic_string_viewIcSA_EMT_T0_T1_bEUlRS4_SH_SJ_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS6_SJ_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS6_SJ_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS6_SJ_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE4BindIS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS7_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS6_SJ_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS8_IS4_ESF_SH_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !124    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE6MemberES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_NSE_6ObjectIS4_EEEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E9_M_invokeERKSt9_Any_dataS6_OSA_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %2, align 8, !tbaa !103
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  %i.d = tail call noundef zeroext i1 @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.b, ptr noundef %i.c)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_NSE_6ObjectIS4_EEEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS1_6ObjectIS6_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRSA_IS6_ESH_SJ_E_E15_M_init_functorIRKSP_EEvRSt9_Any_dataOSB_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsENS_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS8_IS4_ESF_SH_E_clESM_SF_SH_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !292, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !292
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE5resetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !31
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !31
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE5resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !31
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE5resetEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %bb.e
  %i.y = load i64, ptr %i.w, align 8, !tbaa !31
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !31
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i11
  %i.ag = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i12
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i12, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.al, i8 0, i64 80, i1 false)
  store ptr %i.al, ptr %1, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !101
  store i8 1, ptr %i.a, align 8, !tbaa !292
  %i.ar = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEEclERS4_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE5resetEv.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE5resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.b, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit
  %.0 = phi i1 [ %i.ar, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS7_.exit ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsEEclERS4_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !123, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !504
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !504
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !504
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ce

.critedge:                                        ; preds = %bb.a
  %i.an = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %.critedge
  br i1 %i.an, label %bb.ad, label %bb.q

end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS2_15FixturesOptionsEESt8functionIFbRSH_S7_S9_EEEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation:bb.a
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #23
  resume { ptr, i32 } %i.i

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit: ; preds = %bb.d, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !142
  store i64 %i.p, ptr %i.n, align 8, !tbaa !142
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 3)
          to label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i: ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 40) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS3_St8optionalINS3_15FixturesOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE4BindIS5_St8optionalINS5_15FixturesOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !144    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !144
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E9_M_invokeERKSt9_Any_dataS5_OS9_OSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !294, !range !54, !noundef !55
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %4

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #22
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

4:                                                ; preds = %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !294
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #22
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i8 0, i64 152, i1 false)
  store ptr %i.g, ptr %1, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.j, ptr %i.i, align 8, !tbaa !101
  store i8 1, ptr %i.d, align 8, !tbaa !294
  %i.k = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull %i.b, ptr noundef %i.c)
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit: ; preds = %bb.c, %4, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i
  %.0.i.i.i = phi i1 [ %i.k, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i ], [ true, %bb.c ], [ true, %4 ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS7_IS3_ESE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !139, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !535
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !535
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !535
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ce

.critedge:                                        ; preds = %bb.a
  %i.an = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %.critedge
  br i1 %i.an, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 1, ptr %i.n, align 4, !tbaa !264, !noalias !536
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36, !noalias !536
  %.not.i.i81 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i81, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc82 unwind label %bb.z
end_hunk_5
begin_hunk_6_@_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState:bb.a
  %i.ft = icmp eq ptr %i.fs, %i.di
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bm
  %i.fu = load i64, ptr %i.di, align 8, !tbaa !31
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0148.0202, i64 56 ; 2 uses
  %.not155 = icmp eq ptr %i.fw, %i.dh
  br i1 %.not155, label %._crit_edge, label %bb.ak

bb.bn:                                            ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit117
  %.pn67 = phi { ptr, i32 } [ %.pn65, %_ZNSt14_Function_baseD2Ev.exit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.di
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bn
  %i.fz = load i64, ptr %i.di, align 8, !tbaa !31
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn67, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ce

bb.bo:                                            ; preds = %._crit_edge
  %i.gb = load ptr, ptr %4, align 16, !tbaa !274
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !274
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 4, !tbaa !264, !noalias !538
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !36, !noalias !538
  %.not.i.i121 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i121, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc122 unwind label %bb.by

.noexc122:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !268, !noalias !538
  invoke void %i.gj(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.bs unwind label %bb.by, !inline_history !9

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  store ptr %3, ptr %i.b, align 8, !tbaa !105
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !36
  %.not.i.i125 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i125, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc126 unwind label %bb.bz

.noexc126:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !257
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bv unwind label %bb.bz, !inline_history !10

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i129 = icmp eq ptr %i.go, null
  br i1 %.not.i129, label %_ZNSt14_Function_baseD2Ev.exit130, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gp = invoke noundef zeroext i1 %i.go(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit130 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit130:                ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cc

bb.by:                                            ; preds = %bb.br, %bb.bq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit132

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i131 = icmp eq ptr %i.gu, null
  br i1 %.not.i131, label %_ZNSt14_Function_baseD2Ev.exit132, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gv = invoke noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit132 unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit132:                ; preds = %bb.ca, %bb.bz, %bb.by
  %.pn63 = phi { ptr, i32 } [ %i.gs, %bb.by ], [ %i.gt, %bb.bz ], [ %i.gt, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ce

bb.cc:                                            ; preds = %._crit_edge, %bb.bo, %_ZNSt14_Function_baseD2Ev.exit130, %_ZNSt14_Function_baseD2Ev.exit90, %_ZNSt14_Function_baseD2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %_ZNSt14_Function_baseD2Ev.exit90 ], [ %.050.lcssa, %._crit_edge ], [ %.050.lcssa, %bb.bo ], [ false, %_ZNSt14_Function_baseD2Ev.exit130 ]
  %i.gy = load ptr, ptr %4, align 16, !tbaa !271  ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i133 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not4.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %bb.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.05.i.i.i135 = phi ptr [ %i.hg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137 ], [ %i.gy, %bb.cc ] ; 3 uses
  %i.hb = load ptr, ptr %.05.i.i.i135, align 8, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136: ; preds = %.lr.ph.i.i.i134
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !31
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137: ; preds = %.lr.ph.i.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 32 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.hg, %i.ha
  br i1 %.not.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, label %.lr.ph.i.i.i134, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.pr.i140 = load ptr, ptr %4, align 16, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, %bb.cc
  %i.hh = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139 ], [ %i.gy, %bb.cc ] ; 3 uses
  %.not.i.i1.i142 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i1.i142, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 16, !tbaa !273
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.0

bb.ce:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt14_Function_baseD2Ev.exit132, %bb.ah, %_ZNSt14_Function_baseD2Ev.exit92, %_ZNSt14_Function_baseD2Ev.exit80
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit80 ], [ %.pn63, %_ZNSt14_Function_baseD2Ev.exit132 ], [ %i.cm, %bb.ah ], [ %.pn59, %_ZNSt14_Function_baseD2Ev.exit92 ], [ %i.de, %bb.aj ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn67.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(169) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.a, align 8, !tbaa !294
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !292, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !292
  br i1 %i.e, label %bb.b, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !31
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptions15FixturesOptionsELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsD2Ev.exit

_ZN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.s = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #23
  br label %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit

_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_PFbRS4_SA_SC_EEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E9_M_invokeERKSt9_Any_dataS6_OSA_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 4, !tbaa !541
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS5_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESA_SC_EET0_EUlRSG_IS5_ESA_SC_E_JSO_SA_SC_EENSt9enable_ifIX16is_invocable_r_vISH_SM_DpT1_EESH_E4typeEOSM_DpOSS_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  store i32 0, ptr %1, align 4, !tbaa !148
  store i8 1, ptr %i.b, align 4, !tbaa !541
  %i.d = load ptr, ptr %0, align 8, !tbaa !543
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull %i.a, ptr noundef %i.c), !inline_history !539
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS5_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESA_SC_EET0_EUlRSG_IS5_ESA_SC_E_JSO_SA_SC_EENSt9enable_ifIX16is_invocable_r_vISH_SM_DpT1_EESH_E4typeEOSM_DpOSS_.exit

_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS5_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESA_SC_EET0_EUlRSG_IS5_ESA_SC_E_JSO_SA_SC_EENSt9enable_ifIX16is_invocable_r_vISH_SM_DpT1_EESH_E4typeEOSM_DpOSS_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS4_PFbRS4_SA_SC_EEESt8functionIFbRS0_IT_ESA_SC_EET0_EUlS6_SA_SC_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS6_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESB_SD_EET0_EUlRSH_IS6_ESB_SD_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS4_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ES9_SB_EET0_EUlRSF_IS4_ES9_SB_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS6_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESB_SD_EET0_EUlRSH_IS6_ESB_SD_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS6_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESB_SD_EET0_EUlRSH_IS6_ESB_SD_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !32
  store i64 %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS6_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESB_SD_EET0_EUlRSH_IS6_ESB_SD_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptions12ShowOnlyEnumEPFbRS6_PKN4Json5ValueEP11cmJSONStateEEESt8functionIFbRSt8optionalIT_ESB_SD_EET0_EUlRSH_IS6_ESB_SD_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
end_hunk_6
begin_hunk_7_@_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation:bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS3_St8optionalINS3_17NoTestsActionEnumEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 3)
          to label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS3_St8optionalINS3_17NoTestsActionEnumEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS3_St8optionalINS3_17NoTestsActionEnumEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i: ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 40) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS3_St8optionalINS3_17NoTestsActionEnumEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St8optionalINS5_17NoTestsActionEnumEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEPFbRSN_S7_S9_EEERSD_St17basic_string_viewIcSJ_EMT_T0_T1_bEUlS3_S7_S9_E_E9_M_invokeERKSt9_Any_dataS3_OS7_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !103
  %i.b = load ptr, ptr %3, align 8, !tbaa !105
  %i.c = load ptr, ptr %0, align 8, !tbaa !621
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !622
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.a, ptr noundef %i.b), !inline_history !619
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEPFbRSN_S7_S9_EEERSD_St17basic_string_viewIcSJ_EMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEPFbRSG_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS5_SL_SN_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPFbRSE_PKN4Json5ValueEP11cmJSONStateEEERS4_St17basic_string_viewIcSA_EMT_T0_T1_bEUlRS3_SJ_SL_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEPFbRSG_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS5_SL_SN_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEPFbRSG_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS5_SL_SN_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !265
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEPFbRSG_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS5_SL_SN_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE4BindIS5_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEPFbRSG_PKN4Json5ValueEP11cmJSONStateEEERS6_St17basic_string_viewIcSC_EMT_T0_T1_bEUlRS5_SL_SN_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !199    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !199
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !175
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E9_M_invokeERKSt9_Any_dataS5_OS9_OSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %2, align 8, !tbaa !103
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  %i.d = tail call noundef zeroext i1 @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %i.b, ptr noundef %i.c)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS7_IS3_ESE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENKUlRS7_IS3_ESE_SG_E_clESL_SE_SG_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !296, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !296
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE5resetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.c
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !273
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE5resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE5resetEv.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.f, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !271 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i17, label %.lr.ph.i.i.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i.i.i10:                         ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13
  %.05.i.i.i.i.i.i.i.i11 = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13 ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i.i.i.i11, align 8, !tbaa !30 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i11, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i.i.i.i.i.i10
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i.i.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i12
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i11, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i.i10, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i15: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i13
  %.pr.i.i.i.i.i.i16 = load ptr, ptr %i.z, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i17: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i15, %bb.f
  %i.aj = phi ptr [ %.pr.i.i.i.i.i.i16, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i15 ], [ %i.aa, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i.i.i18, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i19, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !273
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i19

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i19: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i19
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i19, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 96, i1 false)
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !296
  %i.ay = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE5resetEv.exit

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE5resetEv.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit
  %.0 = phi i1 [ %i.ay, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ true, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !182, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !632
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !632
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !632
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFbRN19cmCMakePresetsGraph10TestPreset13FilterOptionsEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder6ObjectIS2_E4BindIS2_St8optionalINS1_14ExcludeOptionsEESt8functionIFbRSH_S7_S9_EEEERSD_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlS3_S7_S9_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation:bb.a
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS3_SE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #23
  resume { ptr, i32 } %i.i

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit: ; preds = %bb.d, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !221
  store i64 %i.p, ptr %i.n, align 8, !tbaa !221
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 3)
          to label %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i: ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 40) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS3_St8optionalINS2_14ExcludeOptionsEESt8functionIFbRS8_PKN4Json5ValueEP11cmJSONStateEEEERS4_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bENUlRS3_SE_SG_E_D2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE4BindIS5_St8optionalINS4_14ExcludeOptionsEESt8functionIFbRSA_PKN4Json5ValueEP11cmJSONStateEEEERS6_St17basic_string_viewIcSt11char_traitsIcEEMT_T0_T1_bEUlRS5_SG_SI_E_E15_M_init_functorIRKSV_EEvRSt9_Any_dataOSQ_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_ENUlRS7_IS3_ESE_SG_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !223    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !223
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEED2Ev.exit

_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE6MemberES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E9_M_invokeERKSt9_Any_dataS5_OS9_OSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !298, !range !54, !noundef !55
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !298
  br i1 %.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.h = load i8, ptr %i.g, align 8, !tbaa !294, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %i.j) #22
  br label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(352) %1) #22
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = load i8, ptr %i.k, align 8, !tbaa !294, !range !54, !noundef !55
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i9.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %i.n) #22
  br label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i9.i.i.i

_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i9.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(352) %1) #22
  br label %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i

_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i: ; preds = %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i9.i.i.i, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %1, i8 0, i64 344, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !298
  %i.o = tail call noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull %i.b, ptr noundef %i.c)
  br label %_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit

_ZSt10__invoke_rIbRZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS0_6ObjectIS4_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS8_IS4_ESF_SH_E_JSM_SF_SH_EENSt9enable_ifIX16is_invocable_r_vIS9_SK_DpT1_EES9_E4typeEOSK_DpOSQ_.exit: ; preds = %bb.b, %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i.i.i.i, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i
  %.0.i.i.i = phi i1 [ %i.o, %_ZNSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i.i ], [ true, %bb.b ], [ true, %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i.i.i.i ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbRSt8optionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEEPKN4Json5ValueEP11cmJSONStateEZN19cmJSONHelperBuilder8OptionalIS3_NSD_6ObjectIS3_EEEESt8functionIFbRS0_IT_ES9_SB_EET0_EUlS5_S9_SB_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS_6ObjectIS3_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS7_IS3_ESE_SG_E_, ptr %0, align 8, !tbaa !262
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 3 uses
  invoke void @_ZN19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #23
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN19cmJSONHelperBuilder8OptionalIN19cmCMakePresetsGraph10TestPreset13FilterOptionsENS1_6ObjectIS5_EEEESt8functionIFbRSt8optionalIT_EPKN4Json5ValueEP11cmJSONStateEET0_EUlRS9_IS5_ESG_SI_E_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOSA_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEEclERS3_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.162", align 16  ; 27 uses
  %5 = alloca %"class.std::function.4", align 8   ; 11 uses
  %6 = alloca %"class.std::function.4", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.162", align 16  ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.4", align 8   ; 11 uses
  %10 = alloca %"class.std::function.4", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !218, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !264, !noalias !660
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !660
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !660
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !9

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !103
  store ptr %3, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
end_hunk_8
begin_hunk_9_@_ZNK19cmJSONHelperBuilder6ObjectIN19cmCMakePresetsGraph10TestPresetEEclERS2_PKN4Json5ValueEP11cmJSONState:bb.a
bb.bm:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.fs = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.di
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bm
  %i.fu = load i64, ptr %i.di, align 8, !tbaa !31
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0148.0202, i64 56 ; 2 uses
  %.not155 = icmp eq ptr %i.fw, %i.dh
  br i1 %.not155, label %._crit_edge, label %bb.ak

bb.bn:                                            ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit117
  %.pn67 = phi { ptr, i32 } [ %.pn65, %_ZNSt14_Function_baseD2Ev.exit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.di
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bn
  %i.fz = load i64, ptr %i.di, align 8, !tbaa !31
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn67, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ce

bb.bo:                                            ; preds = %._crit_edge
  %i.gb = load ptr, ptr %4, align 16, !tbaa !274
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !274
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 4, !tbaa !264, !noalias !743
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !36, !noalias !743
  %.not.i.i121 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i121, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc122 unwind label %bb.by

.noexc122:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !268, !noalias !743
  invoke void %i.gj(ptr dead_on_unwind nonnull writable sret(%"class.std::function.4") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.bs unwind label %bb.by, !inline_history !9

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  store ptr %3, ptr %i.b, align 8, !tbaa !105
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !36
  %.not.i.i125 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i125, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc126 unwind label %bb.bz

.noexc126:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !257
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bv unwind label %bb.bz, !inline_history !10

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i129 = icmp eq ptr %i.go, null
  br i1 %.not.i129, label %_ZNSt14_Function_baseD2Ev.exit130, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gp = invoke noundef zeroext i1 %i.go(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit130 unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit130:                ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cc

bb.by:                                            ; preds = %bb.br, %bb.bq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit132

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %i.gk, align 8, !tbaa !36 ; 2 uses
  %.not.i131 = icmp eq ptr %i.gu, null
  br i1 %.not.i131, label %_ZNSt14_Function_baseD2Ev.exit132, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gv = invoke noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit132 unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit132:                ; preds = %bb.ca, %bb.bz, %bb.by
  %.pn63 = phi { ptr, i32 } [ %i.gs, %bb.by ], [ %i.gt, %bb.bz ], [ %i.gt, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ce

bb.cc:                                            ; preds = %._crit_edge, %bb.bo, %_ZNSt14_Function_baseD2Ev.exit130, %_ZNSt14_Function_baseD2Ev.exit90, %_ZNSt14_Function_baseD2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %_ZNSt14_Function_baseD2Ev.exit90 ], [ %.050.lcssa, %._crit_edge ], [ %.050.lcssa, %bb.bo ], [ false, %_ZNSt14_Function_baseD2Ev.exit130 ]
  %i.gy = load ptr, ptr %4, align 16, !tbaa !271  ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i133 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not4.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %bb.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.05.i.i.i135 = phi ptr [ %i.hg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137 ], [ %i.gy, %bb.cc ] ; 3 uses
  %i.hb = load ptr, ptr %.05.i.i.i135, align 8, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136: ; preds = %.lr.ph.i.i.i134
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !31
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137: ; preds = %.lr.ph.i.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 32 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.hg, %i.ha
  br i1 %.not.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, label %.lr.ph.i.i.i134, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.pr.i140 = load ptr, ptr %4, align 16, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, %bb.cc
  %i.hh = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139 ], [ %i.gy, %bb.cc ] ; 3 uses
  %.not.i.i1.i142 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i1.i142, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 16, !tbaa !273
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.0

bb.ce:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt14_Function_baseD2Ev.exit132, %bb.ah, %_ZNSt14_Function_baseD2Ev.exit92, %_ZNSt14_Function_baseD2Ev.exit80
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit80 ], [ %.pn63, %_ZNSt14_Function_baseD2Ev.exit132 ], [ %i.cm, %bb.ah ], [ %.pn59, %_ZNSt14_Function_baseD2Ev.exit92 ], [ %i.de, %bb.aj ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn67.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCMakePresetsGraph10TestPresetD2Ev(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(960) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN19cmCMakePresetsGraph10TestPresetE, i64 16), ptr %0, align 8, !tbaa !304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !296, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !296
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.b
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !273
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !298, !range !54, !noundef !55
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !298
  br i1 %i.ac, label %bb.d, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !294, !range !54, !noundef !55
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14ExcludeOptionsEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ag) #22
  br label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset14IncludeOptionsEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(352) %i.z) #22
  br label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset16ExecutionOptionsELb0ELb0EED2Ev.exit, %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsEE10_M_destroyEv.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !267, !range !54, !noundef !55
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !267
  br i1 %i.aj, label %bb.f, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsELb0ELb0EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !31
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13FilterOptionsELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !271 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ax, %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !31
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.az
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.aw, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %_ZNSt14_Optional_baseIN19cmCMakePresetsGraph10TestPreset13OutputOptionsELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !273
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !31
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !31
  %i.bx = add i64 %i.bw, 1
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  tail call void @_ZN19cmCMakePresetsGraph6PresetD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) #22
  ret void
}

declare noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

declare void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #1

declare void @_ZN10cmAlphaNumC1Ei(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCMakePresetsGraph6PresetD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN19cmCMakePresetsGraph6PresetE, i64 16), ptr %0, align 8, !tbaa !304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.i)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !331  ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !746
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !747
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !304
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !744
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !304
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !744
  br label %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !169
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt12__shared_ptrIN19cmCMakePresetsGraph9ConditionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !271 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !31
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ax, %i.ar
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ao, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !273
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCMakePresetsGraph6PresetD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN19cmCMakePresetsGraph6Preset24VisitPresetBeforeInheritEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN19cmCMakePresetsGraph6Preset23VisitPresetAfterInheritEiP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !749
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !750  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 96 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !752, !range !54, !noundef !55
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.f, align 8, !tbaa !752
  br i1 %i.h, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !31
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !31
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !304
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !753
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !169  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !169
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !304
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !753
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(960) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !301    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #26
  unreachable

_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 960                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9607679205057058)
  %i.l = select i1 %i.j, i64 9607679205057058, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 960
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN19cmCMakePresetsGraph10TestPresetC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %i.q, ptr noundef nonnull align 8 dereferenceable(960) %2) #22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @_ZN19cmCMakePresetsGraph10TestPresetC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(960) %.0911.i.i.i) #22
  %i.r = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !304, !alias.scope !760
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(960) %.0911.i.i.i) #22, !inline_history !756
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 960 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 960 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !757

_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 960 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @_ZN19cmCMakePresetsGraph10TestPresetC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(960) %.0911.i.i.i19) #22
  %i.w = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !304, !alias.scope !761
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(960) %.0911.i.i.i19) #22, !inline_history !756
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 960 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 960 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !757

_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.z, %.lr.ph.i.i.i17 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN19cmCMakePresetsGraph10TestPresetESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseIN19cmCMakePresetsGraph10TestPresetESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN19cmCMakePresetsGraph10TestPresetESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN19cmCMakePresetsGraph10TestPresetESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !301
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !302
  %i.ae = getelementptr inbounds nuw [960 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmCMakePresetsGraph10TestPresetC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(960) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN19cmCMakePresetsGraph6PresetC2EOS0_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN19cmCMakePresetsGraph10TestPresetE, i64 16), ptr %0, align 8, !tbaa !304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !101
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !30
  %i.k = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %i.k, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.m, ptr %i.n, align 8, !tbaa !29
  store ptr %i.e, ptr %i.b, align 8, !tbaa !30
  store i64 0, ptr %i.l, align 8, !tbaa !29
  store i8 0, ptr %i.e, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.q = load i16, ptr %i.p, align 8
  store i16 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
end_hunk_9

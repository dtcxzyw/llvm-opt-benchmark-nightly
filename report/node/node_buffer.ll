inline.NumInlined: 2994
inline.NumDeleted: 1024
begin_hunk_0_@_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.i, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %.pr.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27, !inline_history !207
  %i.t = load ptr, ptr %.pr.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27, !inline_history !207
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.o, %bb.h ], [ %i.y, %bb.i ]
  %i.z = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.z, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.e, ptr %i.b, align 8
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !208
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !208
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i6 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ao, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_S5_S5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(30) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 7, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 10, i16 4>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 4, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 255, ptr %i.d, align 4
  ret void
}

declare void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(2), i32 noundef, ptr noundef, i8 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(22) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 3, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store i16 10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 10, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 255, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 3, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 4, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 10, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IjJEEENS4_IlJEEENS4_IbJEEENS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 3, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <6 x i16> <i16 10, i16 10, i16 4, i16 5, i16 1, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <6 x i16> <i16 10, i16 10, i16 11, i16 4, i16 4, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf27convert_latin1_to_utf8_safeEPKcmPcm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare ptr @_ZN4node11StringBytes6EncodeEPN2v87IsolateEPKcmNS_8encodingE(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node30THROW_ERR_BUFFER_OUT_OF_BOUNDSIJEEEvPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @_ZN4node24ERR_BUFFER_OUT_OF_BOUNDSIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.b, i64 %1, ptr %2)
  %i.d = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node24ERR_BUFFER_OUT_OF_BOUNDSIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.267, i32 noundef 1, i32 noundef 24) #27 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception10RangeErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #27
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #27 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef 4) #27 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #27
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_node_buffer.cc() #3 section ".text.startup" {
bb.a:
  %0 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %1 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %2 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %3 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %4 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %5 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %6 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.30.exit, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %__cxx_global_var_init.30.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_S5_S5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(30) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.30.exit

__cxx_global_var_init.30.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_18FastCopyEN2v85LocalINS2_5ValueEEES5_S5_jjjRNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.d = load <2 x ptr>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x ptr> %i.d, ptr @_ZN4node6Buffer12_GLOBAL__N_19fast_copyE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %__cxx_global_var_init.31.exit, !prof !209

bb.d:                                             ; preds = %__cxx_global_var_init.30.exit
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i4 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i4, label %__cxx_global_var_init.31.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(22) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.31.exit

__cxx_global_var_init.31.exit:                    ; preds = %__cxx_global_var_init.30.exit, %bb.d, %bb.e
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_118FastByteLengthUtf8EN2v85LocalINS2_5ValueEEES5_RNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.h = load <2 x ptr>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x ptr> %i.h, ptr @_ZN4node6Buffer12_GLOBAL__N_121fast_byte_length_utf8E, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %__cxx_global_var_init.32.exit, !prof !209

bb.f:                                             ; preds = %__cxx_global_var_init.31.exit
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i8, label %__cxx_global_var_init.32.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.32.exit

__cxx_global_var_init.32.exit:                    ; preds = %__cxx_global_var_init.31.exit, %bb.f, %bb.g
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111FastCompareEN2v85LocalINS2_5ValueEEES5_S5_RNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.l = load <2 x ptr>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x ptr> %i.l, ptr @_ZN4node6Buffer12_GLOBAL__N_112fast_compareE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %__cxx_global_var_init.33.exit, !prof !209

bb.h:                                             ; preds = %__cxx_global_var_init.32.exit
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %__cxx_global_var_init.33.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IjJEEENS4_IlJEEENS4_IbJEEENS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.33.exit

__cxx_global_var_init.33.exit:                    ; preds = %__cxx_global_var_init.32.exit, %bb.h, %bb.i
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_117FastIndexOfNumberEN2v85LocalINS2_5ValueEEES5_jlbRNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.p = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.p, ptr @_ZN4node6Buffer12_GLOBAL__N_120fast_index_of_numberE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %__cxx_global_var_init.34.exit, !prof !209

bb.j:                                             ; preds = %__cxx_global_var_init.33.exit
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i16, label %__cxx_global_var_init.34.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.34.exit

end_hunk_0

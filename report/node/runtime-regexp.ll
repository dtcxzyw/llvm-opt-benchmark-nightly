inline.NumInlined: 3452
inline.NumDeleted: 1065
begin_hunk_0_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.jn = load i64, ptr %i.cc, align 8
  %i.jo = icmp eq i64 %i.jm, %i.jn
  br i1 %i.jo, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jp = call i16 @_ZN2v88internal6Object15SetDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EE(ptr noundef nonnull %3, ptr nonnull %.0.i.i31) #21 ; 2 uses
  %i.jq = trunc i16 %i.jp to i1
  br i1 %i.jq, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %bb.ak, !prof !31

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #21
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.ak, %bb.aj
  %i.jr = and i16 %i.jp, 256
  %.not27.i = icmp eq i16 %i.jr, 0
  br i1 %.not27.i, label %bb.al, label %bb.ao, !prof !30

bb.al:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16) #22
  unreachable

bb.am:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.js = call i16 @_ZN2v88internal6Object15AddDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginENS0_22EnforceDefineSemanticsE(ptr noundef nonnull %3, ptr nonnull %.0.i.i31, i32 noundef 0, i64 4294967297, i32 noundef 1, i32 noundef 0) #21
  %i.jt = trunc i16 %i.js to i1
  br i1 %i.jt, label %bb.ao, label %bb.an, !prof !31

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #22
  unreachable

bb.ao:                                            ; preds = %bb.am, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit, label %bb.ac, !llvm.loop !116

_ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit: ; preds = %bb.ao, %._ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre254, %._ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit_crit_edge ], [ %i.hc, %bb.ao ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %.pre-phi, ptr %i.ju, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit, %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.jv = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr %i.m, ptr nonnull %i.cc, ptr nonnull %i.fs, i64 %i.fq) #21 ; 4 uses
  %.not245 = icmp eq ptr %i.jv, null
  br i1 %.not245, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit16, label %.critedge145.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit16: ; preds = %bb.ap
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit

.critedge145.i:                                   ; preds = %bb.ap
  %i.jx = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jy = trunc i64 %i.jx to i1
  br i1 %i.jy, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge145.i
  %i.jz = add nsw i64 %i.jx, -1
  %i.ka = inttoptr i64 %i.jz to ptr
  %i.kb = load atomic volatile i64, ptr %i.ka monotonic, align 8
  %i.kc = add i64 %i.kb, 11
  %i.kd = inttoptr i64 %i.kc to ptr
  %i.ke = load atomic volatile i16, ptr %i.kd monotonic, align 2
  %i.kf = icmp ult i16 %i.ke, 128
  br i1 %i.kf, label %.critedge147.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %.critedge145.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.kg = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.jv) #21 ; 2 uses
  %.not246 = icmp eq ptr %i.kg, null
  br i1 %.not246, label %bb.aq, label %.critedge147.i

bb.aq:                                            ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit

.critedge147.i:                                   ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i33235239 = phi ptr [ %i.kg, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.jv, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr nonnull %.sroa.07.0.i33235239) #21
  %i.ki = icmp eq i64 %i.dj, 0
  br i1 %i.ki, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit36, label %.critedge.i34

.critedge.i34:                                    ; preds = %.critedge147.i
  %i.kj = load i64, ptr %1, align 8
  %i.kk = add i64 %i.kj, -1
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %1, i32 noundef %i.dk, i32 noundef %i.kn) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit36

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit36: ; preds = %.critedge147.i, %.critedge.i34
  %.sroa.07.0.i35 = phi ptr [ %i.ko, %.critedge.i34 ], [ %1, %.critedge147.i ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %.sroa.07.0.i35) #21
  %i.kp = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #21 ; 2 uses
  %.not247 = icmp eq ptr %i.kp, null
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select = select i1 %.not247, ptr %i.kq, ptr %i.kp
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit: ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit36, %bb.aq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit16
  %.sroa.0123.1.in = phi ptr [ %i.jw, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit16 ], [ %i.kh, %bb.aq ], [ %spec.select, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit36 ]
  %.sroa.0123.1 = load i64, ptr %.sroa.0123.1.in, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fr) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit, %bb.y
  %.sroa.0123.2 = phi i64 [ %i.fp, %bb.y ], [ %.sroa.0123.1, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %.critedge141.i, %bb.ar, %bb.p, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0123.5 = phi i64 [ %i.br, %.critedge141.i ], [ %i.da, %bb.p ], [ %.sroa.0123.2, %bb.ar ], [ %i.ct, %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ]
  store ptr %i.c, ptr %i.b, align 8
  %i.kr = load i32, ptr %i.f, align 8
  %i.ks = add nsw i32 %i.kr, -1
  store i32 %i.ks, ptr %i.f, align 8
  %i.kt = load ptr, ptr %i.d, align 8
  %.not.i4 = icmp eq ptr %i.kt, %i.e
  br i1 %.not.i4, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.as, !prof !31

bb.as:                                            ; preds = %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.as, %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.0123.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal19Runtime_RegExpSplitEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 11 uses
  %.not316 = icmp eq i32 %0, 1
  br i1 %.not316, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !30

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8
  %i.n = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, 1495
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = icmp eq ptr %i.b, %i.d
  br i1 %i.w, label %bb.d, label %_ZN2v88internal7Isolate15regexp_functionEv.exit, !prof !30

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #21
  br label %_ZN2v88internal7Isolate15regexp_functionEv.exit

_ZN2v88internal7Isolate15regexp_functionEv.exit:  ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %bb.d
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.a, align 8
  store i64 %i.v, ptr %.0.i.i.i, align 8
  %i.ab = tail call ptr @_ZN2v88internal6Object18SpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_10JSFunctionEEE(ptr noundef nonnull %2, ptr %1, ptr nonnull %.0.i.i.i) #21 ; 2 uses
  %.not317 = icmp eq ptr %i.ab, null
  br i1 %.not317, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge.i

_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal7Isolate15regexp_functionEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ad = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge.i:                                      ; preds = %_ZN2v88internal7Isolate15regexp_functionEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6096 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.pre.pre.i = load i64, ptr %i.ae, align 8
  %i.af = add i64 %.pre.pre.i, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = icmp eq i16 %i.ak, 128
  br i1 %i.al, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %.critedge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %.critedge.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ap = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ap, ptr %4, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.h, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 -1, i64 16, i1 false)
  %i.bb = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = and i16 %i.be, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bf, 32
  br i1 %.not.i21.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bj = load i8, ptr %i.bi, align 8, !range !28
  %i.bk = trunc nuw i8 %i.bj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bh, true
  %i.bl = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bk
  br i1 %i.bl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bn = load i8, ptr %i.bm, align 8, !range !28, !noundef !29
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.e
  %.pn.i.i26.i.i.i = phi ptr [ %i.bq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.e ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.br = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bs = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ae) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ae, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.av, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #21
  %i.bt = load i32, ptr %i.aq, align 4
  %.not.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i11, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bu = load ptr, ptr %i.au, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge260.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bw = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not318 = icmp eq ptr %i.bw, null
  br i1 %.not318, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge260.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.by = load i64, ptr %i.bx, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge260.i:                                   ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i250 = phi ptr [ %i.bv, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.bw, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.bz = load i64, ptr %.sroa.07.0.i250, align 8 ; 2 uses
  %i.ca = trunc i64 %i.bz to i1
  br i1 %i.ca, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge260.i
  %i.cb = add nsw i64 %i.bz, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = add i64 %i.cd, 11
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i16, ptr %i.cf monotonic, align 2
  %i.ch = icmp ult i16 %i.cg, 128
  br i1 %i.ch, label %.critedge262.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %.critedge260.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ci = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i250) #21 ; 2 uses
  %.not319 = icmp eq ptr %i.ci, null
  br i1 %.not319, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit10, label %.critedge262.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit10: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ck = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge262.i:                                   ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i12254 = phi ptr [ %i.ci, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %.sroa.07.0.i250, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 4 uses
  %i.cl = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %2, i16 noundef zeroext 117) #21
  %i.cm = call noundef i32 @_ZN2v88internal6String7IndexOfEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_j(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i12254, ptr %i.cl, i32 noundef 0) #21
  %i.cn = icmp sgt i32 %i.cm, -1
  %i.co = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %2, i16 noundef zeroext 121) #21 ; 2 uses
  %i.cp = call noundef i32 @_ZN2v88internal6String7IndexOfEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_j(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i12254, ptr %i.co, i32 noundef 0) #21
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %.critedge264.i, label %bb.h

bb.h:                                             ; preds = %.critedge262.i
  %i.cr = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS5_IS7_EEEEENT_IS7_E9MaybeTypeESB_SB_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.sroa.07.0.i12254, ptr %i.co, i8 noundef zeroext 0) #21 ; 2 uses
  %.not320 = icmp eq ptr %i.cr, null
  br i1 %.not320, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge264.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ct = load i64, ptr %i.cs, align 8
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge264.i:                                   ; preds = %bb.h, %.critedge262.i
  %.sroa.098.0 = phi ptr [ %.sroa.07.0.i12254, %.critedge262.i ], [ %i.cr, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.098.0, ptr %i.cu, align 8
  %i.cv = call ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %i.ab, ptr nonnull %5, i64 2) #21 ; 5 uses
  %.not321 = icmp eq ptr %i.cv, null
  br i1 %.not321, label %.critedge268.i, label %.critedge266.i

.critedge268.i:                                   ; preds = %.critedge264.i
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cx = load i64, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN2v88internalL29__RT_impl_Runtime_RegExpSplitENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge266.i:                                   ; preds = %.critedge264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cy = load i64, ptr %i.l, align 8             ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %.critedge270.i.thread264, label %bb.i

bb.i:                                             ; preds = %.critedge266.i
  %i.dc = and i64 %i.cy, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.i
  %i.de = add nsw i64 %i.cy, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 11
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i16, ptr %i.di monotonic, align 2
  %i.dk = icmp eq i16 %i.dj, 130
  br i1 %i.dk, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.dl = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.l) #21 ; 2 uses
  %.not.i13 = icmp eq ptr %i.dl, null
  br i1 %.not.i13, label %_ZN2v88internal12_GLOBAL__N_18ToUint32EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPj.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.pre.i = load i64, ptr %i.dl, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.i
  %i.dm = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27_crit_edge.i ], [ %i.cy, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.cy, %bb.i ] ; 3 uses
  %i.dn = and i64 %i.dm, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i
  %i.dp = lshr i64 %i.dm, 32
  %i.dq = trunc nuw i64 %i.dp to i32
  br label %.critedge270.i

bb.k:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread27.i
  %i.dr = add nsw i64 %i.dm, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.dt, align 1 ; 5 uses
  %i.du = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.dv = fcmp one double %i.du, +inf
  %i.dw = fcmp ole double %.0.copyload.i.i.i.i.i.i, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i = and i1 %i.dw, %i.dv
  %i.dx = fcmp oge double %.0.copyload.i.i.i.i.i.i, f0xC1E0000000000000
  %or.cond3.i.i.i.i = and i1 %i.dx, %or.cond.i.i.i.i
  br i1 %or.cond3.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = fptosi double %.0.copyload.i.i.i.i.i.i to i32
  br label %.critedge270.i

bb.m:                                             ; preds = %bb.k
  %i.dz = bitcast double %.0.copyload.i.i.i.i.i.i to i64 ; 5 uses
  %i.ea = and i64 %i.dz, 9218868437227405312
end_hunk_0
begin_hunk_1_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a

.split.us.i.i:                                    ; preds = %bb.du, %bb.dy
  %.071.us.i.i = phi i32 [ %i.xp, %bb.dy ], [ 0, %bb.du ] ; 5 uses
  %.0.us.i.i = phi ptr [ %i.yg, %bb.dy ], [ %i.ww, %bb.du ] ; 2 uses
  %i.xn = load i32, ptr %.0.us.i.i, align 4       ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 4
  %i.xp = load i32, ptr %i.xo, align 4            ; 2 uses
  %i.xq = icmp slt i32 %.071.us.i.i, %i.xn
  br i1 %i.xq, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %.split.us.i.i
  call void @_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi(ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef 2) #21
  %i.xr = sub nsw i32 %i.xn, %.071.us.i.i         ; 5 uses
  %i.xs = icmp ult i32 %i.xr, 2048
  %i.xt = icmp ult i32 %.071.us.i.i, 524288
  %or.cond.i.i.us.i.i = and i1 %i.xt, %i.xs
  br i1 %or.cond.i.i.us.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xu = sub nsw i32 0, %i.xr
  %i.xv = sext i32 %i.xu to i64
  %i.xw = shl nsw i64 %i.xv, 32
  call void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(13) %i.xl, i64 %i.xw) #21
  %i.xx = sext i32 %.071.us.i.i to i64
  br label %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.us.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.xy = shl nuw nsw i32 %.071.us.i.i, 11
  %i.xz = or disjoint i32 %i.xr, %i.xy
  %i.ya = zext nneg i32 %i.xz to i64
  br label %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.us.i.i

_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.us.i.i: ; preds = %bb.dx, %bb.dw
  %.sink14.i.i.us.i.i = phi i64 [ %i.xx, %bb.dw ], [ %i.ya, %bb.dx ]
  %i.yb = shl nsw i64 %.sink14.i.i.us.i.i, 32
  call void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(13) %i.xl, i64 %i.yb) #21
  %i.yc = load i32, ptr %i.xm, align 8            ; 2 uses
  %i.yd = sub i32 536870888, %i.xr
  %i.ye = icmp ugt i32 %i.yc, %i.yd
  %i.yf = add i32 %i.yc, %i.xr
  %storemerge.i.i.us.i.i = select i1 %i.ye, i32 2147483647, i32 %i.yf
  store i32 %storemerge.i.i.us.i.i, ptr %i.xm, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.us.i.i, %.split.us.i.i
  call void @_ZN2v88internal24ReplacementStringBuilder9AddStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(37) %12, ptr nonnull %.sroa.0240.1.i) #21
  %i.yg = call noundef ptr @_ZN2v88internal22RegExpGlobalExecRunner9FetchNextEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #21 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.us.i.i, label %.split145.us.i.i, label %.split.us.i.i, !llvm.loop !121

.split.i.i:                                       ; preds = %bb.du, %bb.ec
  %.071.i.i = phi i32 [ %i.yj, %bb.ec ], [ 0, %bb.du ] ; 5 uses
  %.0.i158.i = phi ptr [ %i.za, %bb.ec ], [ %i.ww, %bb.du ] ; 3 uses
  %i.yh = load i32, ptr %.0.i158.i, align 4       ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.0.i158.i, i64 4
  %i.yj = load i32, ptr %i.yi, align 4            ; 3 uses
  %i.yk = icmp slt i32 %.071.i.i, %i.yh
  br i1 %i.yk, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %.split.i.i
  call void @_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi(ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef 2) #21
  %i.yl = sub nsw i32 %i.yh, %.071.i.i            ; 5 uses
  %i.ym = icmp ult i32 %i.yl, 2048
  %i.yn = icmp ult i32 %.071.i.i, 524288
  %or.cond.i.i.i.i = and i1 %i.yn, %i.ym
  br i1 %or.cond.i.i.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.yo = shl nuw nsw i32 %.071.i.i, 11
  %i.yp = or disjoint i32 %i.yl, %i.yo
  %i.yq = zext nneg i32 %i.yp to i64
  br label %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.yr = sub nsw i32 0, %i.yl
  %i.ys = sext i32 %i.yr to i64
  %i.yt = shl nsw i64 %i.ys, 32
  call void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(13) %i.xl, i64 %i.yt) #21
  %i.yu = sext i32 %.071.i.i to i64
  br label %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.i.i

_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.i.i: ; preds = %bb.eb, %bb.ea
  %.sink14.i.i.i.i = phi i64 [ %i.yu, %bb.eb ], [ %i.yq, %bb.ea ]
  %i.yv = shl nsw i64 %.sink14.i.i.i.i, 32
  call void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(13) %i.xl, i64 %i.yv) #21
  %i.yw = load i32, ptr %i.xm, align 8            ; 2 uses
  %i.yx = sub i32 536870888, %i.yl
  %i.yy = icmp ugt i32 %i.yw, %i.yx
  %i.yz = add i32 %i.yw, %i.yl
  %storemerge.i.i.i.i = select i1 %i.yy, i32 2147483647, i32 %i.yz
  store i32 %storemerge.i.i.i.i, ptr %i.xm, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii.exit.i.i, %.split.i.i
  call void @_ZN2v88internal19CompiledReplacement5ApplyEPNS0_24ReplacementStringBuilderEiiPi(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef nonnull %12, i32 noundef %i.yh, i32 noundef %i.yj, ptr noundef nonnull %.0.i158.i)
  %i.za = call noundef ptr @_ZN2v88internal22RegExpGlobalExecRunner9FetchNextEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #21 ; 2 uses
  %.not.i159.i = icmp eq ptr %i.za, null
  br i1 %.not.i159.i, label %.split145.us.i.i, label %.split.i.i, !llvm.loop !121

.split145.us.i.i:                                 ; preds = %bb.ec, %bb.dy
  %.us-phi.i.i = phi i32 [ %i.xp, %bb.dy ], [ %i.yj, %bb.ec ] ; 2 uses
  %i.zb = load i32, ptr %i.wr, align 8
  %i.zc = icmp slt i32 %i.zb, 0
  br i1 %i.zc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.split145.us.i.i
  %i.zd = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i

bb.ee:                                            ; preds = %.split145.us.i.i
  %i.ze = icmp slt i32 %.us-phi.i.i, %i.uy
  br i1 %i.ze, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN2v88internal24ReplacementStringBuilder15AddSubjectSliceEii(ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef %.us-phi.i.i, i32 noundef %i.uy)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.zf = call noundef ptr @_ZNK2v88internal22RegExpGlobalExecRunner19LastSuccessfulMatchEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #21
  %i.zg = call ptr @_ZN2v88internal6RegExp16SetLastMatchInfoEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEENS4_INS0_6StringEEEiPi(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i125.i, ptr nonnull %.sroa.0461.1, i32 noundef %.0.i.i155.i, ptr noundef %i.zf) #21 ; 0 uses
  %i.zh = call ptr @_ZN2v88internal24ReplacementStringBuilder8ToStringEv(ptr noundef nonnull align 8 dereferenceable(37) %12) #21 ; 2 uses
  %.not141.i.i = icmp eq ptr %i.zh, null
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select.i160.i = select i1 %.not141.i.i, ptr %i.zi, ptr %i.zh
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %bb.eg, %bb.ed
  %.sroa.0104.1.in.i.i = phi ptr [ %i.zd, %bb.ed ], [ %spec.select.i160.i, %bb.eg ]
  %.sroa.0104.1.i.i = load i64, ptr %.sroa.0104.1.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %bb.dt, %bb.ds, %bb.dp
  %.sroa.0104.2.i.i = phi i64 [ %i.wv, %bb.dp ], [ %i.xb, %bb.ds ], [ %i.xc, %bb.dt ], [ %.sroa.0104.1.i.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ]
  call void @_ZN2v88internal23RegExpResultVectorScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(80) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.critedge.i161.i, %bb.dm
  %.sroa.0104.3.i.i = phi i64 [ %i.wi, %bb.dm ], [ %i.wj, %.critedge.i161.i ], [ %.sroa.0104.2.i.i, %bb.eh ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %i.vf)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN2v88internalL35StringReplaceGlobalRegExpWithStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS3_INS0_8JSRegExpEEENS3_INS0_10RegExpDataEEES5_NS3_INS0_15RegExpMatchInfoEEE.exit.i

_ZN2v88internalL35StringReplaceGlobalRegExpWithStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS3_INS0_8JSRegExpEEENS3_INS0_10RegExpDataEEES5_NS3_INS0_15RegExpMatchInfoEEE.exit.i: ; preds = %bb.ei, %bb.di
  %.sroa.0104.4.i.i = phi i64 [ %.sroa.0104.3.i.i, %bb.ei ], [ %i.vb, %bb.di ] ; 2 uses
  %i.zj = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 10624
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 360
  %i.zn = load i64, ptr %i.zm, align 8
  %i.zo = icmp eq i64 %.sroa.0104.4.i.i, %i.zn
  br i1 %i.zo, label %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit.thread685, label %bb.ej

bb.ej:                                            ; preds = %_ZN2v88internalL35StringReplaceGlobalRegExpWithStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS3_INS0_8JSRegExpEEENS3_INS0_10RegExpDataEEES5_NS3_INS0_15RegExpMatchInfoEEE.exit.i
  %i.zp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.zq = load ptr, ptr %i.c, align 8
  %i.zr = icmp eq ptr %i.zp, %i.zq
  br i1 %i.zr, label %bb.ek, label %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, !prof !30

bb.ek:                                            ; preds = %bb.ej
  %i.zs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i

_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i = phi ptr [ %i.zs, %bb.ek ], [ %i.zp, %bb.ej ] ; 3 uses
  %i.zt = ptrtoint ptr %.0.i.i.i.i to i64
  %i.zu = add i64 %i.zt, 8
  %i.zv = inttoptr i64 %i.zu to ptr
  store ptr %i.zv, ptr %i.a, align 8
  store i64 %.sroa.0104.4.i.i, ptr %.0.i.i.i.i, align 8
  br label %.critedge338.i

_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit: ; preds = %bb.ax, %.critedge.i130.i
  %.sroa.07.0.i131.i = phi ptr [ %i.kw, %.critedge.i130.i ], [ %.sroa.0461.1, %bb.ax ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr %.sroa.07.0.i131.i) #21
  %i.zw = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %.not835 = icmp eq ptr %i.zw, null
  br i1 %.not835, label %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit.thread685, label %.critedge338.i

_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit.thread685: ; preds = %_ZN2v88internalL35StringReplaceGlobalRegExpWithStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS3_INS0_8JSRegExpEEENS3_INS0_10RegExpDataEEES5_NS3_INS0_15RegExpMatchInfoEEE.exit.i, %bb.af, %bb.ay, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i, %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit, %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit.thread687
  %i.zx = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.zy = load i64, ptr %i.zx, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge338.i:                                   ; preds = %bb.ah, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit121.i, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit123.i, %bb.ag, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit
  %.sroa.0224.5.i683692 = phi ptr [ %i.zw, %_ZN2v88internal12_GLOBAL__N_113RegExpReplaceEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEES8_.exit ], [ %.sroa.0461.1, %bb.ah ], [ %.0.i.i.i120.i, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit121.i ], [ %.0.i.i.i122.i, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit123.i ], [ %.sroa.0461.1, %bb.ag ], [ %.0.i.i.i.i, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit.i ]
  %i.zz = load i64, ptr %.sroa.0224.5.i683692, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.el:                                            ; preds = %.critedge.i.thread, %.critedge.i
  %.sroa.0296.01003 = phi ptr [ null, %.critedge.i.thread ], [ %.sroa.0296.0, %.critedge.i ]
  %i.aaa = phi i1 [ true, %.critedge.i.thread ], [ false, %.critedge.i ]
  %i.aab = load i64, ptr %.sroa.0461.1, align 8
  %i.aac = add i64 %i.aab, -1
  %i.aad = inttoptr i64 %i.aac to ptr
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 12
  %i.aaf = load i32, ptr %i.aae, align 4          ; 5 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %2, i64 6096 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %.pre.pre.i = load i64, ptr %i.aag, align 8
  %i.aah = add i64 %.pre.pre.i, -1
  %i.aai = inttoptr i64 %i.aah to ptr             ; 3 uses
  %i.aaj = load atomic volatile i64, ptr %i.aai monotonic, align 8
  %i.aak = add i64 %i.aaj, 11
  %i.aal = inttoptr i64 %i.aak to ptr
  %i.aam = load atomic volatile i16, ptr %i.aal monotonic, align 2
  %i.aan = icmp eq i16 %i.aam, 128
  br i1 %i.aan, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.el
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aai, i64 12
  %i.aap = load i32, ptr %i.aao, align 4
  %i.aaq = trunc i32 %i.aap to i1
  br i1 %i.aaq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.el
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.aar = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.aar, ptr %9, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.aas, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aat, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.aau, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.aav, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %2, ptr %i.aaw, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aay = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr null, ptr %i.aay, align 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %1, ptr %i.aaz, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr null, ptr %i.aba, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 %i.h, ptr %i.abb, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i8 -1, i64 16, i1 false)
  %i.abd = load atomic volatile i64, ptr %i.aai monotonic, align 8
  %i.abe = add i64 %i.abd, 11
  %i.abf = inttoptr i64 %i.abe to ptr
  %i.abg = load atomic volatile i16, ptr %i.abf monotonic, align 2
  %i.abh = and i16 %i.abg, -96
  %.not.i21.i.i.i = icmp eq i16 %i.abh, 32
  br i1 %.not.i21.i.i.i, label %bb.em, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.em:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.abi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.abj = trunc nuw i8 %i.abi to i1
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.abl = load i8, ptr %i.abk, align 8, !range !28
  %i.abm = trunc nuw i8 %i.abl to i1
  %not..i.i.i23.i.i.i = xor i1 %i.abj, true
  %i.abn = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.abm
  br i1 %i.abn, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abo = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.abp = load i8, ptr %i.abo, align 8, !range !28, !noundef !29
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.en
  %i.abr = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.abs = load ptr, ptr %i.abr, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.em
  %.pn.i.i26.i.i.i = phi ptr [ %i.abs, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.em ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.abt = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.abu = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.abt, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aag) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.abu, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.aag, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.aax, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %9) #21
  %i.abv = load i32, ptr %i.aas, align 4
  %.not.i48 = icmp eq i32 %i.abv, 0
  br i1 %.not.i48, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.abw = load ptr, ptr %i.aaw, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.critedge340.i

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.aby = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %9, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not814 = icmp eq ptr %i.aby, null
  br i1 %.not814, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge340.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aca = load i64, ptr %i.abz, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge340.i:                                   ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i49694 = phi ptr [ %i.abx, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.aby, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.acb = load i64, ptr %.sroa.07.0.i49694, align 8 ; 3 uses
  %i.acc = trunc i64 %i.acb to i1
  br i1 %i.acc, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52: ; preds = %.critedge340.i
  %i.acd = add nsw i64 %i.acb, -1
  %i.ace = inttoptr i64 %i.acd to ptr             ; 2 uses
  %i.acf = load atomic volatile i64, ptr %i.ace monotonic, align 8
  %i.acg = add i64 %i.acf, 11
  %i.ach = inttoptr i64 %i.acg to ptr
  %i.aci = load atomic volatile i16, ptr %i.ach monotonic, align 2
  %i.acj = icmp ult i16 %i.aci, 128
  br i1 %i.acj, label %.critedge342.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53: ; preds = %.critedge340.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52
  %i.ack = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i49694) #21 ; 3 uses
  %.not815 = icmp eq ptr %i.ack, null
  br i1 %.not815, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit40, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53
  %.pre = load i64, ptr %i.ack, align 8           ; 2 uses
  %.pre898 = add i64 %.pre, -1
  %.pre899 = inttoptr i64 %.pre898 to ptr
  br label %.critedge342.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit40: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53
  %i.acl = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.acm = load i64, ptr %i.acl, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge342.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52
  %.pre-phi900 = phi ptr [ %.pre899, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge ], [ %i.ace, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52 ] ; 3 uses
  %i.acn = phi i64 [ %.pre, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge ], [ %i.acb, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52 ]
  %.sroa.07.0.i51698 = phi ptr [ %i.ack, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit53..critedge342.i_crit_edge ], [ %.sroa.07.0.i49694, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i52 ] ; 2 uses
  %i.aco = load atomic volatile i64, ptr %.pre-phi900 acquire, align 8
  %i.acp = add i64 %i.aco, 11
  %i.acq = inttoptr i64 %i.acp to ptr
  %i.acr = load atomic volatile i16, ptr %i.acq monotonic, align 2 ; 3 uses
  %i.acs = and i16 %i.acr, -127
  %.not816 = icmp eq i16 %i.acs, 1
  br i1 %.not816, label %bb.ep, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !30

bb.ep:                                            ; preds = %.critedge342.i
  %i.act = and i16 %i.acr, 7
  %i.acu = icmp eq i16 %i.act, 1
  br i1 %i.acu, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.acv = getelementptr inbounds nuw i8, ptr %.pre-phi900, i64 24
  %i.acw = load i64, ptr %i.acv, align 8
  %i.acx = add i64 %i.acw, -1
  %i.acy = inttoptr i64 %i.acx to ptr
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 12
  %i.ada = load i32, ptr %i.acz, align 4
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %.thread701, label %bb.er

.thread701:                                       ; preds = %bb.eq
  %i.adc = getelementptr inbounds nuw i8, ptr %.pre-phi900, i64 16
  %i.add = load i64, ptr %i.adc, align 8          ; 2 uses
  %i.ade = add i64 %i.add, -1
  %i.adf = inttoptr i64 %i.ade to ptr
  %i.adg = load atomic volatile i64, ptr %i.adf acquire, align 8
  %i.adh = add i64 %i.adg, 11
  %i.adi = inttoptr i64 %i.adh to ptr
  %i.adj = load atomic volatile i16, ptr %i.adi monotonic, align 2
  br label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adk = call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i51698, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.es:                                            ; preds = %.thread701, %bb.ep
  %.sroa.0435.0 = phi i16 [ %i.adj, %.thread701 ], [ %i.acr, %bb.ep ]
  %.sroa.012.1.i = phi i64 [ %i.add, %.thread701 ], [ %i.acn, %bb.ep ] ; 2 uses
  %i.adl = and i16 %.sroa.0435.0, -121
  %i.adm = icmp eq i16 %i.adl, 5
  br i1 %i.adm, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.adn = add i64 %.sroa.012.1.i, -1
  %i.ado = inttoptr i64 %i.adn to ptr
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adq = load i64, ptr %i.adp, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sroa.012.2.i = phi i64 [ %i.adq, %bb.et ], [ %.sroa.012.1.i, %bb.es ]
  %i.adr = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.ads = load ptr, ptr %i.c, align 8
  %i.adt = icmp eq ptr %i.adr, %i.ads
  br i1 %i.adt, label %bb.ev, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.ev:                                            ; preds = %bb.eu
  %i.adu = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.eu, %bb.ev
  %.0.i.i = phi ptr [ %i.adu, %bb.ev ], [ %i.adr, %bb.eu ] ; 3 uses
  %i.adv = ptrtoint ptr %.0.i.i to i64
  %i.adw = add i64 %i.adv, 8
  %i.adx = inttoptr i64 %i.adw to ptr
  store ptr %i.adx, ptr %i.a, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %.critedge342.i, %bb.er, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0440.1 = phi ptr [ %i.adk, %bb.er ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.sroa.07.0.i51698, %.critedge342.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.ady = load i64, ptr %.sroa.0440.1, align 8
  %i.adz = add i64 %i.ady, -1
  %i.aea = inttoptr i64 %i.adz to ptr             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !alias.scope !125, !noalias !122
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 12
  %i.aec = load i32, ptr %i.aeb, align 4, !noalias !128
  %i.aed = load atomic volatile i64, ptr %i.aea acquire, align 8, !noalias !131
  %i.aee = add i64 %i.aed, 11
  %i.aef = inttoptr i64 %i.aee to ptr
  %i.aeg = load atomic volatile i16, ptr %i.aef monotonic, align 2, !noalias !131
  %i.aeh = and i16 %i.aeg, 15
  switch i16 %i.aeh, label %bb.fg [
end_hunk_1
begin_hunk_2_@_ZN2v88internal23Runtime_RegExpReplaceRTEiPmPNS0_7IsolateE:bb.a
  store i8 0, ptr %i.akw, align 8
  store i32 0, ptr %i.akx, align 4
  store i32 0, ptr %i.aky, align 8
  store ptr %2, ptr %i.akz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ala, i8 0, i64 16, i1 false)
  store ptr %.0.i.i.i75.us, ptr %i.alb, align 8
  store ptr null, ptr %i.alc, align 8
  store i64 %i.alu, ptr %i.ald, align 8
  store i64 0, ptr %i.ale, align 8
  store i64 -1, ptr %i.alf, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #21
  %i.ami = load i32, ptr %i.akv, align 4
  %.not.i76.us = icmp eq i32 %i.ami, 0
  br i1 %.not.i76.us, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.us, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us: ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit.us
  %i.amj = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %8, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.not818.us = icmp eq ptr %i.amj, null
  br i1 %.not818.us, label %.critedge354.i.us.sink.split, label %.critedge350.i.us

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.us: ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit.us
  %i.amk = load ptr, ptr %i.akz, align 8
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.critedge350.i.us

.critedge350.i.us:                                ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.us, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us
  %.sroa.0.0.i725.us = phi ptr [ %i.aml, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.thread.us ], [ %i.amj, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us ] ; 2 uses
  %i.amm = load i64, ptr %.sroa.0.0.i725.us, align 8 ; 2 uses
  %i.amn = trunc i64 %i.amm to i1
  br i1 %i.amn, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us: ; preds = %.critedge350.i.us
  %i.amo = add nsw i64 %i.amm, -1
  %i.amp = inttoptr i64 %i.amo to ptr             ; 2 uses
  %i.amq = load atomic volatile i64, ptr %i.amp monotonic, align 8
  %i.amr = add i64 %i.amq, 11
  %i.ams = inttoptr i64 %i.amr to ptr
  %i.amt = load atomic volatile i16, ptr %i.ams monotonic, align 2
  %i.amu = icmp ult i16 %i.amt, 128
  br i1 %i.amu, label %.critedge352.i.us, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us, %.critedge350.i.us
  %i.amv = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i725.us) #21 ; 2 uses
  %.not819.us = icmp eq ptr %i.amv, null
  br i1 %.not819.us, label %.critedge354.i.us.sink.split, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us
  %.pre894 = load i64, ptr %i.amv, align 8
  %.pre905 = add i64 %.pre894, -1
  %.pre907 = inttoptr i64 %.pre905 to ptr
  br label %.critedge352.i.us

.critedge352.i.us:                                ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us
  %.pre-phi908 = phi ptr [ %.pre907, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us..critedge352.i.us_crit_edge ], [ %i.amp, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i79.us ]
  %i.amw = getelementptr inbounds nuw i8, ptr %.pre-phi908, i64 12
  %i.amx = load i32, ptr %i.amw, align 4
  %i.amy = icmp eq i32 %i.amx, 0
  br i1 %i.amy, label %bb.gp, label %.critedge354.i.us

bb.gp:                                            ; preds = %.critedge352.i.us
  %i.amz = call ptr @_ZN2v88internal11RegExpUtils22SetAdvancedStringIndexEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEEb(ptr noundef nonnull %2, ptr %1, ptr nonnull %.sroa.0461.1, i1 noundef zeroext %.0318.i.ph) #21
  %i.ana = icmp eq ptr %i.amz, null
  br i1 %i.ana, label %.critedge354.i.us.sink.split, label %.critedge354.i.us

.critedge354.i.us.sink.split:                     ; preds = %bb.gp, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit80.us, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit.us
  %i.anb = load i64, ptr %i.alg, align 8
  br label %.critedge354.i.us

.critedge354.i.us:                                ; preds = %.critedge354.i.us.sink.split, %bb.gp, %.critedge352.i.us
  %.sroa.0309.17.us = phi i64 [ %.sroa.0309.1.us, %bb.gp ], [ %.sroa.0309.1.us, %.critedge352.i.us ], [ %i.anb, %.critedge354.i.us.sink.split ] ; 2 uses
  %cond.us = phi i1 [ true, %bb.gp ], [ true, %.critedge352.i.us ], [ false, %.critedge354.i.us.sink.split ]
  store ptr %i.ame, ptr %i.a, align 8
  %i.anc = load i32, ptr %i.e, align 8
  %i.and = add nsw i32 %i.anc, -1
  store i32 %i.and, ptr %i.e, align 8
  %i.ane = load ptr, ptr %i.c, align 8
  %.not.i23.us = icmp eq ptr %i.ane, %i.amf
  br i1 %.not.i23.us, label %bb.gr, label %bb.gq, !prof !31

bb.gq:                                            ; preds = %.critedge354.i.us
  store ptr %i.amf, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.critedge354.i.us
  br i1 %cond.us, label %.critedge344.i.split.us, label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806

.critedge344.i.split:                             ; preds = %bb.fp, %bb.fr, %bb.fn, %bb.fl, %_ZN2v88internal12_GLOBAL__N_113IsContainFlagEPNS0_7IsolateERNS0_6String11FlatContentEPKcRNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.anf = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.anf, i8 0, i64 64, i1 false)
  store ptr %i.anf, ptr %21, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store ptr %i.anf, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %21, i64 88
  store ptr %i.ani, ptr %i.anh, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.anl = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 3 uses
  %i.anm = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.ann = load ptr, ptr %i.c, align 8            ; 4 uses
  %i.ano = load i32, ptr %i.e, align 8
  %i.anp = add nsw i32 %i.ano, 1
  store i32 %i.anp, ptr %i.e, align 8
  %i.anq = call ptr @_ZN2v88internal11RegExpUtils10RegExpExecEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1, ptr nonnull %.sroa.0461.1, ptr nonnull %i.anj) #21 ; 2 uses
  %.not817 = icmp eq ptr %i.anq, null
  br i1 %.not817, label %.split.us, label %.critedge346.i

.split.us:                                        ; preds = %.critedge344.i.split.us, %.critedge344.i.split
  %i.anr = phi ptr [ %i.anl, %.critedge344.i.split ], [ %i.alg, %.critedge344.i.split.us ]
  %.us-phi = phi ptr [ %i.anm, %.critedge344.i.split ], [ %i.alh, %.critedge344.i.split.us ]
  %.us-phi855 = phi ptr [ %i.ann, %.critedge344.i.split ], [ %i.ali, %.critedge344.i.split.us ] ; 2 uses
  %i.ans = load i64, ptr %i.anr, align 8          ; 2 uses
  store ptr %.us-phi, ptr %i.a, align 8
  %i.ant = load i32, ptr %i.e, align 8
  %i.anu = add nsw i32 %i.ant, -1
  store i32 %i.anu, ptr %i.e, align 8
  %i.anv = load ptr, ptr %i.c, align 8
  %.not.i14 = icmp eq ptr %i.anv, %.us-phi855
  br i1 %.not.i14, label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806, label %bb.gs, !prof !31

bb.gs:                                            ; preds = %.split.us
  store ptr %.us-phi855, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internalL33__RT_impl_Runtime_RegExpReplaceRTENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread806

.critedge346.i:                                   ; preds = %.critedge344.i.split
  %i.anw = load i64, ptr %i.anq, align 8          ; 2 uses
  store ptr %i.anm, ptr %i.a, align 8
  %i.anx = load i32, ptr %i.e, align 8
  %i.any = add nsw i32 %i.anx, -1
  store i32 %i.any, ptr %i.e, align 8
  %i.anz = load ptr, ptr %i.c, align 8
  %.not.i.i74 = icmp eq ptr %i.anz, %i.ann
  br i1 %.not.i.i74, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.gt, !prof !31

bb.gt:                                            ; preds = %.critedge346.i
  store ptr %i.ann, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  %.pre890 = load ptr, ptr %i.a, align 8
  %.pre891 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.gt, %.critedge346.i
  %i.aoa = phi ptr [ %.pre891, %bb.gt ], [ %i.ann, %.critedge346.i ]
  %i.aob = phi ptr [ %.pre890, %bb.gt ], [ %i.anm, %.critedge346.i ] ; 2 uses
  %i.aoc = icmp eq ptr %i.aob, %i.aoa
  br i1 %i.aoc, label %bb.gu, label %_ZN2v88internal11HandleScopeD2Ev.exit7, !prof !30

bb.gu:                                            ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.aod = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit7

_ZN2v88internal11HandleScopeD2Ev.exit7:           ; preds = %bb.gu, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %.0.i.i.i75 = phi ptr [ %i.aod, %bb.gu ], [ %i.aob, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 2 uses
  %i.aoe = ptrtoint ptr %.0.i.i.i75 to i64        ; 2 uses
  %i.aof = add i64 %i.aoe, 8
  %i.aog = inttoptr i64 %i.aof to ptr
  store ptr %i.aog, ptr %i.a, align 8
  store i64 %i.anw, ptr %.0.i.i.i75, align 8
  %i.aoh = load i64, ptr %i.ank, align 8
  %i.aoi = icmp eq i64 %i.anw, %i.aoh
  br i1 %i.aoi, label %.thread733, label %bb.gv

bb.gv:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit7
  %i.aoj = load ptr, ptr %i.ang, align 8          ; 2 uses
  %i.aok = load ptr, ptr %i.anh, align 8
  %i.aol = icmp eq ptr %i.aoj, %i.aok
  br i1 %i.aol, label %bb.gw, label %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit, !prof !30

bb.gw:                                            ; preds = %bb.gv
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %21)
  %.pre.i.i = load ptr, ptr %i.ang, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit: ; preds = %bb.gv, %bb.gw
  %i.aom = phi ptr [ %.pre.i.i, %bb.gw ], [ %i.aoj, %bb.gv ] ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store ptr %i.aon, ptr %i.ang, align 8
  store i64 %i.aoe, ptr %i.aom, align 8
  br label %.thread733

.thread733:                                       ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit7.us, %_ZN2v88internal11HandleScopeD2Ev.exit7, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit
  %i.aoo = phi ptr [ %i.anl, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.anl, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.alg, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ] ; 14 uses
  %i.aop = phi ptr [ %i.anj, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.anj, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.akt, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ] ; 3 uses
  %i.aoq = phi ptr [ %i.ang, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ %i.ang, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %i.akq, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ]
  %.us-phi856 = phi i64 [ undef, %_ZN2v88internal11HandleScopeD2Ev.exit7 ], [ undef, %_ZN2v88internal23DirectHandleSmallVectorINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEELm8EE12emplace_backIJRNS0_12DirectHandleISC_EEEEEvDpOT_.exit ], [ %.sroa.0309.1.us, %_ZN2v88internal11HandleScopeD2Ev.exit7.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull %2) #21
  %i.aor = load ptr, ptr %21, align 8             ; 2 uses
  %i.aos = load ptr, ptr %i.aoq, align 8          ; 2 uses
  %i.aot = icmp eq ptr %i.aor, %i.aos
  br i1 %i.aot, label %._crit_edge871.thread, label %.lr.ph870

.lr.ph870:                                        ; preds = %.thread733
  %i.aou = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aox = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aoy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aoz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.apb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.apc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.apd = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ape = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.apf = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.apg = getelementptr inbounds nuw i8, ptr %2, i64 55448 ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %2, i64 64088 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %2, i64 64080 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.apm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.apn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.app = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.apq = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.apr = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aps = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.apu = getelementptr inbounds nuw i8, ptr %2, i64 6352 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.apx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.apy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.apz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aqb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aqc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aqd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aqe = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aqf = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aqg = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.aqk = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aqm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aqn = getelementptr inbounds nuw i8, ptr %2, i64 6256 ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aqq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aqr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aqs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aqu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aqv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aqw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aqx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aqy = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aqz = ptrtoint ptr %.sroa.0461.1 to i64
  %i.ara = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.arb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ard = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.are = getelementptr inbounds nuw i8, ptr %24, i64 40
  %.sroa.41151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.arf = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.arh = getelementptr inbounds nuw i8, ptr %24, i64 56
  br label %bb.gy

bb.gx:                                            ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit8
  %i.ari = getelementptr inbounds nuw i8, ptr %.sroa.0239.0866, i64 8 ; 2 uses
  %i.arj = icmp eq ptr %i.ari, %i.aos
  br i1 %i.arj, label %._crit_edge871, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph870, %bb.gx
  %.0319.i868 = phi i32 [ 0, %.lr.ph870 ], [ %.8327.i, %bb.gx ] ; 18 uses
  %.sroa.0309.3867 = phi i64 [ %.us-phi856, %.lr.ph870 ], [ %.sroa.0309.4, %bb.gx ] ; 2 uses
  %.sroa.0239.0866 = phi ptr [ %i.aor, %.lr.ph870 ], [ %i.ari, %bb.gx ] ; 6 uses
  %i.ark = load ptr, ptr %i.a, align 8
  %i.arl = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.arm = load i32, ptr %i.e, align 8
  %i.arn = add nsw i32 %i.arm, 1
  store i32 %i.arn, ptr %i.e, align 8
  %.sroa.0133.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %.pre.pre.i81 = load i64, ptr %i.aou, align 8
  %i.aro = add i64 %.pre.pre.i81, -1
  %i.arp = inttoptr i64 %i.aro to ptr             ; 3 uses
  %i.arq = load atomic volatile i64, ptr %i.arp monotonic, align 8
  %i.arr = add i64 %i.arq, 11
  %i.ars = inttoptr i64 %i.arr to ptr
  %i.art = load atomic volatile i16, ptr %i.ars monotonic, align 2
  %i.aru = icmp eq i16 %i.art, 128
  br i1 %i.aru, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93:  ; preds = %bb.gy
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arp, i64 12
  %i.arw = load i32, ptr %i.arv, align 4
  %i.arx = trunc i32 %i.arw to i1
  br i1 %i.arx, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93, %bb.gy
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93
  %i.ary = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i82 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i93 ]
  store i32 %i.ary, ptr %7, align 8
  store i32 0, ptr %i.aov, align 4
  store i8 0, ptr %i.aow, align 8
  store i32 0, ptr %i.aox, align 4
  store i32 0, ptr %i.aoy, align 8
  store ptr %2, ptr %i.aoz, align 8
  store ptr null, ptr %i.apb, align 8
  store ptr %.sroa.0133.0.copyload.i, ptr %i.apc, align 8
  store ptr null, ptr %i.apd, align 8
  %i.arz = ptrtoint ptr %.sroa.0133.0.copyload.i to i64
  store i64 %i.arz, ptr %i.ape, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apf, i8 -1, i64 16, i1 false)
  %i.asa = load atomic volatile i64, ptr %i.arp monotonic, align 8
  %i.asb = add i64 %i.asa, 11
  %i.asc = inttoptr i64 %i.asb to ptr
  %i.asd = load atomic volatile i16, ptr %i.asc monotonic, align 2
  %i.ase = and i16 %i.asd, -96
  %.not.i21.i.i.i84 = icmp eq i16 %i.ase, 32
  br i1 %.not.i21.i.i.i84, label %bb.gz, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.gz:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83
  %i.asf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.asg = trunc nuw i8 %i.asf to i1
  %i.ash = load i8, ptr %i.apg, align 8, !range !28
  %i.asi = trunc nuw i8 %i.ash to i1
  %not..i.i.i23.i.i.i88 = xor i1 %i.asg, true
  %i.asj = select i1 %not..i.i.i23.i.i.i88, i1 true, i1 %i.asi
  br i1 %i.asj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ask = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.asl = trunc nuw i8 %i.ask to i1
  br i1 %i.asl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89: ; preds = %bb.ha
  %i.asm = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89, %bb.gz
  %.pn.i.i26.i.i.i91 = phi ptr [ %i.asm, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i89 ], [ %2, %bb.gz ]
  %.in.i.i27.i.i.i92 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i91, i64 58464
  %i.asn = load ptr, ptr %.in.i.i27.i.i.i92, align 8
  %i.aso = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.asn, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aou) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83
  %.sroa.05.0.i22.i.i.i85 = phi ptr [ %i.aso, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i90 ], [ %i.aou, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i83 ]
  store ptr %.sroa.05.0.i22.i.i.i85, ptr %i.apa, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %7) #21
  %i.asp = load i32, ptr %i.aov, align 4
  %.not.i86 = icmp eq i32 %i.asp, 0
  br i1 %.not.i86, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.asq = load ptr, ptr %i.aoz, align 8
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.critedge356.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.ass = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %7, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not820 = icmp eq ptr %i.ass, null
  br i1 %.not820, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28, label %.critedge356.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit28: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit
  %i.ast = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge356.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i87741 = phi ptr [ %i.asr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.ass, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.asu = load i64, ptr %.sroa.0.0.i87741, align 8 ; 2 uses
  %i.asv = and i64 %i.asu, 1
  %i.asw = icmp eq i64 %i.asv, 0
  br i1 %i.asw, label %bb.hc, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.hc:                                            ; preds = %.critedge356.i
  %i.asx = lshr i64 %i.asu, 32
  %i.asy = trunc nuw i64 %i.asx to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.asy, i32 0)
  %i.asz = zext nneg i32 %.sroa.speculated.i to i64
  %i.ata = shl nuw nsw i64 %i.asz, 32             ; 2 uses
  %i.atb = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.atc = load ptr, ptr %i.c, align 8
  %i.atd = icmp eq ptr %i.atb, %i.atc
  br i1 %i.atd, label %bb.hd, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29, !prof !30

bb.hd:                                            ; preds = %bb.hc
  %i.ate = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %.critedge356.i
  %i.atf = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i87741) #21 ; 2 uses
  %.not821 = icmp eq ptr %i.atf, null
  br i1 %.not821, label %bb.he, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %.pre895 = load i64, ptr %i.atf, align 8
  br label %.critedge358.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29: ; preds = %bb.hc, %bb.hd
  %.0.i.i.i94 = phi ptr [ %i.ate, %bb.hd ], [ %i.atb, %bb.hc ] ; 2 uses
  %i.atg = ptrtoint ptr %.0.i.i.i94 to i64
  %i.ath = add i64 %i.atg, 8
  %i.ati = inttoptr i64 %i.ath to ptr
  store ptr %i.ati, ptr %i.a, align 8
  store i64 %i.ata, ptr %.0.i.i.i94, align 8
  br label %.critedge358.i

bb.he:                                            ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.atj = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge358.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29
  %i.atk = phi i64 [ %i.ata, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit29 ], [ %.pre895, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge358.i_crit_edge ] ; 3 uses
  %i.atl = and i64 %i.atk, 1
  %i.atm = icmp eq i64 %i.atl, 0
  br i1 %i.atm, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.critedge358.i
  %i.atn = lshr i64 %i.atk, 32
  %i.ato = trunc nuw i64 %i.atn to i32
  %..i = call i32 @llvm.smax.i32(i32 %i.ato, i32 0)
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.hg:                                            ; preds = %.critedge358.i
  %i.atp = add nsw i64 %i.atk, -1
  %i.atq = inttoptr i64 %i.atp to ptr
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.atr, align 1 ; 3 uses
  %i.ats = fcmp ult double %.0.copyload.i.i.i.i.i, 1.000000e+00
  br i1 %i.ats, label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.att = fcmp olt double %.0.copyload.i.i.i.i.i, f0x41EFFFFFFFE00000
  %.116.i = select i1 %i.att, double %.0.copyload.i.i.i.i.i, double f0x41EFFFFFFFE00000
  %.1.i95 = fptoui double %.116.i to i32
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.hf, %bb.hg, %bb.hh
  %.3.i = phi i32 [ %..i, %bb.hf ], [ %.1.i95, %bb.hh ], [ 0, %bb.hg ] ; 2 uses
  %.sroa.0122.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 3, ptr %6, align 8
  store i32 0, ptr %i.apj, align 4
  store i8 0, ptr %i.apk, align 8
  store i32 0, ptr %i.apl, align 4
  store i32 0, ptr %i.apm, align 8
  store ptr %2, ptr %i.apn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apo, i8 0, i64 16, i1 false)
  store ptr %.sroa.0122.0.copyload.i, ptr %i.app, align 8
  store ptr null, ptr %i.apq, align 8
  %i.atu = ptrtoint ptr %.sroa.0122.0.copyload.i to i64
  store i64 %i.atu, ptr %i.apr, align 8
  store i64 0, ptr %i.aps, align 8
  store i64 -1, ptr %i.apt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #21
  %i.atv = load i32, ptr %i.apj, align 4
  %.not.i96 = icmp eq i32 %i.atv, 0
  br i1 %.not.i96, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread: ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.atw = load ptr, ptr %i.apn, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.critedge360.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98: ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aty = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not822 = icmp eq ptr %i.aty, null
  br i1 %.not822, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30, label %.critedge360.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit30: ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98
  %i.atz = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge360.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread
  %.sroa.0.0.i97751 = phi ptr [ %i.atx, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98.thread ], [ %i.aty, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit98 ] ; 3 uses
  %i.aua = load i64, ptr %.sroa.0.0.i97751, align 8 ; 2 uses
  %i.aub = trunc i64 %i.aua to i1
  br i1 %i.aub, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101: ; preds = %.critedge360.i
  %i.auc = add nsw i64 %i.aua, -1
  %i.aud = inttoptr i64 %i.auc to ptr             ; 2 uses
  %i.aue = load atomic volatile i64, ptr %i.aud monotonic, align 8
  %i.auf = add i64 %i.aue, 11
  %i.aug = inttoptr i64 %i.auf to ptr
  %i.auh = load atomic volatile i16, ptr %i.aug monotonic, align 2
  %i.aui = icmp ult i16 %i.auh, 128
  br i1 %i.aui, label %.critedge362.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102: ; preds = %.critedge360.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101
  %i.auj = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i97751) #21 ; 3 uses
  %.not823 = icmp eq ptr %i.auj, null
  br i1 %.not823, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102
  %.pre896 = load i64, ptr %i.auj, align 8
  %.pre901 = add i64 %.pre896, -1
  %.pre903 = inttoptr i64 %.pre901 to ptr
  br label %.critedge362.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102
  %i.auk = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge362.i:                                   ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101
  %.pre-phi904 = phi ptr [ %.pre903, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge ], [ %i.aud, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101 ]
  %.sroa.07.0.i100755 = phi ptr [ %i.auj, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit102..critedge362.i_crit_edge ], [ %.sroa.0.0.i97751, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i101 ] ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.pre-phi904, i64 12
  %i.aum = load i32, ptr %i.aul, align 4
  %.sroa.0113.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.pre.pre.i103 = load i64, ptr %i.apu, align 8
  %i.aun = add i64 %.pre.pre.i103, -1
  %i.auo = inttoptr i64 %i.aun to ptr             ; 3 uses
  %i.aup = load atomic volatile i64, ptr %i.auo monotonic, align 8
  %i.auq = add i64 %i.aup, 11
  %i.aur = inttoptr i64 %i.auq to ptr
  %i.aus = load atomic volatile i16, ptr %i.aur monotonic, align 2
  %i.aut = icmp eq i16 %i.aus, 128
  br i1 %i.aut, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116: ; preds = %.critedge362.i
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %i.auv = load i32, ptr %i.auu, align 4
  %i.auw = trunc i32 %i.auv to i1
  br i1 %i.auw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116, %.critedge362.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116
  %i.aux = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i104 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i116 ]
  store i32 %i.aux, ptr %5, align 8
  store i32 0, ptr %i.apv, align 4
  store i8 0, ptr %i.apw, align 8
  store i32 0, ptr %i.apx, align 4
  store i32 0, ptr %i.apy, align 8
  store ptr %2, ptr %i.apz, align 8
  store ptr null, ptr %i.aqb, align 8
  store ptr %.sroa.0113.0.copyload.i, ptr %i.aqc, align 8
  store ptr null, ptr %i.aqd, align 8
  %i.auy = ptrtoint ptr %.sroa.0113.0.copyload.i to i64
  store i64 %i.auy, ptr %i.aqe, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf, i8 -1, i64 16, i1 false)
  %i.auz = load atomic volatile i64, ptr %i.auo monotonic, align 8
  %i.ava = add i64 %i.auz, 11
  %i.avb = inttoptr i64 %i.ava to ptr
  %i.avc = load atomic volatile i16, ptr %i.avb monotonic, align 2
  %i.avd = and i16 %i.avc, -96
  %.not.i21.i.i.i106 = icmp eq i16 %i.avd, 32
  br i1 %.not.i21.i.i.i106, label %bb.hi, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107

bb.hi:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105
  %i.ave = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.avf = trunc nuw i8 %i.ave to i1
  %i.avg = load i8, ptr %i.apg, align 8, !range !28
  %i.avh = trunc nuw i8 %i.avg to i1
  %not..i.i.i23.i.i.i111 = xor i1 %i.avf, true
  %i.avi = select i1 %not..i.i.i23.i.i.i111, i1 true, i1 %i.avh
  br i1 %i.avi, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.avj = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.avk = trunc nuw i8 %i.avj to i1
  br i1 %i.avk, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112: ; preds = %bb.hj
  %i.avl = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112, %bb.hi
  %.pn.i.i26.i.i.i114 = phi ptr [ %i.avl, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i112 ], [ %2, %bb.hi ]
  %.in.i.i27.i.i.i115 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i114, i64 58464
  %i.avm = load ptr, ptr %.in.i.i27.i.i.i115, align 8
  %i.avn = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.avm, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.apu) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105
  %.sroa.05.0.i22.i.i.i108 = phi ptr [ %i.avn, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i113 ], [ %i.apu, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i105 ]
  store ptr %.sroa.05.0.i22.i.i.i108, ptr %i.aqa, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #21
  %i.avo = load i32, ptr %i.apv, align 4
  %.not.i109 = icmp eq i32 %i.avo, 0
  br i1 %.not.i109, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107
  %i.avp = load ptr, ptr %i.apz, align 8
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge364.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i107
  %i.avr = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not824 = icmp eq ptr %i.avr, null
  br i1 %.not824, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31, label %.critedge364.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit31: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117
  %i.avs = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge364.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread
  %.sroa.0.0.i110759 = phi ptr [ %i.avq, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117.thread ], [ %i.avr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit117 ] ; 2 uses
  %i.avt = load i64, ptr %.sroa.0.0.i110759, align 8 ; 2 uses
  %i.avu = and i64 %i.avt, 1
  %i.avv = icmp eq i64 %i.avu, 0
  br i1 %i.avv, label %.critedge366.i, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %.critedge364.i
  %i.avw = call ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i110759) #21 ; 2 uses
  %.not825 = icmp eq ptr %i.avw, null
  br i1 %.not825, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre897 = load i64, ptr %i.avw, align 8
  br label %.critedge366.i

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.avx = load i64, ptr %i.aoo, align 8
  br label %bb.il

.critedge366.i:                                   ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge, %.critedge364.i
  %i.avy = phi i64 [ %.pre897, %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge366.i_crit_edge ], [ %i.avt, %.critedge364.i ] ; 3 uses
  %i.avz = and i64 %i.avy, 1
  %i.awa = icmp eq i64 %i.avz, 0
  br i1 %i.awa, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.critedge366.i
  %i.awb = lshr i64 %i.avy, 32
  %i.awc = trunc nuw i64 %i.awb to i32
  %..i123 = call i32 @llvm.smax.i32(i32 %i.awc, i32 0)
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit

bb.hm:                                            ; preds = %.critedge366.i
  %i.awd = add nsw i64 %i.avy, -1
  %i.awe = inttoptr i64 %i.awd to ptr
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %.0.copyload.i.i.i.i.i119 = load double, ptr %i.awf, align 1 ; 3 uses
  %i.awg = fcmp ult double %.0.copyload.i.i.i.i.i119, 1.000000e+00
  br i1 %i.awg, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.awh = fcmp olt double %.0.copyload.i.i.i.i.i119, f0x41EFFFFFFFE00000
  %.116.i120 = select i1 %i.awh, double %.0.copyload.i.i.i.i.i119, double f0x41EFFFFFFFE00000
  %.1.i121 = fptoui double %.116.i120 to i32
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit: ; preds = %bb.hn, %bb.hm, %bb.hl
  %.3.i122 = phi i32 [ %..i123, %bb.hl ], [ %.1.i121, %bb.hn ], [ 0, %bb.hm ]
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aaf, i32 %.3.i122) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqk, i8 0, i64 56, i1 false)
  store ptr %i.aqg, ptr %23, align 8
  store ptr %i.aqj, ptr %i.aqi, align 8
  store ptr %i.aqk, ptr %i.aqh, align 8
  %i.awi = ptrtoint ptr %.sroa.07.0.i100755 to i64
  store i64 %i.awi, ptr %i.aqg, align 8
  %.not.i859 = icmp ugt i32 %.3.i, 1
  br i1 %.not.i859, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit
  %wide.trip.count = zext i32 %.3.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.095.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %2, ptr %.sroa.095.0.copyload.i, ptr null, i64 noundef %indvars.iv, ptr %.sroa.095.0.copyload.i, i32 noundef 3)
  %i.awj = load i32, ptr %i.aql, align 4
  %.not.i128 = icmp eq i32 %i.awj, 0
  br i1 %.not.i128, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread, label %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread: ; preds = %.lr.ph
  %i.awk = load ptr, ptr %i.aqm, align 8
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge368.i

_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130: ; preds = %.lr.ph
  %i.awm = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not832 = icmp eq ptr %i.awm, null
  br i1 %.not832, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34, label %.critedge368.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit34: ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130
  %i.awn = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge368.i:                                   ; preds = %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread
  %.sroa.0.0.i129767 = phi ptr [ %i.awl, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130.thread ], [ %i.awm, %_ZN2v88internal6Object10GetElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEj.exit130 ] ; 4 uses
  %i.awo = load i64, ptr %.sroa.0.0.i129767, align 8 ; 3 uses
  %i.awp = load i64, ptr %i.aop, align 8
  %i.awq = icmp eq i64 %i.awo, %i.awp
  br i1 %i.awq, label %.critedge372.i, label %bb.ho

bb.ho:                                            ; preds = %.critedge368.i
  %i.awr = trunc i64 %i.awo to i1
  br i1 %i.awr, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133: ; preds = %bb.ho
  %i.aws = add nsw i64 %i.awo, -1
  %i.awt = inttoptr i64 %i.aws to ptr
  %i.awu = load atomic volatile i64, ptr %i.awt monotonic, align 8
  %i.awv = add i64 %i.awu, 11
  %i.aww = inttoptr i64 %i.awv to ptr
  %i.awx = load atomic volatile i16, ptr %i.aww monotonic, align 2
  %i.awy = icmp ult i16 %i.awx, 128
  br i1 %i.awy, label %.critedge372.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134: ; preds = %bb.ho, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133
  %i.awz = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i129767) #21 ; 2 uses
  %.not833 = icmp eq ptr %i.awz, null
  br i1 %.not833, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42, label %.critedge372.i

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit42: ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134
  %i.axa = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge372.i:                                   ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134, %.critedge368.i
  %.sroa.0208.0 = phi ptr [ %.sroa.0.0.i129767, %.critedge368.i ], [ %i.awz, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit134 ], [ %.sroa.0.0.i129767, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i133 ]
  %i.axb = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.axc = load ptr, ptr %i.aqi, align 8
  %i.axd = icmp eq ptr %i.axb, %i.axc
  br i1 %i.axd, label %bb.hp, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit, !prof !30

bb.hp:                                            ; preds = %.critedge372.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %23)
  %.pre.i.i135 = load ptr, ptr %i.aqh, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit: ; preds = %.critedge372.i, %bb.hp
  %i.axe = phi ptr [ %.pre.i.i135, %bb.hp ], [ %i.axb, %.critedge372.i ] ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store ptr %i.axf, ptr %i.aqh, align 8
  %i.axg = ptrtoint ptr %.sroa.0208.0 to i64
  store i64 %i.axg, ptr %i.axe, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleIS2_EEEEEvDpOT_.exit, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm8EE12emplace_backIJRNS0_12DirectHandleINS0_6StringEEEEEEvDpOT_.exit
  %.sroa.085.0.copyload.i = load ptr, ptr %.sroa.0239.0866, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre.i136 = load i64, ptr %i.aqn, align 8
  %i.axh = add i64 %.pre.pre.i136, -1
  %i.axi = inttoptr i64 %i.axh to ptr             ; 3 uses
  %i.axj = load atomic volatile i64, ptr %i.axi monotonic, align 8
  %i.axk = add i64 %i.axj, 11
  %i.axl = inttoptr i64 %i.axk to ptr
  %i.axm = load atomic volatile i16, ptr %i.axl monotonic, align 2
  %i.axn = icmp eq i16 %i.axm, 128
  br i1 %i.axn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149: ; preds = %._crit_edge
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axi, i64 12
  %i.axp = load i32, ptr %i.axo, align 4
  %i.axq = trunc i32 %i.axp to i1
  br i1 %i.axq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149, %._crit_edge
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149
  %i.axr = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i137 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i149 ]
  store i32 %i.axr, ptr %3, align 8
  store i32 0, ptr %i.aqo, align 4
  store i8 0, ptr %i.aqp, align 8
  store i32 0, ptr %i.aqq, align 4
  store i32 0, ptr %i.aqr, align 8
  store ptr %2, ptr %i.aqs, align 8
  store ptr null, ptr %i.aqu, align 8
  store ptr %.sroa.085.0.copyload.i, ptr %i.aqv, align 8
  store ptr null, ptr %i.aqw, align 8
  %i.axs = ptrtoint ptr %.sroa.085.0.copyload.i to i64
  store i64 %i.axs, ptr %i.aqx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqy, i8 -1, i64 16, i1 false)
  %i.axt = load atomic volatile i64, ptr %i.axi monotonic, align 8
  %i.axu = add i64 %i.axt, 11
  %i.axv = inttoptr i64 %i.axu to ptr
  %i.axw = load atomic volatile i16, ptr %i.axv monotonic, align 2
  %i.axx = and i16 %i.axw, -96
  %.not.i21.i.i.i139 = icmp eq i16 %i.axx, 32
  br i1 %.not.i21.i.i.i139, label %bb.hq, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140

bb.hq:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138
  %i.axy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.axz = trunc nuw i8 %i.axy to i1
  %i.aya = load i8, ptr %i.apg, align 8, !range !28
  %i.ayb = trunc nuw i8 %i.aya to i1
  %not..i.i.i23.i.i.i144 = xor i1 %i.axz, true
  %i.ayc = select i1 %not..i.i.i23.i.i.i144, i1 true, i1 %i.ayb
  br i1 %i.ayc, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ayd = load i8, ptr %i.aph, align 8, !range !28, !noundef !29
  %i.aye = trunc nuw i8 %i.ayd to i1
  br i1 %i.aye, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145: ; preds = %bb.hr
  %i.ayf = load ptr, ptr %i.api, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145, %bb.hq
  %.pn.i.i26.i.i.i147 = phi ptr [ %i.ayf, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i145 ], [ %2, %bb.hq ]
  %.in.i.i27.i.i.i148 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i147, i64 58464
  %i.ayg = load ptr, ptr %.in.i.i27.i.i.i148, align 8
  %i.ayh = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ayg, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aqn) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138
  %.sroa.05.0.i22.i.i.i141 = phi ptr [ %i.ayh, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i146 ], [ %i.aqn, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i138 ]
  store ptr %.sroa.05.0.i22.i.i.i141, ptr %i.aqt, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ayi = load i32, ptr %i.aqo, align 4
  %.not.i142 = icmp eq i32 %i.ayi, 0
  br i1 %.not.i142, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140
  %i.ayj = load ptr, ptr %i.aqs, align 8
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.critedge374.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i140
  %i.ayl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not826 = icmp eq ptr %i.ayl, null
  br i1 %.not826, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32, label %.critedge374.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit32: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150
  %i.aym = load i64, ptr %i.aoo, align 8
  br label %.thread774

.critedge374.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread
  %.sroa.0.0.i143778 = phi ptr [ %i.ayk, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150.thread ], [ %i.ayl, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit150 ] ; 5 uses
  %i.ayn = load i64, ptr %.sroa.0.0.i143778, align 8 ; 3 uses
  %i.ayo = load i64, ptr %i.aop, align 8
  %.not829 = icmp eq i64 %i.ayn, %i.ayo           ; 3 uses
  br i1 %i.aaa, label %bb.ht, label %bb.hy

bb.ht:                                            ; preds = %.critedge374.i
  %i.ayp = load ptr, ptr %i.aqh, align 8          ; 2 uses
  %i.ayq = load ptr, ptr %23, align 8             ; 8 uses
  %i.ayr = ptrtoint ptr %i.ayp to i64
  %i.ays = ptrtoint ptr %i.ayq to i64             ; 2 uses
  %i.ayt = sub i64 %i.ayr, %i.ays                 ; 2 uses
  %i.ayu = lshr exact i64 %i.ayt, 3
  %i.ayv = trunc i64 %i.ayu to i32                ; 2 uses
  %i.ayw = icmp ugt i32 %i.ayv, 65526
  %.v.i = select i1 %.not829, i32 2, i32 3
  %i.ayx = add nuw nsw i32 %.v.i, %i.ayv          ; 2 uses
  %i.ayy = icmp ugt i32 %i.ayx, 65526
  %i.ayz = select i1 %i.ayw, i1 true, i1 %i.ayy
  br i1 %i.ayz, label %.critedge378.i, label %bb.hu

.critedge378.i:                                   ; preds = %bb.ht
  %i.aza = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 396, ptr null, i64 0) #21
  %i.azb = load i64, ptr %i.aza, align 8
  %i.azc = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.azb, ptr noundef null) #21
  br label %.thread774

bb.hu:                                            ; preds = %bb.ht
  %i.azd = zext nneg i32 %i.ayx to i64            ; 2 uses
  %i.aze = shl nuw nsw i64 %i.azd, 3              ; 5 uses
  %i.azf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aze) #24 ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.azf, i8 0, i64 %i.aze, i1 false)
  %.not873 = icmp eq ptr %i.ayp, %i.ayq
  br i1 %.not873, label %._crit_edge865, label %.lr.ph864.preheader

.lr.ph864.preheader:                              ; preds = %bb.hu
  %i.azg = ptrtoaddr ptr %i.azf to i64
  %i.azh = ashr exact i64 %i.ayt, 3               ; 9 uses
  %min.iters.check = icmp ult i64 %i.azh, 4
  %i.azi = sub i64 %i.azg, %i.ays
  %diff.check = icmp ult i64 %i.azi, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph864.preheader1360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph864.preheader
  %n.vec = and i64 %i.azh, -4                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %index ; 2 uses
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %index ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 16
  %wide.load = load <2 x i64>, ptr %i.azj, align 8
  %wide.load1355 = load <2 x i64>, ptr %i.azl, align 8
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azk, i64 16
  store <2 x i64> %wide.load, ptr %i.azk, align 8
  store <2 x i64> %wide.load1355, ptr %i.azm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.azn = icmp eq i64 %index.next, %n.vec
  br i1 %i.azn, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.azh, %n.vec
  br i1 %cmp.n, label %._crit_edge865, label %.lr.ph864.preheader1360

.lr.ph864.preheader1360:                          ; preds = %.lr.ph864.preheader, %middle.block
  %indvars.iv1206.ph = phi i64 [ 0, %.lr.ph864.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.azh, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph864.prol.loopexit, label %.lr.ph864.prol

.lr.ph864.prol:                                   ; preds = %.lr.ph864.preheader1360, %.lr.ph864.prol
  %indvars.iv1206.prol = phi i64 [ %indvars.iv.next1207.prol, %.lr.ph864.prol ], [ %indvars.iv1206.ph, %.lr.ph864.preheader1360 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph864.prol ], [ 0, %.lr.ph864.preheader1360 ]
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv1206.prol
  %indvars.iv.next1207.prol = add nuw i64 %indvars.iv1206.prol, 1 ; 2 uses
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv1206.prol
  %i.azq = load i64, ptr %i.azo, align 8
  store i64 %i.azq, ptr %i.azp, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph864.prol.loopexit, label %.lr.ph864.prol, !llvm.loop !149

.lr.ph864.prol.loopexit:                          ; preds = %.lr.ph864.prol, %.lr.ph864.preheader1360
  %indvars.iv1206.unr = phi i64 [ %indvars.iv1206.ph, %.lr.ph864.preheader1360 ], [ %indvars.iv.next1207.prol, %.lr.ph864.prol ]
  %i.azr = sub nsw i64 %indvars.iv1206.ph, %i.azh
  %i.azs = icmp ugt i64 %i.azr, -4
  br i1 %i.azs, label %._crit_edge865, label %.lr.ph864

._crit_edge865:                                   ; preds = %.lr.ph864.prol.loopexit, %.lr.ph864, %middle.block, %bb.hu
  %.0330.i.lcssa = phi i64 [ 0, %bb.hu ], [ %i.azh, %middle.block ], [ %i.azh, %.lr.ph864 ], [ %i.azh, %.lr.ph864.prol.loopexit ]
  %i.azt = sext i32 %.sroa.speculated to i64
  %i.azu = shl nsw i64 %i.azt, 32
  %i.azv = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.azw = load ptr, ptr %i.c, align 8
  %i.azx = icmp eq ptr %i.azv, %i.azw
  br i1 %i.azx, label %bb.hv, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.hv:                                            ; preds = %._crit_edge865
  %i.azy = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %._crit_edge865, %bb.hv
  %.0.i.i.i = phi ptr [ %i.azy, %bb.hv ], [ %i.azv, %._crit_edge865 ] ; 2 uses
  %i.azz = ptrtoint ptr %.0.i.i.i to i64          ; 2 uses
  %i.baa = add i64 %i.azz, 8
  %i.bab = inttoptr i64 %i.baa to ptr
  store ptr %i.bab, ptr %i.a, align 8
  store i64 %i.azu, ptr %.0.i.i.i, align 8
  %i.bac = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %.0330.i.lcssa ; 3 uses
  store i64 %i.azz, ptr %i.bac, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 8
  store i64 %i.aqz, ptr %i.bad, align 8
  br i1 %.not829, label %bb.hx, label %bb.hw

.lr.ph864:                                        ; preds = %.lr.ph864.prol.loopexit, %.lr.ph864
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207.3, %.lr.ph864 ], [ %indvars.iv1206.unr, %.lr.ph864.prol.loopexit ] ; 6 uses
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv1206
  %indvars.iv.next1207 = add nuw i64 %indvars.iv1206, 1 ; 2 uses
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv1206
  %i.bag = load i64, ptr %i.bae, align 8
  store i64 %i.bag, ptr %i.baf, align 8
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next1207
  %indvars.iv.next1207.1 = add nuw i64 %indvars.iv1206, 2 ; 2 uses
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv.next1207
  %i.baj = load i64, ptr %i.bah, align 8
  store i64 %i.baj, ptr %i.bai, align 8
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next1207.1
  %indvars.iv.next1207.2 = add nuw i64 %indvars.iv1206, 3 ; 2 uses
  %i.bal = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv.next1207.1
  %i.bam = load i64, ptr %i.bak, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
  %i.bv = load i64, ptr %3, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !28
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !28, !noundef !29
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #21
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #3

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.f = zext nneg i32 %.sroa.speculated to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = tail call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nonnull %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.011.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.q, %bb.d ]
  ret ptr %.sroa.011.0
}

declare ptr @_ZN2v88internal6RegExp11Exec_SingleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEEiNS4_INS0_15RegExpMatchInfoEEE(ptr noundef, ptr, ptr, i32 noundef, ptr) local_unnamed_addr #3

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #3

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef, ptr, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #3

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #3

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal6Object18SpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_10JSFunctionEEE(ptr noundef, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_ZN2v88internal6String7IndexOfEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_j(ptr noundef, ptr, ptr, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS5_IS7_EEEEENT_IS7_E9MaybeTypeESB_SB_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, i64) local_unnamed_addr #3

declare ptr @_ZN2v88internal11RegExpUtils10RegExpExecEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef, ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal11RegExpUtils12SetLastIndexEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEm(ptr noundef, ptr, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN2v88internal11RegExpUtils18AdvanceStringIndexENS0_6TaggedINS0_6StringEEEmb(i64, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal11RegExpUtils12GetLastIndexEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal10FixedArray10SetAndGrowINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_iNS3_INS0_6ObjectEEE(ptr noundef, ptr, i32 noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_122NewJSArrayWithElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi(ptr noundef %0, ptr %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr %1, i32 noundef %2) #21 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a, i8 noundef zeroext 3, i32 noundef %i.h, i8 noundef zeroext 0) #21
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !28
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !28, !noundef !29
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal11RegExpUtils18IsUnmodifiedRegExpEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal11RegExpUtils22SetAdvancedStringIndexEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEEb(ptr noundef, ptr, ptr, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZN2v88internal6String15GetSubstitutionEPNS0_7IsolateEPNS1_5MatchENS0_12DirectHandleIS1_EEj(ptr noundef, ptr noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch8GetMatchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef %i.b, ptr %.sroa.0.0.copyload, i32 noundef 0, ptr noundef null) #21
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch9GetPrefixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8 ; 3 uses
  %i.j = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, %i.h
  br i1 %i.o, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr nonnull %.sroa.0.0.copyload, i32 noundef 0, i32 noundef %i.h) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.r, %.critedge.i ], [ %.sroa.0.0.copyload, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch9GetSuffixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i2 = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i2, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = lshr i64 %i.f, 32                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.j = trunc nuw i64 %i.g to i32
  %i.k = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr nonnull %.sroa.0.0.copyload, i32 noundef %i.j, i32 noundef %i.o) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.r, %.critedge.i ], [ %.sroa.0.0.copyload, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1073741824, 1073741824) i32 @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch12CaptureCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = sdiv i32 %i.h, 2
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch16HasNamedCapturesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120MatchInfoBackedMatch10GetCaptureEiPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef %i.b, ptr %.sroa.02.0.copyload, i32 noundef %1, ptr noundef %2) #21 ; 3 uses
  %i.e = load i8, ptr %2, align 1, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch9GetPrefixEv:bb.a
  br i1 %.not, label %.critedge.i, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

.critedge.i:                                      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr nonnull %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef %i.h) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.k, %.critedge.i ], [ %.sroa.0.0.copyload.i, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch9GetSuffixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i3 = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %.sroa.0.0.copyload.i3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i2 = load ptr, ptr %i.i, align 8
  %i.j = load i64, ptr %.sroa.0.0.copyload.i2, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, %i.h
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.f) ; 2 uses
  %i.p = icmp eq i32 %.sroa.speculated, 0
  br i1 %i.p, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr nonnull %.sroa.0.0.copyload.i3, i32 noundef %.sroa.speculated, i32 noundef %i.f) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.a, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.s, %.critedge.i ], [ %.sroa.0.0.copyload.i3, %bb.a ]
  ret ptr %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch12CaptureCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorINS_8internal12DirectHandleINS2_6ObjectEEEE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorINS_8internal12DirectHandleINS2_6ObjectEEEE6lengthEv.exit: ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %i.b to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch16HasNamedCapturesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch10GetCaptureEiPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 648
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  br label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load i64, ptr %i.f, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp ult i16 %i.w, 128
  br i1 %i.x, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  %i.y = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %i.o, ptr nonnull %i.f) #21
  br label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.b
  %.sroa.05.0 = phi ptr [ %i.n, %bb.b ], [ %i.y, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %i.f, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatch15GetNamedCaptureENS0_12DirectHandleINS0_6StringEEEPNS4_5Match12CaptureStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 3 uses
  %i.g = and i32 %i.f, -536870909
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i32 %i.f to i1
  %i.j = and i32 %i.f, 3
  %i.k = icmp eq i32 %i.j, 0
  %or.cond.i = or i1 %i.k, %i.i
  br i1 %or.cond.i, label %_ZN2v88internal6String14AsIntegerIndexEPm.exit, label %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30

_ZN2v88internal6String14AsIntegerIndexEPm.exit:   ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull %i.a) #21
  br i1 %i.l, label %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread, label %_ZN2v88internal6String14AsIntegerIndexEPm.exit._ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30_crit_edge

_ZN2v88internal6String14AsIntegerIndexEPm.exit._ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30_crit_edge: ; preds = %_ZN2v88internal6String14AsIntegerIndexEPm.exit
  %.pre.pre.i.pre = load i64, ptr %1, align 8
  %.pre = add i64 %.pre.pre.i.pre, -1
  %.pre39 = inttoptr i64 %.pre to ptr
  br label %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30

_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread: ; preds = %bb.a, %_ZN2v88internal6String14AsIntegerIndexEPm.exit
  store i32 0, ptr %2, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30: ; preds = %_ZN2v88internal6String14AsIntegerIndexEPm.exit._ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30_crit_edge, %bb.b
  %.pre-phi40 = phi ptr [ %.pre39, %_ZN2v88internal6String14AsIntegerIndexEPm.exit._ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30_crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.04.0.copyload = load ptr, ptr %i.r, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.s = load atomic volatile i64, ptr %.pre-phi40 monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 128
  br i1 %i.w, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30
  %i.x = getelementptr inbounds nuw i8, ptr %.pre-phi40, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread30
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.aa = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.aa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.04.0.copyload, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = ptrtoint ptr %.sroa.04.0.copyload to i64
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 -1, i64 16, i1 false)
  %i.an = load atomic volatile i64, ptr %.pre-phi40 monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ar, 32
  br i1 %.not.i21.i.i.i, label %bb.c, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 55448
  %i.av = load i8, ptr %i.au, align 8, !range !28
  %i.aw = trunc nuw i8 %i.av to i1
  %not..i.i.i23.i.i.i = xor i1 %i.at, true
  %i.ax = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.aw
  br i1 %i.ax, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 64088
  %i.az = load i8, ptr %i.ay, align 8, !range !28, !noundef !29
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 64080
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.c
  %.pn.i.i26.i.i.i = phi ptr [ %i.bc, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.q, %bb.c ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bd = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.be = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr nonnull %1) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.be, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %1, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ag, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.bf = load i32, ptr %i.ab, align 4
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bg = load ptr, ptr %i.af, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.f

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bi = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i35 = phi ptr [ %i.bh, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.bi, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 4 uses
  %i.bj = load i64, ptr %.sroa.0.0.i35, align 8
  %i.bk = load ptr, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 648
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %2, align 4
  %i.bo = load ptr, ptr %i.p, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 688
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.h:                                             ; preds = %bb.f
  store i32 1, ptr %2, align 4
  %i.bq = load ptr, ptr %i.p, align 8
  %i.br = load i64, ptr %.sroa.0.0.i35, align 8   ; 2 uses
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.bt = add nsw i64 %i.br, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = icmp ult i16 %i.by, 128
  br i1 %i.bz, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.h
  %i.ca = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %i.bq, ptr nonnull %.sroa.0.0.i35) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.g, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread
  %.sroa.016.2 = phi ptr [ %i.o, %_ZN2v88internal6String14AsIntegerIndexEPm.exit.thread ], [ %i.bp, %bb.g ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ %i.ca, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %.sroa.0.0.i35, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret ptr %.sroa.016.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6String5MatchD2Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_117VectorBackedMatchD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal8JSRegExp10InitializeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEES7_(ptr noundef, ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal8JSRegExp15StringFromFlagsEPNS0_7IsolateENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef, i32) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal34RegExpResultsCache_MatchGlobalAtom6TryGetEPNS0_7IsolateENS0_6TaggedINS0_6StringEEES6_PiS7_(ptr noundef, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal34RegExpResultsCache_MatchGlobalAtom9TryInsertEPNS0_7IsolateENS0_6TaggedINS0_6StringEEES6_ii(ptr noundef, i64, i64, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier8ForRangeINS0_14FullObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_(ptr noundef, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = and i16 %i.r, -121
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.critedge39, label %.critedge

.critedge39:                                      ; preds = %bb.b
  tail call void @_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.l, i32 noundef 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.v, i32 noundef 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.c:                                             ; preds = %.critedge39
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge39, %bb.c
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.critedge39 ] ; 3 uses
  %i.ac = ptrtoint ptr %.0.i.i to i64
  %i.ad = add i64 %i.ac, 8
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.w, align 8
  store i64 %i.l, ptr %.0.i.i, align 8
  br label %bb.ah

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not = icmp eq i8 %2, 5
  br i1 %.not, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %.critedge
  %i.af = and i64 %i.a, -262144
end_hunk_4

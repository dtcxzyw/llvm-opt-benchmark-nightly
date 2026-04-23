inline.NumInlined: 1117
inline.NumDeleted: 582
begin_hunk_0_@_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE:bb.a
  br i1 %i.q, label %bb.c, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE:bb.a
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE:bb.a
  %i.bb = and i32 %i.ba, 32
  %.not114 = icmp eq i32 %i.bb, 0
  %. = select i1 %.not114, i8 0, i8 22
  %i.bc = tail call ptr @_ZN2v88internal7Factory35NewSharedFunctionInfoForApiFunctionENS0_17MaybeDirectHandleINS0_6StringEEENS0_12DirectHandleINS0_20FunctionTemplateInfoEEENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.049.0, ptr nonnull %1, i8 noundef zeroext %.) #9 ; 4 uses
  %i.bd = load i64, ptr %1, align 8               ; 4 uses
  %i.be = load i64, ptr %i.bc, align 8            ; 5 uses
  %i.bf = add i64 %i.bd, 71                       ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE:bb.a
  br i1 %.not39.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bd, i64 noundef %i.bf, i64 %i.be) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i, label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE24set_shared_function_infoENS0_6TaggedINS0_5UnionIJNS0_18SharedFunctionInfoENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bd, i64 %i.bf, i64 %i.be) #9
  br label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE24set_shared_function_infoENS0_6TaggedINS0_5UnionIJNS0_18SharedFunctionInfoENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE24set_shared_function_infoENS0_6TaggedINS0_5UnionIJNS0_18SharedFunctionInfoENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.m, %bb.l, %bb.h, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
end_hunk_3
begin_hunk_4_@_ZN2v88internal20FunctionTemplateInfo36SealAndPrepareForPromotionToReadOnlyEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  br i1 %.not42, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN2v88internal20FunctionTemplateInfo36SealAndPrepareForPromotionToReadOnlyEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  br i1 %.not3.i, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  unreachable

bb.h:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@_Z8V8_FatalPKcz
; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal20FunctionTemplateInfo32AllocateFunctionTemplateRareDataEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE27NewFunctionTemplateRareDataEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 ; 2 uses
  %i.b = load i64, ptr %1, align 8                ; 4 uses
  %i.c = load i64, ptr %i.a, align 8              ; 5 uses
  %i.d = add i64 %i.b, 63                         ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal20FunctionTemplateInfo32AllocateFunctionTemplateRareDataEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  br i1 %.not39.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.d, i64 %i.c) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.d, i64 %i.c) #9
  br label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
end_hunk_7
begin_hunk_8_@_ZN2v88internal20FunctionTemplateInfo32AllocateFunctionTemplateRareDataEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE27NewFunctionTemplateRareDataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden { i64, i8 } @_ZN2v88internal20FunctionTemplateInfo24TryGetCachedPropertyNameEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
end_hunk_8
begin_hunk_9_@_ZN2v88internal20FunctionTemplateInfo24TryGetCachedPropertyNameEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE:bb.a
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -1073741824, 1073741824) i32 @_ZNK2v88internal20FunctionTemplateInfo18GetCFunctionsCountEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 63
end_hunk_9
begin_hunk_10_@_ZNK2v88internal20FunctionTemplateInfo18GetCFunctionsCountEv:bb.a
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZNK2v88internal20FunctionTemplateInfo12GetCFunctionEPNS0_7IsolateEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 63
end_hunk_10
begin_hunk_11_@_ZNK2v88internal20FunctionTemplateInfo12GetCFunctionEPNS0_7IsolateEi:bb.a
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal20FunctionTemplateInfo13GetCSignatureEPNS0_7IsolateEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 63
end_hunk_11
begin_hunk_12_@_ZN2v88internal18ObjectTemplateInfo36SealAndPrepareForPromotionToReadOnlyEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  br i1 %.not27, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_12
begin_hunk_13_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.d, i8 noundef zeroext 1, i8 0) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
end_hunk_13
begin_hunk_14_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.a
  %i.j = call ptr @_ZN2v88internal7Factory25NewDictionaryTemplateInfoENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.j

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
end_hunk_14
begin_hunk_15_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.023.036, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %.sroa.023.036, align 8
  %i.n = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.l, i64 %i.m, i1 noundef zeroext false) #9 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  br i1 %or.cond.i, label %_ZN2v88internal6String12AsArrayIndexEPj.exit, label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread33

_ZN2v88internal6String12AsArrayIndexEPj.exit:     ; preds = %bb.e
  %i.bk = call noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull %i.a) #9
  br i1 %i.bk, label %.loopexit, label %_ZN2v88internal6String12AsArrayIndexEPj.exit._ZN2v88internal6String12AsArrayIndexEPj.exit.thread33_crit_edge, !prof !12

_ZN2v88internal6String12AsArrayIndexEPj.exit._ZN2v88internal6String12AsArrayIndexEPj.exit.thread33_crit_edge: ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit
end_hunk_16
begin_hunk_17_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  br label %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread33

.loopexit:                                        ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit, %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10
  unreachable

_ZN2v88internal6String12AsArrayIndexEPj.exit.thread33: ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit._ZN2v88internal6String12AsArrayIndexEPj.exit.thread33_crit_edge, %bb.e
end_hunk_17
begin_hunk_18_@_ZN2v88internal22DictionaryTemplateInfo6CreateEPNS0_7IsolateERKNS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE:bb.a
  br i1 %.not39.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bs, i64 noundef %i.bt, i64 %i.bl) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bs, i64 %i.bt, i64 %i.bl) #9
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit.thread33, %bb.i, %bb.j
end_hunk_18
begin_hunk_19_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.k, label %bb.b, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #9
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
end_hunk_19
begin_hunk_20_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.y, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
end_hunk_20
begin_hunk_21_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.bj, label %bb.i, label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #9
  br label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.h, %bb.i
end_hunk_21
begin_hunk_22_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.bu, label %bb.j, label %_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit146, !prof !5

bb.j:                                             ; preds = %.lr.ph
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #9
  %.sroa.0.0.copyload.i145.pre = load ptr, ptr %i.bs, align 8
  br label %_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit146

end_hunk_22
begin_hunk_23_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  %i.cs = add i64 %i.cr, %i.bv
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = tail call i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.cu) #9
  %i.cw = load i64, ptr %.sroa.0.0.copyload.i145, align 8
  %i.cx = tail call noundef zeroext i1 @_ZN2v88internal9FieldType11NowContainsENS0_6TaggedIS1_EENS2_INS0_6ObjectEEE(i64 %i.cv, i64 %i.cw) #9
  br i1 %i.cx, label %bb.n, label %.critedge133

bb.n:                                             ; preds = %_ZN2v88internal6Object18FitsRepresentationENS0_6TaggedIS1_EENS0_14RepresentationEb.exit.thread
end_hunk_23
begin_hunk_24_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.p, %bb.q
  %i.di = phi double [ %i.de, %bb.p ], [ %.0.copyload.i.i.i.i.i, %bb.q ]
  %i.dj = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #9 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = add i64 %i.dk, -1
  %i.dm = inttoptr i64 %i.dl to ptr
end_hunk_24
begin_hunk_25_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %.not317, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  unreachable

bb.s:                                             ; preds = %._crit_edge
end_hunk_25
begin_hunk_26_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.eh, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ei = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %i.ax, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #9 ; 3 uses
  %i.ej = load i64, ptr %i.v, align 8
  %i.ek = trunc i64 %i.ej to i32
  %i.el = icmp sgt i32 %i.ek, 0
end_hunk_26
begin_hunk_27_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.ep, label %bb.v, label %_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit, !prof !5

bb.v:                                             ; preds = %.lr.ph323
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #9
  %.sroa.0.0.copyload.i144.pre = load ptr, ptr %i.en, align 8
  br label %_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit

end_hunk_27
begin_hunk_28_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %.not39.i.i.i8.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.05.0.i.i.i, i64 noundef %i.go, i64 %i.fv) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i.i5.i, label %_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.05.0.i.i.i, i64 %i.go, i64 %i.fv) #9
  br label %_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal10JSReceiver14property_arrayEv.exit.i, %bb.ae, %bb.af, %bb.y
end_hunk_28
begin_hunk_29_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br label %.critedge129

.critedge129:                                     ; preds = %"_ZSt8count_ifIN2v810MemorySpanINS0_10MaybeLocalINS0_5ValueEEEE8IteratorEZNS0_8internal22DictionaryTemplateInfo11NewInstanceENS7_12DirectHandleINS7_13NativeContextEEENS9_IS8_EERKS5_E3$_0ENSt15iterator_traitsIT_E15difference_typeESH_SH_T0_.exit.thread", %bb.f, %.critedge133
  %i.hc = tail call ptr @_ZN2v88internal7Factory25ObjectLiteralMapFromCacheENS0_12DirectHandleINS0_13NativeContextEEEi(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %0, i32 noundef %i.av) #9 ; 2 uses
  %i.hd = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.hc, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #9 ; 5 uses
  %i.he = load i64, ptr %i.v, align 8             ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  %.not324 = icmp sgt i32 %i.hf, 0
end_hunk_29
begin_hunk_30_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.ht, label %bb.ah, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.ah:                                            ; preds = %bb.ag
  %i.hu = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #9
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ag, %bb.ah
end_hunk_30
begin_hunk_31_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  %i.hx = inttoptr i64 %i.hw to ptr
  store ptr %i.hx, ptr %i.g, align 8
  store i64 %i.hq, ptr %.0.i.i151, align 8
  %i.hy = call ptr @_ZN2v88internal3Map24TransitionToDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesENS0_17PropertyConstnessENS0_11StoreOriginE(ptr noundef nonnull %i.b, ptr %.sroa.0180.0325, ptr nonnull %.0.i.i151, ptr nonnull %i.hk, i32 noundef 0, i32 noundef 1, i32 noundef 1) #9 ; 4 uses
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = add i64 %i.hz, 15
  %i.ib = inttoptr i64 %i.ia to ptr
end_hunk_31
begin_hunk_32_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %.not319, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %i.b, ptr %i.hd, ptr nonnull %i.hy, i32 noundef 0) #9
  %i.ie = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.if = add i64 %i.ie, 39
  %i.ig = inttoptr i64 %i.if to ptr
end_hunk_32
begin_hunk_33_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  %i.iu = load atomic volatile i64, ptr %i.it monotonic, align 8
  %i.iv = lshr i64 %i.iu, 32
  %i.iw = trunc nuw i64 %i.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ix = load i64, ptr %i.hd, align 8
  store i64 %i.ix, ptr %3, align 8
  %i.iy = sext i32 %.0120327 to i64
  %i.iz = load i64, ptr %i.hk, align 8
  call void @_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.iy, i32 %i.iw, i64 %i.iz)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.ja = add nsw i32 %.0120327, 1
  %.pre = load i64, ptr %i.v, align 8
  br label %bb.aj
end_hunk_33
begin_hunk_34_@_ZN2v88internal22DictionaryTemplateInfo11NewInstanceENS0_12DirectHandleINS0_13NativeContextEEENS2_IS1_EERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE:bb.a
  br i1 %i.jk, label %bb.am, label %_ZN2v88internal12DirectHandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.am:                                            ; preds = %bb.al
  %i.jl = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #9
  br label %_ZN2v88internal12DirectHandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.al, %bb.am
end_hunk_34
begin_hunk_35_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate37slow_object_with_object_prototype_mapEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #9
  br label %_ZN2v88internal7Isolate37slow_object_with_object_prototype_mapEv.exit

_ZN2v88internal7Isolate37slow_object_with_object_prototype_mapEv.exit: ; preds = %bb.a, %bb.b
end_hunk_35
begin_hunk_36_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i29, align 8
  %i.t = tail call ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i29, i32 noundef %3, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #9 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, 7
  %i.w = inttoptr i64 %i.v to ptr
end_hunk_36
begin_hunk_37_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Isolate37slow_object_with_object_prototype_mapEv.exit
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7Isolate37slow_object_with_object_prototype_mapEv.exit, %bb.c
end_hunk_37
begin_hunk_38_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  br i1 %.not39.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ak, i64 noundef %i.al, i64 %i.aj) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal10JSReceiver26set_raw_properties_or_hashENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ak, i64 %i.al, i64 %i.aj) #9
  br label %_ZN2v88internal10JSReceiver26set_raw_properties_or_hashENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10JSReceiver26set_raw_properties_or_hashENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %._crit_edge, %bb.g, %bb.h
end_hunk_38
begin_hunk_39_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  br i1 %i.bj, label %bb.j, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit28, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit28

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit28: ; preds = %bb.i, %bb.j
end_hunk_39
begin_hunk_40_@_ZN2v88internal12_GLOBAL__N_132CreateSlowJSObjectWithPropertiesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEERKNS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEEi:bb.a
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %i.k, align 8
  store i64 %i.bg, ptr %.0.i.i27, align 8
  %i.bo = tail call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3AddINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_NSA_INS0_4NameEEENSA_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr %.sroa.041.058, ptr nonnull %.0.i.i27, ptr nonnull %i.ba, i32 0, ptr noundef null) #9
  %.pre = load i64, ptr %i.af, align 8
  br label %bb.k

end_hunk_40
begin_hunk_41_@_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE
declare ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 16384
  %.not = icmp eq i64 %i.a, 0
end_hunk_41
begin_hunk_42_@_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE:bb.a
  br i1 %.not39.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.f, i64 %2) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal8JSObject28RawFastInobjectPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.f, i64 %2) #9
  br label %_ZN2v88internal8JSObject28RawFastInobjectPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.h:                                             ; preds = %bb.a
end_hunk_42
begin_hunk_43_@_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE:bb.a
  br i1 %.not39.i.i.i8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.05.0.i.i, i64 noundef %i.ad, i64 %2) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i5, label %_ZN2v88internal8JSObject28RawFastInobjectPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.05.0.i.i, i64 %i.ad, i64 %2) #9
  br label %_ZN2v88internal8JSObject28RawFastInobjectPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal8JSObject28RawFastInobjectPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.n, %bb.m, %_ZNK2v88internal10JSReceiver14property_arrayEv.exit, %bb.g, %bb.f, %bb.b
end_hunk_43
begin_hunk_44_@_ZN2v88internal8JSObject17FastPropertyAtPutENS0_10FieldIndexENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12TemplateInfo28UncacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load i64, ptr %2, align 8
end_hunk_44
begin_hunk_45_@_ZN2v88internal12TemplateInfo28UncacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  br i1 %i.ab, label %bb.e, label %_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
end_hunk_45
begin_hunk_46_@_ZN2v88internal12TemplateInfo28UncacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  %i.av = lshr i32 %i.au, 16
  %.masked.i.i = and i32 %i.au, 1073741823
  %i.aw = xor i32 %.masked.i.i, %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1
  %i.ax = call ptr @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE6RemoveEPNS0_7IsolateENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEEPbi(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %2, ptr noundef nonnull %i.a, i32 noundef %i.aw) #9 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %.0.i.i
  br i1 %i.ay, label %_ZN2v88internal7Context38set_slow_template_instantiations_cacheENS0_6TaggedINS0_18EphemeronHashTableEEE.exit, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

end_hunk_46
begin_hunk_47_@_ZN2v88internal12TemplateInfo28UncacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  br i1 %.not39.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bb, i64 noundef %i.bc, i64 %.pre) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i, label %_ZN2v88internal7Context38set_slow_template_instantiations_cacheENS0_6TaggedINS0_18EphemeronHashTableEEE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bb, i64 %i.bc, i64 %.pre) #9
  br label %_ZN2v88internal7Context38set_slow_template_instantiations_cacheENS0_6TaggedINS0_18EphemeronHashTableEEE.exit

_ZN2v88internal7Context38set_slow_template_instantiations_cacheENS0_6TaggedINS0_18EphemeronHashTableEEE.exit: ; preds = %_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.j, %bb.i, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread68, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN2v88internal7Context38set_slow_template_instantiations_cacheENS0_6TaggedINS0_18EphemeronHashTableEEE.exit, %bb.c
end_hunk_47
begin_hunk_48_@_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi
declare void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2, i64 %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
end_hunk_48
begin_hunk_49_@_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE:bb.a

bb.f:                                             ; preds = %bb.d
  %i.ad = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, ptr noundef %i.ad) #9
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #10
  unreachable

_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.e
end_hunk_49
begin_hunk_50_@_ZN2v88internal8JSObject12WriteToFieldENS0_13InternalIndexENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, ptr %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
end_hunk_50
begin_hunk_51_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_51
begin_hunk_52_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  br i1 %i.ao, label %bb.f, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
end_hunk_52
begin_hunk_53_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  br i1 %.not39.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ba, i64 noundef %i.bb, i64 %i.av) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ba, i64 %i.bb, i64 %i.av) #9
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit
end_hunk_53
begin_hunk_54_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  br i1 %i.bp, label %bb.m, label %_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18EphemeronHashTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.l, %bb.m
end_hunk_54
begin_hunk_55_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  %i.cp = lshr i32 %i.co, 16
  %.masked.i.i = and i32 %i.co, 1073741823
  %i.cq = xor i32 %.masked.i.i, %i.cp
  %i.cr = tail call ptr @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3PutEPNS0_7IsolateENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEESB_i(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %2, ptr %4, i32 noundef %i.cq) #9
  %i.cs = load i64, ptr %i.cr, align 8            ; 6 uses
  %i.ct = load i64, ptr %.0.i.i, align 8
  %.not = icmp eq i64 %i.cs, %i.ct
end_hunk_55
begin_hunk_56_@_ZN2v88internal12TemplateInfo26CacheTemplateInstantiationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeENS4_INS0_6ObjectEEE:bb.a
  br i1 %.not39.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cu, i64 noundef %i.cv, i64 %i.cs) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cu, i64 %i.cv, i64 %i.cs) #9
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.n, %bb.t, %bb.s, %bb.o, %.critedge, %bb.k, %bb.j, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
end_hunk_56
begin_hunk_57_@_ZN2v88internal6String16SlowAsArrayIndexEPj
declare noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

declare ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #3

end_hunk_57
begin_hunk_58_@_ZNK2v88internal14Representation8MnemonicEv:bb.a
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #10
  unreachable

switch.lookup:                                    ; preds = %bb.a
end_hunk_58
begin_hunk_59_@_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3PutEPNS0_7IsolateENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEESB_i
declare ptr @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE3PutEPNS0_7IsolateENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEESB_i(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal12TemplateInfo24ProbeInstantiationsCacheEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 7
end_hunk_59
begin_hunk_60_@_ZN2v88internal12TemplateInfo24ProbeInstantiationsCacheEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  br i1 %i.z, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
end_hunk_60
begin_hunk_61_@_ZN2v88internal12TemplateInfo24ProbeInstantiationsCacheEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  %.033.i = phi i32 [ 1, %.lr.ph.i ], [ %i.bs, %bb.j ] ; 2 uses
  %.sroa.06.0.in32.i = phi i32 [ %.sroa.0.0.in.i.i, %.lr.ph.i ], [ %i.bu, %bb.j ] ; 2 uses
  %i.bq = load i64, ptr %2, align 8
  %i.br = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.bq, i64 %i.bp) #9
  br i1 %i.br, label %_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_61
begin_hunk_62_@_ZN2v88internal12TemplateInfo24ProbeInstantiationsCacheEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a

_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi.exit: ; preds = %bb.i
  %.sroa.06.0.le.i = zext i32 %.sroa.06.0.in32.i to i64
  %i.cb = tail call i64 @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 %.sroa.06.0.le.i) #9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 568
end_hunk_62
begin_hunk_63_@_ZN2v88internal12TemplateInfo24ProbeInstantiationsCacheEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS1_11CachingModeE:bb.a
  br i1 %i.cg, label %bb.k, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit21, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi.exit
  %i.ch = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #9
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit21

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit21: ; preds = %_ZN2v88internal9HashTableINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi.exit, %bb.k
end_hunk_63
begin_hunk_64_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_64
begin_hunk_65_@llvm.vector.reduce.add.v2i32
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_65

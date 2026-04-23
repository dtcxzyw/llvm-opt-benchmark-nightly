inline.NumInlined: 3035
inline.NumDeleted: 949
begin_hunk_0_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.480", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %.pre = load i64, ptr %i.q, align 8
  %.pre77 = load ptr, ptr %i.a, align 8
  %.pre78 = load ptr, ptr %i.c, align 8
  %.pre79 = add i64 %.pre, -1
  %.pre80 = inttoptr i64 %.pre79 to ptr
  br label %.critedge31.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit

.critedge31.i:                                    ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre-phi81 = phi ptr [ %.pre80, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge ], [ %i.k, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.s = phi ptr [ %.pre78, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge ], [ %i.d, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %4 = phi ptr [ %.pre77, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge ], [ %i.b, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.sroa.07.0.i6771 = phi ptr [ %i.q, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge31.i_crit_edge ], [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %5 = load atomic volatile i64, ptr %.pre-phi81 monotonic, align 8 ; 2 uses
  %i.t = icmp eq ptr %4, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !10

bb.b:                                             ; preds = %.critedge31.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.critedge31.i, %bb.b
  %.0.i6 = phi ptr [ %i.u, %bb.b ], [ %4, %.critedge31.i ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i6 to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.a, align 8
  store i64 %5, ptr %.0.i6, align 8
  %i.y = add i64 %5, 15
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i32, ptr %i.z acquire, align 4
  %i.ab = lshr i32 %i.aa, 10
end_hunk_3
begin_hunk_4_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i6771, i32 noundef 0, i32 noundef 18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.not74 = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select = select i1 %.not74, ptr %i.ah, ptr %i.ag
end_hunk_4
begin_hunk_5_@_ZN2v88internal40Runtime_ObjectGetOwnPropertyNamesTryFastEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %bb.c
  %i.ai = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i6771, i32 noundef 0, i32 noundef 16, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.not75 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select76 = select i1 %.not75, ptr %i.aj, ptr %i.ai
end_hunk_5
begin_hunk_6_@_ZN2v88internal39Runtime_DefineKeyedOwnPropertyInLiteralEiPmPNS0_7IsolateE:bb.a
  ret i64 %.sroa.059.1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_HasFastPackedElementsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal29Runtime_HasFastPackedElementsEiPmPNS0_7IsolateE:bb.a
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal20Runtime_IsJSReceiverEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
end_hunk_8
begin_hunk_9_@_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %.critedge.i
  %.pre = load ptr, ptr %i.b, align 8
  %.pre71 = load ptr, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit
  %3 = phi ptr [ %.pre71, %._crit_edge.loopexit ], [ %i.e, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit ]
  %4 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = add i64 %.sroa.0.0.copyload.i.i.i, -1
end_hunk_9
begin_hunk_10_@_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.aq = add i64 %i.ap, 1375
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = icmp eq ptr %4, %3
  br i1 %i.at, label %bb.e, label %_ZN2v88internal7Isolate15object_functionEv.exit, !prof !10

bb.e:                                             ; preds = %._crit_edge
end_hunk_10
begin_hunk_11_@_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br label %_ZN2v88internal7Isolate15object_functionEv.exit

_ZN2v88internal7Isolate15object_functionEv.exit:  ; preds = %._crit_edge, %bb.e
  %.0.i.i.i = phi ptr [ %i.au, %bb.e ], [ %4, %._crit_edge ] ; 3 uses
  %i.av = ptrtoint ptr %.0.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
end_hunk_11
begin_hunk_12_@_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !23

bb.q:                                             ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit
  %i.ed = sub i64 %.sink.i.i, %i.az
end_hunk_12
begin_hunk_13_@llvm.cttz.i16
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_13

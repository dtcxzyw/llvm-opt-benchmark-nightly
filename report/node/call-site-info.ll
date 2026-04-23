inline.NumInlined: 2570
inline.NumDeleted: 899
begin_hunk_0
@.str.29 = private unnamed_addr constant [29 x i8] c"kind() == CodeKind::BASELINE\00", align 1
@switch.table._ZNK2v88internal14Representation8MnemonicEv = private unnamed_addr constant [6 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.12, ptr @.str.16], align 8

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAllEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.memcpy.p0.p0.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo19IsPromiseAllSettledEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal12CallSiteInfo19IsPromiseAllSettledEv:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAnyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK2v88internal12CallSiteInfo12IsPromiseAnyEv:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo8IsNativeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNK2v88internal12CallSiteInfo8IsNativeEv:bb.a
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i64, i8 } @_ZNK2v88internal12CallSiteInfo9GetScriptEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK2v88internal12CallSiteInfo9GetScriptEv:bb.a
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo6IsEvalEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNK2v88internal12CallSiteInfo16IsUserJavaScriptEv:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal12CallSiteInfo21GetSharedFunctionInfoEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
end_hunk_6
begin_hunk_7_@_ZNK2v88internal12CallSiteInfo21GetSharedFunctionInfoEv:bb.a
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsMethodCallEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK2v88internal12CallSiteInfo12IsMethodCallEv:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo10IsToplevelEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal4wasm21GetWasmFunctionOffsetEPKNS1_10WasmModuleEj

declare noundef i32 @_ZN2v88internal6Script15GetColumnNumberENS0_12DirectHandleIS1_EEi(ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal12CallSiteInfo11GetScriptIdEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZNK2v88internal12CallSiteInfo11GetScriptIdEv:bb.a
  ret i32 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal12CallSiteInfo13GetScriptNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZNK2v88internal12CallSiteInfo24GetScriptNameOrSourceURLEv:bb.a

declare i64 @_ZN2v88internal6Script18GetNameOrSourceURLEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal12CallSiteInfo15GetScriptSourceEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZNK2v88internal12CallSiteInfo15GetScriptSourceEv:bb.a
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZNK2v88internal12CallSiteInfo25GetScriptSourceMappingURLEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a

bb.at:                                            ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.as
  %.sroa.079.0159.i = phi i64 [ %i.il, %bb.as ], [ %.sroa.079.1148.i, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ] ; 9 uses
  %.sroa.6.0158.i = phi i64 [ %i.ij, %bb.as ], [ %i.si, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ] ; 2 uses
  %i.in = add i64 %.sroa.6.0158.i, -1             ; 2 uses
  %i.io = inttoptr i64 %i.in to ptr               ; 9 uses
  %i.ip = load atomic volatile i64, ptr %i.io monotonic, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a

.lr.ph.i40.i:                                     ; preds = %bb.bt
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %10 = load i64, ptr %i.v, align 8               ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, %.lr.ph.i40.i
end_hunk_14
begin_hunk_15_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a
  %i.ol = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.om = getelementptr inbounds i8, ptr %i.oj, i64 %i.ol ; 3 uses
  %i.on = load atomic volatile i64, ptr %i.om monotonic, align 8 ; 3 uses
  %i.oo = icmp eq i64 %i.on, %10
  br i1 %i.oo, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

end_hunk_15
begin_hunk_16_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a

.lr.ph.i47.i:                                     ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 16 ; 3 uses
  %11 = load i64, ptr %i.v, align 8               ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, %.lr.ph.i47.i
end_hunk_16
begin_hunk_17_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a
  %i.qp = ashr exact i64 %sext.i.i.i.i48.i, 29
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 %i.qp
  %i.qr = load atomic volatile i64, ptr %i.qq monotonic, align 8 ; 7 uses
  %i.qs = icmp eq i64 %i.qr, %11
  br i1 %i.qs, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

end_hunk_17
begin_hunk_18_@_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE:bb.a
  br i1 %i.se, label %.critedge.i, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_129InferMethodNameFromFastObjectEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS4_INS0_10JSFunctionEEENS4_INS0_19PrimitiveHeapObjectEEE.exit.thread.i
  %.pre162.i = load i64, ptr %i.w, align 8
  %i.sf = load atomic volatile i64, ptr %i.io monotonic, align 8
  %i.sg = add i64 %i.sf, 23
  %i.sh = inttoptr i64 %i.sg to ptr
  %i.si = load i64, ptr %i.sh, align 8            ; 2 uses
  %i.sj = icmp eq i64 %i.si, %.pre162.i
  br i1 %i.sj, label %.critedge.i, label %bb.at, !llvm.loop !14

.critedge.i:                                      ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %_ZN2v88internal12_GLOBAL__N_129InferMethodNameFromFastObjectEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS4_INS0_10JSFunctionEEENS4_INS0_19PrimitiveHeapObjectEEE.exit.thread.i, %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i, %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i, %bb.at
end_hunk_18
begin_hunk_19_@_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE:bb.a

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_19

inline.NumInlined: 360
inline.NumDeleted: 175
begin_hunk_0_@_ZN2v88internal12HandlerTableC2ENS0_6TaggedINS0_4CodeEEE:bb.a
  br label %_ZNK2v88internal4Code21handler_table_addressEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #10, !noalias !5 ; 0 uses
  %i.m = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #10, !noalias !5 ; 0 uses
  %i.n = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #10, !noalias !5 ; 2 uses
  %i.o = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #10, !noalias !5 ; 0 uses
  %i.p = add i64 %1, 89
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i16, ptr %i.q, align 2
end_hunk_0
begin_hunk_1_@_ZN2v88internal12HandlerTableC2EmiNS1_12EncodingModeE:bb.a
  br label %_ZN2v88internal12HandlerTable17EntrySizeFromModeENS1_12EncodingModeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZN2v88internal12HandlerTable17EntrySizeFromModeENS1_12EncodingModeE.exit: ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@_ZN2v88internal12HandlerTableC2EmiNS1_12EncodingModeE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HandlerTableC2EPKNS0_4wasm8WasmCodeE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK2v88internal4wasm8WasmCode13handler_tableEv(ptr noundef nonnull align 8 dereferenceable(112) %1) #10
  %i.b = tail call noundef i32 @_ZNK2v88internal4wasm8WasmCode18handler_table_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %1) #10
  %i.c = sdiv i32 %i.b, 2
  %i.d = ashr i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal12HandlerTable17EntrySizeFromModeENS1_12EncodingModeE:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@_ZNK2v88internal12HandlerTable11GetRangeEndEi:bb.a
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal12HandlerTable23GetRangeHandlerBitfieldEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
end_hunk_4
begin_hunk_5_@_ZNK2v88internal12HandlerTable23GetRangeHandlerBitfieldEi:bb.a
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 0, 268435456) i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
end_hunk_5
begin_hunk_6_@_ZNK2v88internal12HandlerTable12GetRangeDataEi:bb.a
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 0, 8) i32 @_ZNK2v88internal12HandlerTable18GetRangePredictionEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
end_hunk_6
begin_hunk_7_@_ZNK2v88internal12HandlerTable18GetRangePredictionEi:bb.a
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal12HandlerTable14HandlerWasUsedEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
end_hunk_7
begin_hunk_8_@_ZNK2v88internal12HandlerTable14HandlerWasUsedEi:bb.a
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal12HandlerTable15MarkHandlerUsedEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = or disjoint i32 %i.a, 2
end_hunk_8
begin_hunk_9_@_ZNK2v88internal12HandlerTable16GetReturnHandlerEi:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal12HandlerTable13SetRangeStartEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal12HandlerTable13SetRangeStartEii:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal12HandlerTable11SetRangeEndEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = or disjoint i32 %i.a, 1
end_hunk_10
begin_hunk_11_@_ZN2v88internal12HandlerTable15SetRangeHandlerEiiNS1_15CatchPredictionE:bb.a
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZN2v88internal12HandlerTable15SetRangeHandlerEiiNS1_15CatchPredictionE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal12HandlerTable12SetRangeDataEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = or disjoint i32 %i.a, 3
end_hunk_12
begin_hunk_13_@_ZN2v88internal12HandlerTable12SetRangeDataEii:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, -15) i32 @_ZN2v88internal12HandlerTable14LengthForRangeEi(i32 noundef %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = shl i32 %0, 4
  ret i32 %i.a
end_hunk_13
begin_hunk_14_@_ZN2v88internal12HandlerTable14LengthForRangeEi:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal12HandlerTable20EmitReturnTableStartEPNS0_9AssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit:
  tail call void @_ZN2v88internal9Assembler9DataAlignEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_14
begin_hunk_15_@_ZN2v88internal9Assembler9DataAlignEi
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HandlerTable15EmitReturnEntryEPNS0_9AssemblerEii(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler2ddEj(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1) #10
  %i.a = shl i32 %2, 4
  tail call void @_ZN2v88internal9Assembler2ddEj(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.a) #10
  ret void
}

declare void @_ZN2v88internal9Assembler2ddEj(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2v88internal12HandlerTable21NumberOfReturnEntriesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  ret i32 %i.a
end_hunk_15
begin_hunk_16_@_ZN2v88internal12HandlerTable12LookupReturnEi:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HandlerTable22HandlerTableRangePrintERSo(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 45) #10 ; 0 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge
end_hunk_16
begin_hunk_17_@_ZN2v88internal12HandlerTable22HandlerTableRangePrintERSo:bb.a
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.aa = and i32 %i.z, 7
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 3) #10 ; 0 uses
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 4, ptr %i.ag, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.j) #10 ; 4 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.8, i64 noundef 1) #10 ; 0 uses
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 4, ptr %i.an, align 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.o) #10 ; 4 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.9, i64 noundef 7) #10 ; 0 uses
  %i.aq = load ptr, ptr %i.ao, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 4, ptr %i.au, align 8
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %i.u) #10 ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.10, i64 noundef 13) #10 ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %i.aa) #10 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.11, i64 noundef 7) #10 ; 0 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.y) #10
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.12, i64 noundef 2) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %0, align 8
  %i.bc = sext i32 %i.bb to i64
end_hunk_17
begin_hunk_18_@_ZNSolsEi
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HandlerTable23HandlerTableReturnPrintERSo(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 19) #10 ; 0 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge
end_hunk_18
begin_hunk_19_@_ZN2v88internal12HandlerTable23HandlerTableReturnPrintERSo:bb.a
  %i.v = and i32 %i.u, -75
  %i.w = or disjoint i32 %i.v, 8
  store i32 %i.w, ptr %i.t, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 4) #10 ; 0 uses
  %i.y = load ptr, ptr %1, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4, ptr %i.ac, align 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.j) #10 ; 4 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.15, i64 noundef 6) #10 ; 0 uses
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 4, ptr %i.aj, align 8
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %i.o) #10 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
end_hunk_19
begin_hunk_20_@_ZN2v88internal12HandlerTable23HandlerTableReturnPrintERSo:bb.a
  %i.ar = and i32 %i.aq, -75
  %i.as = or disjoint i32 %i.ar, 2
  store i32 %i.as, ptr %i.ap, align 8
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.16, i64 noundef 1) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %0, align 8
  %i.av = sext i32 %i.au to i64
end_hunk_20
begin_hunk_21_@_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_21

inline.NumInlined: 928
inline.NumDeleted: 552
begin_hunk_0
%"struct.std::_Head_base.619" = type { ptr }
%"class.v8::base::Vector" = type { ptr, i64 }

$_ZN2v88internal26OnHeapConsumedPreparseDataD0Ev = comdat any

$_ZN2v88internal24BaseConsumedPreparseDataINS0_6TaggedINS0_12PreparseDataEEEE27GetDataForSkippableFunctionEPNS0_4ZoneEiPiS8_S8_S8_PbPNS0_12LanguageModeE = comdat any
end_hunk_0
begin_hunk_1_@_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE:bb.a
  %i.q = load i32, ptr %i.a, align 8
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %i.s, align 8                ; 2 uses
  %.not.i4.i = icmp eq ptr %3, %4
  br i1 %.not.i4.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %5

5:                                                ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_15RawPreparseDataEEEPT_m.exit
  store ptr %4, ptr %2, align 8
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_15RawPreparseDataEEEPT_m.exit, %5
  %6 = load i32, ptr %i.a, align 8
  %7 = sext i32 %6 to i64
  store ptr %i.m, ptr %0, align 8
  store i64 %7, ptr %i.a, align 8
  ret void
}

end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal19PreparseDataBuilder23SaveScopeAllocationDataEPNS0_16DeclarationScopeEPNS0_6ParserE:bb.a
  %.pre.i.i.i = load i64, ptr %i.aq, align 8
  br label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a

_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a: ; preds = %bb.l, %bb.k
  %i.au = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = add i64 %i.au, %i.an
end_hunk_3
begin_hunk_4_@_ZN2v88internal19PreparseDataBuilder23SaveScopeAllocationDataEPNS0_16DeclarationScopeEPNS0_6ParserE:bb.a
  %i.az = load i32, ptr %i.q, align 8
  %i.ba = sext i32 %i.az to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %i.e, align 8             ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %i.bb, align 8               ; 2 uses
  %.not.i4.i.i = icmp eq ptr %4, %5
  br i1 %.not.i4.i.i, label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit, label %6

6:                                                ; preds = %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a
  store ptr %5, ptr %3, align 8
  br label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit

_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a, %6
  %7 = load i32, ptr %i.q, align 8
  %8 = sext i32 %7 to i64
  store ptr %i.av, ptr %i.e, align 8
  store i64 %8, ptr %i.q, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit
  ret void
}

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIPvSaIS0_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not23 = icmp ult i64 %i.l, %1
end_hunk_5

inline.NumInlined: 927
inline.NumDeleted: 551
begin_hunk_0
%"struct.std::_Head_base.619" = type { ptr }
%"class.v8::base::Vector" = type { ptr, i64 }

$_ZNSt6vectorIhSaIhEE6resizeEm = comdat any

$_ZN2v88internal26OnHeapConsumedPreparseDataD0Ev = comdat any

$_ZN2v88internal24BaseConsumedPreparseDataINS0_6TaggedINS0_12PreparseDataEEEE27GetDataForSkippableFunctionEPNS0_4ZoneEiPiS8_S8_S8_PbPNS0_12LanguageModeE = comdat any
end_hunk_0
begin_hunk_1_@_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE:bb.a
  %i.q = load i32, ptr %i.a, align 8
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef 0)
  %2 = load i32, ptr %i.a, align 8
  %3 = sext i32 %2 to i64
  store ptr %i.m, ptr %0, align 8
  store i64 %3, ptr %i.a, align 8
  ret void
}

end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %4 = load ptr, ptr %3, align 8                  ; 6 uses
  %5 = load ptr, ptr %0, align 8                  ; 6 uses
  %6 = ptrtoint ptr %4 to i64                     ; 2 uses
  %7 = ptrtoint ptr %5 to i64                     ; 2 uses
  %8 = sub i64 %6, %7                             ; 9 uses
  %9 = icmp ugt i64 %1, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = sub nuw i64 %1, %8                        ; 6 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64                   ; 2 uses
  %15 = sub i64 %14, %6                           ; 2 uses
  %16 = icmp sgt i64 %8, -1
  tail call void @llvm.assume(i1 %16)
  %17 = xor i64 %8, 9223372036854775807           ; 2 uses
  %18 = icmp ule i64 %15, %17
  tail call void @llvm.assume(i1 %18)
  %.not23.i = icmp ult i64 %15, %11
  br i1 %.not23.i, label %25, label %19

19:                                               ; preds = %10
  store i8 0, ptr %4, align 1
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %21 = add nsw i64 %11, -1                       ; 2 uses
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %4, i64 %11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %20, i8 0, i64 %21, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %23, %19
  %.0.i.i.i.i = phi ptr [ %24, %23 ], [ %20, %19 ]
  store ptr %.0.i.i.i.i, ptr %3, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

25:                                               ; preds = %10
  %26 = icmp ult i64 %17, %11
  br i1 %26, label %27, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %25
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %8, i64 %11)
  %28 = add nuw i64 %.sroa.speculated.i.i, %8
  %29 = tail call i64 @llvm.umin.i64(i64 %28, i64 9223372036854775807) ; 2 uses
  %30 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %29) #20 ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %8 ; 2 uses
  store i8 0, ptr %31, align 1
  %32 = add nsw i64 %11, -1                       ; 2 uses
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i, label %34

34:                                               ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %35, i8 0, i64 %32, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i: ; preds = %34, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %4, %5
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %36

36:                                               ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %5, i64 %8, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %36, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %5, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %37

37:                                               ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %38 = sub i64 %14, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %38) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %37, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %30, ptr %0, align 8
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 %1
  store ptr %39, ptr %3, align 8
  %40 = getelementptr inbounds nuw i8, ptr %30, i64 %29
  store ptr %40, ptr %12, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

41:                                               ; preds = %2
  %42 = icmp ult i64 %1, %8
  br i1 %42, label %43, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %4, %44
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %45

45:                                               ; preds = %43
  store ptr %44, ptr %3, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %45, %43, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal19PreparseDataBuilder23SaveScopeAllocationDataEPNS0_16DeclarationScopeEPNS0_6ParserE:bb.a
  %.pre.i.i.i = load i64, ptr %i.aq, align 8
  br label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a

_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a: ; preds = %bb.k, %bb.l
  %i.au = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = add i64 %i.au, %i.an
end_hunk_3
begin_hunk_4_@_ZN2v88internal19PreparseDataBuilder23SaveScopeAllocationDataEPNS0_16DeclarationScopeEPNS0_6ParserE:bb.a
  %i.az = load i32, ptr %i.q, align 8
  %i.ba = sext i32 %i.az to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %i.e, align 8
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef 0)
  %3 = load i32, ptr %i.q, align 8
  %4 = sext i32 %3 to i64
  store ptr %i.av, ptr %i.e, align 8
  store i64 %4, ptr %i.q, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit.a
  ret void
}

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIPvSaIS0_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not23 = icmp ult i64 %i.l, %1
end_hunk_5

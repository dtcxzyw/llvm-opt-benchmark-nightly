inline.NumInlined: 1883
inline.NumDeleted: 548
begin_hunk_0_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 2305843009213693951, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 2305843009213693951, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_5

inline.NumInlined: 879
inline.NumDeleted: 248
begin_hunk_0_@_ZN10MallocPlus18memory_reorder_allEPi:bb.a
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14 ; 10 uses
  br i1 %.not, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN10MallocPlus18memory_reorder_allEPi:bb.a
  br i1 %i.ap, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nuw i64 %i.ak, %i.ao                ; 6 uses
  %i.ar = ptrtoint ptr %.sroa.21.0233 to i64      ; 2 uses
  %i.as = sub i64 %i.ar, %i.al
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = icmp ult i64 %i.ao, 2305843009213693952
  call void @llvm.assume(i1 %i.au)
  %4 = xor i64 %i.ao, 2305843009213693951         ; 2 uses
  %i.av = icmp ule i64 %i.at, %4
  call void @llvm.assume(i1 %i.av)
  %.not28.i = icmp ult i64 %i.at, %i.aq
end_hunk_1
begin_hunk_2_@_ZN10MallocPlus18memory_reorder_allEPi:bb.a
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %5 = icmp ult i64 %4, %i.aq
  br i1 %5, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
end_hunk_2

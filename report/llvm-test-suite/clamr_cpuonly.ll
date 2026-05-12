inline.NumInlined: 370
inline.NumDeleted: 188
begin_hunk_0_@do_calc:bb.a
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.d, align 8, !tbaa !62  ; 4 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !60  ; 4 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@do_calc:bb.a
  br i1 %i.az, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ba = sub nuw i64 %i.as, %i.ay                ; 6 uses
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = sub i64 %i.bc, %i.av
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp ult i64 %i.ay, 2305843009213693952
  call void @llvm.assume(i1 %i.bf)
  %4 = xor i64 %i.ay, 2305843009213693951         ; 2 uses
  %i.bg = icmp ule i64 %i.be, %4
  call void @llvm.assume(i1 %i.bg)
  %.not28.i = icmp ult i64 %i.be, %i.ba
end_hunk_1
begin_hunk_2_@do_calc:bb.a
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.q:                                             ; preds = %bb.o
  %5 = icmp ult i64 %4, %i.ba
  br i1 %5, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 2305843009213693951          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_3

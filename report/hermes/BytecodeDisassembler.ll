inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc25ObjdumpDisassembleVisitor11listOpCodesEv:bb.a
  %i.ck = sub i64 %i.ci, %i.cj                    ; 10 uses
  %i.cl = and i64 %.sroa.01.1.extract.shift, 255
  %i.cm = add i64 %i.ck, -1
  %i.cn = add i64 %i.cm, %i.cl                    ; 5 uses
  %i.co = icmp ugt i64 %i.cn, %i.ck
  br i1 %i.co, label %bb.q, label %bb.y

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.cp = sub nuw i64 %i.cn, %i.ck                ; 6 uses
  %i.cq = ptrtoint ptr %.sroa.23.1 to i64         ; 2 uses
  %i.cr = sub i64 %i.cq, %i.ci                    ; 2 uses
  %i.cs = icmp sgt i64 %i.ck, -1
  call void @llvm.assume(i1 %i.cs)
  %3 = xor i64 %i.ck, 9223372036854775807         ; 2 uses
  %i.ct = icmp ule i64 %i.cr, %3
  call void @llvm.assume(i1 %i.ct)
  %.not23.i.i = icmp ult i64 %i.cr, %i.cp
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc25ObjdumpDisassembleVisitor11listOpCodesEv:bb.a
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.t:                                             ; preds = %bb.q
  %4 = icmp ult i64 %3, %i.cp
  br i1 %4, label %bb.u, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10

bb.u:                                             ; preds = %bb.t
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIjjESaIS1_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !383
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIjjESaIS1_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not23.i = icmp ult i64 %i.n, %i.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairIjjESaIS1_EE6resizeEm:bb.a
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_4

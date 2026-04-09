inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %3 = sub i64 %i.a, %i.f
  %4 = add i64 %3, -8                             ; 2 uses
  %i.t = lshr i64 %4, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.v = sub i64 %i.a, %i.f
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.w
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.w
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %5 = sub i64 %i.e, %i.a
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ai = lshr i64 %6, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %6, 184
  br i1 %min.iters.check47, label %.lr.ph.i.i.i17.preheader64, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ak = sub i64 %i.e, %i.a
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %scevgep41.a = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.am = getelementptr i8, ptr %scevgep41.a, i64 8
  %scevgep42 = getelementptr i8, ptr %1, i64 %i.al
  %bound043 = icmp ult ptr %i.ah, %scevgep42
  %bound144 = icmp ult ptr %1, %i.am
  %found.conflict45 = and i1 %bound043, %bound144
  br i1 %found.conflict45, label %.lr.ph.i.i.i17.preheader64, label %vector.ph48

end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !258  ; 6 uses
  %5 = sub i64 %2, %i.b
  %6 = add i64 %5, 9223372036854775807
  %i.c = icmp ult i64 %6, %4
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_2

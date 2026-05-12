inline.NumInlined: 2830
inline.NumDeleted: 1091
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.cqn = ptrtoint ptr %i.cql to i64
  %i.cqo = ptrtoint ptr %i.cqm to i64
  %i.cqp = sub i64 %i.cqn, %i.cqo                 ; 2 uses
  %i.cqq = ashr exact i64 %i.cqp, 4               ; 4 uses
  %i.cqr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.cqs = load ptr, ptr %i.cqr, align 8, !tbaa !113, !noalias !541 ; 7 uses
  %i.cqt = load ptr, ptr %25, align 16, !tbaa !116, !noalias !541 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  br i1 %i.cqy, label %bb.adq, label %bb.adu

bb.adq:                                           ; preds = %bb.adp
  %i.cqz = sub nuw nsw i64 %i.cqq, %i.cqx         ; 5 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.crb = load ptr, ptr %i.cra, align 16, !tbaa !206, !noalias !541
  %i.crc = ptrtoint ptr %i.crb to i64             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.cre = ashr exact i64 %i.crd, 4               ; 2 uses
  %i.crf = icmp ult i64 %i.cqx, 576460752303423488
  call void @llvm.assume(i1 %i.crf)
  %118 = sub nuw nsw i64 576460752303423487, %i.cqx
  %i.crg = icmp ule i64 %i.cre, %118
  call void @llvm.assume(i1 %i.crg)
  %.not28.i.i.i = icmp ult i64 %i.cre, %i.cqz
end_hunk_2
begin_hunk_3_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i.i

bb.adr:                                           ; preds = %bb.adq
  %119 = icmp ugt i64 %i.cqq, 576460752303423487
  br i1 %119, label %bb.ads, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ads:                                           ; preds = %bb.adr
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm:bb.a
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %1, %i.e                     ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.e
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.g
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 576460752303423487
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm:bb.a
.prol.loopexit:                                   ; preds = %.prol.preheader, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.07.i.i.i32.i.unr = phi ptr [ %i.ao, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %.prol.preheader ]
  %.056.i.i.i33.i.unr = phi i64 [ %i.g, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.aq, %.prol.preheader ]
  %i.as = sub nsw i64 %i.e, %1
  %i.at = icmp ugt i64 %i.as, -8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new

end_hunk_9

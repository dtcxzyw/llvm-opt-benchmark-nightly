begin_hunk_0
  %i.c = sext i64 %i.a to i128
  %i.d = sub nsw i128 0, %i.c                     ; 2 uses
  %i.e = icmp samesign ult i128 %i.d, 10
  br i1 %i.e, label %_ZN8facebook5velox11countDigitsEo.exit65, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.b, %bb.h
  %.0.i63138 = phi i32 [ %i.m, %bb.h ], [ 1, %bb.b ] ; 4 uses
end_hunk_0
begin_hunk_1

bb.i:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i64 %i.a, 10
  br i1 %i.o, label %_ZN8facebook5velox11countDigitsEo.exit65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.p = zext nneg i64 %i.a to i128
end_hunk_1
begin_hunk_2
  %i.y = icmp samesign ult i128 %.011.i135, 100000
  br i1 %i.y, label %_ZN8facebook5velox11countDigitsEo.exit65, label %.lr.ph, !llvm.loop !72

_ZN8facebook5velox11countDigitsEo.exit65:         ; preds = %bb.o, %bb.h, %bb.i, %bb.b, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c
  %4 = phi i32 [ %i.m, %bb.h ], [ %i.k, %bb.g ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.v, %bb.n ], [ %i.r, %bb.j ], [ %i.t, %bb.l ], [ 1, %bb.b ], [ 1, %bb.i ], [ %i.x, %bb.o ] ; 2 uses
  %.lobit.neg = ashr i64 %i.a, 63
  %.neg = trunc nsw i64 %.lobit.neg to i32
  %i.z = icmp eq i32 %4, %.neg
end_hunk_2
begin_hunk_3
  %.not = icmp ugt i64 %1, %i.aa
  br i1 %.not, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = icmp eq ptr %3, %2
  br i1 %i.ab, label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.t, !prof !41

end_hunk_3
begin_hunk_4
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.ah:                                            ; preds = %bb.r
  %i.by = sub nuw i64 %1, %i.aa                   ; 4 uses
  br i1 %i.b, label %_ZSt4fillIPccEvT_S1_RKT0_.exit67, label %_ZSt4fillIPccEvT_S1_RKT0_.exit69

_ZSt4fillIPccEvT_S1_RKT0_.exit67:                 ; preds = %bb.ah
  store i8 45, ptr %3, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bz, i8 48, i64 %i.by, i1 false)
  %i.cb = load i64, ptr %0, align 8, !tbaa !38    ; 4 uses
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = icmp eq ptr %i.ca, %2
end_hunk_4
begin_hunk_5
  %i.dw = getelementptr inbounds nuw i8, ptr %.026.i71, i64 %i.cv
  br label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit90

_ZSt4fillIPccEvT_S1_RKT0_.exit69:                 ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 %i.by ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 48, i64 %i.by, i1 false)
  %.pre = load i64, ptr %0, align 8, !tbaa !38    ; 4 uses
  %i.dy = icmp eq ptr %i.dx, %2
  br i1 %i.dy, label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit90, label %bb.aw, !prof !41
end_hunk_5

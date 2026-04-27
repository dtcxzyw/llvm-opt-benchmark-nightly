inline.NumInlined: 865
inline.NumDeleted: 342
begin_hunk_0_@_ZN5arrow15TimestampParser12MakeStrptimeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i, %bb.f
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29, !noalias !18
  %i.af = icmp eq i8 %i.ae, 37
  br i1 %i.af, label %bb.c, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a
.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE:bb.a
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %.lr.ph.i

end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE:bb.a
.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.cz, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %i.cp = load i64, ptr %gep.i.us, align 8, !tbaa !72
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !72
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE:bb.a

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dq = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %5 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %8, %bb.w ] ; 2 uses
  %6 = zext i16 %5 to i64
  %7 = getelementptr [8 x i8], ptr %i.dq, i64 %6
  %i.dr = load i64, ptr %7, align 8, !tbaa !72
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %8 = add i16 %5, -1                             ; 3 uses
  store i16 %8, ptr %i.a, align 8, !tbaa !91
  %.not.i51 = icmp eq i16 %8, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !119

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi:bb.a
.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
end_hunk_9

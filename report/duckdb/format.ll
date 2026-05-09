inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_16nonfinite_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !1359
  %i.b = load i32, ptr %2, align 8, !tbaa !3332   ; 2 uses
  %.not.not.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = select i1 %.not.not.i, i64 3, i64 4      ; 4 uses
  %i.d = zext i32 %i.a to i64                     ; 6 uses
  %.not39 = icmp samesign ult i64 %i.c, %i.d
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %0, align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_16nonfinite_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i ; 4 uses
  %i.aj = shl nuw nsw i64 %i.d, 2
  %i.ak = add nsw i64 %i.aj, -4
  %.neg = select i1 %.not.not.i, i64 -12, i64 -16
  %3 = add nsw i64 %.neg, %i.ak                   ; 2 uses
  %i.al = lshr exact i64 %3, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check114 = icmp ult i64 %3, 28
  br i1 %min.iters.check114, label %.lr.ph.i.i.i.i.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_16nonfinite_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx.i.i62
  %i.dp = shl nuw nsw i64 %i.d, 2
  %i.dq = add nsw i64 %i.dp, -4
  %.neg141 = select i1 %.not.not.i, i64 -12, i64 -16
  %4 = add nsw i64 %.neg141, %i.dq                ; 2 uses
  %i.dr = lshr exact i64 %4, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check128 = icmp ult i64 %4, 28
  br i1 %min.iters.check128, label %.lr.ph.i.i.i.i63.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %_ZNK10duckdb_fmt2v68internal16nonfinite_writerIwEclIRPwEEvOT_.exit61
end_hunk_2

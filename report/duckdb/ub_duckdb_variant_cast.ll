inline.NumInlined: 6391
inline.NumDeleted: 1307
begin_hunk_0_@_ZN6duckdb7variant23ConvertVariantToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b:bb.a
  %i.lm = icmp ugt i64 %i.ke, %i.ll
  br i1 %i.lm, label %bb.bw, label %._crit_edge181, !llvm.loop !1242

.body.a:                                          ; preds = %bb.bx, %bb.bw
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
end_hunk_0
begin_hunk_1_@_ZN6duckdb7variant23ConvertVariantToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b:bb.a
  %i.ki = icmp ugt i64 %i.ja, %i.kh
  br i1 %i.ki, label %bb.br, label %._crit_edge169, !llvm.loop !1321

.body.a:                                          ; preds = %bb.bs, %bb.br
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
end_hunk_1

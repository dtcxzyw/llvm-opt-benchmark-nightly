inline.NumInlined: 5859
inline.NumDeleted: 2214
begin_hunk_0_@_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_:bb.a
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader94, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_:bb.a
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check73 = icmp ult i64 %i.ap, 16
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.i.i26.preheader93, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
end_hunk_1

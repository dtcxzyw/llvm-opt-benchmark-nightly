inline.NumInlined: 34235
inline.NumDeleted: 5823
begin_hunk_0_@_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSC_:bb.a
  %i.as = load i32, ptr %i.w, align 8, !tbaa !1977
  %i.at = icmp eq i32 %i.ar, %i.as
  tail call void @llvm.assume(i1 %i.at)
  %4 = icmp samesign ugt i32 %i.ar, 1
  tail call void @llvm.assume(i1 %4)
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.au, ptr %i.x, align 8, !tbaa !1931
end_hunk_0

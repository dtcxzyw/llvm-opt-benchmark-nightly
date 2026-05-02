inline.NumInlined: 89609
inline.NumDeleted: 14427
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderIS9_EEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_:bb.a
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !8780
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !831, !range !307, !noundef !308
  %i.al = xor i8 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8763, !range !307, !noundef !308
  %i.ao = or i8 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1249
  %i.ar = icmp ne ptr %i.aq, null
  %22 = trunc i8 %i.ao to i1
  %23 = or i1 %i.ar, %22                          ; 2 uses
  %24 = zext i1 %23 to i8
  store i8 %24, ptr %i.am, align 1, !tbaa !8763
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_:bb.a
  %i.r = icmp ne ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8763, !range !307, !noundef !308
  %22 = trunc nuw i8 %i.t to i1
  %23 = or i1 %i.r, %22
  %24 = zext i1 %23 to i8
  %i.u = or i8 %i.m, %24                          ; 2 uses
  store i8 %i.u, ptr %i.s, align 1, !tbaa !8763
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions13TrailFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_iEEEJS9_iEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIS9_EEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_:bb.a
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 137 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8763, !range !307, !noundef !308
  %25 = trunc nuw i8 %i.aq to i1
  %26 = or i1 %i.ao, %25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1249
  %i.at = icmp ne ptr %i.as, null
  %27 = or i1 %26, %i.at                          ; 2 uses
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %i.ap, align 1, !tbaa !8763
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
end_hunk_2

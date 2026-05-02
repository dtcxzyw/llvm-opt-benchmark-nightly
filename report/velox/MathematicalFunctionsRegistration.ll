inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESD_EEEJSD_SD_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EERKSL_IKNS0_4TypeEERNS1_7EvalCtxERSN_:bb.a
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !20158, !range !392, !noundef !393
  %i.dy = or i8 %i.dx, %i.dp
  %or.cond.i.not.i.i.i.i.i = icmp eq i8 %i.dy, 0
  %i.dz = load i8, ptr %i.m, align 1, !tbaa !20155, !range !392, !noundef !393
  %i.ea = or i8 %i.dz, %i.dt
  %43 = select i1 %or.cond.i.not.i.i.i.i.i, i8 %i.ea, i8 1
  %i.eb = getelementptr inbounds nuw i8, ptr %38, i64 272
  %i.ec = getelementptr inbounds nuw i8, ptr %38, i64 280
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !17754, !nonnull !393, !align !891
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_3MapINS0_7VarcharEdEESD_EEEJSD_SD_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EERKSL_IKNS0_4TypeEERNS1_7EvalCtxERSN_:bb.a
  %i.en = load i8, ptr %i.em, align 8, !tbaa !20158, !range !392, !noundef !393
  %i.eo = or i8 %i.en, %i.ef
  %or.cond.i.not.i37.i.i.i.i = icmp eq i8 %i.eo, 0
  %44 = or i8 %i.ej, %43
  %45 = select i1 %or.cond.i.not.i37.i.i.i.i, i8 %44, i8 1 ; 2 uses
  store i8 %45, ptr %i.m, align 1, !tbaa !20155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  store ptr null, ptr %i.g, align 8, !tbaa !898
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20158, !range !392, !noundef !393
  %43 = load i8, ptr %i.m, align 1, !tbaa !20490, !range !392, !noundef !393
  %44 = or i8 %43, %i.fj
  %45 = trunc nuw i8 %44 to i1
  %46 = select i1 %45, i8 1, i8 %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %38, i64 160
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.fn = load ptr, ptr %i.en, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !20158, !range !392, !noundef !393
  %47 = or i8 %i.fp, %46
  %48 = trunc nuw i8 %47 to i1
  %49 = select i1 %48, i8 1, i8 %i.fl             ; 2 uses
  store i8 %49, ptr %i.m, align 1, !tbaa !20490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  store ptr null, ptr %i.g, align 8, !tbaa !898
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !20158, !range !392, !noundef !393
  %43 = load i8, ptr %i.m, align 1, !tbaa !20690, !range !392, !noundef !393
  %44 = or i8 %43, %i.fj
  %45 = trunc nuw i8 %44 to i1
  %46 = select i1 %45, i8 1, i8 %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !20158, !range !392, !noundef !393 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %38, i64 160
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  %i.fn = load ptr, ptr %i.en, align 8, !tbaa !20498, !nonnull !393, !align !891
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !20158, !range !392, !noundef !393
  %47 = or i8 %i.fp, %46
  %48 = trunc nuw i8 %47 to i1
  %49 = select i1 %48, i8 1, i8 %i.fl             ; 2 uses
  store i8 %49, ptr %i.m, align 1, !tbaa !20690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  store ptr null, ptr %i.g, align 8, !tbaa !898
end_hunk_5

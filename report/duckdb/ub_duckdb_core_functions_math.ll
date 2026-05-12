inline.NumInlined: 9993
inline.NumDeleted: 1660
begin_hunk_0_@_ZN6duckdb11LogicalTypeC1ERKS0_
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i36 = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i29 = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i22 = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %7 = alloca %"class.std::function", align 8     ; 10 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 12 uses
  %9 = alloca %"class.std::function", align 8     ; 5 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !17
end_hunk_1
begin_hunk_2_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !13
  store <2 x ptr> %i.h, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.f
end_hunk_2
begin_hunk_3_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !13
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17
end_hunk_3
begin_hunk_4_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  br i1 %.not.i.i.not.i.i.i23, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i22, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i22)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !13
  store <2 x ptr> %i.x, ptr %i.aa, align 8, !tbaa !13
  %.not.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i25, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26.thread, label %bb.q
end_hunk_4
begin_hunk_5_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
bb.z:                                             ; preds = %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !17
end_hunk_5
begin_hunk_6_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  br i1 %.not.i.i.not.i.i.i30, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i29)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i29, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i29)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !13
  store <2 x ptr> %i.an, ptr %i.aq, align 8, !tbaa !13
  %.not.i.i.i32 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i32, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33.thread, label %bb.ab
end_hunk_6
begin_hunk_7_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !13
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !17
end_hunk_7
begin_hunk_8_@_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  br i1 %.not.i.i.not.i.i.i37, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i36)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i36, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i36)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !13
  store <2 x ptr> %i.bd, ptr %i.bg, align 8, !tbaa !13
  %.not.i.i.i39 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i39, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40.thread, label %bb.am
end_hunk_8
begin_hunk_9_@_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_14TryAbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE:bb.a
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL17PropagateAbsStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.15") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 9 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdbL17PropagateAbsStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE:bb.a
.critedge82:                                      ; preds = %bb.bn
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !13
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !17
end_hunk_10
begin_hunk_11_@_ZN6duckdbL17PropagateAbsStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE:bb.a
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.bo, %.critedge82
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 3 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !13
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !13
  store <2 x ptr> %i.bl, ptr %i.bo, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.bp
end_hunk_11
begin_hunk_12_@_ZN6duckdb7SignFun12GetFunctionsEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7CeilFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i35 = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a
bb.e:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit56
  %.sroa.067.098 = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %_ZNSt14_Function_baseD2Ev.exit56 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.x = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.f unwind label %bb.g

end_hunk_13
begin_hunk_14_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a
bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aa = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.aa, ptr %i.g, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit, label %bb.j

end_hunk_14
begin_hunk_15_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i35)
  %i.af = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.af, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i36, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, label %bb.m

end_hunk_15
begin_hunk_16_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a

bb.z:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit, label %bb.aa

end_hunk_16
begin_hunk_17_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  store <2 x ptr> %i.bb, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit

end_hunk_17
begin_hunk_18_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.f, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i55 = icmp eq ptr %i.cx, null
  br i1 %.not.i55, label %_ZNSt14_Function_baseD2Ev.exit56, label %bb.aw

end_hunk_18
begin_hunk_19_@_ZN6duckdb7CeilFun12GetFunctionsEv:bb.a

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %.loopexit, %bb.g
  %.pn31.pn = phi { ptr, i32 } [ %.pn3172, %bb.s ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %i.y, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i59 = icmp eq ptr %i.dl, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.bj

end_hunk_19
begin_hunk_20_@__cxa_free_exception
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8FloorFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i35 = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
end_hunk_20
begin_hunk_21_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a
bb.e:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit56
  %.sroa.067.098 = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %_ZNSt14_Function_baseD2Ev.exit56 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.x = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.f unwind label %bb.g

end_hunk_21
begin_hunk_22_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a
bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aa = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.aa, ptr %i.g, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit, label %bb.j

end_hunk_22
begin_hunk_23_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a
bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i35)
  %i.af = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.af, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i36, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, label %bb.m

end_hunk_23
begin_hunk_24_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a

bb.z:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit, label %bb.aa

end_hunk_24
begin_hunk_25_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  store <2 x ptr> %i.bb, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit

end_hunk_25
begin_hunk_26_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.f, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i55 = icmp eq ptr %i.cx, null
  br i1 %.not.i55, label %_ZNSt14_Function_baseD2Ev.exit56, label %bb.aw

end_hunk_26
begin_hunk_27_@_ZN6duckdb8FloorFun12GetFunctionsEv:bb.a

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %.loopexit, %bb.g
  %.pn31.pn = phi { ptr, i32 } [ %.pn3172, %bb.s ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %i.y, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i59 = icmp eq ptr %i.dl, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.bj

end_hunk_27

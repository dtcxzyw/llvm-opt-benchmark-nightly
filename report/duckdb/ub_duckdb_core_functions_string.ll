inline.NumInlined: 11293
inline.NumDeleted: 2901
begin_hunk_0_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
  %2 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %3 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %8 = alloca %"class.duckdb::vector", align 8    ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i8 25, ptr %.sroa.0, align 1, !tbaa !1453
  store i8 26, ptr %.sroa.5, align 1, !tbaa !1453
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
  br label %.loopexit147

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 14)
          to label %bb.d unwind label %.loopexit147.loopexit185

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
.noexc112:                                        ; preds = %bb.d
  store ptr %i.u, ptr %2, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.v, ptr %i.a, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread227

end_hunk_3
begin_hunk_4_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc112
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext %i.s)
          to label %bb.i unwind label %bb.z

end_hunk_4
begin_hunk_5_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
bb.i:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN6duckdbL14RepeatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %5, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.d, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.c, align 8, !tbaa !17
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 0)
          to label %bb.j unwind label %bb.aa

end_hunk_5
begin_hunk_6_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.u
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %1) #26, !inline_history !315
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

end_hunk_6
begin_hunk_7_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.w
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  %i.bu = load ptr, ptr %2, align 8, !tbaa !7     ; 3 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb9RepeatFun12GetFunctionsEv:bb.a

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.ad ], [ %i.ca, %bb.aa ]
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not.i64 = icmp eq ptr %i.cd, null
  br i1 %.not.i64, label %_ZNSt14_Function_baseD2Ev.exit65, label %bb.af

end_hunk_8

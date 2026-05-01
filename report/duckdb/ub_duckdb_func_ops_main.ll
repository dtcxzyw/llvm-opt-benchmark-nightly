inline.NumInlined: 21423
inline.NumDeleted: 1880
begin_hunk_0_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %8 = alloca %"class.duckdb::ScalarFunction", align 8 ; 14 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  %16 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %17 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %19 = alloca %"class.std::function", align 8    ; 9 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %21 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
  %22 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %23 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %24 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %25 = alloca %"class.std::function", align 8    ; 10 uses
  %26 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %27 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %28 = alloca %"class.duckdb::vector", align 8   ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  br i1 %.not659, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 344 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 352 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %.sroa.0.i.i.i51.i.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 264
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 256 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 240 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 272
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 344 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 352 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 256 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 264
end_hunk_3
begin_hunk_4_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  br label %.loopexit539

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.i unwind label %.loopexit539.loopexit670

bb.i:                                             ; preds = %bb.h
end_hunk_4
begin_hunk_5_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
.noexc370:                                        ; preds = %bb.i
  store ptr %i.bj, ptr %9, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.bk, ptr %i.ah, align 8, !tbaa !44
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread822

end_hunk_5
begin_hunk_6_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc370
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.bp, ptr %i.ai, align 8, !tbaa !45
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.n unwind label %bb.av

end_hunk_6
begin_hunk_7_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #26
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

end_hunk_7
begin_hunk_8_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #26
  %i.cb = load ptr, ptr %9, align 8, !tbaa !41    ; 3 uses
  %i.cc = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i143 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i143, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i149, label %.lr.ph.i.i.i144

end_hunk_8
begin_hunk_9_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #26
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  store <2 x ptr> <ptr @_ZN6duckdb12_GLOBAL__N_126SerializeDecimalArithmeticERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE, ptr @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16MultiplyOperatorENS_28DecimalMultiplyOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE>, ptr %i.ak, align 8, !tbaa !46
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %14, ptr noundef nonnull align 8 dereferenceable(360) %8)
          to label %.noexc153 unwind label %bb.bc

end_hunk_9
begin_hunk_10_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn128 = phi { ptr, i32 } [ %i.fa, %bb.ax ], [ %i.ez, %bb.aw ]
  %i.fb = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 2 uses
  %.not.i168 = icmp eq ptr %i.fb, null
  br i1 %.not.i168, label %_ZNSt14_Function_baseD2Ev.exit169, label %bb.az

end_hunk_10
begin_hunk_11_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  br label %.loopexit541

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.bj unwind label %.loopexit541.loopexit671

bb.bj:                                            ; preds = %bb.bi
end_hunk_11
begin_hunk_12_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
.noexc384:                                        ; preds = %bb.bj
  store ptr %i.fm, ptr %16, align 8, !tbaa !41
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %i.fn, ptr %.sroa.0.i.i.i51.i.sroa.4.0..sroa_idx.a, align 8, !tbaa !44
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382 unwind label %.thread827

end_hunk_12
begin_hunk_13_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382: ; preds = %.noexc384
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382.1 unwind label %.lr.ph.i.i.i.i.i.i.i378.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i382
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %i.fs, ptr %i.x, align 8, !tbaa !45
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.bo unwind label %bb.cm

end_hunk_13
begin_hunk_14_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZN6duckdbL24GetScalarIntegerFunctionINS_29MultiplyOperatorOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %bb.bo, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit55.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit50.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit45.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit40.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit35.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit30.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit25.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit20.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit15.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit55.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionImmmNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit50.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIjjjNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit45.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionItttNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit40.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIhhhNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit35.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit30.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIlllNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit25.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIiiiNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit20.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIsssNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit15.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIaaaNS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.bo ]
  store ptr %_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tES2_S2_NS_29MultiplyOperatorOverflowCheckEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, ptr %19, align 8
  store i64 0, ptr %i.y, align 8, !tbaa !15
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.z, align 8, !tbaa !46, !alias.scope !406
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 0)
          to label %bb.bw unwind label %bb.cn

end_hunk_14
begin_hunk_15_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 240 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, i8 0, i64 24, i1 false)
  %i.gs = load ptr, ptr %i.aa, align 8, !tbaa !47
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !47
  %i.gt = load ptr, ptr %i.ab, align 8, !tbaa !50
  %.not.i.i.not.i.i.i.i.i178 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.not.i.i.i.i.i178, label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i179, label %bb.bz

bb.bz:                                            ; preds = %.noexc180
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 16, i1 false), !tbaa.struct !306
  %i.gv = load ptr, ptr %i.ab, align 8, !tbaa !50
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i179

_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i179:  ; preds = %bb.bz, %.noexc180
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gw, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 344
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 352
  store ptr null, ptr %i.gy, align 8, !tbaa !53
  %i.gz = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !46
  store ptr null, ptr %i.af, align 8, !tbaa !53
  store <2 x ptr> %i.gz, ptr %i.gx, align 8, !tbaa !46
  store ptr null, ptr %i.ae, align 8, !tbaa !361
  %i.ha = load ptr, ptr %i.n, align 8, !tbaa !357
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 360
  store ptr %i.hb, ptr %i.n, align 8, !tbaa !357
end_hunk_15
begin_hunk_16_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit182: ; preds = %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i179, %bb.ca
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %15, align 8, !tbaa !57
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i183, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i187, label %bb.cb

end_hunk_16
begin_hunk_17_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i187

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i187: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i185, %bb.cc, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit182
  %i.hs = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %.not.i.i188 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i188, label %_ZN6duckdb14ScalarFunctionD2Ev.exit190, label %bb.ch

bb.ch:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i187
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit190 unwind label %bb.ci, !inline_history !363 ; 0 uses

bb.ci:                                            ; preds = %bb.ch
end_hunk_17
begin_hunk_18_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZN6duckdb14ScalarFunctionD2Ev.exit190:           ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i187, %bb.ch
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %15) #26, !inline_history !363
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #26
  %i.hw = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.not.i191 = icmp eq ptr %i.hw, null
  br i1 %.not.i191, label %_ZNSt14_Function_baseD2Ev.exit192, label %bb.cj

end_hunk_18
begin_hunk_19_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZNSt14_Function_baseD2Ev.exit192:                ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit190, %bb.cj
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #26
  %i.ia = load ptr, ptr %16, align 8, !tbaa !41   ; 3 uses
  %i.ib = load ptr, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i193 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not4.i.i.i193, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i199, label %.lr.ph.i.i.i194

end_hunk_19
begin_hunk_20_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %bb.cq ], [ %i.ig, %bb.cn ] ; 2 uses
  %i.ij = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %.not.i202 = icmp eq ptr %i.ij, null
  br i1 %.not.i202, label %.body175, label %bb.cs

end_hunk_20
begin_hunk_21_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
  br label %.loopexit543

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.cx unwind label %.loopexit543.loopexit672

bb.cx:                                            ; preds = %bb.cw
end_hunk_21
begin_hunk_22_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
.noexc399:                                        ; preds = %bb.cx
  store ptr %i.ip, ptr %22, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store ptr %i.iq, ptr %i.j, align 8, !tbaa !44
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i397 unwind label %.thread832

end_hunk_22
begin_hunk_23_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i397: ; preds = %.noexc399
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i397.1 unwind label %.lr.ph.i.i.i.i.i.i.i393.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i397.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i397
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store ptr %i.iv, ptr %i.k, align 8, !tbaa !45
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0474.0660)
          to label %bb.dc unwind label %bb.dv

end_hunk_23
begin_hunk_24_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit.i210: ; preds = %bb.dc
  store ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.l, align 8, !tbaa !46, !alias.scope !409
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.dc
  store ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.l, align 8, !tbaa !46, !alias.scope !409
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit

bb.dd:                                            ; preds = %bb.dc
end_hunk_24
begin_hunk_25_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

_ZNSt14_Function_baseD2Ev.exit.i211:              ; preds = %bb.de, %.noexc212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  store <2 x ptr> %i.je, ptr %i.l, align 8, !tbaa !46, !alias.scope !409
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !409
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit
end_hunk_25
begin_hunk_26_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZN6duckdb14ScalarFunctionD2Ev.exit226:           ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i223, %bb.dq
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #26, !inline_history !363
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #26
  %i.ko = load ptr, ptr %i.l, align 8, !tbaa !50  ; 2 uses
  %.not.i227 = icmp eq ptr %i.ko, null
  br i1 %.not.i227, label %_ZNSt14_Function_baseD2Ev.exit228, label %bb.ds

end_hunk_26
begin_hunk_27_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i
_ZNSt14_Function_baseD2Ev.exit228:                ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit226, %bb.ds
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #26
  %i.ks = load ptr, ptr %22, align 8, !tbaa !41   ; 3 uses
  %i.kt = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i229 = icmp eq ptr %i.ks, %i.kt
  br i1 %.not4.i.i.i229, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i235, label %.lr.ph.i.i.i230

end_hunk_27
begin_hunk_28_@_ZN6duckdb19OperatorMultiplyFun12GetFunctionsEv:._crit_edge.i.i

bb.eb:                                            ; preds = %bb.ea, %bb.dx
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %bb.ea ], [ %i.kz, %bb.dx ] ; 2 uses
  %i.lc = load ptr, ptr %i.l, align 8, !tbaa !50  ; 2 uses
  %.not.i238 = icmp eq ptr %i.lc, null
  br i1 %.not.i238, label %_ZNSt14_Function_baseD2Ev.exit239, label %bb.ec

end_hunk_28
begin_hunk_29_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %8 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca double, align 8                   ; 7 uses
end_hunk_29
begin_hunk_30_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not105.i.i47.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph102.i.i48.i.i

.lr.ph102.i.i48.i.i:                              ; preds = %bb.af
  %.sroa.422.0..sroa_idx.i.i49.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.ag

end_hunk_30
begin_hunk_31_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %i.hl, label %.lr.ph.i.i57.i.i, label %.loopexit89.i.i54.i.i

.lr.ph.i.i57.i.i:                                 ; preds = %.preheader90.i.i56.i.i
  %14 = load <2 x i64>, ptr %i.gj, align 8, !alias.scope !464, !noalias !472 ; 4 uses
  %15 = bitcast <2 x i64> %14 to <4 x i32>
  %.sroa.0.0.extract.trunc.i.i.i60.i.i = extractelement <4 x i32> %15, i64 0
  %i.hm = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i60.i.i to double ; 2 uses
  %16 = bitcast <2 x i64> %14 to <4 x i32>
  %.sroa.3.0.extract.trunc.i.i.i62.i.i = extractelement <4 x i32> %16, i64 1
  %i.hn = sitofp i32 %.sroa.3.0.extract.trunc.i.i.i62.i.i to double ; 2 uses
  %17 = extractelement <2 x i64> %14, i64 1
  br label %bb.ah

.preheader88.i.i83.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
end_hunk_31
begin_hunk_32_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.ih = fptosi double %i.id to i32              ; 2 uses
  store i32 %i.ih, ptr %8, align 16, !tbaa !437, !noalias !471
  %i.ii = fmul double %i.ic, %i.hn                ; 5 uses
  store double %i.ii, ptr %i.b, align 8, !tbaa !439, !noalias !471
  %i.ij = fcmp uno double %i.ii, 0.000000e+00
end_hunk_32
begin_hunk_33_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %.020.i.i.i68.i.i = phi double [ %i.je, %bb.am ], [ %i.jm, %bb.an ]
  %i.jo = add nsw i32 %i.jn, %i.iu
  store i32 %i.jo, ptr %i.ha, align 4, !tbaa !441, !noalias !471
  %i.jp = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false), !noalias !471
  br i1 %i.jp, label %bb.ap, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i

bb.ap:                                            ; preds = %bb.ao
end_hunk_33
begin_hunk_34_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i
  %18 = load <2 x i64>, ptr %8, align 16, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i
  %19 = phi <2 x i64> [ %14, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i ], [ %18, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i ]
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %.196.i.i63.i.i
  store <2 x i64> %19, ptr %i.kc, align 8, !alias.scope !469, !noalias !474
  %i.kd = add i64 %.196.i.i63.i.i, 1              ; 2 uses
  %exitcond.not.i.i82.i.i = icmp eq i64 %i.kd, %i.hk
  br i1 %exitcond.not.i.i82.i.i, label %.loopexit89.i.i54.i.i, label %bb.ah, !llvm.loop !475
end_hunk_34

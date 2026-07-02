inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb13ListConcatFun11GetFunctionEv:bb.a

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_114ConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.b, align 8, !tbaa !24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.a, align 8, !tbaa !27
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_118BindConcatFunctionERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_115ListConcatStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.h = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.h, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #28
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #32
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 3)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.r

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load i8, ptr %6, align 8, !tbaa !155
  store i8 %i.n, ptr %i.m, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !156
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.p, ptr %i.q, align 1, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !23
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !23
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !23
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.v, align 1, !tbaa !157
  ret void

bb.j:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.thread:                                          ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.pn21 = phi { ptr, i32 } [ %i.y, %.thread ], [ %i.z, %bb.l ]
  %i.aa = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.l ]
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit14:                 ; preds = %bb.l, %bb.m
  %.pn22 = phi { ptr, i32 } [ %i.z, %bb.l ], [ %.pn21, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit14, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt14_Function_baseD2Ev.exit14 ], [ %i.x, %bb.k ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %bb.t

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn10 = phi { ptr, i32 } [ %i.af, %bb.r ], [ %i.ae, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.s ], [ %.pn.pn.pn, %bb.p ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_114ConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca i64, align 8                      ; 17 uses
  %i.o = alloca i64, align 8                      ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::vector.237", align 8 ; 16 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %12 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %17 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %18 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %19 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %21 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %22 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %23 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %24 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %25 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %26 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %27 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %28 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %29 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %30 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %31 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %32 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %33 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %34 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %35 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %36 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %37 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %38 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %39 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %40 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %41 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %42 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %43 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %44 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %45 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %46 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %47 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %48 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %50 = alloca %"class.duckdb::vector.205", align 8 ; 18 uses
  %51 = alloca %"struct.duckdb::(anonymous namespace)::ListConcatInputData", align 8 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169, !nonnull !122, !align !123
  %i.s = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !155
  switch i8 %i.w, label %bb.bb [
    i8 1, label %bb.b
    i8 101, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  br label %_ZN6duckdb12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !186, !range !190, !noundef !122
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30 ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !191   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !191 ; 2 uses
  %.not26.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %51, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %51, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 176 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %i.ao = icmp eq ptr %i.cr, %i.cq
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ap = phi i1 [ true, %bb.c ], [ %i.ao, %._crit_edge.loopexit.i ]
  %i.aq = phi ptr [ null, %bb.c ], [ %i.cr, %._crit_edge.loopexit.i ]
  store ptr %i.aq, ptr %50, align 8
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i unwind label %bb.w

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i: ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not44.i = icmp eq i64 %i.ab, 0
  br i1 %.not44.i, label %._crit_edge42.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br i1 %i.ap, label %.lr.ph41.split.us.preheader.i, label %.lr.ph41.split.i

.lr.ph41.split.us.preheader.i:                    ; preds = %.lr.ph41.i
  %i.aw = shl nuw i64 %i.ab, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.aw, i1 false), !tbaa !69
  br label %._crit_edge42.i

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %i.ax = phi ptr [ null, %.lr.ph.i ], [ %i.cq, %bb.r ] ; 10 uses
  %.sroa.03.027.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.cs, %bb.r ] ; 6 uses
  %i.ay = phi ptr [ null, %.lr.ph.i ], [ %i.cr, %bb.r ] ; 13 uses
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.027.i, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !155
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.027.i)
          to label %bb.g unwind label %bb.s       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %51)
          to label %.noexc.i unwind label %bb.t

.noexc.i:                                         ; preds = %bb.g
  store ptr %.sroa.03.027.i, ptr %i.ah, align 8, !tbaa !191
  store ptr %i.bc, ptr %i.ai, align 8, !tbaa !191
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.aj)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ay, ptr %50, align 8
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(184) %51) #28
  br label %.body.i

bb.i:                                             ; preds = %.noexc.i
  store ptr null, ptr %i.ak, align 8, !tbaa !192
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.027.i, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(73) %51)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %51)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !89
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !192
  %i.bf = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.027.i)
          to label %bb.l unwind label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(73) %i.aj)
          to label %bb.m unwind label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !195
  %.not.i.i.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.ax, ptr noundef nonnull align 8 dereferenceable(184) %51) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  call void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(73) %i.bi, ptr noundef nonnull align 8 dereferenceable(73) %i.aj) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !192
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 184 ; 2 uses
  store ptr %i.bl, ptr %i.am, align 8, !tbaa !198
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_119ListConcatInputDataESaIS2_EE9push_backEOS2_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bm = ptrtoint ptr %i.ax to i64
  %i.bn = ptrtoint ptr %i.ay to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775736
  br i1 %i.bp, label %bb.p, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_119ListConcatInputDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr %50, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc74.i unwind label %.loopexit.split-lp.i

.noexc74.i:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb12_GLOBAL__N_119ListConcatInputDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_114ConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ari = load ptr, ptr %i.arh, align 8
  %i.arj = select i1 %i.arf, ptr %i.arg, ptr %i.ari
  %i.ark = zext i32 %i.are to i64                 ; 2 uses
  %i.arl = load i64, ptr %i.ie, align 8, !tbaa !30
  %.not49.i = icmp eq i64 %i.arl, 0
  br i1 %.not49.i, label %.loopexit.i28, label %.lr.ph38.i

bb.hx:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit132.thread.i
  %i.arm = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i

.lr.ph38.i:                                       ; preds = %bb.hw, %bb.ih
  %.010036.i = phi i64 [ %i.atg, %bb.ih ], [ 0, %bb.hw ] ; 8 uses
  %i.arn = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.010036.i ; 3 uses
  %i.aro = load i32, ptr %i.arn, align 8, !tbaa !7
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arq = load ptr, ptr %i.arp, align 8
  %i.arr = load ptr, ptr %i.akc, align 8, !tbaa !305
  %i.ars = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %i.art = ptrtoint ptr %i.arr to i64
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = sub i64 %i.art, %i.aru
  %i.arw = ashr exact i64 %i.arv, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.010036.i, ptr %i.l, align 8, !tbaa !69
  store i64 %i.arw, ptr %i.m, align 8, !tbaa !69
  %.not.i.i.i135.i = icmp ult i64 %.010036.i, %i.arw
  br i1 %.not.i.i.i135.i, label %bb.ic, label %.noexc.i197.i, !prof !308

.noexc.i197.i:                                    ; preds = %.lr.ph38.i
  %i.arx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ary = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ary, ptr %6, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 55, ptr %i.d, align 8, !tbaa !69
  %i.arz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc198.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i ; 3 uses

.noexc198.i:                                      ; preds = %.noexc.i197.i
  store ptr %i.arz, ptr %6, align 8, !tbaa !29
  %i.asa = load i64, ptr %i.d, align 8, !tbaa !69 ; 3 uses
  store i64 %i.asa, ptr %i.ary, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.arz, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.asb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.asa, ptr %i.asb, align 8, !tbaa !15
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.asa
  store i8 0, ptr %i.asc, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.arx, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %.noexc198.i
  invoke void @__cxa_throw(ptr nonnull %i.arx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ib unwind label %bb.hz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i: ; preds = %.noexc.i197.i
  %i.asd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %.noexc198.i
  %.0.i.i.i139.i = phi i1 [ false, %bb.hy ], [ true, %.noexc198.i ] ; 2 uses
  %i.ase = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.asf = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.asg = icmp eq ptr %i.asf, %i.ary
  br i1 %i.asg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i: ; preds = %bb.hz
  call void @_ZdlPv(ptr noundef %i.asf) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i139.i, label %bb.ia, label %.body142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i: ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i139.i, label %bb.ia, label %.body142.i

bb.ia:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i
  %.pn8.i.i.i137.i = phi { ptr, i32 } [ %i.asd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i ], [ %i.ase, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i ], [ %i.ase, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i ]
  call void @__cxa_free_exception(ptr %i.arx) #28
  br label %.body142.i

bb.ib:                                            ; preds = %bb.hy
  unreachable

bb.ic:                                            ; preds = %.lr.ph38.i
  %i.ash = icmp ult i32 %i.aro, 13
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  %i.asj = select i1 %i.ash, ptr %i.asi, ptr %i.arq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %.010036.i
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !69
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asj, i64 %i.asl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asm, ptr align 1 %i.arj, i64 %i.ark, i1 false)
  %i.asn = load ptr, ptr %i.akc, align 8, !tbaa !305
  %i.aso = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %i.asp = ptrtoint ptr %i.asn to i64
  %i.asq = ptrtoint ptr %i.aso to i64
  %i.asr = sub i64 %i.asp, %i.asq
  %i.ass = ashr exact i64 %i.asr, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.010036.i, ptr %i.j, align 8, !tbaa !69
  store i64 %i.ass, ptr %i.k, align 8, !tbaa !69
  %.not.i.i.i145.i = icmp ult i64 %.010036.i, %i.ass
  br i1 %.not.i.i.i145.i, label %bb.ih, label %.noexc.i201.i, !prof !308

.noexc.i201.i:                                    ; preds = %bb.ic
  %i.ast = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.asu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.asu, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 55, ptr %i.c, align 8, !tbaa !69
  %i.asv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc202.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i ; 3 uses

.noexc202.i:                                      ; preds = %.noexc.i201.i
  store ptr %i.asv, ptr %5, align 8, !tbaa !29
  %i.asw = load i64, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  store i64 %i.asw, ptr %i.asu, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.asv, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.asx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.asw, ptr %i.asx, align 8, !tbaa !15
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.asw
  store i8 0, ptr %i.asy, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ast, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.id unwind label %bb.ie

bb.id:                                            ; preds = %.noexc202.i
  invoke void @__cxa_throw(ptr nonnull %i.ast, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ig unwind label %bb.ie

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i: ; preds = %.noexc.i201.i
  %i.asz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.if

bb.ie:                                            ; preds = %bb.id, %.noexc202.i
  %.0.i.i.i149.i = phi i1 [ false, %bb.id ], [ true, %.noexc202.i ] ; 2 uses
  %i.ata = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.atb = load ptr, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.atc = icmp eq ptr %i.atb, %i.asu
  br i1 %i.atc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i: ; preds = %bb.ie
  call void @_ZdlPv(ptr noundef %i.atb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i149.i, label %bb.if, label %.body142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i: ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i149.i, label %bb.if, label %.body142.i

bb.if:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i
  %.pn8.i.i.i147.i = phi { ptr, i32 } [ %i.asz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i ], [ %i.ata, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i ], [ %i.ata, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i ]
  call void @__cxa_free_exception(ptr %i.ast) #28
  br label %.body142.i

bb.ig:                                            ; preds = %bb.id
  unreachable

bb.ih:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.aso, i64 %.010036.i ; 2 uses
  %i.ate = load i64, ptr %i.atd, align 8, !tbaa !69
  %i.atf = add i64 %i.ate, %i.ark
  store i64 %i.atf, ptr %i.atd, align 8, !tbaa !69
  %i.atg = add nuw i64 %.010036.i, 1              ; 2 uses
  %i.ath = load i64, ptr %i.ie, align 8, !tbaa !30
  %i.ati = icmp ult i64 %i.atg, %i.ath
  br i1 %i.ati, label %.lr.ph38.i, label %.loopexit.i28, !llvm.loop !316

bb.ii:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ij unwind label %bb.ix

bb.ij:                                            ; preds = %bb.ii
  %i.atj = load i64, ptr %i.ie, align 8, !tbaa !30
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.aqu, i64 noundef %i.atj, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ik unwind label %bb.iy

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i unwind label %bb.iz

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i: ; preds = %bb.ik
  %i.atk = load ptr, ptr %i.aqb, align 8, !tbaa !89
  %i.atl = load i64, ptr %i.ie, align 8, !tbaa !30 ; 2 uses
  %.not48.i = icmp eq i64 %i.atl, 0
  br i1 %.not48.i, label %._crit_edge35.i, label %.lr.ph34.i

._crit_edge35.i:                                  ; preds = %bb.jl, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i
  %i.atm = load ptr, ptr %i.aqd, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i157.i = icmp eq ptr %i.atm, null
  br i1 %.not.i.i.i.i.i157.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i, label %bb.il

bb.il:                                            ; preds = %._crit_edge35.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 8 ; 4 uses
  %i.ato = load atomic i64, ptr %i.atn acquire, align 8 ; 2 uses
  %i.atp = icmp eq i64 %i.ato, 4294967297
  %i.atq = trunc i64 %i.ato to i32                ; 2 uses
  br i1 %i.atp, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  store i32 0, ptr %i.atn, align 8, !tbaa !77
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atm, i64 12
  store i32 0, ptr %i.atr, align 4, !tbaa !79
  %i.ats = load ptr, ptr %i.atm, align 8, !tbaa !80
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %i.atu = load ptr, ptr %i.att, align 8
  call void %i.atu(ptr noundef nonnull align 8 dereferenceable(16) %i.atm) #28, !inline_history !312
  %i.atv = load ptr, ptr %i.atm, align 8, !tbaa !80
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 24
  %i.atx = load ptr, ptr %i.atw, align 8
  call void %i.atx(ptr noundef nonnull align 8 dereferenceable(16) %i.atm) #28, !inline_history !312
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i

bb.in:                                            ; preds = %bb.il
  %i.aty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i158.i = icmp eq i8 %i.aty, 0
  br i1 %.not.i.i.i.i.i.i158.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.atz = add nsw i32 %i.atq, -1
  store i32 %i.atz, ptr %i.atn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i

bb.ip:                                            ; preds = %bb.in
  %i.aua = atomicrmw volatile add ptr %i.atn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i: ; preds = %bb.ip, %bb.io
  %.0.i.i.i.i.i.i.i160.i = phi i32 [ %i.atq, %bb.io ], [ %i.aua, %bb.ip ]
  %i.aub = icmp eq i32 %.0.i.i.i.i.i.i.i160.i, 1
  br i1 %i.aub, label %bb.iq, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i, !prof !83

bb.iq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atm) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i:      ; preds = %bb.iq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i, %bb.im, %._crit_edge35.i
  %i.auc = load ptr, ptr %i.aqe, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i162.i = icmp eq ptr %i.auc, null
  br i1 %.not.i.i.i.i1.i162.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, label %bb.ir

bb.ir:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 8 ; 4 uses
  %i.aue = load atomic i64, ptr %i.aud acquire, align 8 ; 2 uses
  %i.auf = icmp eq i64 %i.aue, 4294967297
  %i.aug = trunc i64 %i.aue to i32                ; 2 uses
  br i1 %i.auf, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  store i32 0, ptr %i.aud, align 8, !tbaa !77
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auc, i64 12
  store i32 0, ptr %i.auh, align 4, !tbaa !79
  %i.aui = load ptr, ptr %i.auc, align 8, !tbaa !80
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.auk = load ptr, ptr %i.auj, align 8
  call void %i.auk(ptr noundef nonnull align 8 dereferenceable(16) %i.auc) #28, !inline_history !313
  %i.aul = load ptr, ptr %i.auc, align 8, !tbaa !80
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 24
  %i.aun = load ptr, ptr %i.aum, align 8
  call void %i.aun(ptr noundef nonnull align 8 dereferenceable(16) %i.auc) #28, !inline_history !313
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i

bb.it:                                            ; preds = %bb.ir
  %i.auo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i2.i163.i = icmp eq i8 %i.auo, 0
  br i1 %.not.i.i.i.i.i2.i163.i, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aup = add nsw i32 %i.aug, -1
  store i32 %i.aup, ptr %i.aud, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i

bb.iv:                                            ; preds = %bb.it
  %i.auq = atomicrmw volatile add ptr %i.aud, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i: ; preds = %bb.iv, %bb.iu
  %.0.i.i.i.i.i.i4.i165.i = phi i32 [ %i.aug, %bb.iu ], [ %i.auq, %bb.iv ]
  %i.aur = icmp eq i32 %.0.i.i.i.i.i.i4.i165.i, 1
  br i1 %i.aur, label %bb.iw, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, !prof !83

bb.iw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.auc) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i:    ; preds = %bb.iw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i, %bb.is, %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.i28

bb.ix:                                            ; preds = %bb.ii
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.iy:                                            ; preds = %bb.ij
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i

bb.iz:                                            ; preds = %bb.ik
  %i.auu = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i

.lr.ph34.i:                                       ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i, %bb.jl
  %i.auv = phi i64 [ %i.axj, %bb.jl ], [ %i.atl, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i ]
  %.09833.i = phi i64 [ %i.axk, %bb.jl ], [ 0, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i ] ; 10 uses
  %52 = load ptr, ptr %10, align 8, !tbaa !98
  %i.auw = load ptr, ptr %52, align 8, !tbaa !107 ; 2 uses
  %.not.i167.i = icmp eq ptr %i.auw, null
  br i1 %.not.i167.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i, label %bb.ja

bb.ja:                                            ; preds = %.lr.ph34.i
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %.09833.i
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !3
  %i.auz = zext i32 %i.auy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i: ; preds = %bb.ja, %.lr.ph34.i
  %i.ava = phi i64 [ %i.auz, %bb.ja ], [ %.09833.i, %.lr.ph34.i ] ; 3 uses
  %i.avb = load ptr, ptr %i.aqc, align 8, !tbaa !68 ; 2 uses
  %.not.i169.i = icmp eq ptr %i.avb, null
  br i1 %.not.i169.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i
  %i.avc = lshr i64 %i.ava, 6
  %i.avd = and i64 %i.ava, 63
  %i.ave = getelementptr inbounds nuw [8 x i8], ptr %i.avb, i64 %i.avc
  %i.avf = load i64, ptr %i.ave, align 8, !tbaa !69
  %i.avg = shl nuw i64 1, %i.avd
  %i.avh = and i64 %i.avf, %i.avg
  %.not.i27 = icmp eq i64 %i.avh, 0
  br i1 %.not.i27, label %bb.jl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i
  %i.avi = getelementptr inbounds nuw [16 x i8], ptr %i.atk, i64 %i.ava ; 3 uses
  %i.avj = load i32, ptr %i.avi, align 8, !tbaa !7 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.avl = load ptr, ptr %i.avk, align 8
  %i.avm = zext i32 %i.avj to i64                 ; 2 uses
  %i.avn = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.09833.i ; 3 uses
  %i.avo = load i32, ptr %i.avn, align 8, !tbaa !7
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8
  %i.avr = load ptr, ptr %i.akc, align 8, !tbaa !305
  %i.avs = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %i.avt = ptrtoint ptr %i.avr to i64
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = sub i64 %i.avt, %i.avu
  %i.avw = ashr exact i64 %i.avv, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.09833.i, ptr %i.h, align 8, !tbaa !69
  store i64 %i.avw, ptr %i.i, align 8, !tbaa !69
  %.not.i.i.i172.i = icmp ult i64 %.09833.i, %i.avw
  br i1 %.not.i.i.i172.i, label %bb.jf, label %.noexc.i205.i, !prof !308

.noexc.i205.i:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i
  %i.avx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.avy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.avy, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 55, ptr %i.b, align 8, !tbaa !69
  %i.avz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc206.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i ; 3 uses

.noexc206.i:                                      ; preds = %.noexc.i205.i
  store ptr %i.avz, ptr %4, align 8, !tbaa !29
  %i.awa = load i64, ptr %i.b, align 8, !tbaa !69 ; 3 uses
  store i64 %i.awa, ptr %i.avy, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.avz, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.awb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.awa, ptr %i.awb, align 8, !tbaa !15
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.awa
  store i8 0, ptr %i.awc, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.avx, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %.noexc206.i
  invoke void @__cxa_throw(ptr nonnull %i.avx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.je unwind label %bb.jc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i: ; preds = %.noexc.i205.i
  %i.awd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb, %.noexc206.i
  %.0.i.i.i176.i = phi i1 [ false, %bb.jb ], [ true, %.noexc206.i ] ; 2 uses
  %i.awe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.awf = load ptr, ptr %4, align 8, !tbaa !29   ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.avy
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i: ; preds = %bb.jc
  call void @_ZdlPv(ptr noundef %i.awf) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i176.i, label %bb.jd, label %.body179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i: ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i176.i, label %bb.jd, label %.body179.i

bb.jd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i
  %.pn8.i.i.i174.i = phi { ptr, i32 } [ %i.awd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i ], [ %i.awe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i ], [ %i.awe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i ]
  call void @__cxa_free_exception(ptr %i.avx) #28
  br label %.body179.i

bb.je:                                            ; preds = %bb.jb
  unreachable

bb.jf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i
  %i.awh = icmp ult i32 %i.avo, 13
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  %i.awj = select i1 %i.awh, ptr %i.awi, ptr %i.avq
  %i.awk = icmp ult i32 %i.avj, 13
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avi, i64 4
  %i.awm = select i1 %i.awk, ptr %i.awl, ptr %i.avl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %i.avs, i64 %.09833.i
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !69
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.awo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awp, ptr align 1 %i.awm, i64 %i.avm, i1 false)
  %i.awq = load ptr, ptr %i.akc, align 8, !tbaa !305
  %i.awr = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %i.aws = ptrtoint ptr %i.awq to i64
  %i.awt = ptrtoint ptr %i.awr to i64
  %i.awu = sub i64 %i.aws, %i.awt
  %i.awv = ashr exact i64 %i.awu, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.09833.i, ptr %i.f, align 8, !tbaa !69
  store i64 %i.awv, ptr %i.g, align 8, !tbaa !69
  %.not.i.i.i182.i = icmp ult i64 %.09833.i, %i.awv
  br i1 %.not.i.i.i182.i, label %bb.jk, label %.noexc.i209.i, !prof !308

.noexc.i209.i:                                    ; preds = %bb.jf
  %i.aww = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.awx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.awx, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !69
  %i.awy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc210.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i ; 3 uses

.noexc210.i:                                      ; preds = %.noexc.i209.i
  store ptr %i.awy, ptr %3, align 8, !tbaa !29
  %i.awz = load i64, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  store i64 %i.awz, ptr %i.awx, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.awy, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.axa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.awz, ptr %i.axa, align 8, !tbaa !15
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awy, i64 %i.awz
  store i8 0, ptr %i.axb, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aww, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.jg unwind label %bb.jh

bb.jg:                                            ; preds = %.noexc210.i
  invoke void @__cxa_throw(ptr nonnull %i.aww, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.jj unwind label %bb.jh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i: ; preds = %.noexc.i209.i
  %i.axc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jg, %.noexc210.i
  %.0.i.i.i186.i = phi i1 [ false, %bb.jg ], [ true, %.noexc210.i ] ; 2 uses
  %i.axd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.axe = load ptr, ptr %3, align 8, !tbaa !29   ; 2 uses
  %i.axf = icmp eq ptr %i.axe, %i.awx
  br i1 %i.axf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i: ; preds = %bb.jh
  call void @_ZdlPv(ptr noundef %i.axe) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i186.i, label %bb.ji, label %.body179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i: ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i186.i, label %bb.ji, label %.body179.i

bb.ji:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i
  %.pn8.i.i.i184.i = phi { ptr, i32 } [ %i.axc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i ], [ %i.axd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i ], [ %i.axd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i ]
  call void @__cxa_free_exception(ptr %i.aww) #28
  br label %.body179.i

bb.jj:                                            ; preds = %bb.jg
  unreachable

bb.jk:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %.09833.i ; 2 uses
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !69
  %i.axi = add i64 %i.axh, %i.avm
  store i64 %i.axi, ptr %i.axg, align 8, !tbaa !69
  %.pre57.i = load i64, ptr %i.ie, align 8, !tbaa !30
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i
  %i.axj = phi i64 [ %i.auv, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i ], [ %.pre57.i, %bb.jk ] ; 2 uses
  %i.axk = add nuw i64 %.09833.i, 1               ; 2 uses
  %i.axl = icmp ult i64 %i.axk, %i.axj
  br i1 %i.axl, label %.lr.ph34.i, label %._crit_edge35.i, !llvm.loop !317

.body179.i:                                       ; preds = %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i, %bb.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i, %bb.iz, %bb.iy
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aut, %bb.iy ], [ %i.auu, %bb.iz ], [ %i.axd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i ], [ %.pn8.i.i.i184.i, %bb.ji ], [ %i.awe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i ], [ %i.awe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i ], [ %.pn8.i.i.i174.i, %bb.jd ], [ %i.axd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #28
  br label %bb.jm

bb.jm:                                            ; preds = %.body179.i, %bb.ix
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body179.i ], [ %i.aus, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.body142.i

.loopexit.i28:                                    ; preds = %bb.ih, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, %bb.hw, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit132.i
  %i.axm = add nuw i64 %.010339.i, 1              ; 2 uses
  %i.axn = load ptr, ptr %i.akd, align 8, !tbaa !306
  %i.axo = load ptr, ptr %0, align 8, !tbaa !307
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = ptrtoint ptr %i.axo to i64
  %i.axr = sub i64 %i.axp, %i.axq
  %i.axs = sdiv exact i64 %i.axr, 104
  %i.axt = icmp ult i64 %i.axm, %i.axs
  br i1 %i.axt, label %bb.hs, label %.preheader.loopexit.i, !llvm.loop !318

._crit_edge43.i:                                  ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i, %.preheader.i
  %i.axu = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %.not.i.i.i192.i = icmp eq ptr %i.axu, null
  br i1 %.not.i.i.i192.i, label %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit, label %bb.jn

bb.jn:                                            ; preds = %._crit_edge43.i
  call void @_ZdlPv(ptr noundef nonnull %i.axu) #32
  br label %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit

.lr.ph42.i:                                       ; preds = %.preheader.i, %_ZN6duckdb8string_t8FinalizeEv.exit.i
  %.041.i = phi i64 [ %i.ayg, %_ZN6duckdb8string_t8FinalizeEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.axv = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.041.i ; 4 uses
  %i.axw = load i32, ptr %i.axv, align 8, !tbaa !7 ; 2 uses
  %i.axx = icmp ult i32 %i.axw, 13
  br i1 %i.axx, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %.lr.ph42.i
  %i.axy = zext nneg i32 %i.axw to i64            ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.axy
  %i.ayb = sub nuw nsw i64 12, %i.axy
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aya, i8 0, i64 %i.ayb, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

bb.jp:                                            ; preds = %.lr.ph42.i
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8
  %i.ayf = load i32, ptr %i.aye, align 1
  store i32 %i.ayf, ptr %i.ayc, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

_ZN6duckdb8string_t8FinalizeEv.exit.i:            ; preds = %bb.jp, %bb.jo
  %i.ayg = add nuw i64 %.041.i, 1                 ; 2 uses
  %i.ayh = load i64, ptr %i.ie, align 8, !tbaa !30
  %i.ayi = icmp ult i64 %i.ayg, %i.ayh
  br i1 %i.ayi, label %.lr.ph42.i, label %._crit_edge43.i, !llvm.loop !319

.body142.i:                                       ; preds = %bb.jm, %bb.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i, %bb.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i, %bb.hx, %bb.hv, %bb.hr, %bb.hq, %bb.hm, %bb.hk, %bb.gi, %bb.gg
  %.pn120.pn.i = phi { ptr, i32 } [ %.pn116.pn.pn.i, %bb.hk ], [ %i.ala, %bb.gi ], [ %i.aku, %bb.gg ], [ %i.aqf, %bb.hm ], [ %i.aqs, %bb.hr ], [ %i.ata, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i ], [ %i.aqr, %bb.hq ], [ %.pn.pn.pn.pn.pn.i, %bb.jm ], [ %i.arb, %bb.hv ], [ %i.arm, %bb.hx ], [ %i.ata, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i ], [ %i.ase, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i ], [ %i.ase, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i ], [ %.pn8.i.i.i137.i, %bb.ia ], [ %.pn8.i.i.i147.i, %bb.if ]
  %i.ayj = load ptr, ptr %8, align 8, !tbaa !302  ; 2 uses
  %.not.i.i.i193.i = icmp eq ptr %i.ayj, null
  br i1 %.not.i.i.i193.i, label %_ZNSt6vectorImSaImEED2Ev.exit194.i, label %bb.jq

bb.jq:                                            ; preds = %.body142.i
  call void @_ZdlPv(ptr noundef nonnull %i.ayj) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit194.i

_ZNSt6vectorImSaImEED2Ev.exit194.i:               ; preds = %bb.jq, %.body142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit: ; preds = %._crit_edge43.i, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit

_ZN6duckdb12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit: ; preds = %.loopexit107.i.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit102.i.i.i.i.i", %.loopexit98.i.i61.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit93.i.i103.i.i.i", %.loopexit98.i.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit93.i.i.i.i.i", %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_S2_NS_19BinaryLambdaWrapperEbZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvSA_SA_SA_mT4_.exit.i.i.i", %bb.du, %.preheader.i.i126.i.i.i, %bb.cv, %.preheader.i.i93.i.i.i, %bb.cj, %bb.bv, %.preheader.i.i.i.i.i, %bb.bj, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %bb.be, %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit, %_ZN6duckdb12_GLOBAL__N_118ListConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEb.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118BindConcatFunctionERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.9") align 8 captures(none) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 {
bb.a:
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_126BindConcatFunctionInternalERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_115ListConcatStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !122, !align !123 ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  tail call void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !320
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !322
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 128
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.09 = phi i64 [ %i.m, %bb.d ], [ 1, %bb.a ]    ; 2 uses
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.09)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %.09, 1                      ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !320
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !322
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 7
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !323

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  resume { ptr, i32 } %i.u

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

declare void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !324
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !324
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
end_hunk_1

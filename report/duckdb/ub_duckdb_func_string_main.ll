inline.NumInlined: 6990
inline.NumDeleted: 1937
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
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
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
  %50 = alloca %"class.duckdb::vector.205", align 8 ; 14 uses
  %51 = alloca %"struct.duckdb::(anonymous namespace)::ListConcatInputData", align 8 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169, !nonnull !122, !align !123
  %i.s = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !155
  switch i8 %i.w, label %bb.bc [
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
  %.not19.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not19.i, label %bb.d, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %51, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %51, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 176 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.s
  store ptr %i.co, ptr %i.am, align 8
  store ptr %i.cn, ptr %i.an, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %i.ao = phi ptr [ %i.co, %._crit_edge.i ], [ null, %bb.c ]
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i unwind label %bb.x

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not51.i = icmp eq i64 %i.ab, 0
  br i1 %.not51.i, label %._crit_edge50.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.au = load ptr, ptr %50, align 8, !tbaa !192
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %.lr.ph49.split.us.preheader.i, label %.lr.ph49.split.i

.lr.ph49.split.us.preheader.i:                    ; preds = %.lr.ph49.i
  %i.aw = shl nuw i64 %i.ab, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.aw, i1 false), !tbaa !69
  br label %._crit_edge50.i

bb.e:                                             ; preds = %bb.s, %.lr.ph.i
  %i.ax = phi ptr [ null, %.lr.ph.i ], [ %i.cn, %bb.s ] ; 12 uses
  %i.ay = phi ptr [ null, %.lr.ph.i ], [ %i.co, %bb.s ] ; 13 uses
  %.sroa.03.020.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.cp, %bb.s ] ; 6 uses
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !155
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.020.i)
          to label %bb.h unwind label %bb.t       ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %51)
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.h
  store ptr %.sroa.03.020.i, ptr %i.ah, align 8, !tbaa !191
  store ptr %i.bc, ptr %i.ai, align 8, !tbaa !191
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.aj)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ay, ptr %i.am, align 8
  store ptr %i.ax, ptr %i.an, align 8
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(184) %51) #28
  br label %.body.i

bb.j:                                             ; preds = %.noexc.i
  store ptr null, ptr %i.ak, align 8, !tbaa !194
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.020.i, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(73) %51)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %51)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !89
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !194
  %i.bf = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.03.020.i)
          to label %bb.m unwind label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(73) %i.aj)
          to label %bb.n unwind label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.ay, ptr noundef nonnull align 8 dereferenceable(184) %51) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  call void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(73) %i.bh, ptr noundef nonnull align 8 dereferenceable(73) %i.aj) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !194
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !194
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_119ListConcatInputDataESaIS2_EE9push_backEOS2_.exit.i

bb.p:                                             ; preds = %bb.n
  %.val.i.i.i.i = load ptr, ptr %50, align 8, !tbaa !197 ; 5 uses
  %i.bk = ptrtoint ptr %i.ax to i64
  %i.bl = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775736
  br i1 %i.bn, label %bb.q, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_119ListConcatInputDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.ay, ptr %i.am, align 8
  store ptr %i.ax, ptr %i.an, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc74.i unwind label %.loopexit.split-lp.i

.noexc74.i:                                       ; preds = %bb.q
  unreachable

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_114ConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.arf = load ptr, ptr %i.are, align 8
  %i.arg = select i1 %i.arc, ptr %i.ard, ptr %i.arf
  %i.arh = zext i32 %i.arb to i64                 ; 2 uses
  %i.ari = load i64, ptr %i.ib, align 8, !tbaa !30
  %.not49.i = icmp eq i64 %i.ari, 0
  br i1 %.not49.i, label %.loopexit.i27, label %.lr.ph38.i

bb.hy:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit132.thread.i
  %i.arj = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i

.lr.ph38.i:                                       ; preds = %bb.hx, %bb.ii
  %.010036.i = phi i64 [ %i.atd, %bb.ii ], [ 0, %bb.hx ] ; 8 uses
  %i.ark = getelementptr inbounds nuw [16 x i8], ptr %i.aki, i64 %.010036.i ; 3 uses
  %i.arl = load i32, ptr %i.ark, align 8, !tbaa !7
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arn = load ptr, ptr %i.arm, align 8
  %i.aro = load ptr, ptr %i.ajz, align 8, !tbaa !304
  %i.arp = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %i.arq = ptrtoint ptr %i.aro to i64
  %i.arr = ptrtoint ptr %i.arp to i64
  %i.ars = sub i64 %i.arq, %i.arr
  %i.art = ashr exact i64 %i.ars, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.010036.i, ptr %i.l, align 8, !tbaa !69
  store i64 %i.art, ptr %i.m, align 8, !tbaa !69
  %.not.i.i.i135.i = icmp ult i64 %.010036.i, %i.art
  br i1 %.not.i.i.i135.i, label %bb.id, label %.noexc.i197.i, !prof !307

.noexc.i197.i:                                    ; preds = %.lr.ph38.i
  %i.aru = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.arv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.arv, ptr %6, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 55, ptr %i.d, align 8, !tbaa !69
  %i.arw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc198.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i ; 3 uses

.noexc198.i:                                      ; preds = %.noexc.i197.i
  store ptr %i.arw, ptr %6, align 8, !tbaa !29
  %i.arx = load i64, ptr %i.d, align 8, !tbaa !69 ; 3 uses
  store i64 %i.arx, ptr %i.arv, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.arw, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.ary = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.arx, ptr %i.ary, align 8, !tbaa !15
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.arx
  store i8 0, ptr %i.arz, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aru, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.hz unwind label %bb.ia

bb.hz:                                            ; preds = %.noexc198.i
  invoke void @__cxa_throw(ptr nonnull %i.aru, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ic unwind label %bb.ia

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i: ; preds = %.noexc.i197.i
  %i.asa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hz, %.noexc198.i
  %.0.i.i.i139.i = phi i1 [ false, %bb.hz ], [ true, %.noexc198.i ] ; 2 uses
  %i.asb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.asc = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.asd = icmp eq ptr %i.asc, %i.arv
  br i1 %i.asd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i: ; preds = %bb.ia
  call void @_ZdlPv(ptr noundef %i.asc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i139.i, label %bb.ib, label %.body142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i: ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i139.i, label %bb.ib, label %.body142.i

bb.ib:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i
  %.pn8.i.i.i137.i = phi { ptr, i32 } [ %i.asa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i136.i ], [ %i.asb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i ], [ %i.asb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i ]
  call void @__cxa_free_exception(ptr %i.aru) #28
  br label %.body142.i

bb.ic:                                            ; preds = %bb.hz
  unreachable

bb.id:                                            ; preds = %.lr.ph38.i
  %i.ase = icmp ult i32 %i.arl, 13
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ark, i64 4
  %i.asg = select i1 %i.ase, ptr %i.asf, ptr %i.arn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.arp, i64 %.010036.i
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !69
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asg, i64 %i.asi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asj, ptr align 1 %i.arg, i64 %i.arh, i1 false)
  %i.ask = load ptr, ptr %i.ajz, align 8, !tbaa !304
  %i.asl = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %i.asm = ptrtoint ptr %i.ask to i64
  %i.asn = ptrtoint ptr %i.asl to i64
  %i.aso = sub i64 %i.asm, %i.asn
  %i.asp = ashr exact i64 %i.aso, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.010036.i, ptr %i.j, align 8, !tbaa !69
  store i64 %i.asp, ptr %i.k, align 8, !tbaa !69
  %.not.i.i.i145.i = icmp ult i64 %.010036.i, %i.asp
  br i1 %.not.i.i.i145.i, label %bb.ii, label %.noexc.i201.i, !prof !307

.noexc.i201.i:                                    ; preds = %bb.id
  %i.asq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.asr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.asr, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 55, ptr %i.c, align 8, !tbaa !69
  %i.ass = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc202.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i ; 3 uses

.noexc202.i:                                      ; preds = %.noexc.i201.i
  store ptr %i.ass, ptr %5, align 8, !tbaa !29
  %i.ast = load i64, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  store i64 %i.ast, ptr %i.asr, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ass, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.asu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ast, ptr %i.asu, align 8, !tbaa !15
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ass, i64 %i.ast
  store i8 0, ptr %i.asv, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.asq, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ie unwind label %bb.if

bb.ie:                                            ; preds = %.noexc202.i
  invoke void @__cxa_throw(ptr nonnull %i.asq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ih unwind label %bb.if

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i: ; preds = %.noexc.i201.i
  %i.asw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ig

bb.if:                                            ; preds = %bb.ie, %.noexc202.i
  %.0.i.i.i149.i = phi i1 [ false, %bb.ie ], [ true, %.noexc202.i ] ; 2 uses
  %i.asx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.asy = load ptr, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.asz = icmp eq ptr %i.asy, %i.asr
  br i1 %i.asz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i: ; preds = %bb.if
  call void @_ZdlPv(ptr noundef %i.asy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i149.i, label %bb.ig, label %.body142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i: ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i149.i, label %bb.ig, label %.body142.i

bb.ig:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i
  %.pn8.i.i.i147.i = phi { ptr, i32 } [ %i.asw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i146.i ], [ %i.asx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i ], [ %i.asx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i ]
  call void @__cxa_free_exception(ptr %i.asq) #28
  br label %.body142.i

bb.ih:                                            ; preds = %bb.ie
  unreachable

bb.ii:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asl, i64 %.010036.i ; 2 uses
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !69
  %i.atc = add i64 %i.atb, %i.arh
  store i64 %i.atc, ptr %i.ata, align 8, !tbaa !69
  %i.atd = add nuw i64 %.010036.i, 1              ; 2 uses
  %i.ate = load i64, ptr %i.ib, align 8, !tbaa !30
  %i.atf = icmp ult i64 %i.atd, %i.ate
  br i1 %i.atf, label %.lr.ph38.i, label %.loopexit.i27, !llvm.loop !315

bb.ij:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ik unwind label %bb.iy

bb.ik:                                            ; preds = %bb.ij
  %i.atg = load i64, ptr %i.ib, align 8, !tbaa !30
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.aqr, i64 noundef %i.atg, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.il unwind label %bb.iz

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i unwind label %bb.ja

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i: ; preds = %bb.il
  %i.ath = load ptr, ptr %i.apy, align 8, !tbaa !89
  %i.ati = load i64, ptr %i.ib, align 8, !tbaa !30 ; 2 uses
  %.not48.i = icmp eq i64 %i.ati, 0
  br i1 %.not48.i, label %._crit_edge35.i, label %.lr.ph34.preheader.i

.lr.ph34.preheader.i:                             ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i
  %.pre56.i = load ptr, ptr %10, align 8, !tbaa !98
  br label %.lr.ph34.i

._crit_edge35.i:                                  ; preds = %bb.jm, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit156.i
  %i.atj = load ptr, ptr %i.aqa, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i157.i = icmp eq ptr %i.atj, null
  br i1 %.not.i.i.i.i.i157.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i, label %bb.im

bb.im:                                            ; preds = %._crit_edge35.i
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 8 ; 4 uses
  %i.atl = load atomic i64, ptr %i.atk acquire, align 8 ; 2 uses
  %i.atm = icmp eq i64 %i.atl, 4294967297
  %i.atn = trunc i64 %i.atl to i32                ; 2 uses
  br i1 %i.atm, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store i32 0, ptr %i.atk, align 8, !tbaa !77
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atj, i64 12
  store i32 0, ptr %i.ato, align 4, !tbaa !79
  %i.atp = load ptr, ptr %i.atj, align 8, !tbaa !80
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8
  call void %i.atr(ptr noundef nonnull align 8 dereferenceable(16) %i.atj) #28, !inline_history !311
  %i.ats = load ptr, ptr %i.atj, align 8, !tbaa !80
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  %i.atu = load ptr, ptr %i.att, align 8
  call void %i.atu(ptr noundef nonnull align 8 dereferenceable(16) %i.atj) #28, !inline_history !311
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i

bb.io:                                            ; preds = %bb.im
  %i.atv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i158.i = icmp eq i8 %i.atv, 0
  br i1 %.not.i.i.i.i.i.i158.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.atw = add nsw i32 %i.atn, -1
  store i32 %i.atw, ptr %i.atk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i

bb.iq:                                            ; preds = %bb.io
  %i.atx = atomicrmw volatile add ptr %i.atk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i: ; preds = %bb.iq, %bb.ip
  %.0.i.i.i.i.i.i.i160.i = phi i32 [ %i.atn, %bb.ip ], [ %i.atx, %bb.iq ]
  %i.aty = icmp eq i32 %.0.i.i.i.i.i.i.i160.i, 1
  br i1 %i.aty, label %bb.ir, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i, !prof !83

bb.ir:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atj) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i:      ; preds = %bb.ir, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i159.i, %bb.in, %._crit_edge35.i
  %i.atz = load ptr, ptr %i.aqb, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i162.i = icmp eq ptr %i.atz, null
  br i1 %.not.i.i.i.i1.i162.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, label %bb.is

bb.is:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 8 ; 4 uses
  %i.aub = load atomic i64, ptr %i.aua acquire, align 8 ; 2 uses
  %i.auc = icmp eq i64 %i.aub, 4294967297
  %i.aud = trunc i64 %i.aub to i32                ; 2 uses
  br i1 %i.auc, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store i32 0, ptr %i.aua, align 8, !tbaa !77
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atz, i64 12
  store i32 0, ptr %i.aue, align 4, !tbaa !79
  %i.auf = load ptr, ptr %i.atz, align 8, !tbaa !80
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16
  %i.auh = load ptr, ptr %i.aug, align 8
  call void %i.auh(ptr noundef nonnull align 8 dereferenceable(16) %i.atz) #28, !inline_history !312
  %i.aui = load ptr, ptr %i.atz, align 8, !tbaa !80
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 24
  %i.auk = load ptr, ptr %i.auj, align 8
  call void %i.auk(ptr noundef nonnull align 8 dereferenceable(16) %i.atz) #28, !inline_history !312
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i

bb.iu:                                            ; preds = %bb.is
  %i.aul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i2.i163.i = icmp eq i8 %i.aul, 0
  br i1 %.not.i.i.i.i.i2.i163.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aum = add nsw i32 %i.aud, -1
  store i32 %i.aum, ptr %i.aua, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i

bb.iw:                                            ; preds = %bb.iu
  %i.aun = atomicrmw volatile add ptr %i.aua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i: ; preds = %bb.iw, %bb.iv
  %.0.i.i.i.i.i.i4.i165.i = phi i32 [ %i.aud, %bb.iv ], [ %i.aun, %bb.iw ]
  %i.auo = icmp eq i32 %.0.i.i.i.i.i.i4.i165.i, 1
  br i1 %i.auo, label %bb.ix, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, !prof !83

bb.ix:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atz) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i:    ; preds = %bb.ix, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i164.i, %bb.it, %_ZN6duckdb15SelectionVectorD2Ev.exit.i161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.i27

bb.iy:                                            ; preds = %bb.ij
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.iz:                                            ; preds = %bb.ik
  %i.auq = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i

bb.ja:                                            ; preds = %bb.il
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i

.lr.ph34.i:                                       ; preds = %bb.jm, %.lr.ph34.preheader.i
  %i.aus = phi i64 [ %i.axg, %bb.jm ], [ %i.ati, %.lr.ph34.preheader.i ]
  %52 = phi ptr [ %53, %bb.jm ], [ %.pre56.i, %.lr.ph34.preheader.i ] ; 2 uses
  %.09833.i = phi i64 [ %i.axh, %bb.jm ], [ 0, %.lr.ph34.preheader.i ] ; 10 uses
  %i.aut = load ptr, ptr %52, align 8, !tbaa !107 ; 2 uses
  %.not.i167.i = icmp eq ptr %i.aut, null
  br i1 %.not.i167.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph34.i
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %.09833.i
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !3
  %i.auw = zext i32 %i.auv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i: ; preds = %bb.jb, %.lr.ph34.i
  %i.aux = phi i64 [ %i.auw, %bb.jb ], [ %.09833.i, %.lr.ph34.i ] ; 3 uses
  %i.auy = load ptr, ptr %i.apz, align 8, !tbaa !68 ; 2 uses
  %.not.i169.i = icmp eq ptr %i.auy, null
  br i1 %.not.i169.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i
  %i.auz = lshr i64 %i.aux, 6
  %i.ava = and i64 %i.aux, 63
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.auy, i64 %i.auz
  %i.avc = load i64, ptr %i.avb, align 8, !tbaa !69
  %i.avd = shl nuw i64 1, %i.ava
  %i.ave = and i64 %i.avc, %i.avd
  %.not.i26 = icmp eq i64 %i.ave, 0
  br i1 %.not.i26, label %bb.jm, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit168.i
  %i.avf = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.aux ; 3 uses
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !7 ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  %i.avi = load ptr, ptr %i.avh, align 8
  %i.avj = zext i32 %i.avg to i64                 ; 2 uses
  %i.avk = getelementptr inbounds nuw [16 x i8], ptr %i.aki, i64 %.09833.i ; 3 uses
  %i.avl = load i32, ptr %i.avk, align 8, !tbaa !7
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avk, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8
  %i.avo = load ptr, ptr %i.ajz, align 8, !tbaa !304
  %i.avp = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %i.avq = ptrtoint ptr %i.avo to i64
  %i.avr = ptrtoint ptr %i.avp to i64
  %i.avs = sub i64 %i.avq, %i.avr
  %i.avt = ashr exact i64 %i.avs, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.09833.i, ptr %i.h, align 8, !tbaa !69
  store i64 %i.avt, ptr %i.i, align 8, !tbaa !69
  %.not.i.i.i172.i = icmp ult i64 %.09833.i, %i.avt
  br i1 %.not.i.i.i172.i, label %bb.jg, label %.noexc.i205.i, !prof !307

.noexc.i205.i:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i
  %i.avu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.avv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.avv, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 55, ptr %i.b, align 8, !tbaa !69
  %i.avw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc206.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i ; 3 uses

.noexc206.i:                                      ; preds = %.noexc.i205.i
  store ptr %i.avw, ptr %4, align 8, !tbaa !29
  %i.avx = load i64, ptr %i.b, align 8, !tbaa !69 ; 3 uses
  store i64 %i.avx, ptr %i.avv, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.avw, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.avy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.avx, ptr %i.avy, align 8, !tbaa !15
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx
  store i8 0, ptr %i.avz, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.avu, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %.noexc206.i
  invoke void @__cxa_throw(ptr nonnull %i.avu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.jf unwind label %bb.jd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i: ; preds = %.noexc.i205.i
  %i.awa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.je

bb.jd:                                            ; preds = %bb.jc, %.noexc206.i
  %.0.i.i.i176.i = phi i1 [ false, %bb.jc ], [ true, %.noexc206.i ] ; 2 uses
  %i.awb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.awc = load ptr, ptr %4, align 8, !tbaa !29   ; 2 uses
  %i.awd = icmp eq ptr %i.awc, %i.avv
  br i1 %i.awd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i: ; preds = %bb.jd
  call void @_ZdlPv(ptr noundef %i.awc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i176.i, label %bb.je, label %.body179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i: ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i176.i, label %bb.je, label %.body179.i

bb.je:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i
  %.pn8.i.i.i174.i = phi { ptr, i32 } [ %i.awa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i173.i ], [ %i.awb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i ], [ %i.awb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i ]
  call void @__cxa_free_exception(ptr %i.avu) #28
  br label %.body179.i

bb.jf:                                            ; preds = %bb.jc
  unreachable

bb.jg:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.thread.i
  %i.awe = icmp ult i32 %i.avl, 13
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  %i.awg = select i1 %i.awe, ptr %i.awf, ptr %i.avn
  %i.awh = icmp ult i32 %i.avg, 13
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avf, i64 4
  %i.awj = select i1 %i.awh, ptr %i.awi, ptr %i.avi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.avp, i64 %.09833.i
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !69
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awm, ptr align 1 %i.awj, i64 %i.avj, i1 false)
  %i.awn = load ptr, ptr %i.ajz, align 8, !tbaa !304
  %i.awo = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %i.awp = ptrtoint ptr %i.awn to i64
  %i.awq = ptrtoint ptr %i.awo to i64
  %i.awr = sub i64 %i.awp, %i.awq
  %i.aws = ashr exact i64 %i.awr, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.09833.i, ptr %i.f, align 8, !tbaa !69
  store i64 %i.aws, ptr %i.g, align 8, !tbaa !69
  %.not.i.i.i182.i = icmp ult i64 %.09833.i, %i.aws
  br i1 %.not.i.i.i182.i, label %bb.jl, label %.noexc.i209.i, !prof !307

.noexc.i209.i:                                    ; preds = %bb.jg
  %i.awt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.awu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.awu, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !69
  %i.awv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc210.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i ; 3 uses

.noexc210.i:                                      ; preds = %.noexc.i209.i
  store ptr %i.awv, ptr %3, align 8, !tbaa !29
  %i.aww = load i64, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  store i64 %i.aww, ptr %i.awu, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.awv, ptr noundef nonnull align 1 dereferenceable(55) @.str.46, i64 55, i1 false)
  %i.awx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aww, ptr %i.awx, align 8, !tbaa !15
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.aww
  store i8 0, ptr %i.awy, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.awt, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %.noexc210.i
  invoke void @__cxa_throw(ptr nonnull %i.awt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.jk unwind label %bb.ji

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i: ; preds = %.noexc.i209.i
  %i.awz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jh, %.noexc210.i
  %.0.i.i.i186.i = phi i1 [ false, %bb.jh ], [ true, %.noexc210.i ] ; 2 uses
  %i.axa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.axb = load ptr, ptr %3, align 8, !tbaa !29   ; 2 uses
  %i.axc = icmp eq ptr %i.axb, %i.awu
  br i1 %i.axc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i: ; preds = %bb.ji
  call void @_ZdlPv(ptr noundef %i.axb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i186.i, label %bb.jj, label %.body179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i: ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i186.i, label %bb.jj, label %.body179.i

bb.jj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i
  %.pn8.i.i.i184.i = phi { ptr, i32 } [ %i.awz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i183.i ], [ %i.axa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i ], [ %i.axa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i ]
  call void @__cxa_free_exception(ptr %i.awt) #28
  br label %.body179.i

bb.jk:                                            ; preds = %bb.jh
  unreachable

bb.jl:                                            ; preds = %bb.jg
  %.pre55.i = load ptr, ptr %10, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %.09833.i ; 2 uses
  %i.axe = load i64, ptr %i.axd, align 8, !tbaa !69
  %i.axf = add i64 %i.axe, %i.avj
  store i64 %i.axf, ptr %i.axd, align 8, !tbaa !69
  %.pre55.i.a = load i64, ptr %i.ib, align 8, !tbaa !30
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i
  %i.axg = phi i64 [ %i.aus, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i ], [ %.pre55.i.a, %bb.jl ] ; 2 uses
  %53 = phi ptr [ %52, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit171.i ], [ %.pre55.i, %bb.jl ]
  %i.axh = add nuw i64 %.09833.i, 1               ; 2 uses
  %i.axi = icmp ult i64 %i.axh, %i.axg
  br i1 %i.axi, label %.lr.ph34.i, label %._crit_edge35.i, !llvm.loop !316

.body179.i:                                       ; preds = %bb.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i, %bb.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i, %bb.ja, %bb.iz
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.auq, %bb.iz ], [ %i.aur, %bb.ja ], [ %i.axa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187.i ], [ %.pn8.i.i.i184.i, %bb.jj ], [ %i.awb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177.i ], [ %i.awb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178.i ], [ %.pn8.i.i.i174.i, %bb.je ], [ %i.axa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i188.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #28
  br label %bb.jn

bb.jn:                                            ; preds = %.body179.i, %bb.iy
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body179.i ], [ %i.aup, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.body142.i

.loopexit.i27:                                    ; preds = %bb.ii, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit166.i, %bb.hx, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit132.i
  %i.axj = add nuw i64 %.010339.i, 1              ; 2 uses
  %i.axk = load ptr, ptr %i.aka, align 8, !tbaa !305
  %i.axl = load ptr, ptr %0, align 8, !tbaa !306
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = sub i64 %i.axm, %i.axn
  %i.axp = sdiv exact i64 %i.axo, 104
  %i.axq = icmp ult i64 %i.axj, %i.axp
  br i1 %i.axq, label %bb.ht, label %.preheader.loopexit.i, !llvm.loop !317

._crit_edge43.i:                                  ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i, %.preheader.i
  %i.axr = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i192.i = icmp eq ptr %i.axr, null
  br i1 %.not.i.i.i192.i, label %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit, label %bb.jo

bb.jo:                                            ; preds = %._crit_edge43.i
  call void @_ZdlPv(ptr noundef nonnull %i.axr) #32
  br label %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit

.lr.ph42.i:                                       ; preds = %.preheader.i, %_ZN6duckdb8string_t8FinalizeEv.exit.i
  %.041.i = phi i64 [ %i.ayd, %_ZN6duckdb8string_t8FinalizeEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.axs = getelementptr inbounds nuw [16 x i8], ptr %i.aki, i64 %.041.i ; 4 uses
  %i.axt = load i32, ptr %i.axs, align 8, !tbaa !7 ; 2 uses
  %i.axu = icmp ult i32 %i.axt, 13
  br i1 %i.axu, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %.lr.ph42.i
  %i.axv = zext nneg i32 %i.axt to i64            ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 %i.axv
  %i.axy = sub nuw nsw i64 12, %i.axv
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.axx, i8 0, i64 %i.axy, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

bb.jq:                                            ; preds = %.lr.ph42.i
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8
  %i.ayc = load i32, ptr %i.ayb, align 1
  store i32 %i.ayc, ptr %i.axz, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i

_ZN6duckdb8string_t8FinalizeEv.exit.i:            ; preds = %bb.jq, %bb.jp
  %i.ayd = add nuw i64 %.041.i, 1                 ; 2 uses
  %i.aye = load i64, ptr %i.ib, align 8, !tbaa !30
  %i.ayf = icmp ult i64 %i.ayd, %i.aye
  br i1 %i.ayf, label %.lr.ph42.i, label %._crit_edge43.i, !llvm.loop !318

.body142.i:                                       ; preds = %bb.jn, %bb.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i, %bb.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i, %bb.hy, %bb.hw, %bb.hs, %bb.hr, %bb.hn, %bb.hl, %bb.gj, %bb.gh
  %.pn120.pn.i = phi { ptr, i32 } [ %.pn116.pn.pn.i, %bb.hl ], [ %i.akx, %bb.gj ], [ %i.akr, %bb.gh ], [ %i.aqc, %bb.hn ], [ %i.aqp, %bb.hs ], [ %i.asx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i151.i ], [ %i.aqo, %bb.hr ], [ %.pn.pn.pn.pn.pn.i, %bb.jn ], [ %i.aqy, %bb.hw ], [ %i.arj, %bb.hy ], [ %i.asx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150.i ], [ %i.asb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i140.i ], [ %i.asb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i141.i ], [ %.pn8.i.i.i137.i, %bb.ib ], [ %.pn8.i.i.i147.i, %bb.ig ]
  %i.ayg = load ptr, ptr %8, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i193.i = icmp eq ptr %i.ayg, null
  br i1 %.not.i.i.i193.i, label %_ZNSt6vectorImSaImEED2Ev.exit194.i, label %bb.jr

bb.jr:                                            ; preds = %.body142.i
  call void @_ZdlPv(ptr noundef nonnull %i.ayg) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit194.i

_ZNSt6vectorImSaImEED2Ev.exit194.i:               ; preds = %bb.jr, %.body142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit: ; preds = %._crit_edge43.i, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit

_ZN6duckdb12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit: ; preds = %.loopexit107.i.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit102.i.i.i.i.i", %.loopexit98.i.i61.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit93.i.i103.i.i.i", %.loopexit98.i.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit93.i.i.i.i.i", %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_S2_NS_19BinaryLambdaWrapperEbZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvSA_SA_SA_mT4_.exit.i.i.i", %bb.dv, %.preheader.i.i126.i.i.i, %bb.cw, %.preheader.i.i93.i.i.i, %bb.ck, %bb.bw, %.preheader.i.i.i.i.i, %bb.bk, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_114ConcatOperatorERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tESA_SA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %bb.bf, %_ZN6duckdb12_GLOBAL__N_120StringConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit, %_ZN6duckdb12_GLOBAL__N_118ListConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEb.exit, %bb.b
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !319
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !321
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
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !319
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !321
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 7
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !322

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !323
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !323
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

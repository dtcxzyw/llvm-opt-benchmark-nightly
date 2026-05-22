inline.NumInlined: 817
inline.NumDeleted: 411
begin_hunk_0_@_ZN6duckdb21StIntersectsExtentFun11GetFunctionEv:bb.a
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.g unwind label %.thread31

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  %i.y = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #23
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #19
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.loopexit.loopexit19:                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread31:                                        ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.n

bb.n:                                             ; preds = %.thread31, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.af, %.thread31 ], [ %i.ag, %bb.m ]
  %i.ah = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread31 ], [ %.pre, %bb.m ]
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %bb.m, %bb.n
  %.pn35 = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn34, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt14_Function_baseD2Ev.exit13 ], [ %i.ae, %bb.l ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %.body

.body:                                            ; preds = %.body14.thread, %.body14, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.q, %.body14.thread ], [ %i.n, %.body14 ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit19, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ad, %.loopexit.loopexit19 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %4 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %8 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %13 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %14 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %17 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %18 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %19 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %20 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %21 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %22 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %23 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %24 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %25 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %26 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %27 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %28 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %29 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %30 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %31 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %32 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %33 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %34 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %35 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %36 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %37 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %38 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %39 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %40 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %41 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %42 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %43 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %44 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %45 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %46 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %47 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %48 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %49 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %50 = alloca %"class.duckdb::GeometryExtent", align 16 ; 10 uses
  %51 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %52 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 24 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 21 uses
  %i.e = load i8, ptr %i.a, align 8, !tbaa !35    ; 3 uses
  %i.f = load i8, ptr %i.b, align 8, !tbaa !35    ; 3 uses
  %i.g = icmp eq i8 %i.e, 2                       ; 2 uses
  %i.h = icmp eq i8 %i.f, 2                       ; 2 uses
  %or.cond.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i, label %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.i.i"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %.not.i.i13.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i13.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !61
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i, label %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.i.i"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.j, align 8
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !62
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %51, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %.sroa.22.0.copyload.i.i.i, ptr %i.w, align 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %52, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  %i.y = getelementptr inbounds nuw i8, ptr %49, i64 8
  store <2 x double> splat (double +inf), ptr %49, align 16, !tbaa !134, !alias.scope !136
  %i.z = getelementptr inbounds nuw i8, ptr %49, i64 16
  store <2 x double> splat (double +inf), ptr %i.z, align 16, !tbaa !134, !alias.scope !136
  %i.aa = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %49, i64 40
  store <2 x double> splat (double -inf), ptr %i.aa, align 16, !tbaa !134, !alias.scope !136
  %i.ac = getelementptr inbounds nuw i8, ptr %49, i64 48
  store <2 x double> splat (double -inf), ptr %i.ac, align 16, !tbaa !134, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %50, i64 8
  store <2 x double> splat (double +inf), ptr %50, align 16, !tbaa !134, !alias.scope !139
  %i.ae = getelementptr inbounds nuw i8, ptr %50, i64 16
  store <2 x double> splat (double +inf), ptr %i.ae, align 16, !tbaa !134, !alias.scope !139
  %i.af = getelementptr inbounds nuw i8, ptr %50, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %50, i64 40
  store <2 x double> splat (double -inf), ptr %i.af, align 16, !tbaa !134, !alias.scope !139
  %i.ah = getelementptr inbounds nuw i8, ptr %50, i64 48
  store <2 x double> splat (double -inf), ptr %i.ah, align 16, !tbaa !134, !alias.scope !139
  %i.ai = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(64) %49)
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(64) %50)
  %i.al = icmp eq i32 %i.ak, 0
  %or.cond.i.i.i.i.i = or i1 %i.aj, %i.al
  br i1 %or.cond.i.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i
  %i.am = load double, ptr %49, align 16, !tbaa !142
  %i.an = load double, ptr %i.af, align 16, !tbaa !144
  %i.ao = fcmp ogt double %i.am, %i.an
  br i1 %i.ao, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load double, ptr %i.aa, align 16, !tbaa !144
  %i.aq = load double, ptr %50, align 16, !tbaa !142
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load double, ptr %i.y, align 8, !tbaa !145
  %i.at = load double, ptr %i.ag, align 8, !tbaa !146
  %i.au = fcmp ogt double %i.as, %i.at
  br i1 %i.au, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load double, ptr %i.ab, align 8, !tbaa !146
  %i.aw = load double, ptr %i.ad, align 8, !tbaa !145
  %i.ax = fcmp uge double %i.av, %i.aw
  %i.ay = zext i1 %i.ax to i8
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i"

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i": ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i
  %.0.i.i16.i.i.i = phi i8 [ 0, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.thread.i.i.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.ay, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  store i8 %.0.i.i16.i.i.i, ptr %i.n, align 1, !tbaa !147
  br label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit"

bb.g:                                             ; preds = %bb.a
  %i.az = icmp eq i8 %i.e, 0
  %or.cond3.i.i = and i1 %i.az, %i.h
  br i1 %or.cond3.i.i, label %bb.h, label %bb.al

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i35.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i35.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i: ; preds = %bb.h
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !61
  %i.bh = trunc i64 %i.bg to i1
  br i1 %i.bh, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i, label %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.sink.split.i.i"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i, %bb.h
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = icmp eq ptr %2, %i.a
  br i1 %i.bo, label %bb.s, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69 ; 8 uses
  store <2 x ptr> %i.bs, ptr %i.bn, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ca, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !72
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #19, !inline_history !149
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #19, !inline_history !149
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.p ], [ %i.cn, %bb.q ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.r, label %bb.s, !prof !76

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cs = load ptr, ptr %i.bk, align 8, !tbaa !60, !noalias !157
  %.not.i.i17.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i17.i.i.i, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.not96.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not96.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !153, !noalias !158
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !153, !noalias !158
  %i.ct = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %38, i64 48
  br label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.df = add i64 %i.d, 63
  %i.dg = lshr i64 %i.df, 6                       ; 2 uses
  %.not95.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not95.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %.lr.ph92.i.i.i.i

.lr.ph92.i.i.i.i:                                 ; preds = %bb.t
  %.sroa.424.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %46, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %41, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %42, i64 48
  br label %bb.u

bb.u:                                             ; preds = %.loopexit82.i.i.i.i, %.lr.ph92.i.i.i.i
  %.091.i.i.i.i = phi i64 [ 0, %.lr.ph92.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit82.i.i.i.i ] ; 9 uses
  %.06990.i.i.i.i = phi i64 [ 0, %.lr.ph92.i.i.i.i ], [ %i.gg, %.loopexit82.i.i.i.i ] ; 2 uses
  %i.ef = load ptr, ptr %i.bk, align 8, !tbaa !60, !noalias !157 ; 2 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.u
  %i.eg = add i64 %.091.i.i.i.i, 64
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.eg, i64 %i.d)
  br label %.preheader83.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.06990.i.i.i.i
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !61, !noalias !157 ; 2 uses
  %i.ek = add i64 %.091.i.i.i.i, 64
  %i.el = call noundef i64 @llvm.umin.i64(i64 %i.ek, i64 %i.d) ; 5 uses
  switch i64 %i.ej, label %.preheader81.i.i.i.i [
    i64 -1, label %.preheader83.i.i.i.i
    i64 0, label %.loopexit82.i.i.i.i
  ]

.preheader83.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.em = phi i64 [ %i.eh, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.el, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 3 uses
  %i.en = icmp ult i64 %.091.i.i.i.i, %i.em
  br i1 %i.en, label %.lr.ph.i.i.i.i, label %.loopexit82.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader83.i.i.i.i
  %.sroa.023.0.copyload.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !153, !noalias !158
  %.sroa.424.0.copyload.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !153, !noalias !158
  br label %bb.v

.preheader81.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.eo = icmp ult i64 %.091.i.i.i.i, %i.el
  br i1 %i.eo, label %.lr.ph88.i.i.i.i, label %.loopexit82.i.i.i.i

bb.v:                                             ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.186.i.i.i.i = phi i64 [ %.091.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fi, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.186.i.i.i.i ; 2 uses
  %.sroa.025.0.copyload.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !150, !noalias !159
end_hunk_0
begin_hunk_1_@_ZN6duckdbL24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ex = load double, ptr %i.dl, align 16, !tbaa !144, !noalias !157
  %i.ey = load double, ptr %46, align 16, !tbaa !142, !noalias !157
  %i.ez = fcmp olt double %i.ex, %i.ey
  br i1 %i.ez, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = load double, ptr %i.dj, align 8, !tbaa !145, !noalias !157
  %i.fb = load double, ptr %i.dr, align 8, !tbaa !146, !noalias !157
  %i.fc = fcmp ogt double %i.fa, %i.fb
  br i1 %i.fc, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fd = load double, ptr %i.dm, align 8, !tbaa !146, !noalias !157
  %i.fe = load double, ptr %i.do, align 8, !tbaa !145, !noalias !157
  %i.ff = fcmp uge double %i.fd, %i.fe
  %i.fg = zext i1 %i.ff to i8
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i"

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i": ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i8 [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ %i.fg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %47), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %48), !noalias !157
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.186.i.i.i.i
  store i8 %.0.i.i.i.i.i.i, ptr %i.fh, align 1, !tbaa !147, !alias.scope !155, !noalias !166
  %i.fi = add i64 %.186.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, %i.em
  br i1 %exitcond.not.i.i.i.i, label %.loopexit82.i.i.i.i, label %bb.v, !llvm.loop !167

.lr.ph88.i.i.i.i:                                 ; preds = %.preheader81.i.i.i.i, %bb.af
  %.287.i.i.i.i = phi i64 [ %i.gf, %bb.af ], [ %.091.i.i.i.i, %.preheader81.i.i.i.i ] ; 4 uses
  %i.fj = sub nuw i64 %.287.i.i.i.i, %.091.i.i.i.i
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.ej
  %.not.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph88.i.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.287.i.i.i.i ; 2 uses
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !150, !noalias !159
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.417.0.copyload.i.i.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !150, !noalias !159
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !153, !noalias !158
  %.sroa.415.0.copyload.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !153, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %43), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %44), !noalias !157
  store i64 %.sroa.016.0.copyload.i.i.i.i, ptr %43, align 8, !noalias !157
  store ptr %.sroa.417.0.copyload.i.i.i.i, ptr %i.dt, align 8, !noalias !157
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %44, align 8, !noalias !157
  store ptr %.sroa.415.0.copyload.i.i.i.i, ptr %i.du, align 8, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !157
  store <2 x double> splat (double +inf), ptr %41, align 16, !tbaa !134, !alias.scope !168, !noalias !157
  store <2 x double> splat (double +inf), ptr %i.dw, align 16, !tbaa !134, !alias.scope !168, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.dx, align 16, !tbaa !134, !alias.scope !168, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.dz, align 16, !tbaa !134, !alias.scope !168, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !157
  store <2 x double> splat (double +inf), ptr %42, align 16, !tbaa !134, !alias.scope !171, !noalias !157
  store <2 x double> splat (double +inf), ptr %i.eb, align 16, !tbaa !134, !alias.scope !171, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.ec, align 16, !tbaa !134, !alias.scope !171, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.ee, align 16, !tbaa !134, !alias.scope !171, !noalias !157
  %i.fn = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(64) %41), !noalias !157
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(64) %42), !noalias !157
  %i.fq = icmp eq i32 %i.fp, 0
  %or.cond.i.i72.i.i.i.i = or i1 %i.fo, %i.fq
  br i1 %or.cond.i.i72.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load double, ptr %41, align 16, !tbaa !142, !noalias !157
  %i.fs = load double, ptr %i.ec, align 16, !tbaa !144, !noalias !157
  %i.ft = fcmp ogt double %i.fr, %i.fs
  br i1 %i.ft, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = load double, ptr %i.dx, align 16, !tbaa !144, !noalias !157
  %i.fv = load double, ptr %42, align 16, !tbaa !142, !noalias !157
  %i.fw = fcmp olt double %i.fu, %i.fv
  br i1 %i.fw, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = load double, ptr %i.dv, align 8, !tbaa !145, !noalias !157
  %i.fy = load double, ptr %i.ed, align 8, !tbaa !146, !noalias !157
  %i.fz = fcmp ogt double %i.fx, %i.fy
  br i1 %i.fz, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = load double, ptr %i.dy, align 8, !tbaa !146, !noalias !157
  %i.gb = load double, ptr %i.ea, align 8, !tbaa !145, !noalias !157
  %i.gc = fcmp uge double %i.ga, %i.gb
  %i.gd = zext i1 %i.gc to i8
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i"

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0.i.i73.i.i.i.i = phi i8 [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ %i.gd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %43), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %44), !noalias !157
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.287.i.i.i.i
  store i8 %.0.i.i73.i.i.i.i, ptr %i.ge, align 1, !tbaa !147, !alias.scope !155, !noalias !166
  br label %bb.af

bb.af:                                            ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit74.i.i.i.i", %.lr.ph88.i.i.i.i
  %i.gf = add i64 %.287.i.i.i.i, 1                ; 2 uses
  %exitcond100.not.i.i.i.i = icmp eq i64 %i.gf, %i.el
  br i1 %exitcond100.not.i.i.i.i, label %.loopexit82.i.i.i.i, label %.lr.ph88.i.i.i.i, !llvm.loop !174

.loopexit82.i.i.i.i:                              ; preds = %bb.af, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %.preheader81.i.i.i.i, %.preheader83.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.el, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.em, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ], [ %.091.i.i.i.i, %.preheader81.i.i.i.i ], [ %.091.i.i.i.i, %.preheader83.i.i.i.i ], [ %i.el, %bb.af ]
  %i.gg = add nuw nsw i64 %.06990.i.i.i.i, 1      ; 2 uses
  %exitcond101.not.i.i.i.i = icmp eq i64 %i.gg, %i.dg
  br i1 %exitcond101.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %bb.u, !llvm.loop !175

bb.ag:                                            ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", %.lr.ph94.i.i.i.i
  %.07093.i.i.i.i = phi i64 [ 0, %.lr.ph94.i.i.i.i ], [ %i.ha, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i" ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.07093.i.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.gh, align 8, !alias.scope !150, !noalias !159
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.45.0.copyload.i.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !alias.scope !150, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %40), !noalias !157
  store i64 %.sroa.04.0.copyload.i.i.i.i, ptr %39, align 8, !noalias !157
  store ptr %.sroa.45.0.copyload.i.i.i.i, ptr %i.ct, align 8, !noalias !157
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %40, align 8, !noalias !157
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.cu, align 8, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !157
  store <2 x double> splat (double +inf), ptr %37, align 16, !tbaa !134, !alias.scope !176, !noalias !157
  store <2 x double> splat (double +inf), ptr %i.cw, align 16, !tbaa !134, !alias.scope !176, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.cx, align 16, !tbaa !134, !alias.scope !176, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.cz, align 16, !tbaa !134, !alias.scope !176, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19, !noalias !157
  store <2 x double> splat (double +inf), ptr %38, align 16, !tbaa !134, !alias.scope !179, !noalias !157
  store <2 x double> splat (double +inf), ptr %i.db, align 16, !tbaa !134, !alias.scope !179, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.dc, align 16, !tbaa !134, !alias.scope !179, !noalias !157
  store <2 x double> splat (double -inf), ptr %i.de, align 16, !tbaa !134, !alias.scope !179, !noalias !157
  %i.gi = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(64) %37), !noalias !157
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = call noundef i32 @_ZN6duckdb8Geometry9GetExtentERKNS_8string_tERNS_14GeometryExtentE(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %38), !noalias !157
  %i.gl = icmp eq i32 %i.gk, 0
  %or.cond.i.i75.i.i.i.i = or i1 %i.gj, %i.gl
  br i1 %or.cond.i.i75.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = load double, ptr %37, align 16, !tbaa !142, !noalias !157
  %i.gn = load double, ptr %i.dc, align 16, !tbaa !144, !noalias !157
  %i.go = fcmp ogt double %i.gm, %i.gn
  br i1 %i.go, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gp = load double, ptr %i.cx, align 16, !tbaa !144, !noalias !157
  %i.gq = load double, ptr %38, align 16, !tbaa !142, !noalias !157
  %i.gr = fcmp olt double %i.gp, %i.gq
  br i1 %i.gr, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = load double, ptr %i.cv, align 8, !tbaa !145, !noalias !157
  %i.gt = load double, ptr %i.dd, align 8, !tbaa !146, !noalias !157
  %i.gu = fcmp ogt double %i.gs, %i.gt
  br i1 %i.gu, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gv = load double, ptr %i.cy, align 8, !tbaa !146, !noalias !157
  %i.gw = load double, ptr %i.da, align 8, !tbaa !145, !noalias !157
  %i.gx = fcmp uge double %i.gv, %i.gw
  %i.gy = zext i1 %i.gx to i8
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i"

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i": ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0.i.i76.i.i.i.i = phi i8 [ 0, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ %i.gy, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !157
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.07093.i.i.i.i
  store i8 %.0.i.i76.i.i.i.i, ptr %i.gz, align 1, !tbaa !147, !alias.scope !155, !noalias !166
  %i.ha = add nuw i64 %.07093.i.i.i.i, 1          ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.ha, %i.d
  br i1 %exitcond102.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %bb.ag, !llvm.loop !182

bb.al:                                            ; preds = %bb.g
  %i.hb = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.hb
  br i1 %or.cond5.i.i, label %bb.am, label %bb.bq

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !59 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !59 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i38.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i38.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i: ; preds = %bb.am
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !61
  %i.hj = trunc i64 %i.hi to i1
  br i1 %i.hj, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i, label %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.sink.split.i.i"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i, %bb.am
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !59 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !60
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !60
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hq = icmp eq ptr %2, %i.b
  br i1 %i.hq, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !69 ; 2 uses
  %i.hu = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i41.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i41.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 3 uses
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i42.i.i = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i42.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.hz = atomicrmw volatile add ptr %i.hv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !69 ; 8 uses
  store <2 x ptr> %i.hu, ptr %i.hp, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i44.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i.i.i44.i.i, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ic, align 8, !tbaa !70
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !72
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !73
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19, !inline_history !183
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !73
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  tail call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19, !inline_history !183
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i5.i.i.i.i45.i.i = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i5.i.i.i.i45.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i46.i.i

bb.av:                                            ; preds = %bb.at
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i46.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i46.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i.i47.i.i = phi i32 [ %i.if, %bb.au ], [ %i.ip, %bb.av ]
  %i.iq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i47.i.i, 1
  br i1 %i.iq, label %bb.aw, label %bb.ax, !prof !76

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i46.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i46.i.i, %bb.as, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i43.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !77
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.is, ptr %i.it, align 8, !tbaa !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.iu = load ptr, ptr %i.hm, align 8, !tbaa !60, !noalias !191
  %.not.i.i17.i48.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i17.i48.i.i, label %.preheader.i.i84.i.i, label %bb.ay

.preheader.i.i84.i.i:                             ; preds = %bb.ax
  %.not96.i.i85.i.i = icmp eq i64 %i.d, 0
  br i1 %.not96.i.i85.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %.lr.ph94.i.i86.i.i

.lr.ph94.i.i86.i.i:                               ; preds = %.preheader.i.i84.i.i
  %.sroa.04.0.copyload.i.i87.i.i = load i64, ptr %i.hd, align 8, !alias.scope !184, !noalias !192
  %.sroa.45.0..sroa_idx.i.i88.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.45.0.copyload.i.i89.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i88.i.i, align 8, !tbaa !62, !alias.scope !184, !noalias !192
  %i.iv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.jc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %26, i64 48
  br label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.jh = add i64 %i.d, 63
  %i.ji = lshr i64 %i.jh, 6                       ; 2 uses
  %.not95.i.i49.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not95.i.i49.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit", label %.lr.ph92.i.i50.i.i

.lr.ph92.i.i50.i.i:                               ; preds = %bb.ay
  %.sroa.426.0..sroa_idx.i.i51.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.jp = getelementptr inbounds nuw i8, ptr %33, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.jv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.kg = getelementptr inbounds nuw i8, ptr %30, i64 48
  br label %bb.az

bb.az:                                            ; preds = %.loopexit82.i.i56.i.i, %.lr.ph92.i.i50.i.i
  %.091.i.i52.i.i = phi i64 [ 0, %.lr.ph92.i.i50.i.i ], [ %.4.i.i57.i.i, %.loopexit82.i.i56.i.i ] ; 9 uses
  %.06990.i.i53.i.i = phi i64 [ 0, %.lr.ph92.i.i50.i.i ], [ %i.mi, %.loopexit82.i.i56.i.i ] ; 2 uses
  %i.kh = load ptr, ptr %i.hm, align 8, !tbaa !60, !noalias !191 ; 2 uses
  %.not.i71.i.i54.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i71.i.i54.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i83.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i55.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i83.i.i: ; preds = %bb.az
  %i.ki = add i64 %.091.i.i52.i.i, 64
  %i.kj = call noundef i64 @llvm.umin.i64(i64 %i.ki, i64 %i.d)
  br label %.preheader83.i.i59.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i55.i.i: ; preds = %bb.az
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.06990.i.i53.i.i
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !61, !noalias !191 ; 2 uses
  %i.km = add i64 %.091.i.i52.i.i, 64
  %i.kn = call noundef i64 @llvm.umin.i64(i64 %i.km, i64 %i.d) ; 5 uses
  switch i64 %i.kl, label %.preheader81.i.i71.i.i [
    i64 -1, label %.preheader83.i.i59.i.i
    i64 0, label %.loopexit82.i.i56.i.i
  ]

.preheader83.i.i59.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i55.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i83.i.i
  %i.ko = phi i64 [ %i.kj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i83.i.i ], [ %i.kn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i55.i.i ] ; 3 uses
  %i.kp = icmp ult i64 %.091.i.i52.i.i, %i.ko
  br i1 %i.kp, label %.lr.ph.i.i60.i.i, label %.loopexit82.i.i56.i.i

.lr.ph.i.i60.i.i:                                 ; preds = %.preheader83.i.i59.i.i
  %.sroa.025.0.copyload.i.i61.i.i = load i64, ptr %i.hd, align 8, !alias.scope !184, !noalias !192
  %.sroa.426.0.copyload.i.i62.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i51.i.i, align 8, !tbaa !62, !alias.scope !184, !noalias !192
  br label %bb.ba

.preheader81.i.i71.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i55.i.i
  %i.kq = icmp ult i64 %.091.i.i52.i.i, %i.kn
  br i1 %i.kq, label %.lr.ph88.i.i72.i.i, label %.loopexit82.i.i56.i.i

bb.ba:                                            ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i", %.lr.ph.i.i60.i.i
  %.186.i.i63.i.i = phi i64 [ %.091.i.i52.i.i, %.lr.ph.i.i60.i.i ], [ %i.lk, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i68.i.i" ] ; 3 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.186.i.i63.i.i ; 2 uses
  %.sroa.023.0.copyload.i.i64.i.i = load i64, ptr %i.kr, align 8, !alias.scope !187, !noalias !193
end_hunk_1
begin_hunk_2_@_ZN6duckdbL24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ye, %bb.dx ], [ %i.yo, %bb.dy ]
  %i.yp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.yp, label %bb.dz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i, !prof !76

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i:     ; preds = %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.dv, %"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESL_mRNS_12ValidityMaskESN_SN_T4_.exit.i.i.i"
  %i.yq = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.yr, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8 ; 4 uses
  %i.yt = load atomic i64, ptr %i.ys acquire, align 8 ; 2 uses
  %i.yu = icmp eq i64 %i.yt, 4294967297
  %i.yv = trunc i64 %i.yt to i32                  ; 2 uses
  br i1 %i.yu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.ys, align 8, !tbaa !70
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yr, i64 12
  store i32 0, ptr %i.yw, align 4, !tbaa !72
  %i.yx = load ptr, ptr %i.yr, align 8, !tbaa !73
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr noundef nonnull align 8 dereferenceable(16) %i.yr) #19, !inline_history !283
  %i.za = load ptr, ptr %i.yr, align 8, !tbaa !73
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(16) %i.yr) #19, !inline_history !283
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.zd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq i8 %i.zd, 0
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ze = add nsw i32 %i.yv, -1
  store i32 %i.ze, ptr %i.ys, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.zf = atomicrmw volatile add ptr %i.ys, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.yv, %bb.ed ], [ %i.zf, %bb.ee ]
  %i.zg = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.zg, label %bb.ef, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i, !prof !76

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yr) #19
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i:   ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i, %bb.eb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.zh = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i.i19.i.i.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i.i19.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 4 uses
  %i.zk = load atomic i64, ptr %i.zj acquire, align 8 ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 4294967297
  %i.zm = trunc i64 %i.zk to i32                  ; 2 uses
  br i1 %i.zl, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.zj, align 8, !tbaa !70
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  store i32 0, ptr %i.zn, align 4, !tbaa !72
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !73
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19, !inline_history !282
  %i.zr = load ptr, ptr %i.zi, align 8, !tbaa !73
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19, !inline_history !282
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.zu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i20.i.i.i = icmp eq i8 %i.zu, 0
  br i1 %.not.i.i.i.i.i.i20.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.zv = add nsw i32 %i.zm, -1
  store i32 %i.zv, ptr %i.zj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.zw = atomicrmw volatile add ptr %i.zj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21.i.i.i: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i.i.i22.i.i.i = phi i32 [ %i.zm, %bb.ej ], [ %i.zw, %bb.ek ]
  %i.zx = icmp eq i32 %.0.i.i.i.i.i.i.i22.i.i.i, 1
  br i1 %i.zx, label %bb.el, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i, !prof !76

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i:   ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21.i.i.i, %bb.eh, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i1.i24.i.i.i = icmp eq ptr %i.zz, null
  br i1 %.not.i.i.i.i1.i24.i.i.i, label %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i", label %bb.em

bb.em:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8 ; 4 uses
  %i.aab = load atomic i64, ptr %i.aaa acquire, align 8 ; 2 uses
  %i.aac = icmp eq i64 %i.aab, 4294967297
  %i.aad = trunc i64 %i.aab to i32                ; 2 uses
  br i1 %i.aac, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.aaa, align 8, !tbaa !70
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 12
  store i32 0, ptr %i.aae, align 4, !tbaa !72
  %i.aaf = load ptr, ptr %i.zz, align 8, !tbaa !73
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aah = load ptr, ptr %i.aag, align 8
  call void %i.aah(ptr noundef nonnull align 8 dereferenceable(16) %i.zz) #19, !inline_history !283
  %i.aai = load ptr, ptr %i.zz, align 8, !tbaa !73
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8
  call void %i.aak(ptr noundef nonnull align 8 dereferenceable(16) %i.zz) #19, !inline_history !283
  br label %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i"

bb.eo:                                            ; preds = %bb.em
  %i.aal = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i2.i25.i.i.i = icmp eq i8 %i.aal, 0
  br i1 %.not.i.i.i.i.i2.i25.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aam = add nsw i32 %i.aad, -1
  store i32 %i.aam, ptr %i.aaa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i26.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.aan = atomicrmw volatile add ptr %i.aaa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i26.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i26.i.i.i: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i.i4.i27.i.i.i = phi i32 [ %i.aad, %bb.ep ], [ %i.aan, %bb.eq ]
  %i.aao = icmp eq i32 %.0.i.i.i.i.i.i4.i27.i.i.i, 1
  br i1 %i.aao, label %bb.er, label %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i", !prof !76

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i26.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zz) #19
  br label %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i"

bb.es:                                            ; preds = %bb.cu
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.et:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc17.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.dl, %.noexc.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit56.thread.i.i.i.i
  %lpad.loopexit29.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %lpad.loopexit.split-lp30.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %bb.et
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aaq, %bb.et ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit29.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp30.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #19
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp.i.i.i, %bb.es
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.aap, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  resume { ptr, i32 } %.pn.pn.i.i.i

"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i": ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i26.i.i.i, %bb.en, %_ZN6duckdb15SelectionVectorD2Ev.exit.i23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit"

"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.sink.split.i.i": ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  br label %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.i.i"

"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.i.i": ; preds = %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.sink.split.i.i", %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit15.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit"

"_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tES2_bZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS8_S8_S8_mT2_.exit": ; preds = %.loopexit91.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit86.i.i.i.i", %.loopexit82.i.i56.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i95.i.i", %.loopexit82.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit77.i.i.i.i", %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_8string_tES9_bEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i", %.preheader.i.i.i.i, %bb.t, %.preheader.i.i84.i.i, %bb.ay, %.preheader.i.i114.i.i, %bb.cd, %"_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT4_.exit.i.i", %"_ZN6duckdb14BinaryExecutor15ExecuteConstantINS_8string_tES2_bNS_19BinaryLambdaWrapperEbZNS_L24IntersectsExtentFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_T4_.exit.sink.split.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8StCrsFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %2 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6duckdb11LogicalType8GEOMETRYEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %.noexc unwind label %.body13.thread ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
          to label %bb.e unwind label %bb.k

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #19 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body13 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body13.thread:                                   ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body13:                                          ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  br label %.body

bb.e:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN6duckdbL11CRSFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.m, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.l, align 8, !tbaa !17
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdbL15BindCRSFunctionERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  %i.s = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #23
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.w, align 1, !tbaa !284
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @_ZN6duckdbL25BindCRSFunctionExpressionERNS_27FunctionBindExpressionInputE, ptr %i.x, align 8, !tbaa !298
  ret void

bb.k:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.thread:                                          ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %.not.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.pn26 = phi { ptr, i32 } [ %i.z, %.thread ], [ %i.aa, %bb.l ]
  %i.ab = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.l ]
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.l, %bb.m
  %.pn27 = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %.pn26, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt14_Function_baseD2Ev.exit12 ], [ %i.y, %bb.k ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %.body

.body:                                            ; preds = %.body13.thread, %.body13, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.k, %.body13.thread ], [ %i.h, %.body13 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL11CRSFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call fastcc void @_ZN6duckdbL11GetCRSValueERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
end_hunk_2

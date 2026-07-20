inline.NumInlined: 1326
inline.NumDeleted: 714
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb13StructKeysFun11GetFunctionEv
define void @_ZN6duckdb13StructKeysFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %2 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc unwind label %.body15.thread ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !220
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
          to label %bb.e unwind label %bb.l

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body15 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body15.thread:                                   ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body15:                                          ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %.body

bb.e:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN6duckdbL18StructKeysFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %5, align 8, !tbaa !7
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.m, align 8, !tbaa !9
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.l, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 0)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull @_ZN6duckdbL14StructKeysBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #22
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !12  ; 2 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.y, %.thread ], [ %i.z, %bb.n ]
  %i.aa = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.n ]
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit14:                 ; preds = %bb.n, %bb.o
  %.pn29 = phi { ptr, i32 } [ %i.z, %bb.n ], [ %.pn28, %bb.o ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit14, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt14_Function_baseD2Ev.exit14 ], [ %i.x, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.w, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %.body

.body:                                            ; preds = %.body15.thread, %.body15, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.k, %.body15.thread ], [ %i.h, %.body15 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL18StructKeysFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188, !nonnull !135, !align !136
  %i.f = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !tbaa !102
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.ab

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector9ReferenceERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 noundef 0, i64 noundef %i.c)
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.c)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.ac, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.o) #20
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.f
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = load ptr, ptr %4, align 8, !tbaa !227
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !237  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !221  ; 7 uses
  %.not.i32 = icmp eq ptr %i.t, null
  %i.u = load ptr, ptr %3, align 8, !tbaa !237    ; 6 uses
  br i1 %.not.i32, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = shl nuw i64 %i.c, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.v, i1 false), !tbaa !3
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph.split
  %xtraiter = and i64 %i.c, 1
  %i.w = icmp eq i64 %i.c, 1
  br i1 %i.w, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader: ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader53, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = lshr i64 %index, 6
  %i.y = lshr i64 %index, 6
  %i.z = and <2 x i64> %vec.ind, splat (i64 63)
  %i.aa = and <2 x i64> %step.add, splat (i64 63)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !102
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !102
  %i.af = xor i64 %i.ad, -1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ag = xor i64 %i.ae, -1
  %broadcast.splatinsert50 = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat51 = shufflevector <2 x i64> %broadcast.splatinsert50, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = lshr <2 x i64> %broadcast.splat, %i.z
  %i.ai = lshr <2 x i64> %broadcast.splat51, %i.aa
  %i.aj = trunc <2 x i64> %i.ah to <2 x i32>
  %i.ak = and <2 x i32> %i.aj, splat (i32 1)
  %i.al = trunc <2 x i64> %i.ai to <2 x i32>
  %i.am = and <2 x i32> %i.al, splat (i32 1)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <2 x i32> %i.ak, ptr %i.an, align 4, !tbaa !3
  store <2 x i32> %i.am, ptr %i.ao, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader53

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader53: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader, %middle.block
  %.02435.us36.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader53, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37
  %.02435.us36 = phi i64 [ %i.az, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37 ], [ %.02435.us36.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37.preheader53 ] ; 4 uses
  %i.aq = lshr i64 %.02435.us36, 6
  %i.ar = and i64 %.02435.us36, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !102
  %i.au = xor i64 %i.at, -1
  %i.av = lshr i64 %i.au, %i.ar
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.02435.us36
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add nuw i64 %.02435.us36, 1             ; 2 uses
  %exitcond41.not = icmp eq i64 %i.az, %i.c
  br i1 %exitcond41.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37, !llvm.loop !241

._crit_edge.loopexit54.unr-lcssa:                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit54.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.02435.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.cn, %._crit_edge.loopexit54.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod55)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02435.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 6
  %i.be = and i64 %i.bc, 63
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bd
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !102
  %i.bh = xor i64 %i.bg, -1
  %i.bi = lshr i64 %i.bh, %i.be
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.02435.epil.init
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit54.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us37, %middle.block, %.lr.ph.split.us, %.preheader
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.c)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #20
  br label %bb.ac

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.02435 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02435
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 6
  %i.bs = and i64 %i.bq, 63
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !102
  %i.bv = xor i64 %i.bu, -1
  %i.bw = lshr i64 %i.bv, %i.bs
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.02435
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = or disjoint i64 %.02435, 1              ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = lshr i64 %i.cd, 6
  %i.cf = and i64 %i.cd, 63
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !102
  %i.ci = xor i64 %i.ch, -1
  %i.cj = lshr i64 %i.ci, %i.cf
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ca
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !3
  %i.cn = add nuw i64 %.02435, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit54.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !242

bb.i:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !158 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.cq, align 8, !tbaa !159
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !161
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #20, !inline_history !243
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #20, !inline_history !243
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.m ], [ %i.dd, %bb.n ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !106

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !158 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dh, align 8, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !161
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !122
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #20, !inline_history !244
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !122
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #20, !inline_history !244
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dk, %bb.s ], [ %i.du, %bb.t ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.dv, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !106

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !158 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dy, align 8, !tbaa !159
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !161
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20, !inline_history !245
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !122
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20, !inline_history !245
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i33 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.y ], [ %i.el, %bb.z ]
  %i.em = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.em, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !106

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %bb.c
  ret void

bb.ac:                                            ; preds = %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %i.bm, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14StructKeysBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !44
  %.not = icmp eq i8 %i.d, 100
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
end_hunk_0
begin_hunk_1_@_ZN6duckdb15StructValuesFun11GetFunctionEv:bb.a
_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  invoke void @__cxa_rethrow() #23
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
  call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body13.thread:                                   ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body13:                                          ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %.body

bb.e:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN6duckdbL20StructValuesFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !7
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.m, align 8, !tbaa !9
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.l, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdbL16StructValuesBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  %i.s = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #22
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.k:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !12  ; 2 uses
  %.not.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.pn26 = phi { ptr, i32 } [ %i.x, %.thread ], [ %i.y, %bb.l ]
  %i.z = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.l ]
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.l, %bb.m
  %.pn27 = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn26, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt14_Function_baseD2Ev.exit12 ], [ %i.w, %bb.k ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %.body

.body:                                            ; preds = %.body13.thread, %.body13, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.k, %.body13.thread ], [ %i.h, %.body13 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL20StructValuesFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a) ; 4 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = tail call noundef zeroext i1 @_ZN6duckdb10StructType9IsUnnamedERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !70
  %.not44 = icmp eq ptr %i.i, %i.j
  br i1 %.not44, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  br label %bb.ab

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.k = load i8, ptr %i.a, align 8, !tbaa !249
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.e

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03141 = phi i64 [ %i.q, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.03141)
  %i.n = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.03141)
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = add nuw i64 %.03141, 1                   ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !256

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !221  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !102
  %i.ab = trunc i64 %i.aa to i1
  %i.ac = xor i1 %i.ab, true
  br label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi i1 [ %i.ac, %bb.d ], [ false, %bb.c ]
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext %.0.i.i)
  br label %bb.ab

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !221
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit unwind label %bb.i

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not45 = icmp eq i64 %i.c, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %.lr.ph43, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.042 = phi i64 [ 0, %.lr.ph43 ], [ %i.bh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 5 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !227
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !237 ; 2 uses
  %.not.i37 = icmp eq ptr %i.ak, null
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.042
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.k, %bb.j
  %i.ao = phi i64 [ %i.an, %bb.k ], [ %.042, %bb.j ] ; 2 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ap, null
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aq = lshr i64 %i.ao, 6
  %i.ar = and i64 %i.ao, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !102
  %i.au = shl nuw i64 1, %i.ar
  %i.av = and i64 %i.at, %i.au
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !221 ; 2 uses
  %.not.i39 = icmp eq ptr %i.aw, null
  br i1 %.not.i39, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !257
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ax)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !221
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.l, %.noexc
  %i.ay = phi ptr [ %.pre.i, %.noexc ], [ %i.aw, %bb.l ]
  %i.az = lshr i64 %.042, 6
  %i.ba = and i64 %.042, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = xor i64 %i.bb, -1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !102
  %i.bf = and i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !102
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bh = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !258

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !158 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bk, align 8, !tbaa !159
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !161
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !243
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !243
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.r ], [ %i.bx, %bb.s ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !106

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %.loopexit
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !158 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cb, align 8, !tbaa !159
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !161
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !122
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !244
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !122
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !244
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.y:                                             ; preds = %bb.w
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

end_hunk_1

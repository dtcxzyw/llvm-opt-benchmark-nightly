inline.NumInlined: 1841
inline.NumDeleted: 1017
begin_hunk_0_@_ZN6duckdb15ParseLogMessage11GetFunctionEv:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body14 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #28
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body14.thread:                                   ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body14:                                          ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.b) #26
  br label %.body

bb.f:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_123ParseLogMessageFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !123
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.s, align 8, !tbaa !142
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.r, align 8, !tbaa !145
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.g unwind label %.thread31

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_119ParseLogMessageBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !145  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  %i.y = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #26
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 1, ptr %i.ad, align 2, !tbaa !410
  ret void

.loopexit.loopexit19:                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread31:                                        ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !145 ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.n

bb.n:                                             ; preds = %.thread31, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.ag, %.thread31 ], [ %i.ah, %bb.m ]
  %i.ai = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread31 ], [ %.pre, %bb.m ]
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %bb.m, %bb.n
  %.pn35 = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %.pn34, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt14_Function_baseD2Ev.exit13 ], [ %i.af, %bb.l ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #24
  br label %.body

.body:                                            ; preds = %.body14.thread, %.body14, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.q, %.body14.thread ], [ %i.n, %.body14 ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit19, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ae, %.loopexit.loopexit19 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123ParseLogMessageFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153, !nonnull !347, !align !348
  %i.c = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !411, !nonnull !347, !align !348
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %i.i = load i8, ptr %i.h, align 1, !tbaa !414, !range !354, !noundef !347
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !189
  tail call void @_ZN6duckdb16VectorOperations11DefaultCastERNS_6VectorES2_mb(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.m, i1 noundef zeroext true)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0)
  %i.p = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull align 8 dereferenceable(104) %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119ParseLogMessageBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.24") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::optional_ptr.842", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %15 = alloca %"class.duckdb::vector.875", align 8 ; 9 uses
  %16 = alloca [1 x %"struct.std::pair.882"], align 8 ; 15 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %18 = alloca %"class.duckdb::vector.875", align 8 ; 9 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = load ptr, ptr %3, align 8, !tbaa !134
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp eq i64 %i.g, 16
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.be unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.026 = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.026, label %bb.h, label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.026, label %bb.h, label %bb.bd

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48108 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #24
  br label %bb.bd

bb.i:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.r = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %i.r)
  br i1 %i.v, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.be unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.032 = phi i1 [ false, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ac) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.032, label %bb.p, label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.032, label %bb.p, label %bb.bd

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn111 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ]
  call void @__cxa_free_exception(ptr %i.w) #24
  br label %bb.bd

bb.q:                                             ; preds = %bb.i
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.ag = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !211
  %.not35 = icmp eq i8 %i.ai, 25
  br i1 %.not35, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.be unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.030 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.am) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.030, label %bb.v, label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.030, label %bb.v, label %bb.bd

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn46114 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @__cxa_free_exception(ptr %i.aj) #24
  br label %bb.bd

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.aq = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  call void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i1 noundef zeroext false)
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.x unwind label %bb.ag      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.as, ptr %10, align 8, !tbaa !57
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.av, ptr %i.a, align 8, !tbaa !59
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.x
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ax, ptr %10, align 8, !tbaa !42
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !60
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.x
  %i.az = phi ptr [ %i.ax, %.noexc ], [ %i.as, %bb.x ] ; 2 uses
  switch i64 %i.av, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !60
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !60
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !58
  %i.bd = load ptr, ptr %10, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.bf = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZN6duckdb10LogManager3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.bg = invoke ptr @_ZN6duckdb10LogManager13LookupLogTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(352) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ac unwind label %bb.ah     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bg, ptr %12, align 8
  %.not119 = icmp eq ptr %i.bg, null
  br i1 %.not119, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.bh = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.be unwind label %bb.ai

bb.ag:                                            ; preds = %.noexc.i, %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ah:                                            ; preds = %bb.ax, %bb.ak, %bb.ay, %bb.ab, %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread: ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %.028 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bm = load ptr, ptr %13, align 8, !tbaa !42   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.bm) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.028, label %bb.aj, label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.028, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn36117 = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ]
  call void @__cxa_free_exception(ptr %i.bh) #24
  br label %bb.bc

bb.ak:                                            ; preds = %bb.ac
  invoke void @_ZNK6duckdb12optional_ptrIKNS_7LogTypeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.al unwind label %bb.ah

bb.al:                                            ; preds = %bb.ak
  %i.bp = load ptr, ptr %12, align 8, !tbaa !416
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 33
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !414, !range !354, !noundef !347
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ax, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.bt, ptr %16, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bt, ptr noundef nonnull align 1 dereferenceable(7) @.str.53, i64 7, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 7, ptr %i.bu, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 23
  store i8 0, ptr %i.bv, align 1, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 noundef zeroext 25)
          to label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRA8_KcRKNS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit unwind label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bt
  br i1 %i.bz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.by) #26
  br label %.body

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRA8_KcRKNS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %._crit_edge.i.i.i
  %i.ca = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit.i.i.i unwind label %.thread ; 7 uses

.thread:                                          ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRA8_KcRKNS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body62

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRA8_KcRKNS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.ca, ptr %15, align 8, !tbaa !418
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !421
  %i.cf = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %16, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ca)
          to label %bb.ao unwind label %bb.an     ; 6 uses

bb.an:                                            ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #26
  br label %.body62

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !422
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #24
  %i.cj = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.cj) #26
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = ptrtoint ptr %i.ca to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not.i.i.i.i.i, label %.noexc69, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit
  %i.cp = sdiv exact i64 %i.co, 56
  %i.cq = icmp ugt i64 %i.cp, 164703072086692425
  br i1 %i.cq, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !85

.noexc.i.i.i:                                     ; preds = %bb.ap
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc68 unwind label %bb.au

.noexc68:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ap
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #27
          to label %.noexc69 unwind label %bb.au

.noexc69:                                         ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit
  %i.cs = phi ptr [ null, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit ], [ %i.cr, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.cs, ptr %18, align 8, !tbaa !418
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !422
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !421
  %i.cw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr nonnull %i.ca, ptr %i.cf, ptr noundef %i.cs)
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc69
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %18, align 8, !tbaa !418  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %.body70, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #26
  br label %.body70

bb.as:                                            ; preds = %.noexc69
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !422
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %17, ptr noundef nonnull %18)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.av

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.da = load i8, ptr %17, align 8, !tbaa !211
  store i8 %i.da, ptr %i.cz, align 8, !tbaa !211
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !212
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !212
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !123
  %i.dh = load <2 x ptr>, ptr %i.de, align 8, !tbaa !123
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !123
  store <2 x ptr> %i.dh, ptr %i.df, align 8, !tbaa !123
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #24
  %i.di = load ptr, ptr %18, align 8, !tbaa !418  ; 3 uses
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !422 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.do, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.di, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dk) #24
  %i.dl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.dl) #26
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.do, %i.dj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !423

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %18, align 8, !tbaa !418
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.dp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.di, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #26
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.at
  %20 = load ptr, ptr %15, align 8, !tbaa !418    ; 3 uses
  %.not4.i.i.i72 = icmp eq ptr %20, %i.cf
  br i1 %.not4.i.i.i72, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i80, label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76
  %.05.i.i.i74 = phi ptr [ %i.du, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76 ], [ %20, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i74, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dq) #24
  %i.dr = load ptr, ptr %.05.i.i.i74, align 8, !tbaa !42 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i74, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i73
  call void @_ZdlPv(ptr noundef %i.dr) #26
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76: ; preds = %.lr.ph.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i74, i64 56 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.du, %i.cf
  br i1 %.not.i.i.i77, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i78, label %.lr.ph.i.i.i73, !llvm.loop !423

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i78: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i76
  %.pr.i79 = load ptr, ptr %15, align 8, !tbaa !418
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i80

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i80: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i78, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  %21 = phi ptr [ %.pr.i79, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i78 ], [ %20, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i81 = icmp eq ptr %21, null
  br i1 %.not.i.i1.i81, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit83, label %22

22:                                               ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i80
  call void @_ZdlPv(ptr noundef nonnull %21) #26
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit83

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit83: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i80, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.az

.body62:                                          ; preds = %.thread, %bb.an
  %i.dv = phi { ptr, i32 } [ %i.cb, %.thread ], [ %i.cg, %bb.an ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %16) #24
  br label %.body

.body:                                            ; preds = %bb.am, %.body62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn38 = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dv, %.body62 ], [ %i.bx, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.aw

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body70

bb.av:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #24
  br label %.body70

.body70:                                          ; preds = %bb.au, %bb.ar, %bb.aq, %bb.av
  %.pn40 = phi { ptr, i32 } [ %i.dx, %bb.av ], [ %i.dw, %bb.au ], [ %i.cx, %bb.ar ], [ %i.cx, %bb.aq ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #24
  br label %bb.aw

bb.aw:                                            ; preds = %.body70, %.body
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body70 ], [ %.pn38, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bc

bb.ax:                                            ; preds = %bb.al
  invoke void @_ZNK6duckdb12optional_ptrIKNS_7LogTypeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ay unwind label %bb.ah

bb.ay:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %12, align 8, !tbaa !416
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i98 unwind label %bb.ah

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i98: ; preds = %bb.ay
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.eb = load i8, ptr %19, align 8, !tbaa !211
  store i8 %i.eb, ptr %i.ea, align 8, !tbaa !211
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !212
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !212
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.eh = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !123
  %i.ei = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !123
  store <2 x ptr> %i.eh, ptr %i.ef, align 8, !tbaa !123
  store <2 x ptr> %i.ei, ptr %i.eg, align 8, !tbaa !123
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #24
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i98, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit83
  invoke void @_ZNK6duckdb12optional_ptrIKNS_7LogTypeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ej = load ptr, ptr %12, align 8, !tbaa !416
  %i.ek = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_119ParseLogMessageDataESt14default_deleteIS2_EED2Ev.exit unwind label %bb.bb, !inline_history !424 ; 3 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_119ParseLogMessageDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ba
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_119ParseLogMessageDataE, i64 16), ptr %i.ek, align 8, !tbaa !45, !noalias !425
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !428, !noalias !425
  store ptr %i.ek, ptr %0, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.em = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.as
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_119ParseLogMessageDataESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.em) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_119ParseLogMessageDataESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.aj, %bb.bb, %bb.aw, %bb.ah
  %.pn43 = phi { ptr, i32 } [ %i.eo, %bb.bb ], [ %i.bj, %bb.ah ], [ %.pn40.pn, %bb.aw ], [ %.pn36117, %bb.aj ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ep = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.as
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.ep) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ag
  %.pn43.pn = phi { ptr, i32 } [ %i.bi, %bb.ag ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn43, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn48.pn = phi { ptr, i32 } [ %.pn48108, %bb.h ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn46114, %bb.v ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn111, %bb.p ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  resume { ptr, i32 } %.pn48.pn

bb.be:                                            ; preds = %bb.af, %bb.t, %bb.n, %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb31ExportAggregateFunctionBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb31ExportAggregateFunctionBindDataE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(512) %i.b) #24, !inline_history !429
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb31ExportAggregateFunctionBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb31ExportAggregateFunctionBindDataE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6duckdb31ExportAggregateFunctionBindDataD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(512) %i.b) #24, !inline_history !430
  br label %_ZN6duckdb31ExportAggregateFunctionBindDataD2Ev.exit

_ZN6duckdb31ExportAggregateFunctionBindDataD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #24, !inline_history !431
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb12FunctionData21SupportStatementCacheEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i, !prof !85

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c
end_hunk_0

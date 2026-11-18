Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_map?download=true
inline.NumInlined: 2508
inline.NumDeleted: 1151
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6duckdb12MapConcatFun11GetFunctionEv:._crit_edge.i.i
  store ptr %i.a, ptr %1, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 101)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !108
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.e, align 8, !tbaa !111
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !112
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_113MapConcatBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  %i.k = load ptr, ptr %2, align 8, !tbaa !105    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #21
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.r, align 1, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 3)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.l

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load i8, ptr %6, align 8, !tbaa !193
  store i8 %i.t, ptr %i.s, align 8, !tbaa !193
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !217
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.v, ptr %i.w, align 1, !tbaa !217
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !108
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !108
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !108
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !108
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.thread:                                          ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %.not.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn24 = phi { ptr, i32 } [ %i.ac, %.thread ], [ %i.ad, %bb.h ]
  %i.ae = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.h ]
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.h, %bb.i
  %.pn25 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn24, %bb.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt14_Function_baseD2Ev.exit12 ], [ %i.ab, %bb.g ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %i.ai = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.l
  %.pn9 = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 !guid !334 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::vector.153", align 16 ; 13 uses
  %9 = alloca %"struct.std::pair.159", align 8    ; 7 uses
  %10 = alloca %"struct.std::pair.159", align 8   ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %12 = alloca %"class.duckdb::vector.153", align 16 ; 9 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.duckdb::vector.133", align 8 ; 11 uses
  %16 = alloca %"class.std::allocator.136", align 1 ; 3 uses
  %17 = alloca %"class.duckdb::vector.145", align 8 ; 15 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 15 uses
  %19 = alloca %"class.duckdb::vector.145", align 8 ; 12 uses
  %20 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %21 = alloca %"class.duckdb::vector.145", align 8 ; 13 uses
  %22 = alloca %"class.duckdb::vector.145", align 8 ; 3 uses
  %23 = alloca %"class.duckdb::vector.145", align 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !193
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !203
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.y)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !183
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %.pre.i, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !184
  %i.ab = and i64 %i.aa, -2
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !184
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  br label %bb.de

_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !156 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !218 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 104               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.not449 = icmp eq ptr %i.af, %i.ag             ; 2 uses
  br i1 %.not449, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit: ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !180
  %.not450 = icmp eq i64 %i.ad, 0
  br i1 %.not450, label %._crit_edge448, label %.lr.ph447

.lr.ph447:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %21, i64 16
  %umax504 = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit, %bb.f
  %.079415 = phi i64 [ %i.bf, %bb.f ], [ 0, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit ] ; 3 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.079415)
          to label %bb.d unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  %i.be = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %.079415)
          to label %bb.e unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %i.be)
          to label %bb.f unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.bf = add nuw i64 %.079415, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !318

._crit_edge448:                                   ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit, %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit
  %i.bg = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.cy unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.d, %bb.e, %._crit_edge, %bb.da, %bb.cz, %._crit_edge448
  %lpad.loopexit.split-lp742 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201

bb.g:                                             ; preds = %.lr.ph447, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit
  %.084446 = phi i64 [ 0, %.lr.ph447 ], [ %i.mj, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.084446 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not449, label %._crit_edge433, label %.lr.ph432

._crit_edge433:                                   ; preds = %.loopexit299, %bb.g
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.g ], [ %.sroa.10.3, %.loopexit299 ] ; 2 uses
  %.sroa.0286.0.lcssa = phi ptr [ null, %bb.g ], [ %.sroa.0286.3, %.loopexit299 ] ; 6 uses
  %.081.lcssa = phi i1 [ true, %bb.g ], [ %.283, %.loopexit299 ]
  %i.bi = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.av unwind label %.loopexit.split-lp319

.lr.ph432:                                        ; preds = %bb.g, %.loopexit299
  %.081430 = phi i1 [ %.283, %.loopexit299 ], [ true, %bb.g ] ; 2 uses
  %storemerge428 = phi i64 [ %i.gc, %.loopexit299 ], [ 0, %bb.g ] ; 10 uses
  %.sroa.0286.0427 = phi ptr [ %.sroa.0286.3, %.loopexit299 ], [ null, %bb.g ] ; 14 uses
  %.sroa.10.0426 = phi ptr [ %.sroa.10.3, %.loopexit299 ], [ null, %bb.g ] ; 4 uses
  %.sroa.14.0425 = phi ptr [ %.sroa.14.3, %.loopexit299 ], [ null, %bb.g ] ; 4 uses
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !218
  %i.bk = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %storemerge428, ptr %i.q, align 8, !tbaa !184
  store i64 %i.bo, ptr %i.r, align 8, !tbaa !184
  %.not.i.i.i = icmp ult i64 %storemerge428, %i.bo
  br i1 %.not.i.i.i, label %bb.l, label %.noexc.i, !prof !220

.noexc.i:                                         ; preds = %.lr.ph432
  %i.bp = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bq, ptr %14, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 55, ptr %i.l, align 8, !tbaa !184
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc203 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc203:                                        ; preds = %.noexc.i
  store ptr %i.br, ptr %14, align 8, !tbaa !102
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.br, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !101
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc203
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.k unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %.noexc203
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ true, %.noexc203 ] ; 2 uses
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bx = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bx) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %.0.i.i.i, label %bb.j, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %.0.i.i.i, label %bb.j, label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bp) #20
  br label %.body

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %.lr.ph432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.bk, i64 %storemerge428 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
.noexc226:                                        ; preds = %.noexc.i.i.i
  store ptr %i.is, ptr %i.il, align 8, !tbaa !102
  %i.it = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.it, ptr %i.io, align 8, !tbaa !98
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc226, %bb.bo
  %i.iu = phi ptr [ %i.is, %.noexc226 ], [ %i.io, %bb.bo ] ; 2 uses
  switch i64 %i.iq, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iv = load i8, ptr %i.in, align 1, !tbaa !98
  store i8 %i.iv, ptr %i.iu, align 1, !tbaa !98
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iu, ptr nonnull align 1 %i.in, i64 %i.iq, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i: ; preds = %bb.bq, %bb.bp, %._crit_edge.i.i.i.i
  %i.iw = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !101
  %i.iy = load ptr, ptr %i.il, align 8, !tbaa !102
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iw
  store i8 0, ptr %i.iz, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ja, ptr noundef nonnull align 8 dereferenceable(64) %i.aw) #20
  %i.jb = load ptr, ptr %i.ay, align 8, !tbaa !234
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store ptr %i.jc, ptr %i.ay, align 8, !tbaa !234
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit

bb.br:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE17_M_realloc_insertIJS0_IPKcS8_EEEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.il, ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit unwind label %.loopexit.split-lp308.loopexit.split-lp

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i, %bb.br
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !341
  %i.jd = load <2 x ptr>, ptr %8, align 16, !tbaa !352, !noalias !341
  store <2 x ptr> %i.jd, ptr %12, align 16, !tbaa !352, !noalias !341
  %i.je = load ptr, ptr %i.ba, align 16, !tbaa !235, !noalias !341
  store ptr %i.je, ptr %i.az, align 16, !tbaa !235, !noalias !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !341
  invoke void @_ZN6duckdb5Value6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull %12)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit
  %i.jf = load ptr, ptr %i.bb, align 8, !tbaa !230, !alias.scope !341 ; 3 uses
  %i.jg = load ptr, ptr %i.bc, align 8, !tbaa !229, !alias.scope !341
  %.not.i.i.i148 = icmp eq ptr %i.jf, %i.jg
  br i1 %.not.i.i.i148, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.jf, ptr noundef nonnull align 8 dereferenceable(64) %11) #20
  %i.jh = load ptr, ptr %i.bb, align 8, !tbaa !230, !alias.scope !341
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  store ptr %i.ji, ptr %i.bb, align 8, !tbaa !230, !alias.scope !341
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i

bb.bu:                                            ; preds = %bb.bs
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.jf, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i unwind label %bb.by

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.bu, %bb.bt
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #20
  %i.jj = load ptr, ptr %12, align 16, !tbaa !237, !noalias !341 ; 3 uses
  %i.jk = load ptr, ptr %i.ax, align 8, !tbaa !234, !noalias !341 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jj, %i.jk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.jp, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i ], [ %i.jj, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jl) #20
  %i.jm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.jm) #21
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jp, %i.jk
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %12, align 16, !tbaa !237, !noalias !341
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i
  %i.jq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jj, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jq) #21
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i: ; preds = %bb.bv, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !341
  %i.jr = load ptr, ptr %8, align 16, !tbaa !237, !noalias !341 ; 3 uses
  %i.js = load ptr, ptr %i.ay, align 8, !tbaa !234, !noalias !341 ; 2 uses
  %.not4.i.i.i17.i = icmp eq ptr %i.jr, %i.js
  br i1 %.not4.i.i.i17.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i, label %.lr.ph.i.i.i18.i

.lr.ph.i.i.i18.i:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i
  %.05.i.i.i19.i = phi ptr [ %i.jx, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i ], [ %i.jr, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jt) #20
  %i.ju = load ptr, ptr %.05.i.i.i19.i, align 8, !tbaa !102 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 16
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i: ; preds = %.lr.ph.i.i.i18.i
  call void @_ZdlPv(ptr noundef %i.ju) #21
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i: ; preds = %.lr.ph.i.i.i18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 96 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %i.jx, %i.js
  br i1 %.not.i.i.i22.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i, label %.lr.ph.i.i.i18.i, !llvm.loop !9

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i
  %.pr.i24.i = load ptr, ptr %8, align 16, !tbaa !237, !noalias !341
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i
  %i.jy = phi ptr [ %.pr.i24.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i ], [ %i.jr, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i26.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i1.i26.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i
  call void @_ZdlPv(ptr noundef nonnull %i.jy) #21
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i: ; preds = %bb.bw, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !341
  %i.jz = add nuw i64 %.01036.i, 1                ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.gs
  br i1 %i.ka, label %.lr.ph.i, label %.loopexit312, !llvm.loop !332

.loopexit.split-lp304.loopexit.split-lp:          ; preds = %bb.bh, %.noexc.i.i.i240, %.noexc.i.i241
  %lpad.loopexit.split-lp685 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.av) #20
  br label %.body253

.body253:                                         ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251, %.loopexit.split-lp304.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp685, %.loopexit.split-lp304.loopexit.split-lp ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251 ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252 ], [ %.pn8.i.i.i248, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !341
  br label %.body149

.loopexit.split-lp308.loopexit.split-lp:          ; preds = %bb.br, %.noexc.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aw) #20
  br label %.body235

.body235:                                         ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233, %.loopexit.split-lp308.loopexit.split-lp
  %.pn12.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp308.loopexit.split-lp ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234 ], [ %.pn8.i.i.i230, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !341
  br label %.body149

bb.bx:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn14.i = phi { ptr, i32 } [ %i.kc, %bb.by ], [ %i.kb, %bb.bx ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !341
  br label %.body149

.body149:                                         ; preds = %bb.bz, %.body235, %.body253
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn14.i, %bb.bz ], [ %.pn12.i, %.body235 ], [ %.pn.i, %.body253 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !341
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #20
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #20
  br label %bb.cw

.lr.ph440:                                        ; preds = %bb.ax, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %i.kd = phi ptr [ %i.ls, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ], [ null, %bb.ax ] ; 5 uses
  %.sroa.0275.0438 = phi ptr [ %i.lt, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0286.0.lcssa, %bb.ax ] ; 3 uses
  %i.ke = load i64, ptr %.sroa.0275.0438, align 8, !tbaa !337 ; 3 uses
  %i.kf = load ptr, ptr %i.ae, align 8, !tbaa !218
  %i.kg = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = sdiv exact i64 %i.kj, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.ke, ptr %i.m, align 8, !tbaa !184
  store i64 %i.kk, ptr %i.n, align 8, !tbaa !184
  %.not.i.i.i151 = icmp ult i64 %i.ke, %i.kk
  br i1 %.not.i.i.i151, label %bb.ce, label %.noexc.i257, !prof !220

.noexc.i257:                                      ; preds = %.lr.ph440
  %i.kl = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.km, ptr %7, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 55, ptr %i.c, align 8, !tbaa !184
  %i.kn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc258 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152 ; 3 uses

.noexc258:                                        ; preds = %.noexc.i257
  store ptr %i.kn, ptr %7, align 8, !tbaa !102
  %i.ko = load i64, ptr %i.c, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.kn, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !101
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  store i8 0, ptr %i.kq, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.noexc258
  invoke void @__cxa_throw(ptr nonnull %i.kl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.cd unwind label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152: ; preds = %.noexc.i257
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %.noexc258
  %.0.i.i.i155 = phi i1 [ false, %bb.ca ], [ true, %.noexc258 ] ; 2 uses
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kt = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.km
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156: ; preds = %bb.cb
  call void @_ZdlPv(ptr noundef %i.kt) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0.i.i.i155, label %bb.cc, label %.body158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0.i.i.i155, label %bb.cc, label %.body158

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152
  %.pn8.i.i.i153 = phi { ptr, i32 } [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152 ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157 ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156 ]
  call void @__cxa_free_exception(ptr %i.kl) #20
  br label %.body158

bb.cd:                                            ; preds = %bb.ca
  unreachable

bb.ce:                                            ; preds = %.lr.ph440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.kv = getelementptr inbounds nuw [104 x i8], ptr %i.kg, i64 %i.ke
  %i.kw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.kv)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0275.0438, i64 8
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !338
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %20, ptr noundef nonnull align 8 dereferenceable(104) %i.kw, i64 noundef %i.ky)
          to label %bb.cg unwind label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.kz = load ptr, ptr %i.ar, align 8, !tbaa !229
  %.not.i.i = icmp eq ptr %i.kd, %i.kz
  br i1 %.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.kd, ptr noundef nonnull align 8 dereferenceable(64) %20) #20
  %i.la = load ptr, ptr %i.aq, align 8, !tbaa !230
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 64 ; 2 uses
  store ptr %i.lb, ptr %i.aq, align 8, !tbaa !230
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.ci:                                            ; preds = %bb.cg
  %24 = load ptr, ptr %19, align 8, !tbaa !231    ; 5 uses
  %i.lc = ptrtoint ptr %i.kd to i64
  %i.ld = ptrtoint ptr %24 to i64
  %i.le = sub i64 %i.lc, %i.ld                    ; 3 uses
  %i.lf = icmp eq i64 %i.le, 9223372036854775744
  br i1 %i.lf, label %bb.cj, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc261 unwind label %.loopexit.split-lp314.loopexit.split-lp

.noexc261:                                        ; preds = %bb.cj
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ci
  %i.lg = ashr exact i64 %i.le, 6                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.lg, i64 1)
  %i.lh = add nsw i64 %.sroa.speculated.i.i, %i.lg ; 2 uses
  %i.li = icmp ult i64 %i.lh, %i.lg
  %i.lj = call i64 @llvm.umin.i64(i64 %i.lh, i64 144115188075855871)
  %i.lk = select i1 %i.li, i64 144115188075855871, i64 %i.lj ; 3 uses
  %.not.i.i260 = icmp ne i64 %i.lk, 0
  call void @llvm.assume(i1 %.not.i.i260)
  %i.ll = shl nuw nsw i64 %i.lk, 6
  %i.lm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #22
          to label %.noexc262 unwind label %.loopexit.split-lp314.loopexit.split-lp ; 5 uses

.noexc262:                                        ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.le
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ln, ptr noundef nonnull align 8 dereferenceable(64) %20) #20
  %.not10.i.i.i.i.i = icmp eq ptr %24, %i.kd
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc262, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i ], [ %i.lm, %.noexc262 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i ], [ %24, %.noexc262 ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i) #20
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i.i) #20
  %i.lo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lo, %i.kd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc262
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.lm, %.noexc262 ], [ %i.lp, %.lr.ph.i.i.i.i.i ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i = icmp eq ptr %24, null
  br i1 %.not.i23.i, label %.noexc161, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %24) #21
  br label %.noexc161

.noexc161:                                        ; preds = %bb.ck, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.lm, ptr %19, align 8, !tbaa !231
  store ptr %i.lq, ptr %i.aq, align 8, !tbaa !230
  %i.lr = getelementptr inbounds nuw [64 x i8], ptr %i.lm, i64 %i.lk
  store ptr %i.lr, ptr %i.ar, align 8, !tbaa !229
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc161, %bb.ch
  %i.ls = phi ptr [ %i.lq, %.noexc161 ], [ %i.lb, %bb.ch ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0275.0438, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.lt, %.sroa.10.0.lcssa
  br i1 %.not, label %._crit_edge441.loopexit, label %.lr.ph440

bb.cl:                                            ; preds = %bb.ce
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.cm:                                            ; preds = %bb.cf
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp314.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.cj
  %lpad.loopexit.split-lp690 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #20
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp314.loopexit.split-lp, %bb.cm
  %.pn89 = phi { ptr, i32 } [ %lpad.loopexit.split-lp690, %.loopexit.split-lp314.loopexit.split-lp ], [ %i.lv, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body158

.loopexit312:                                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i, %._crit_edge441
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.gl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit312, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i ], [ %.pr.i, %.loopexit312 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i) #20
  %i.lw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.lw, %i.gl
  br i1 %.not.i.i.i162, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %.loopexit312
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.co
  br i1 %.not.i147, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, %.lr.ph.i.i.i164
  %.05.i.i.i165 = phi ptr [ %i.lx, %.lr.ph.i.i.i164 ], [ %i.gm, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i165) #20
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 64 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.lx, %i.go
  br i1 %.not.i.i.i166, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, label %.lr.ph.i.i.i164, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169: ; preds = %.lr.ph.i.i.i164, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %.not.i.i1.i170 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i1.i170, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169
  call void @_ZdlPv(ptr noundef nonnull %i.gm) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, %bb.cp
  %i.ly = load ptr, ptr %21, align 8, !tbaa !335  ; 3 uses
  %i.lz = load ptr, ptr %i.bb, align 8, !tbaa !335 ; 2 uses
  %.not297442 = icmp eq ptr %i.ly, %i.lz
  br i1 %.not297442, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178, label %.lr.ph444

._crit_edge445:                                   ; preds = %bb.cr
  %.pre508 = load ptr, ptr %21, align 8, !tbaa !231 ; 3 uses
  %.pre509 = load ptr, ptr %i.bb, align 8, !tbaa !230 ; 2 uses
  %.not4.i.i.i172 = icmp eq ptr %.pre508, %.pre509
  br i1 %.not4.i.i.i172, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178, label %.lr.ph.i.i.i173

.lr.ph.i.i.i173:                                  ; preds = %._crit_edge445, %.lr.ph.i.i.i173
  %.05.i.i.i174 = phi ptr [ %i.ma, %.lr.ph.i.i.i173 ], [ %.pre508, %._crit_edge445 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i174) #20
  %i.ma = getelementptr inbounds nuw i8, ptr %.05.i.i.i174, i64 64 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.ma, %.pre509
  br i1 %.not.i.i.i175, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176, label %.lr.ph.i.i.i173, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176: ; preds = %.lr.ph.i.i.i173
  %.pr.i177 = load ptr, ptr %21, align 8, !tbaa !231
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176, %._crit_edge445
  %i.mb = phi ptr [ %.pr.i177, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176 ], [ %.pre508, %._crit_edge445 ], [ %i.ly, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171 ] ; 2 uses
  %.not.i.i1.i179 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i1.i179, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187.thread, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187.thread: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #21
  %.pre510 = load ptr, ptr %19, align 8, !tbaa !231 ; 4 uses
  %.pre511 = load ptr, ptr %i.aq, align 8, !tbaa !230 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %.not4.i.i.i181 = icmp eq ptr %.pre510, %.pre511
  br i1 %.not4.i.i.i181, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180, %.lr.ph.i.i.i182
  %.05.i.i.i183 = phi ptr [ %i.mc, %.lr.ph.i.i.i182 ], [ %.pre510, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i183) #20
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i183, i64 64 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.mc, %.pre511
  br i1 %.not.i.i.i184, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, label %.lr.ph.i.i.i182, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187: ; preds = %.lr.ph.i.i.i182, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180
  %.not.i.i1.i188 = icmp eq ptr %.pre510, null
  br i1 %.not.i.i1.i188, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187
  call void @_ZdlPv(ptr noundef nonnull %.pre510) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187.thread, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ct

.lr.ph444:                                        ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, %bb.cr
  %.sroa.0271.0443 = phi ptr [ %i.md, %bb.cr ], [ %i.ly, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171 ] ; 2 uses
  invoke void @_ZN6duckdb10ListVector8PushBackERNS_6VectorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0271.0443)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %.lr.ph444
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0271.0443, i64 64 ; 2 uses
  %.not297 = icmp eq ptr %i.md, %i.lz
  br i1 %.not297, label %._crit_edge445, label %.lr.ph444

bb.cs:                                            ; preds = %.lr.ph444
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ct:                                            ; preds = %bb.aw, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189
  %i.mf = load ptr, ptr %17, align 8, !tbaa !231  ; 3 uses
  %i.mg = load ptr, ptr %i.ao, align 8, !tbaa !230 ; 2 uses
  %.not4.i.i.i190 = icmp eq ptr %i.mf, %i.mg
  br i1 %.not4.i.i.i190, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %bb.ct, %.lr.ph.i.i.i191
  %.05.i.i.i192 = phi ptr [ %i.mh, %.lr.ph.i.i.i191 ], [ %i.mf, %bb.ct ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i192) #20
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 64 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.mh, %i.mg
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, label %.lr.ph.i.i.i191, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194: ; preds = %.lr.ph.i.i.i191
  %.pr.i195 = load ptr, ptr %17, align 8, !tbaa !231
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, %bb.ct
  %i.mi = phi ptr [ %.pr.i195, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194 ], [ %i.mf, %bb.ct ] ; 2 uses
  %.not.i.i1.i197 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i1.i197, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196
  call void @_ZdlPv(ptr noundef nonnull %i.mi) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %.not.i.i.i199 = icmp eq ptr %.sroa.0286.0.lcssa, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0286.0.lcssa) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198, %bb.cv
  %i.mj = add nuw i64 %.084446, 1                 ; 2 uses
  %exitcond506.not = icmp eq i64 %i.mj, %i.ad
  br i1 %exitcond506.not, label %._crit_edge448, label %bb.g, !llvm.loop !333

bb.cw:                                            ; preds = %bb.cs, %.body149
  %.sink = phi ptr [ %21, %bb.cs ], [ %22, %.body149 ]
  %.pn = phi { ptr, i32 } [ %i.me, %bb.cs ], [ %.pn14.pn.i, %.body149 ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %.sink) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body158

.body158:                                         ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, %bb.cc, %bb.cl, %bb.cw
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cw ], [ %.pn89, %bb.cn ], [ %i.lu, %bb.cl ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157 ], [ %.pn8.i.i.i153, %bb.cc ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156 ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body

.body:                                            ; preds = %.loopexit318, %.loopexit.split-lp319, %bb.au, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.j, %.body158
  %.sroa.0286.5 = phi ptr [ %.sroa.0286.0.lcssa, %.body158 ], [ %.sroa.0286.0427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.sroa.0286.1418, %bb.au ], [ %.sroa.0286.0427, %bb.p ], [ %.sroa.0286.0427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126 ], [ %.sroa.0286.0427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125 ], [ %.sroa.0286.0427, %bb.j ], [ %.sroa.0286.0427, %bb.y ], [ %.sroa.0286.0427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0286.0427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.sroa.0286.0427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.sroa.0286.0427, %.loopexit318 ], [ %.sroa.0286.0.lcssa, %.loopexit.split-lp319 ] ; 2 uses
  %.pn94.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn, %.body158 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn94.pn, %bb.au ], [ %.pn8.i.i.i122, %bb.p ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125 ], [ %.pn8.i.i.i, %bb.j ], [ %.pn9.i, %bb.y ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %lpad.loopexit320, %.loopexit318 ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp319 ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %.not.i.i.i200 = icmp eq ptr %.sroa.0286.5, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201, label %bb.cx

bb.cx:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0286.5) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201
end_hunk_1

inline.NumInlined: 2508
inline.NumDeleted: 1151
begin_hunk_0_@_ZN6duckdb12MapConcatFun11GetFunctionEv:._crit_edge.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 101)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %4, align 8, !tbaa !21
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.e, align 8, !tbaa !22
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 0)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_113MapConcatBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
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
  %i.k = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #21
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.r, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 3)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.l

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load i8, ptr %6, align 8, !tbaa !114
  store i8 %i.t, ptr %i.s, align 8, !tbaa !114
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !149
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.v, ptr %i.w, align 1, !tbaa !149
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !21
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !21
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !21
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !21
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
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
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
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
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
define internal void @_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
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
  %i.t = load i8, ptr %i.s, align 8, !tbaa !114
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !126
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.y)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !99
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %.pre.i, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !100
  %i.ab = and i64 %i.aa, -2
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !100
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  br label %bb.dl

_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !150 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 104               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.not444 = icmp eq ptr %i.af, %i.ag             ; 2 uses
  br i1 %.not444, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit unwind label %bb.h

_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit: ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !96
  %.not445 = icmp eq i64 %i.ad, 0
  br i1 %.not445, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit
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
  %umax496 = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  br label %bb.i

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit, %bb.f
  %.079410 = phi i64 [ %i.bf, %bb.f ], [ 0, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit ] ; 3 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.079410)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.be = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %.079410)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(73) %i.be)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = add nuw i64 %.079410, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

bb.g:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201

._crit_edge443:                                   ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit, %_ZN6duckdb10FlatVector7GetDataINS_12list_entry_tEEEPT_RNS_6VectorE.exit
  %i.bh = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.df unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.dh, %bb.dg, %._crit_edge443
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201

bb.i:                                             ; preds = %.lr.ph442, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit
  %.080441 = phi i64 [ 0, %.lr.ph442 ], [ %i.ml, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.080441 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not444, label %._crit_edge428, label %.lr.ph427

._crit_edge428:                                   ; preds = %.loopexit305, %bb.i
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.i ], [ %.sroa.10.3, %.loopexit305 ] ; 2 uses
  %.sroa.0286.0.lcssa = phi ptr [ null, %bb.i ], [ %.sroa.0286.3, %.loopexit305 ] ; 6 uses
  %.081.lcssa = phi i1 [ true, %bb.i ], [ %.283, %.loopexit305 ]
  %i.bk = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ax unwind label %bb.az

.lr.ph427:                                        ; preds = %bb.i, %.loopexit305
  %.081425 = phi i1 [ %.283, %.loopexit305 ], [ true, %bb.i ] ; 2 uses
  %storemerge423 = phi i64 [ %i.gf, %.loopexit305 ], [ 0, %bb.i ] ; 10 uses
  %.sroa.0286.0422 = phi ptr [ %.sroa.0286.3, %.loopexit305 ], [ null, %bb.i ] ; 14 uses
  %.sroa.10.0421 = phi ptr [ %.sroa.10.3, %.loopexit305 ], [ null, %bb.i ] ; 4 uses
  %.sroa.14.0420 = phi ptr [ %.sroa.14.3, %.loopexit305 ], [ null, %bb.i ] ; 4 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !150
  %i.bm = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %storemerge423, ptr %i.q, align 8, !tbaa !100
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !100
  %.not.i.i.i = icmp ult i64 %storemerge423, %i.bq
  br i1 %.not.i.i.i, label %bb.n, label %.noexc.i, !prof !153

.noexc.i:                                         ; preds = %.lr.ph427
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bs, ptr %14, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 55, ptr %i.l, align 8, !tbaa !100
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc203 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc203:                                        ; preds = %.noexc.i
  store ptr %i.bt, ptr %14, align 8, !tbaa !15
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !100 ; 3 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bt, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc203
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.noexc203
  %.0.i.i.i = phi i1 [ false, %bb.j ], [ true, %.noexc203 ] ; 2 uses
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bz = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bs
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bz) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %.0.i.i.i, label %bb.l, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %.0.i.i.i, label %bb.l, label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.br) #20
  br label %.body

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.lr.ph427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %storemerge423 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !114
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %.loopexit305, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.cg = load ptr, ptr %15, align 8, !tbaa !157  ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 80                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %storemerge423, ptr %i.o, align 8, !tbaa !100
  store i64 %i.ck, ptr %i.p, align 8, !tbaa !100
  %.not.i.i.i120 = icmp ult i64 %storemerge423, %i.ck
  br i1 %.not.i.i.i120, label %bb.t, label %.noexc.i205, !prof !153

.noexc.i205:                                      ; preds = %bb.o
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.cm, ptr %13, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i64 55, ptr %i.k, align 8, !tbaa !100
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc206 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i121 ; 3 uses

.noexc206:                                        ; preds = %.noexc.i205
  store ptr %i.cn, ptr %13, align 8, !tbaa !15
  %i.co = load i64, ptr %i.k, align 8, !tbaa !100 ; 3 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cn, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc206
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i121: ; preds = %.noexc.i205
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %.noexc206
  %.0.i.i.i124 = phi i1 [ false, %bb.p ], [ true, %.noexc206 ] ; 2 uses
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ct = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cm
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117MapConcatFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  %.sroa.032.2.i = phi ptr [ %i.ev, %bb.al ], [ %.sroa.032.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ew = invoke noundef zeroext i1 @_ZNK6duckdb5ValueeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2.i, ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit

.noexc223:                                        ; preds = %bb.am
  %spec.select.i = select i1 %i.ew, ptr %.sroa.032.2.i, ptr %i.eb
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %.noexc217, %.noexc218, %.noexc219, %.noexc220, %._crit_edge.i, %.noexc221, %.noexc222, %.noexc223
  %.sroa.08.0.in.sroa.speculated.i = phi ptr [ %.sroa.032.1.i, %.noexc222 ], [ %spec.select.i, %.noexc223 ], [ %i.eb, %._crit_edge.i ], [ %.sroa.032.0.lcssa.i, %.noexc221 ], [ %.sroa.032.042.i, %.noexc217 ], [ %i.ei, %.noexc218 ], [ %i.ek, %.noexc219 ], [ %i.em, %.noexc220 ] ; 3 uses
  %i.ex = load ptr, ptr %i.ao, align 8, !tbaa !160 ; 3 uses
  %i.ey = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i, %i.ex
  br i1 %i.ey, label %bb.an, label %bb.av

bb.an:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.ez = load ptr, ptr %i.ap, align 8, !tbaa !163
  %.not.i141 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i, %i.ez
  br i1 %.not.i141, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.ao
  %i.fa = load ptr, ptr %i.ao, align 8, !tbaa !165
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  store ptr %i.fb, ptr %i.ao, align 8, !tbaa !165
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %bb.an
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.ex, ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp.loopexit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.ap
  %.not.i143 = icmp eq ptr %.sroa.10.1412, %.sroa.14.1411
  br i1 %.not.i143, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backERKS1_.exit
  store i64 %storemerge423, ptr %.sroa.10.1412, align 8, !tbaa !166
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.10.1412, i64 8
  store i64 %i.dz, ptr %i.fc, align 8, !tbaa !168
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.10.1412, i64 16
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backERKS1_.exit
  %i.fe = ptrtoint ptr %.sroa.10.1412 to i64
  %i.ff = ptrtoint ptr %.sroa.0286.1413 to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775792
  br i1 %i.fh, label %bb.as, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.fi = ashr exact i64 %i.fg, 4                 ; 3 uses
  %i.fj = icmp eq ptr %.sroa.10.1412, %.sroa.0286.1413 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.fj, i64 1, i64 %i.fi
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i, %i.fi ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 576460752303423487)
  %i.fn = select i1 %i.fl, i64 576460752303423487, i64 %i.fm ; 3 uses
  %.not.i.i.i144 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i144)
  %i.fo = shl nuw nsw i64 %i.fn, 4
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #22
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fg ; 2 uses
  store i64 %storemerge423, ptr %i.fq, align 8, !tbaa !166
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.dz, ptr %i.fr, align 8, !tbaa !168
  br i1 %i.fj, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc146, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %.noexc146 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0286.1413, %.noexc146 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !169, !alias.scope !170
  %i.fs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, %.sroa.10.1412
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !174

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc146
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fp, %.noexc146 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i38.i.i = icmp eq ptr %.sroa.0286.1413, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0286.1413) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit

bb.au:                                            ; preds = %.lr.ph416
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit:                                        ; preds = %.lr.ph.i215, %bb.ae, %bb.af, %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.am, %bb.ak, %bb.ai, %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.ap, %bb.ao
  %lpad.loopexit306 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.as
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit306, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp307, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #20
  br label %bb.aw

bb.av:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.fx = load ptr, ptr %17, align 8, !tbaa !160
  %i.fy = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0286.1413, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %i.dz, ptr %i.gd, align 8, !tbaa !168
  store i64 %storemerge423, ptr %i.gc, align 8, !tbaa !166
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.aq, %bb.av
  %.sroa.14.2 = phi ptr [ %.sroa.14.1411, %bb.av ], [ %i.fv, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.14.1411, %bb.aq ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.1412, %bb.av ], [ %i.fu, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.fd, %bb.aq ] ; 2 uses
  %.sroa.0286.2 = phi ptr [ %.sroa.0286.1413, %bb.av ], [ %i.fp, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE17_M_realloc_insertIJRmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0286.1413, %bb.aq ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ge = add nuw i64 %.084414, 1                 ; 2 uses
  %exitcond495.not = icmp eq i64 %i.ge, %.sroa.5.0.copyload
  br i1 %exitcond495.not, label %.loopexit305, label %.lr.ph416, !llvm.loop !175

bb.aw:                                            ; preds = %.loopexit.split-lp, %bb.au
  %.pn94.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.fw, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

.loopexit305:                                     ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit, %bb.ac, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.n
  %.sroa.14.3 = phi ptr [ %.sroa.14.0420, %bb.n ], [ %.sroa.14.0420, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.sroa.14.0420, %bb.ac ], [ %.sroa.14.2, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit ]
  %.sroa.10.3 = phi ptr [ %.sroa.10.0421, %bb.n ], [ %.sroa.10.0421, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.sroa.10.0421, %bb.ac ], [ %.sroa.10.2, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit ] ; 2 uses
  %.sroa.0286.3 = phi ptr [ %.sroa.0286.0422, %bb.n ], [ %.sroa.0286.0422, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.sroa.0286.0422, %bb.ac ], [ %.sroa.0286.2, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit ] ; 2 uses
  %.283 = phi i1 [ %.081425, %bb.n ], [ %.081425, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ false, %bb.ac ], [ false, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EE12emplace_backIJRmS6_EEEvDpOT_.exit ] ; 2 uses
  %i.gf = add nuw i64 %storemerge423, 1           ; 2 uses
  %exitcond497.not = icmp eq i64 %i.gf, %umax496
  br i1 %exitcond497.not, label %._crit_edge428, label %.lr.ph427, !llvm.loop !176

bb.ax:                                            ; preds = %._crit_edge428
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !101
  %i.gg = load ptr, ptr %i.ao, align 8, !tbaa !165
  %i.gh = load ptr, ptr %17, align 8, !tbaa !177
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 6
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !106
  br i1 %.081.lcssa, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.080441, i1 noundef zeroext true)
          to label %bb.da unwind label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge428
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not432 = icmp eq ptr %.sroa.0286.0.lcssa, %.sroa.10.0.lcssa
  br i1 %.not432, label %._crit_edge436, label %.lr.ph435

._crit_edge436.loopexit:                          ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %.pre = load ptr, ptr %19, align 8, !tbaa !177
  %.pre499 = load ptr, ptr %i.ar, align 8, !tbaa !163
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge436.loopexit, %bb.ba
  %i.go = phi ptr [ %.pre499, %._crit_edge436.loopexit ], [ null, %bb.ba ]
  %i.gp = phi ptr [ %i.ls, %._crit_edge436.loopexit ], [ null, %bb.ba ] ; 4 uses
  %i.gq = phi ptr [ %.pre, %._crit_edge436.loopexit ], [ null, %bb.ba ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.gr = load ptr, ptr %17, align 8, !tbaa !177  ; 7 uses
  store ptr %i.gr, ptr %22, align 8, !tbaa !177
  %i.gs = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !160
  %i.gt = load ptr, ptr %i.ao, align 8, !tbaa !165 ; 3 uses
  store <2 x ptr> %i.gs, ptr %i.as, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store ptr %i.gq, ptr %23, align 8, !tbaa !177
  store ptr %i.gp, ptr %i.at, align 8, !tbaa !165
  store ptr %i.go, ptr %i.au, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !178
  %.not.i147 = icmp eq ptr %i.gt, %i.gr           ; 2 uses
  br i1 %.not.i147, label %.loopexit318, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge436
  %i.gu = ptrtoint ptr %i.gt to i64
  %24 = ptrtoint ptr %i.gr to i64
  %25 = sub i64 %i.gu, %24
  %26 = ashr exact i64 %25, 6                     ; 3 uses
  %i.gv = ptrtoint ptr %i.gp to i64
  %27 = ptrtoint ptr %i.gq to i64
  %28 = sub i64 %i.gv, %27
  %29 = ashr exact i64 %28, 6                     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i
  %.01036.i = phi i64 [ %i.jy, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i ], [ 0, %.lr.ph.i.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.01036.i, ptr %i.d, align 8, !tbaa !100
  store i64 %26, ptr %i.e, align 8, !tbaa !100
  %.not.i.i.i246 = icmp ult i64 %.01036.i, %26
  br i1 %.not.i.i.i246, label %bb.bf, label %.noexc.i268, !prof !153

.noexc.i268:                                      ; preds = %.lr.ph.i
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.gx, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 55, ptr %i.a, align 8, !tbaa !100
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc269 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i247 ; 3 uses

.noexc269:                                        ; preds = %.noexc.i268
  store ptr %i.gy, ptr %3, align 8, !tbaa !15
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.gy, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc269
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.be unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i247: ; preds = %.noexc.i268
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %.noexc269
  %.0.i.i.i250 = phi i1 [ false, %bb.bb ], [ true, %.noexc269 ] ; 2 uses
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.he = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gx
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.he) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.0.i.i.i250, label %bb.bd, label %.body253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.0.i.i.i250, label %bb.bd, label %.body253

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i247
  %.pn8.i.i.i248 = phi { ptr, i32 } [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i247 ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252 ], [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251 ]
  call void @__cxa_free_exception(ptr %i.gw) #20
  br label %.body253

bb.be:                                            ; preds = %bb.bb
  unreachable

bb.bf:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %i.gr, i64 %.01036.i
  store ptr @.str.3, ptr %9, align 8, !tbaa !181, !alias.scope !189, !noalias !178
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.hg) #20
  %i.hh = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 9 uses
  %i.hi = load ptr, ptr %i.ba, align 16, !tbaa !195
  %.not.i237 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not.i237, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hj = load ptr, ptr %9, align 8, !tbaa !196   ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  store ptr %i.hk, ptr %i.hh, align 8, !tbaa !7
  %i.hl = icmp eq ptr %i.hj, null
  br i1 %i.hl, label %.noexc.i.i241, label %bb.bh

.noexc.i.i241:                                    ; preds = %bb.bg
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #23
          to label %.noexc242 unwind label %.loopexit.split-lp310

.noexc242:                                        ; preds = %.noexc.i.i241
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.hm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hj) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 %i.hm, ptr %i.f, align 8, !tbaa !100
  %i.hn = icmp ugt i64 %i.hm, 15
  br i1 %i.hn, label %.noexc.i.i.i240, label %._crit_edge.i.i.i.i238

.noexc.i.i.i240:                                  ; preds = %bb.bh
  %i.ho = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %i.hh, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc243 unwind label %.loopexit309 ; 2 uses

.noexc243:                                        ; preds = %.noexc.i.i.i240
  store ptr %i.ho, ptr %i.hh, align 8, !tbaa !15
  %i.hp = load i64, ptr %i.f, align 8, !tbaa !100
  store i64 %i.hp, ptr %i.hk, align 8, !tbaa !11
  br label %._crit_edge.i.i.i.i238

._crit_edge.i.i.i.i238:                           ; preds = %.noexc243, %bb.bh
  %i.hq = phi ptr [ %i.ho, %.noexc243 ], [ %i.hk, %bb.bh ] ; 2 uses
  switch i64 %i.hm, label %bb.bj [
    i64 1, label %bb.bi
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i239
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i238
  %i.hr = load i8, ptr %i.hj, align 1, !tbaa !11
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !11
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i239

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i238
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr nonnull align 1 %i.hj, i64 %i.hm, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i239

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i239: ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i.i.i238
  %i.hs = load i64, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !12
  %i.hu = load ptr, ptr %i.hh, align 8, !tbaa !15
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 8 dereferenceable(64) %i.av) #20
  %i.hx = load ptr, ptr %i.ay, align 8, !tbaa !192
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  store ptr %i.hy, ptr %i.ay, align 8, !tbaa !192
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit245

bb.bk:                                            ; preds = %bb.bf
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE17_M_realloc_insertIJS0_IPKcS8_EEEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.hh, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit245 unwind label %.loopexit309

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit245: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i239, %bb.bk
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.av) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.01036.i, ptr %i.g, align 8, !tbaa !100
  store i64 %29, ptr %i.h, align 8, !tbaa !100
  %.not.i.i.i228 = icmp ult i64 %.01036.i, %29
  br i1 %.not.i.i.i228, label %bb.bp, label %.noexc.i264, !prof !153

.noexc.i264:                                      ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit245
  %i.hz = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ia, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 55, ptr %i.b, align 8, !tbaa !100
  %i.ib = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc265 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i229 ; 3 uses

.noexc265:                                        ; preds = %.noexc.i264
  store ptr %i.ib, ptr %4, align 8, !tbaa !15
  %i.ic = load i64, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ib, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc265
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bo unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i229: ; preds = %.noexc.i264
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %.noexc265
  %.0.i.i.i232 = phi i1 [ false, %bb.bl ], [ true, %.noexc265 ] ; 2 uses
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ih = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ia
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.ih) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0.i.i.i232, label %bb.bn, label %.body235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0.i.i.i232, label %bb.bn, label %.body235

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i229
  %.pn8.i.i.i230 = phi { ptr, i32 } [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i229 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234 ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233 ]
  call void @__cxa_free_exception(ptr %i.hz) #20
  br label %.body235

bb.bo:                                            ; preds = %bb.bl
  unreachable

bb.bp:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ij = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %.01036.i
  store ptr @.str.4, ptr %10, align 8, !tbaa !181, !alias.scope !197, !noalias !178
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.ij) #20
  %i.ik = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 9 uses
  %i.il = load ptr, ptr %i.ba, align 16, !tbaa !195
  %.not.i224 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i224, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.im = load ptr, ptr %10, align 8, !tbaa !196  ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 3 uses
  store ptr %i.in, ptr %i.ik, align 8, !tbaa !7
  %i.io = icmp eq ptr %i.im, null
  br i1 %i.io, label %.noexc.i.i, label %bb.br

.noexc.i.i:                                       ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #23
          to label %.noexc225 unwind label %.loopexit.split-lp314

.noexc225:                                        ; preds = %.noexc.i.i
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.ip = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.im) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i64 %i.ip, ptr %i.i, align 8, !tbaa !100
  %i.iq = icmp ugt i64 %i.ip, 15
  br i1 %i.iq, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.br
  %i.ir = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %i.ik, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc226 unwind label %.loopexit313 ; 2 uses

.noexc226:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ir, ptr %i.ik, align 8, !tbaa !15
  %i.is = load i64, ptr %i.i, align 8, !tbaa !100
  store i64 %i.is, ptr %i.in, align 8, !tbaa !11
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc226, %bb.br
  %i.it = phi ptr [ %i.ir, %.noexc226 ], [ %i.in, %bb.br ] ; 2 uses
  switch i64 %i.ip, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iu = load i8, ptr %i.im, align 1, !tbaa !11
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !11
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr nonnull align 1 %i.im, i64 %i.ip, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i: ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i.i
  %i.iv = load i64, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !12
  %i.ix = load ptr, ptr %i.ik, align 8, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iv
  store i8 0, ptr %i.iy, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %i.aw) #20
  %i.ja = load ptr, ptr %i.ay, align 8, !tbaa !192
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 96
  store ptr %i.jb, ptr %i.ay, align 8, !tbaa !192
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit

bb.bu:                                            ; preds = %bb.bp
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE17_M_realloc_insertIJS0_IPKcS8_EEEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.ik, ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit unwind label %.loopexit313

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEC2IPKcS7_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISD_SE_EEclsr6_PCCFPISD_SE_EE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOS_ISD_SE_E.exit.i, %bb.bu
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !178
  %i.jc = load <2 x ptr>, ptr %8, align 16, !tbaa !200, !noalias !178
  store <2 x ptr> %i.jc, ptr %12, align 16, !tbaa !200, !noalias !178
  %i.jd = load ptr, ptr %i.ba, align 16, !tbaa !195, !noalias !178
  store ptr %i.jd, ptr %i.az, align 16, !tbaa !195, !noalias !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !178
  invoke void @_ZN6duckdb5Value6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull %12)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit
  %i.je = load ptr, ptr %i.bb, align 8, !tbaa !165, !alias.scope !178 ; 3 uses
  %i.jf = load ptr, ptr %i.bc, align 8, !tbaa !163, !alias.scope !178
  %.not.i.i.i148 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i.i.i148, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.je, ptr noundef nonnull align 8 dereferenceable(64) %11) #20
  %i.jg = load ptr, ptr %i.bb, align 8, !tbaa !165, !alias.scope !178
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  store ptr %i.jh, ptr %i.bb, align 8, !tbaa !165, !alias.scope !178
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i unwind label %bb.cd

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.bx, %bb.bw
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #20
  %i.ji = load ptr, ptr %12, align 16, !tbaa !201, !noalias !178 ; 3 uses
  %i.jj = load ptr, ptr %i.ax, align 8, !tbaa !192, !noalias !178 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ji, %i.jj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.jo, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i ], [ %i.ji, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i ] ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jk) #20
  %i.jl = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.jl) #21
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jo, %i.jj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !202

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %12, align 16, !tbaa !201, !noalias !178
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i
  %i.jp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ji, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jp) #21
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i: ; preds = %bb.by, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !178
  %i.jq = load ptr, ptr %8, align 16, !tbaa !201, !noalias !178 ; 3 uses
  %i.jr = load ptr, ptr %i.ay, align 8, !tbaa !192, !noalias !178 ; 2 uses
  %.not4.i.i.i17.i = icmp eq ptr %i.jq, %i.jr
  br i1 %.not4.i.i.i17.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i, label %.lr.ph.i.i.i18.i

.lr.ph.i.i.i18.i:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i
  %.05.i.i.i19.i = phi ptr [ %i.jw, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i ], [ %i.jq, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.js) #20
  %i.jt = load ptr, ptr %.05.i.i.i19.i, align 8, !tbaa !15 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 16
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i: ; preds = %.lr.ph.i.i.i18.i
  call void @_ZdlPv(ptr noundef %i.jt) #21
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i: ; preds = %.lr.ph.i.i.i18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i19.i, i64 96 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %i.jw, %i.jr
  br i1 %.not.i.i.i22.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i, label %.lr.ph.i.i.i18.i, !llvm.loop !202

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i21.i
  %.pr.i24.i = load ptr, ptr %8, align 16, !tbaa !201, !noalias !178
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i
  %i.jx = phi ptr [ %.pr.i24.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i23.i ], [ %i.jq, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i26.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i1.i26.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i
  call void @_ZdlPv(ptr noundef nonnull %i.jx) #21
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i: ; preds = %bb.bz, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !178
  %i.jy = add nuw i64 %.01036.i, 1                ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %26
  br i1 %i.jz, label %.lr.ph.i, label %.loopexit318, !llvm.loop !203

.loopexit309:                                     ; preds = %.noexc.i.i.i240, %bb.bk
  %lpad.loopexit311 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp310:                            ; preds = %.noexc.i.i241
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp310, %.loopexit309
  %lpad.phi312 = phi { ptr, i32 } [ %lpad.loopexit311, %.loopexit309 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp310 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.av) #20
  br label %.body253

.body253:                                         ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251, %bb.ca
  %.pn.i = phi { ptr, i32 } [ %lpad.phi312, %bb.ca ], [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251 ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252 ], [ %.pn8.i.i.i248, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !178
  br label %.body149

.loopexit313:                                     ; preds = %.noexc.i.i.i, %bb.bu
  %lpad.loopexit315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp314:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp316 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp314, %.loopexit313
  %lpad.phi317 = phi { ptr, i32 } [ %lpad.loopexit315, %.loopexit313 ], [ %lpad.loopexit.split-lp316, %.loopexit.split-lp314 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aw) #20
  br label %.body235

.body235:                                         ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233, %bb.cb
  %.pn12.i = phi { ptr, i32 } [ %lpad.phi317, %bb.cb ], [ %i.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i234 ], [ %.pn8.i.i.i230, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !178
  br label %.body149

bb.cc:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE12emplace_backIJS0_IPKcS8_EEEEvDpOT_.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bx
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #20
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn14.i = phi { ptr, i32 } [ %i.kb, %bb.cd ], [ %i.ka, %bb.cc ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !178
  br label %.body149

.body149:                                         ; preds = %bb.ce, %.body235, %.body253
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn14.i, %bb.ce ], [ %.pn12.i, %.body235 ], [ %.pn.i, %.body253 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !178
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #20
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #20
  br label %bb.dd

.lr.ph435:                                        ; preds = %bb.ba, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %i.kc = phi ptr [ %i.ls, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ], [ null, %bb.ba ] ; 5 uses
  %.sroa.0275.0433 = phi ptr [ %i.lt, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0286.0.lcssa, %bb.ba ] ; 3 uses
  %i.kd = load i64, ptr %.sroa.0275.0433, align 8, !tbaa !166 ; 3 uses
  %i.ke = load ptr, ptr %i.ae, align 8, !tbaa !150
  %i.kf = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = sdiv exact i64 %i.ki, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.kd, ptr %i.m, align 8, !tbaa !100
  store i64 %i.kj, ptr %i.n, align 8, !tbaa !100
  %.not.i.i.i151 = icmp ult i64 %i.kd, %i.kj
  br i1 %.not.i.i.i151, label %bb.cj, label %.noexc.i257, !prof !153

.noexc.i257:                                      ; preds = %.lr.ph435
  %i.kk = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.kl, ptr %7, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 55, ptr %i.c, align 8, !tbaa !100
  %i.km = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc258 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152 ; 3 uses

.noexc258:                                        ; preds = %.noexc.i257
  store ptr %i.km, ptr %7, align 8, !tbaa !15
  %i.kn = load i64, ptr %i.c, align 8, !tbaa !100 ; 3 uses
  store i64 %i.kn, ptr %i.kl, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.km, ptr noundef nonnull align 1 dereferenceable(55) @.str.7, i64 55, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn
  store i8 0, ptr %i.kp, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc258
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ci unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152: ; preds = %.noexc.i257
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.noexc258
  %.0.i.i.i155 = phi i1 [ false, %bb.cf ], [ true, %.noexc258 ] ; 2 uses
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ks = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.kl
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.ks) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0.i.i.i155, label %bb.ch, label %.body158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0.i.i.i155, label %bb.ch, label %.body158

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152
  %.pn8.i.i.i153 = phi { ptr, i32 } [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i152 ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157 ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156 ]
  call void @__cxa_free_exception(ptr %i.kk) #20
  br label %.body158

bb.ci:                                            ; preds = %bb.cf
  unreachable

bb.cj:                                            ; preds = %.lr.ph435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ku = getelementptr inbounds nuw [104 x i8], ptr %i.kf, i64 %i.kd
  %i.kv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ku)
          to label %bb.ck unwind label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0275.0433, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !168
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %20, ptr noundef nonnull align 8 dereferenceable(104) %i.kv, i64 noundef %i.kx)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  %i.ky = load ptr, ptr %i.ar, align 8, !tbaa !163
  %.not.i.i = icmp eq ptr %i.kc, %i.ky
  br i1 %.not.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.kc, ptr noundef nonnull align 8 dereferenceable(64) %20) #20
  %i.kz = load ptr, ptr %i.aq, align 8, !tbaa !165
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 64 ; 2 uses
  store ptr %i.la, ptr %i.aq, align 8, !tbaa !165
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.cn:                                            ; preds = %bb.cl
  %i.lb = load ptr, ptr %19, align 8, !tbaa !177  ; 5 uses
  %i.lc = ptrtoint ptr %i.kc to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld                    ; 3 uses
  %i.lf = icmp eq i64 %i.le, 9223372036854775744
  br i1 %i.lf, label %bb.co, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc261 unwind label %.loopexit.split-lp320

.noexc261:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cn
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
          to label %.noexc262 unwind label %.loopexit319 ; 5 uses

.noexc262:                                        ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.le
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ln, ptr noundef nonnull align 8 dereferenceable(64) %20) #20
  %.not10.i.i.i.i.i = icmp eq ptr %i.lb, %i.kc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc262, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i ], [ %i.lm, %.noexc262 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i ], [ %i.lb, %.noexc262 ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i) #20
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i.i) #20
  %i.lo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lo, %i.kc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc262
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.lm, %.noexc262 ], [ %i.lp, %.lr.ph.i.i.i.i.i ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.lb, null
  br i1 %.not.i23.i, label %.noexc161, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %i.lb) #21
  br label %.noexc161

.noexc161:                                        ; preds = %bb.cp, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.lm, ptr %19, align 8, !tbaa !177
  store ptr %i.lq, ptr %i.aq, align 8, !tbaa !165
  %i.lr = getelementptr inbounds nuw [64 x i8], ptr %i.lm, i64 %i.lk
  store ptr %i.lr, ptr %i.ar, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc161, %bb.cm
  %i.ls = phi ptr [ %i.lq, %.noexc161 ], [ %i.la, %bb.cm ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0275.0433, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.lt, %.sroa.10.0.lcssa
  br i1 %.not, label %._crit_edge436.loopexit, label %.lr.ph435

bb.cq:                                            ; preds = %bb.cj
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.cr:                                            ; preds = %bb.ck
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit319:                                     ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp320:                            ; preds = %bb.co
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp320, %.loopexit319
  %lpad.phi323 = phi { ptr, i32 } [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #20
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn89 = phi { ptr, i32 } [ %lpad.phi323, %bb.cs ], [ %i.lv, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body158

.loopexit318:                                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit28.i, %._crit_edge436
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not4.i.i.i = icmp eq ptr %i.gq, %i.gp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit318, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i ], [ %i.gq, %.loopexit318 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i) #20
  %i.lw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.lw, %i.gp
  br i1 %.not.i.i.i162, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %.loopexit318
  %.not.i.i1.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.cu
  br i1 %.not.i147, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, %.lr.ph.i.i.i164
  %.05.i.i.i165 = phi ptr [ %i.lx, %.lr.ph.i.i.i164 ], [ %i.gr, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i165) #20
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 64 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.lx, %i.gt
  br i1 %.not.i.i.i166, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, label %.lr.ph.i.i.i164, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169: ; preds = %.lr.ph.i.i.i164, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %.not.i.i1.i170 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i1.i170, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, label %bb.cv

bb.cv:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169
  call void @_ZdlPv(ptr noundef nonnull %i.gr) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i169, %bb.cv
  %i.ly = load ptr, ptr %21, align 8, !tbaa !160  ; 3 uses
  %i.lz = load ptr, ptr %i.bb, align 8, !tbaa !160 ; 2 uses
  %.not303437 = icmp eq ptr %i.ly, %i.lz
  br i1 %.not303437, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178, label %.lr.ph439

._crit_edge440:                                   ; preds = %bb.cy
  %.pre501.a = load ptr, ptr %21, align 8, !tbaa !177 ; 3 uses
  %.pre502.a = load ptr, ptr %i.bb, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i172 = icmp eq ptr %.pre501.a, %.pre502.a
  br i1 %.not4.i.i.i172, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178, label %.lr.ph.i.i.i173

.lr.ph.i.i.i173:                                  ; preds = %._crit_edge440, %.lr.ph.i.i.i173
  %.05.i.i.i174 = phi ptr [ %i.ma, %.lr.ph.i.i.i173 ], [ %.pre501.a, %._crit_edge440 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i174) #20
  %i.ma = getelementptr inbounds nuw i8, ptr %.05.i.i.i174, i64 64 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.ma, %.pre502.a
  br i1 %.not.i.i.i175, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176, label %.lr.ph.i.i.i173, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176: ; preds = %.lr.ph.i.i.i173
  %.pr.i177 = load ptr, ptr %21, align 8, !tbaa !177
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176, %._crit_edge440
  %i.mb = phi ptr [ %.pr.i177, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i176 ], [ %.pre501.a, %._crit_edge440 ], [ %i.ly, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171 ] ; 2 uses
  %.not.i.i1.i179 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i1.i179, label %bb.cw, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180

bb.cw:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i178
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #21
  %i.mc = load ptr, ptr %19, align 8, !tbaa !177  ; 4 uses
  %i.md = load ptr, ptr %i.aq, align 8, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %.not4.i.i.i181 = icmp eq ptr %i.mc, %i.md
  br i1 %.not4.i.i.i181, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180, %.lr.ph.i.i.i182
  %.05.i.i.i183 = phi ptr [ %i.me, %.lr.ph.i.i.i182 ], [ %i.mc, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i183) #20
  %i.me = getelementptr inbounds nuw i8, ptr %.05.i.i.i183, i64 64 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.me, %i.md
  br i1 %.not.i.i.i184, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, label %.lr.ph.i.i.i182, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187: ; preds = %.lr.ph.i.i.i182, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit180
  %.not.i.i1.i188 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i1.i188, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187
  call void @_ZdlPv(ptr noundef nonnull %i.mc) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189: ; preds = %bb.cw, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i187, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.da

.lr.ph439:                                        ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171, %bb.cy
  %.sroa.0271.0438 = phi ptr [ %i.mf, %bb.cy ], [ %i.ly, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit171 ] ; 2 uses
  invoke void @_ZN6duckdb10ListVector8PushBackERNS_6VectorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0271.0438)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %.lr.ph439
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0271.0438, i64 64 ; 2 uses
  %.not303 = icmp eq ptr %i.mf, %i.lz
  br i1 %.not303, label %._crit_edge440, label %.lr.ph439

bb.cz:                                            ; preds = %.lr.ph439
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.da:                                            ; preds = %bb.ay, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit189
  %i.mh = load ptr, ptr %17, align 8, !tbaa !177  ; 3 uses
  %i.mi = load ptr, ptr %i.ao, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i190 = icmp eq ptr %i.mh, %i.mi
  br i1 %.not4.i.i.i190, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %bb.da, %.lr.ph.i.i.i191
  %.05.i.i.i192 = phi ptr [ %i.mj, %.lr.ph.i.i.i191 ], [ %i.mh, %bb.da ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i192) #20
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 64 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.mj, %i.mi
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, label %.lr.ph.i.i.i191, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194: ; preds = %.lr.ph.i.i.i191
  %.pr.i195 = load ptr, ptr %17, align 8, !tbaa !177
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, %bb.da
  %i.mk = phi ptr [ %.pr.i195, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194 ], [ %i.mh, %bb.da ] ; 2 uses
  %.not.i.i1.i197 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i1.i197, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196
  call void @_ZdlPv(ptr noundef nonnull %i.mk) #21
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i196, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %.not.i.i.i199 = icmp eq ptr %.sroa.0286.0.lcssa, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0286.0.lcssa) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit198, %bb.dc
  %i.ml = add nuw i64 %.080441, 1                 ; 2 uses
  %exitcond498.not = icmp eq i64 %i.ml, %i.ad
  br i1 %exitcond498.not, label %._crit_edge443, label %bb.i, !llvm.loop !206

bb.dd:                                            ; preds = %bb.cz, %.body149
  %.sink = phi ptr [ %21, %bb.cz ], [ %22, %.body149 ]
  %.pn = phi { ptr, i32 } [ %i.mg, %bb.cz ], [ %.pn14.pn.i, %.body149 ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %.sink) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body158

.body158:                                         ; preds = %bb.ct, %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, %bb.ch, %bb.dd
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dd ], [ %i.lu, %bb.cq ], [ %.pn89, %bb.ct ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156 ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157 ], [ %.pn8.i.i.i153, %bb.ch ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body

.body:                                            ; preds = %bb.aw, %.body138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.aa, %.body158, %bb.az
  %.sroa.0286.5 = phi ptr [ %.sroa.0286.0.lcssa, %.body158 ], [ %.sroa.0286.0.lcssa, %bb.az ], [ %.sroa.0286.1413, %bb.aw ], [ %.sroa.0286.0422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0286.0422, %.body138 ], [ %.sroa.0286.0422, %bb.aa ], [ %.sroa.0286.0422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.sroa.0286.0422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.sroa.0286.0422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.sroa.0286.0422, %bb.l ], [ %.sroa.0286.0422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125 ], [ %.sroa.0286.0422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126 ], [ %.sroa.0286.0422, %bb.r ] ; 2 uses
  %.pn94.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn, %.body158 ], [ %i.gn, %bb.az ], [ %.pn94.pn, %bb.aw ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dy, %.body138 ], [ %.pn9.i, %bb.aa ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.l ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i126 ], [ %.pn8.i.i.i122, %bb.r ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %.not.i.i.i200 = icmp eq ptr %.sroa.0286.5, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201, label %bb.de

bb.de:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0286.5) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201

bb.df:                                            ; preds = %._crit_edge443
  br i1 %i.bh, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.dh unwind label %bb.h

bb.dh:                                            ; preds = %bb.dg, %bb.df
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ad)
          to label %bb.di unwind label %bb.h

bb.di:                                            ; preds = %bb.dh
  %i.mm = load ptr, ptr %15, align 8, !tbaa !157
  %i.mn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !154
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19UnifiedVectorFormatEEEvT_S5_(ptr noundef %i.mm, ptr noundef %i.mo)
          to label %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.dk

_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.di
  %i.mp = load ptr, ptr %15, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.mp) #21
  br label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit

bb.dk:                                            ; preds = %bb.di
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #24
  unreachable

_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  ret void

_ZNSt6vectorIN6duckdb12_GLOBAL__N_115MapKeyIndexPairESaIS2_EED2Ev.exit201: ; preds = %bb.de, %.body, %bb.h, %bb.g
  %.pn104 = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bi, %bb.h ], [ %.pn94.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn94.pn.pn.pn.pn.pn.pn.pn, %bb.de ]
  call void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  resume { ptr, i32 } %.pn104
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_113MapConcatBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 17 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = load ptr, ptr %3, align 8, !tbaa !210
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bn unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.052, label %bb.f, label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
end_hunk_1

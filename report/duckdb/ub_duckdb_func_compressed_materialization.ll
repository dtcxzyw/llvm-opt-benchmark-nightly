inline.NumInlined: 5151
inline.NumDeleted: 1155
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !84
  br i1 %.0.i62, label %common.resume.sink.split, label %common.resume

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.a
  %switch.tableidx43 = add i8 %.0.val1, -28       ; 2 uses
  %i.ax = icmp ult i8 %switch.tableidx43, 4
  br i1 %i.ax, label %_ZN6duckdb12_GLOBAL__N_139GetIntegralCompressFunctionResultSwitchIsEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !87 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !87
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i65, !noalias !87

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.au unwind label %bb.av, !noalias !87

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.aw unwind label %bb.av, !noalias !87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i65: ; preds = %bb.as
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !87
  br label %common.resume.sink.split

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i68 = phi i1 [ false, %bb.au ], [ true, %bb.at ] ; 2 uses
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !27, !noalias !87 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.bb) #25, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !87
  br i1 %.0.i68, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !87
  br i1 %.0.i68, label %common.resume.sink.split, label %common.resume

bb.aw:                                            ; preds = %bb.au
  unreachable

bb.ax:                                            ; preds = %bb.a
  %i.be = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ay unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bb unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ax
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %common.resume.sink.split

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0 = phi i1 [ false, %bb.az ], [ true, %bb.ay ] ; 2 uses
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bh = load ptr, ptr %17, align 8, !tbaa !27   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.bh) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %.0, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %.0, label %common.resume.sink.split, label %common.resume

_ZN6duckdb12_GLOBAL__N_139GetIntegralCompressFunctionResultSwitchIsEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit: ; preds = %bb.ar, %bb.al, %bb.af, %bb.z, %bb.t, %bb.n, %bb.h, %bb.b
  %switch.tableidx43.sink = phi i8 [ %switch.tableidx39, %bb.al ], [ %switch.tableidx35, %bb.af ], [ %switch.tableidx31, %bb.z ], [ %switch.tableidx27, %bb.t ], [ %switch.tableidx23, %bb.n ], [ %switch.tableidx19, %bb.h ], [ %switch.tableidx, %bb.b ], [ %switch.tableidx43, %bb.ar ]
  %switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.434.sink = phi ptr [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.433, %bb.al ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.432, %bb.af ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.431, %bb.z ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.430, %bb.t ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.429, %bb.n ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.428, %bb.h ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_, %bb.b ], [ @switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.434, %bb.ar ]
  %i.bk = zext nneg i8 %switch.tableidx43.sink to i64
  %switch.gep45 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_.434.sink, i64 %i.bk
  %switch.load46 = load ptr, ptr %switch.gep45, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bn, align 8
  store ptr %switch.load46, ptr %0, align 8, !tbaa !90
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.bm, align 8, !tbaa !91
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bl, align 8, !tbaa !23
  ret void

bb.bb:                                            ; preds = %bb.az
  unreachable
}

declare void @_ZN6duckdb7CMUtils4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(360), ptr noundef nonnull align 8 dereferenceable(24)) #2

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #2

declare void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119CMIntegralSerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !inline_history !94
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = load ptr, ptr %0, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.k), !inline_history !95
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.t = load ptr, ptr %0, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !95
  %i.aa = load ptr, ptr %0, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !94
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ae = load ptr, ptr %0, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.15), !inline_history !98
  %i.ah = load ptr, ptr %0, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !99
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !99
  %i.an = load ptr, ptr %0, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !98
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121CMIntegralDeserializeIXadL_ZNS0_38GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES4_EEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS6_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !100
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !noalias !100, !inline_history !103
  call void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.d = load ptr, ptr %1, align 8, !tbaa !92, !noalias !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.l, %common.resume.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %common.resume.op.i, %common.resume.i ], [ %i.av, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !96
  store <2 x ptr> %i.n, ptr %i.h, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !11
  store ptr %i.p, ptr %i.l, align 8, !tbaa !11
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %4, align 16, !tbaa !7     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.v = load ptr, ptr %1, align 8, !tbaa !92, !noalias !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !104
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.15), !noalias !104, !inline_history !107
  %i.y = load ptr, ptr %1, align 8, !tbaa !92, !noalias !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !108
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !108, !inline_history !111
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !92, !noalias !108
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.e

common.resume.i:                                  ; preds = %bb.f, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %common.resume

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !92, !noalias !104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %.val = load i8, ptr %i.aj, align 8, !tbaa !13
  %.val6 = load i8, ptr %5, align 8
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_138GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES3_(ptr dead_on_unwind noalias writable align 8 %6, i8 %.val, i8 %.val6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !90
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !23
  %.not.i.i.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !112
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !90
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !90
  store <2 x ptr> %i.am, ptr %i.ap, align 8, !tbaa !90
  %.not.i.i.i7 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i7, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr null, ptr %0, align 8, !tbaa !113
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.l:                                             ; preds = %bb.g, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !119
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !120
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !120
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, !prof !121

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, %bb.h
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23CMIntegralDecompressFun11GetFunctionERKNS_11LogicalTypeES3_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %5 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"class.std::function", align 8     ; 8 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call fastcc void @_ZN6duckdb12_GLOBAL__N_130IntegralDecompressFunctionNameB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %.loopexit.loopexit31

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc unwind label %.body26.thread ; 7 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.c, ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread41

.thread41:                                        ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = call ptr @__cxa_begin_catch(ptr %i.g) #21 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.n

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #21
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread41
  invoke void @__cxa_rethrow() #23
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body26 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body26.thread:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body26:                                          ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %.body

bb.g:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_140GetIntegralDecompressFunctionInputSwitchERKNS_11LogicalTypeES3_:bb.a
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.ae:                                            ; preds = %bb.ab
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.af:                                            ; preds = %bb.ab
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.ag:                                            ; preds = %bb.ab
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.ah:                                            ; preds = %bb.ab
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.ai:                                            ; preds = %bb.ab
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.aj:                                            ; preds = %bb.ab
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !133 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !133
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i23, !noalias !133

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.al unwind label %bb.am, !noalias !133

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.an unwind label %bb.am, !noalias !133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i23: ; preds = %bb.aj
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !133
  br label %common.resume.sink.split

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i26 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !27, !noalias !133 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.p) #25, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !133
  br i1 %.0.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !133
  br i1 %.0.i26, label %common.resume.sink.split, label %common.resume

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.a
  switch i8 %.0.val1, label %bb.aw [
    i8 12, label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit
    i8 13, label %bb.ap
    i8 14, label %bb.aq
    i8 50, label %bb.ar
    i8 29, label %bb.as
    i8 30, label %bb.at
    i8 31, label %bb.au
    i8 49, label %bb.av
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.aq:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.ar:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.as:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.at:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.au:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.av:                                            ; preds = %bb.ao
  br label %_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i29, !noalias !136

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ay unwind label %bb.az, !noalias !136

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ba unwind label %bb.az, !noalias !136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i29: ; preds = %bb.aw
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !136
  br label %common.resume.sink.split

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0.i32 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !27, !noalias !136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.v) #25, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !136
  br i1 %.0.i32, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !136
  br i1 %.0.i32, label %common.resume.sink.split, label %common.resume

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bf unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bb
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume.sink.split

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ] ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.0, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.0, label %common.resume.sink.split, label %common.resume

_ZN6duckdb12_GLOBAL__N_141GetIntegralDecompressFunctionResultSwitchIhEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeESD_.exit: ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink.i.sink = phi ptr [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjsEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ab ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItsEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.o ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhsEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.b ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhmEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.h ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.g ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhtEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.f ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhNS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.e ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhlEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.d ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIhiEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.c ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.v ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItmEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.u ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.t ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIttEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.s ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItNS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.r ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItlEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.q ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionItiEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.p ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ai ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjmEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ah ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ag ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjtEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.af ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjNS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ae ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjlEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ad ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionIjiEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ac ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.av ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImmEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.au ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.at ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImtEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.as ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImNS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ar ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImlEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.aq ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImiEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ap ], [ @_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImsEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.ao ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  store ptr %_ZN6duckdb12_GLOBAL__N_126IntegralDecompressFunctionImNS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink.i.sink, ptr %0, align 8, !tbaa !90
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.af, align 8, !tbaa !91
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !23
  ret void

bb.bf:                                            ; preds = %bb.bd
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121CMIntegralDeserializeIXadL_ZNS0_40GetIntegralDecompressFunctionInputSwitchERKNS_11LogicalTypeES4_EEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS6_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !139
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !139
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !noalias !139, !inline_history !103
  call void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.d = load ptr, ptr %1, align 8, !tbaa !92, !noalias !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.l, %common.resume.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %common.resume.op.i, %common.resume.i ], [ %i.av, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !96
  store <2 x ptr> %i.n, ptr %i.h, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !11
  store ptr %i.p, ptr %i.l, align 8, !tbaa !11
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %4, align 16, !tbaa !7     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.v = load ptr, ptr %1, align 8, !tbaa !92, !noalias !142
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !142
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.15), !noalias !142, !inline_history !107
  %i.y = load ptr, ptr %1, align 8, !tbaa !92, !noalias !145
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !145
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !145, !inline_history !111
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !92, !noalias !145
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.e

common.resume.i:                                  ; preds = %bb.f, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %common.resume

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !92, !noalias !142
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %.val = load i8, ptr %i.aj, align 8, !tbaa !13
  %.val6 = load i8, ptr %5, align 8
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_140GetIntegralDecompressFunctionInputSwitchERKNS_11LogicalTypeES3_(ptr dead_on_unwind noalias writable align 8 %6, i8 %.val, i8 %.val6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !90
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !23
  %.not.i.i.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !112
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !90
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !90
  store <2 x ptr> %i.am, ptr %i.ap, align 8, !tbaa !90
  %.not.i.i.i7 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i7, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr null, ptr %0, align 8, !tbaa !113
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.l:                                             ; preds = %bb.g, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb35InternalCompressIntegralUtinyintFun12GetFunctionsEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 28)
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_130GetIntegralCompressFunctionSetERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_130GetIntegralCompressFunctionSetERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %4 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
  call fastcc void @_ZN6duckdb12_GLOBAL__N_128IntegralCompressFunctionNameB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.a) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN6duckdb11LogicalType8IntegralEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.d = load ptr, ptr %3, align 8, !tbaa !96     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not23 = icmp eq ptr %i.d, %i.f
  br i1 %.not23, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 344 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %.pre25 = load ptr, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre25
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %.pre25
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.d, %bb.c ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.g:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.020.024 = phi ptr [ %i.d, %.lr.ph ], [ %i.bn, %bb.y ] ; 3 uses
  %i.x = load i8, ptr %i.g, align 1, !tbaa !148
  %i.y = invoke noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.x)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.020.024, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !148
  %i.ab = invoke noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.aa)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb21CMIntegralCompressFun11GetFunctionERKNS_11LogicalTypeES3_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.024, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !149 ; 10 uses
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !152
  %.not.i.i.i18 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i18, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.ad, ptr noundef nonnull align 8 dereferenceable(360) %4)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.ad, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 240 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !91
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !91
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !112
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !23
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i

_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i:     ; preds = %bb.m, %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 344
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store ptr null, ptr %i.an, align 8, !tbaa !116
  %i.ao = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
end_hunk_1
begin_hunk_2_@_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE:bb.a
          to label %_ZNSt14_Function_baseD2Ev.exit17 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %bb.z, %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %.pn, %bb.y ], [ %.pn, %bb.z ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit17 ], [ %i.bl, %bb.u ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %.body

.body:                                            ; preds = %.body21.thread, %.body21, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.au, %.body21.thread ], [ %i.ar, %.body21 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %.pn.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bu = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_131GetStringCompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i8 %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  switch i8 %.0.val, label %bb.g [
    i8 28, label %bb.l
    i8 29, label %bb.b
    i8 30, label %bb.c
    i8 31, label %bb.d
    i8 49, label %bb.e
    i8 50, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.n unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.k, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.f ], [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.e ], [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionImEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.d ], [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionIjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.c ], [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionItEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.b ], [ @_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8
  store ptr %_ZN6duckdb12_GLOBAL__N_122StringCompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, ptr %0, align 8, !tbaa !90
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.h, align 8, !tbaa !91
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.g, align 8, !tbaa !23
  ret void

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn3 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn4, %bb.k ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn3

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125CMStringCompressSerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !inline_history !94
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = load ptr, ptr %0, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.k), !inline_history !95
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.t = load ptr, ptr %0, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !95
  %i.aa = load ptr, ptr %0, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !94
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ae = load ptr, ptr %0, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.15), !inline_history !98
  %i.ah = load ptr, ptr %0, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !99
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !99
  %i.an = load ptr, ptr %0, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !98
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_127CMStringCompressDeserializeERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !164
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !164
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !noalias !164, !inline_history !103
  call void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.d = load ptr, ptr %1, align 8, !tbaa !92, !noalias !164
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.k, %common.resume.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %common.resume.op.i, %common.resume.i ], [ %i.au, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !96
  store <2 x ptr> %i.n, ptr %i.h, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !11
  store ptr %i.p, ptr %i.l, align 8, !tbaa !11
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %4, align 16, !tbaa !7     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.v = load ptr, ptr %1, align 8, !tbaa !92, !noalias !167
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !167
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.15), !noalias !167, !inline_history !107
  %i.y = load ptr, ptr %1, align 8, !tbaa !92, !noalias !170
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !170
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !170, !inline_history !111
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !92, !noalias !170
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.e

common.resume.i:                                  ; preds = %bb.f, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %common.resume

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !92, !noalias !167
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %.val = load i8, ptr %5, align 8, !tbaa !13
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_131GetStringCompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %6, i8 %.val)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !90
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !23
  %.not.i.i.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !112
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !90
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !90
  store <2 x ptr> %i.al, ptr %i.ao, align 8, !tbaa !90
  %.not.i.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i5, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr null, ptr %0, align 8, !tbaa !113
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.k:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21CMStringDecompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %4 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !52, !alias.scope !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !173
  store i64 28, ptr %i.a, align 8, !tbaa !53, !noalias !173
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !27, !alias.scope !173
  %i.d = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !173 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54, !alias.scope !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !55, !alias.scope !173
  %i.f = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !173
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc unwind label %.body20.thread ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.h, ptr %3, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 25)
          to label %bb.f unwind label %bb.n

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body20 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body20.thread:                                   ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body20:                                          ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.h) #25
  br label %.body

bb.f:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.val = load i8, ptr %1, align 8, !tbaa !13
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_133GetStringDecompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %6, i8 %.val)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @_ZN6duckdb7CMUtils4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_126StringDecompressLocalState4InitERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  %i.x = load ptr, ptr %3, align 8, !tbaa !7      ; 3 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.x, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ab = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @_ZN6duckdb12_GLOBAL__N_127CMStringDecompressSerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE, ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @_ZN6duckdb12_GLOBAL__N_129CMStringDecompressDeserializeERNS_12DeserializerERNS_14ScalarFunctionE, ptr %i.ae, align 8, !tbaa !50
  ret void

bb.m:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.n:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6duckdb21CMStringDecompressFun11GetFunctionERKNS_11LogicalTypeE:bb.a
bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit16, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit16 ], [ %i.ag, %bb.n ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  br label %.body

.body:                                            ; preds = %.body20.thread, %.body20, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.u ], [ %i.r, %.body20.thread ], [ %i.o, %.body20 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ap = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_133GetStringDecompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i8 %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  switch i8 %.0.val, label %bb.g [
    i8 28, label %bb.l
    i8 29, label %bb.b
    i8 30, label %bb.c
    i8 31, label %bb.d
    i8 49, label %bb.e
    i8 50, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.n unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.k, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.f ], [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionINS_10uhugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.e ], [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionImEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.d ], [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionIjEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.c ], [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionItEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.b ], [ @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8
  store ptr %_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionINS_9hugeint_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, ptr %0, align 8, !tbaa !90
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.h, align 8, !tbaa !91
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.g, align 8, !tbaa !23
  ret void

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn3 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn4, %bb.k ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn3

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_126StringDecompressLocalState4InitERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.15") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nonnull readnone align 1 captures(none) %2, ptr readnone captures(none) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb15ExpressionState10GetContextEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22, !noalias !176 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_126StringDecompressLocalStateE, i64 16), ptr %i.b, align 8, !tbaa !92, !noalias !176
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.a)
          to label %bb.b unwind label %.body.i, !noalias !176

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 2048)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_126StringDecompressLocalStateESt14default_deleteIS2_EED2Ev.exit unwind label %.body.i, !noalias !176

.body.i:                                          ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %i.b) #21, !noalias !176
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25, !noalias !176
  resume { ptr, i32 } %i.e

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_126StringDecompressLocalStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_127CMStringDecompressSerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr readnone captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(360) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !inline_history !94
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = load ptr, ptr %0, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.k), !inline_history !95
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  tail call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.t = load ptr, ptr %0, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !97
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !95
  %i.aa = load ptr, ptr %0, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !94
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_129CMStringDecompressDeserializeERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"class.std::function", align 8     ; 3 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !182
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.14), !noalias !182, !inline_history !103
  call void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.d = load ptr, ptr %1, align 8, !tbaa !92, !noalias !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  resume { ptr, i32 } %i.g

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !96
  store <2 x ptr> %i.n, ptr %i.h, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !11
  store ptr %i.p, ptr %i.l, align 8, !tbaa !11
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %4, align 16, !tbaa !7     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
  %.val = load i8, ptr %i.v, align 8, !tbaa !13
  call fastcc void @_ZN6duckdb12_GLOBAL__N_133GetStringDecompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %5, i8 %.val)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !90
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !23
  %.not.i.i.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !112
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !90
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !90
  store <2 x ptr> %i.y, ptr %i.ab, align 8, !tbaa !90
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.f, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12Deserializer3GetIRKNS_11LogicalTypeEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %1)
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.aj = load i8, ptr %6, align 8, !tbaa !13
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !148
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.al, ptr %i.am, align 1, !tbaa !148
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !90
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !90
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !90
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !90
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  store ptr null, ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33InternalCompressStringUtinyintFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 28)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34InternalCompressStringUsmallintFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 29)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33InternalCompressStringUintegerFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 30)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb32InternalCompressStringUbigintFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 31)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb32InternalCompressStringHugeintFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 50)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33InternalCompressStringUhugeintFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 49)
  invoke void @_ZN6duckdb19CMStringCompressFun11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27InternalDecompressStringFun12GetFunctionsEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.duckdb::vector", align 8    ; 11 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::ScalarFunction", align 8 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !52, !alias.scope !188, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !191
  store i64 28, ptr %i.a, align 8, !tbaa !53, !noalias !191
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !185 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !27, !alias.scope !188, !noalias !185
  %i.d = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !191 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54, !alias.scope !188, !noalias !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false), !noalias !185
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !55, !alias.scope !188, !noalias !185
  %i.f = load ptr, ptr %1, align 8, !tbaa !27, !alias.scope !188, !noalias !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !54, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !191
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
end_hunk_3

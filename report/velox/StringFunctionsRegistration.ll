inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Re2RegexpReplaceINS1_10VectorExecEXadL_ZNS5_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS5_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ESA_EEEES7_NS0_7VarcharENS0_15ConstantCheckerIJSG_SG_EEEJSG_SG_EEEE16unpackInitializeILm2EJS8_S8_EEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSM_ISN_INS0_10BaseVectorEESaIS12_EEDpPKT0_:bb.a
  store ptr %i.ao, ptr %7, align 16, !tbaa !17, !noalias !31967
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !17, !noalias !31967
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !7, !noalias !31967
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16, !noalias !31967
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !17, !noalias !31967
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !17, !noalias !31967
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.276, i64 34, i64 221, ptr nonnull %7)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !31967
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions16Re2RegexpReplaceINS0_4exec10VectorExecEXadL_ZNS1_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS1_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ES7_EEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISH_EERKNS0_4core11QueryConfigEPS6_SQ_SQ_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.276) #50
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.noexc, %_ZNSt19_Optional_base_implIN3re23RE2ESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.s:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.s
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.ax, %bb.r ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.n
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.t
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN8facebook5velox9functions16Re2RegexpReplaceINS0_4exec10VectorExecEXadL_ZNS1_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS1_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ES7_EEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISH_EERKNS0_4core11QueryConfigEPS6_SQ_SQ_.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.q
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.aw, %bb.q ]
  %i.bi = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.u
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

_ZN8facebook5velox9functions16Re2RegexpReplaceINS0_4exec10VectorExecEXadL_ZNS1_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS1_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ES7_EEE10initializeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISH_EERKNS0_4core11QueryConfigEPS6_SQ_SQ_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bm = call noundef i64 @_ZNK8facebook5velox4core11QueryConfig22exprMaxCompiledRegexesEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !31950
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox4core11QueryConfig22exprMaxCompiledRegexesEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.std::function.6744", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #49 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  store i64 31, ptr %i.b, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.c, ptr noundef nonnull align 1 dereferenceable(31) @.str.279, i64 31, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 31, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  store i8 0, ptr %i.e, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 100, ptr %i.a, align 8, !tbaa !368
  %i.f = load ptr, ptr %0, align 8, !tbaa !31970
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EZNK8facebook5velox6config7IConfig3getImEET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E9_M_invokeERKSt9_Any_dataOS5_SS_, ptr %i.h, align 8, !tbaa !31973
  store ptr @_ZNSt17_Function_handlerIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EZNK8facebook5velox6config7IConfig3getImEET_RKS5_RKSC_RKSt8functionIFSC_S5_S5_EEEd_UlSC_T0_E_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation, ptr %i.g, align 8, !tbaa !100
  %i.i = invoke noundef i64 @_ZNK8facebook5velox6config7IConfig3getImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_RKSt8functionIFS4_SA_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #51
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.s = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.u = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i64 %i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.z) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox9functions16Re2RegexpReplaceINS0_4exec10VectorExecEXadL_ZNS1_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS1_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ES7_EEE26ensureProcessedReplacementB5cxx11ERS9_S7_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(148) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.6771", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %6 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.re2::RE2", align 8         ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31916, !range !307, !noundef !308
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.bt, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.d = load i32, ptr %2, align 8, !tbaa !822, !noalias !31975 ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.g, ptr %15, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 8, !tbaa !17
  br label %_ZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31978)
  %i.i = icmp ult i32 %i.d, 13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !31978
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.n, ptr %15, align 8, !tbaa !67, !alias.scope !31978
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.50) #50
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i32 %i.d, 15
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.e, 1
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #49 ; 2 uses
  store ptr %i.r, ptr %15, align 8, !tbaa !7, !alias.scope !31978
  store i64 %i.e, ptr %i.n, align 8, !tbaa !17, !alias.scope !31978
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.e
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %cond = icmp eq i32 %i.d, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load i8, ptr %i.j, align 4, !tbaa !17, !noalias !31978
  store i8 %i.t, ptr %i.s, align 1, !tbaa !17
  br label %_ZNK8facebook5velox10StringView9getStringB5cxx11Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.m, i64 %i.e, i1 false)
  br label %_ZNK8facebook5velox10StringView9getStringB5cxx11Ev.exit

_ZNK8facebook5velox10StringView9getStringB5cxx11Ev.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.u, align 8, !tbaa !16, !alias.scope !31978
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.e
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.w = load atomic i8, ptr @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex acquire, align 8, !noalias !31975
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.h, label %.preheader, !prof !99

bb.h:                                             ; preds = %_ZNK8facebook5velox10StringView9getStringB5cxx11Ev.exit
  %i.y = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex) #24
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3re23RE2C1EPKc(ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex, ptr noundef nonnull @.str.281)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 @__cxa_atexit(ptr nonnull @_ZN3re23RE2D1Ev, ptr nonnull @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex) #24
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.h, %_ZNK8facebook5velox10StringView9getStringB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !31975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.aj = load ptr, ptr %15, align 8, !tbaa !7
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !16  ; 2 uses
  %i.al = invoke noundef zeroext i1 @_ZNK3re23RE25MatchESt17basic_string_viewIcSt11char_traitsIcEEmmNS0_6AnchorEPS4_i(ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kExtractRegex, i64 %i.ak, ptr %i.aj, i64 noundef 0, i64 noundef %i.ak, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 2)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.m, label %bb.az

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK3re23RE220NamedCapturingGroupsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(148) %1)
          to label %bb.n unwind label %bb.ad      ; 2 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !31975
  %.sroa.0.0.copyload.i = load i64, ptr %i.aa, align 16, !tbaa !368 ; 9 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !284 ; 3 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !67
  %i.an = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ao = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.50) #50
          to label %.noexc5 unwind label %.loopexit.split-lp77

.noexc5:                                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ap, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.aq, label %.noexc.i.i.i, label %bb.r

.noexc.i.i.i:                                     ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #50
          to label %.noexc6 unwind label %.loopexit.split-lp77

.noexc6:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ar = add nuw i64 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !96

.noexc9.i.i.i:                                    ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #50
          to label %.noexc7 unwind label %.loopexit.split-lp77

.noexc7:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.r
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #49
          to label %.noexc8 unwind label %.loopexit76 ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.at, ptr %7, align 8, !tbaa !7
  store i64 %.sroa.0.0.copyload.i, ptr %i.ab, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.p
  %i.au = phi ptr [ %i.at, %.noexc8 ], [ %i.ab, %bb.p ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !17
  store i8 %i.av, ptr %i.au, align 1, !tbaa !17
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ac, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.aw, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !340 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.ay, null
  %.pre = load ptr, ptr %7, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !16 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions16Re2RegexpReplaceINS0_4exec10VectorExecEXadL_ZNS1_27prepareRegexpReplacePatternB5cxx11ERKNS0_10StringViewEEEXadL_ZNS1_31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ES7_EEE26ensureProcessedReplacementB5cxx11ERS9_S7_:bb.a

bb.at:                                            ; preds = %bb.as
  %i.do = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ah
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.at
  %i.dq = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !31975
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %11) #24
  %i.ds = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ai
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.du = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.dw = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ad
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dy = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !31975
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !31975
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !31975
  br label %bb.k, !llvm.loop !31991

.loopexit81:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i27
  %lpad.loopexit83 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

.loopexit.split-lp82:                             ; preds = %bb.ak, %.noexc.i.i.i29, %.noexc9.i.i.i28
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.au:                                            ; preds = %.noexc
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.av:                                            ; preds = %bb.aq
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ar
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.ax:                                            ; preds = %bb.as
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ah
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ax
  %i.eg = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.aw
  %.pn26.i = phi { ptr, i32 } [ %i.ec, %bb.aw ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ed, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !31975
  call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %11) #24
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.av
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.eb, %bb.av ] ; 2 uses
  %i.ei = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ai
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.ay
  %i.ek = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.au
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %i.ea, %bb.au ], [ %.pn26.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn26.pn.i, %bb.ay ] ; 2 uses
  %i.em = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ad
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.eo = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %.loopexit81, %.loopexit.split-lp82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %.pn26.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %lpad.loopexit.split-lp84, %.loopexit.split-lp82 ], [ %lpad.loopexit83, %.loopexit81 ], [ %.pn26.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !31975
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !31975
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !31975
  br label %bb.bm

bb.az:                                            ; preds = %bb.l
  %i.eq = load atomic i8, ptr @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex acquire, align 8, !noalias !31975
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ba, label %bb.bd, !prof !99

bb.ba:                                            ; preds = %bb.az
  %i.es = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex) #24
  %.not23.i = icmp eq i32 %i.es, 0
  br i1 %.not23.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN3re23RE2C1EPKc(ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex, ptr noundef nonnull @.str.286)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.et = call i32 @__cxa_atexit(ptr nonnull @_ZN3re23RE2D1Ev, ptr nonnull @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.az
  %i.eu = invoke noundef i32 @_ZN3re23RE213GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_St17basic_string_viewIcS4_E(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex, i64 4, ptr nonnull @.str.287)
          to label %bb.be unwind label %.loopexit.split-lp ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.ev = load atomic i8, ptr @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex acquire, align 8, !noalias !31975
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.bf, label %bb.bi, !prof !99

bb.bf:                                            ; preds = %bb.be
  %i.ex = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex) #24
  %.not24.i = icmp eq i32 %i.ex, 0
  br i1 %.not24.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN3re23RE2C1EPKc(ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex, ptr noundef nonnull @.str.288)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ey = call i32 @__cxa_atexit(ptr nonnull @_ZN3re23RE2D1Ev, ptr nonnull @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.be
  %i.ez = invoke noundef i32 @_ZN3re23RE213GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_St17basic_string_viewIcS4_E(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(148) @_ZZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex, i64 2, ptr nonnull @.str.289)
          to label %bb.bj unwind label %.loopexit.split-lp ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !31975
  br label %_ZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewE.exit

bb.bk:                                            ; preds = %bb.bb
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE13kConvertRegex) #24
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewEE14kUnescapeRegex) #24
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.ae, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.bl, %bb.bk
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %i.fa, %bb.bk ], [ %i.ci, %bb.ad ], [ %i.fb, %bb.bl ], [ %.pn33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %.pn26.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.cj, %bb.af ], [ %lpad.phi80, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !31975
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ac
  %.pn33.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.i, %bb.bm ], [ %i.ch, %bb.ac ]
  %i.fc = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.n
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.bn
  %i.fe = load i64, ptr %i.n, align 8, !tbaa !17
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  resume { ptr, i32 } %.pn33.pn.pn.pn.i

_ZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewE.exit: ; preds = %bb.c, %bb.bj
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !7  ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  %i.fk = load ptr, ptr %15, align 8, !tbaa !7    ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl                ; 2 uses
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewE.exit
  br i1 %i.fm, label %bb.bo, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN8facebook5velox9functions31prepareRegexpReplaceReplacementB5cxx11ERKN3re23RE2ERKNS0_10StringViewE.exit
  br i1 %i.fm, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !16 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  switch i64 %i.fo, label %bb.bq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.fq = load i8, ptr %i.fk, align 1, !tbaa !17
  store i8 %i.fq, ptr %i.fh, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fk, i64 %i.fo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.fr = load i64, ptr %i.fn, align 8, !tbaa !16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !16
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !7
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr
  store i8 0, ptr %i.fu, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fx = load <2 x i64>, ptr %i.fw, align 8, !tbaa !17
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !17
  br label %bb.bs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fy = load i64, ptr %i.fi, align 8, !tbaa !17
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gb = load <2 x i64>, ptr %i.fz, align 8, !tbaa !17
  store <2 x i64> %i.gb, ptr %i.ga, align 8, !tbaa !17
  %.not.i58 = icmp eq ptr %i.fh, null
  br i1 %.not.i58, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fh, ptr %15, align 8, !tbaa !7
  store i64 %i.fy, ptr %i.fl, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fl, ptr %15, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.br, %bb.bs
  %16 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fh, %bb.br ], [ %i.fl, %bb.bs ]
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.gc, align 8, !tbaa !16
  store i8 0, ptr %16, align 1, !tbaa !17
  %i.gd = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !17
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.gi
}

declare void @_ZN3re23RE2C1EPKc(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN3re23RE213GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_St17basic_string_viewIcS4_E(ptr noundef, ptr noundef nonnull align 8 dereferenceable(148), i64, ptr) local_unnamed_addr #1

declare void @_ZN3re23RE27OptionsC1ENS0_13CannedOptionsE(ptr noundef nonnull align 8 dereferenceable(23), i32 noundef) unnamed_addr #1

declare void @_ZN3re23RE2C1ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148), i64, ptr, ptr noundef nonnull align 8 dereferenceable(23)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox6config7IConfig3getImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_RKSt8functionIFS4_SA_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.115", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.115") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !473, !range !307, !noundef !308
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !67
  %i.h = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #50
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !96

.noexc6.i:                                        ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #50
          to label %.noexc15 unwind label %bb.o

.noexc15:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #49
          to label %.noexc16 unwind label %bb.o   ; 2 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.o, ptr %5, align 8, !tbaa !7
  store i64 %i.j, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc16, %bb.b
  %i.p = phi ptr [ %i.o, %.noexc16 ], [ %i.g, %bb.b ] ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !17
  store i8 %i.q, ptr %i.p, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !67
  %i.u = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 8 uses
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.h, label %._crit_edge.i.i17

bb.h:                                             ; preds = %bb.g
  %i.y = icmp slt i64 %i.w, 0
  br i1 %i.y, label %.noexc.i20, label %bb.i

.noexc.i20:                                       ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #50
          to label %.noexc21 unwind label %bb.p

.noexc21:                                         ; preds = %.noexc.i20
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw i64 %i.w, 1                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %.noexc6.i19, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i18, !prof !96

.noexc6.i19:                                      ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #50
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %.noexc6.i19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i18: ; preds = %bb.i
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #49
          to label %.noexc23 unwind label %bb.p   ; 2 uses

.noexc23:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i18
  store ptr %i.ab, ptr %6, align 8, !tbaa !7
  store i64 %i.w, ptr %i.t, align 8, !tbaa !17
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc23, %bb.g
  %i.ac = phi ptr [ %i.ab, %.noexc23 ], [ %i.t, %bb.g ] ; 3 uses
  switch i64 %i.w, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i17
  %i.ad = load i8, ptr %i.u, align 1, !tbaa !17
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt25__throw_bad_function_callv() #50
          to label %.noexc25 unwind label %bb.q

.noexc25:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31973
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNKSt8functionIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEclES5_S5_.exit unwind label %bb.q, !inline_history !31992 ; 2 uses

_ZNKSt8functionIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEclES5_S5_.exit: ; preds = %bb.n
  %i.al = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.t
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEclES5_S5_.exit
  %i.an = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEclES5_S5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.g
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
end_hunk_1

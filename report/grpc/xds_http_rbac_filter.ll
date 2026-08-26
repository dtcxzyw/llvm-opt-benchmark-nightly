Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_http_rbac_filter?download=true
inline.NumInlined: 3570
inline.NumDeleted: 1707
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZZN9grpc_core12_GLOBAL__N_121ParsePermissionToJsonEPK31envoy_config_rbac_v3_PermissionmPNS_16ValidationErrorsEENK3$_0clEPK35envoy_config_rbac_v3_Permission_Set":bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !81
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %envoy_config_rbac_v3_Permission_Set_rules.exit
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, %bb.a, %envoy_config_rbac_v3_Permission_Set_rules.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !34, !alias.scope !205
  %i.s = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %17, ptr noundef nonnull align 8 dereferenceable(24) %8) #27 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA6_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %.lr.ph.i.i unwind label %bb.aa

bb.b:                                             ; preds = %.lr.ph, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit
  %.02148 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.t = load ptr, ptr %1, align 8, !tbaa !208, !nonnull !38, !align !210
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !183  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i64 7, ptr %11, align 8
  store ptr @.str.52, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.v = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.02148, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k
  store i64 %i.x, ptr %12, align 8, !tbaa !18
  store ptr %i.j, ptr %i.l, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i64 1, ptr %13, align 8
  store ptr @.str.14, ptr %i.m, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %10, align 8, !tbaa !43
  %i.z = load i64, ptr %i.n, align 8, !tbaa !45
  store ptr %i.u, ptr %9, align 8, !tbaa !65
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 %i.z, ptr %i.y)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.m

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02148
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !211, !nonnull !38, !align !210
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = add i64 %i.ah, 1
  %i.aj = load ptr, ptr %1, align 8, !tbaa !208, !nonnull !38, !align !210
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_121ParsePermissionToJsonEPK31envoy_config_rbac_v3_PermissionmPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.af, i64 noundef %i.ai, ptr noundef %i.ak)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %bb.f unwind label %bb.p       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.q, align 8, !tbaa !34
  %.not.i31 = icmp eq i8 %i.am, -1
  br i1 %.not.i31, label %bb.i, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.noexc.i unwind label %bb.h, !inline_history !62

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #28, !inline_history !63
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ar = add nuw i64 %.02148, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !212

bb.k:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.o
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.m
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.l
  %.pn23 = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.k
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.as, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn27 = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.az, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.q ], [ %.pn23.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %15, ptr %6, align 8, !tbaa !162
  %i.bg = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i36 unwind label %.body.a ; 0 uses

.noexc.i36:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.bh, align 8, !tbaa !34, !alias.scope !213
  %i.bi = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #27 ; 0 uses
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.bj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.s, !inline_history !71

.body.a:                                          ; preds = %.lr.ph.i.i
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %16) #27
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i36
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 80
  %20 = load i8, ptr %19, align 8, !tbaa !34
  %.not.i.i37 = icmp eq i8 %20, -1
  br i1 %.not.i.i37, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.t, !prof !32

bb.s:                                             ; preds = %.noexc.i36
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #28, !inline_history !71
  unreachable

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.bm)
          to label %.noexc.i.i unwind label %bb.u, !inline_history !216

.noexc.i.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #28, !inline_history !217
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bp = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #29, !inline_history !218
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bu = load i8, ptr %i.r, align 8, !tbaa !34
  %.not.i38 = icmp eq i8 %i.bu, -1
  br i1 %.not.i38, label %_ZN9grpc_core12experimental4JsonD2Ev.exit40, label %bb.v, !prof !32

bb.v:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %.noexc.i39 unwind label %bb.w, !inline_history !62

.noexc.i39:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit40

bb.w:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit40:      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %.noexc.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.bx = load ptr, ptr %8, align 8, !tbaa !101   ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit40, %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i
  %.06.i.i = phi ptr [ %i.ce, %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i ], [ %i.bx, %_ZN9grpc_core12experimental4JsonD2Ev.exit40 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !34
  %.not4.i.i = icmp eq i8 %i.cb, -1
  br i1 %.not4.i.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i, label %bb.x, !prof !32

bb.x:                                             ; preds = %.lr.ph.i.i41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %.06.i.i)
          to label %.noexc.i.i.i unwind label %bb.y, !inline_history !102

.noexc.i.i.i:                                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store i8 -1, ptr %i.ca, align 8, !tbaa !34
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #28, !inline_history !103
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i:    ; preds = %.noexc.i.i.i, %.lr.ph.i.i41
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not.i.i42, label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i41, !llvm.loop !104

_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN9grpc_core12experimental4JsonD2Ev.exit40
  %i.cf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bx, %_ZN9grpc_core12experimental4JsonD2Ev.exit40 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #29, !inline_history !105
  br label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit

_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.aa:                                            ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %18, %.body.a ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.r
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.r ], [ %.pn, %.loopexit ]
  call void @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %.pn27.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_124ParseHeaderMatcherToJsonEPK35envoy_config_route_v3_HeaderMatcherPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %4 = alloca %class.anon.83, align 1             ; 3 uses
  %5 = alloca %class.anon.83, align 1             ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.83, align 1             ; 3 uses
  %7 = alloca %class.anon.83, align 1             ; 3 uses
  %8 = alloca %class.anon.83, align 1             ; 3 uses
  %9 = alloca %class.anon.83, align 1             ; 3 uses
  %10 = alloca %class.anon.83, align 1            ; 3 uses
  %11 = alloca %class.anon.83, align 1            ; 6 uses
  %12 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %13 = alloca %"class.std::map.47", align 8      ; 14 uses
  %14 = alloca [2 x %"struct.std::pair.64"], align 8 ; 15 uses
  %15 = alloca %"class.grpc_core::experimental::Json", align 8 ; 12 uses
  %16 = alloca %"class.grpc_core::experimental::Json", align 8 ; 9 uses
  %17 = alloca %class.anon.83, align 1            ; 3 uses
  %18 = alloca %class.anon.83, align 1            ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %19 = alloca %class.anon.83, align 1            ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.std::map.47", align 8      ; 21 uses
  %21 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %23 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %24 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %27 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %28 = alloca %"class.grpc_core::experimental::Json", align 8 ; 9 uses
  %29 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %struct.upb_StringView, align 8    ; 6 uses
  %34 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %struct.upb_StringView, align 8    ; 6 uses
  %37 = alloca %"class.grpc_core::experimental::Json", align 8 ; 7 uses
  %38 = alloca %"class.grpc_core::experimental::Json", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.d = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store ptr %2, ptr %21, align 8, !tbaa !65
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 5, ptr nonnull @.str.53)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.010.0.copyload11.i = load ptr, ptr %i.i, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload13.i = load i64, ptr %.sroa.9.0..sroa_idx12.i, align 1 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.j, ptr %22, align 8, !tbaa !41, !alias.scope !219
  %i.k = icmp eq ptr %.sroa.010.0.copyload11.i, null
  %i.l = icmp ne i64 %.sroa.9.0.copyload13.i, 0
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !219
  store i64 %.sroa.9.0.copyload13.i, ptr %i.c, align 8, !tbaa !74, !noalias !219
  %i.m = icmp ugt i64 %.sroa.9.0.copyload13.i, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc79 unwind label %bb.h   ; 2 uses

.noexc79:                                         ; preds = %.noexc.i.i
  store ptr %i.n, ptr %22, align 8, !tbaa !43, !alias.scope !219
  %i.o = load i64, ptr %i.c, align 8, !tbaa !74, !noalias !219
  store i64 %i.o, ptr %i.j, align 8, !tbaa !46, !alias.scope !219
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc79 ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %.sroa.9.0.copyload13.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %.sroa.010.0.copyload11.i, align 1, !tbaa !46
  store i8 %i.q, ptr %i.p, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.sroa.010.0.copyload11.i, i64 %.sroa.9.0.copyload13.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.c, align 8, !tbaa !74, !noalias !219 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !45, !alias.scope !219
  %i.t = load ptr, ptr %22, align 8, !tbaa !43, !alias.scope !219
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !219
  %i.v = load i64, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %i.w = icmp eq i64 %i.v, 7
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread210

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.x = load ptr, ptr %22, align 8, !tbaa !43    ; 2 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = xor i32 %i.y, 1751348026
  %i.aa = getelementptr i8, ptr %i.x, i64 3
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = xor i32 %i.ab, 1701668200
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.invoke, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

bb.g:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.i:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread210: ; preds = %bb.f
  %i.ak = icmp ult i64 %i.v, 5
  br i1 %i.ak, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread212, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread210
  %i.al = load ptr, ptr %22, align 8, !tbaa !43   ; 2 uses
  %i.am = load i32, ptr %i.al, align 1
  %i.an = xor i32 %i.am, 1668313703
  %i.ao = getelementptr i8, ptr %i.al, i64 4
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %i.aq, 45
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.invoke, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread212

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.invoke: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %i.aw = phi i64 [ 38, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ 31, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ax = phi ptr [ @.str.57, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ @.str.55, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 %i.aw, ptr nonnull %i.ax)
          to label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread212 unwind label %bb.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread212: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread210, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !34, !alias.scope !222
  %i.az = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %23, ptr noundef nonnull align 8 dereferenceable(32) %22) #27 ; 0 uses
  %i.ba = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA5_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 1 dereferenceable(5) @.str.58, ptr noundef nonnull align 8 dereferenceable(56) %23)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA5_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit unwind label %bb.u ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA5_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread212
  %i.bb = load i8, ptr %i.ay, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.bb, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.j, !prof !32
end_hunk_0
begin_hunk_1_@_ZN9grpc_core12_GLOBAL__N_124ParseHeaderMatcherToJsonEPK35envoy_config_route_v3_HeaderMatcherPNS_16ValidationErrorsE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.br
  %.pn61 = phi { ptr, i32 } [ %i.hy, %bb.br ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.hz, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.cf

bb.bt:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__type__matcher__v3__StringMatcher_msg_init) #27, !srcloc !64
  %i.if = load i32, ptr %i.bk, align 4, !tbaa !188
  %i.ig = icmp eq i32 %i.if, 13
  br i1 %i.ig, label %upb_Message_HasBaseField.exit.then.i187, label %envoy_config_route_v3_HeaderMatcher_string_match.exit

upb_Message_HasBaseField.exit.then.i187:          ; preds = %bb.bt
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0.in.then.val.i188 = load i64, ptr %i.ih, align 4
  %i.ii = inttoptr i64 %.0.in.then.val.i188 to ptr
  br label %envoy_config_route_v3_HeaderMatcher_string_match.exit

envoy_config_route_v3_HeaderMatcher_string_match.exit: ; preds = %upb_Message_HasBaseField.exit.then.i187, %bb.bt
  %.0.in.i186 = phi ptr [ %i.ii, %upb_Message_HasBaseField.exit.then.i187 ], [ null, %bb.bt ]
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_124ParseStringMatcherToJsonEPK35envoy_type_matcher_v3_StringMatcherPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %37, ptr noundef %.0.in.i186, ptr noundef nonnull %2)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %envoy_config_route_v3_HeaderMatcher_string_match.exit
  %i.ij = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA12_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 1 dereferenceable(12) @.str.66, ptr noundef nonnull align 8 dereferenceable(56) %37)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit190 unwind label %bb.bw ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit190: ; preds = %bb.bu
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bz

bb.bv:                                            ; preds = %envoy_config_route_v3_HeaderMatcher_string_match.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #27
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn59 = phi { ptr, i32 } [ %i.il, %bb.bw ], [ %i.ik, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.cf

bb.by:                                            ; preds = %bb.m
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 38, ptr nonnull @.str.67)
          to label %bb.bz unwind label %bb.x

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZN9grpc_core12experimental4JsonD2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.by, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZN9grpc_core12experimental4JsonD2Ev.exit129, %_ZN9grpc_core12experimental4JsonD2Ev.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.in = load i8, ptr %i.im, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.io = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 3 uses
  store i8 0, ptr %i.io, align 8, !tbaa !34, !alias.scope !252
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !252
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(49) %38)
          to label %_ZN9grpc_core12experimental4Json8FromBoolEb.exit191 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #28
  unreachable

_ZN9grpc_core12experimental4Json8FromBoolEb.exit191: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !252
  store i8 %i.in, ptr %38, align 8, !tbaa !39, !alias.scope !252
  store i8 1, ptr %i.io, align 8, !tbaa !34, !alias.scope !252
  %i.ir = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA12_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 1 dereferenceable(12) @.str.68, ptr noundef nonnull align 8 dereferenceable(56) %38)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit193 unwind label %bb.ce ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit193: ; preds = %_ZN9grpc_core12experimental4Json8FromBoolEb.exit191
  %i.is = load i8, ptr %i.io, align 8, !tbaa !34
  %.not.i194 = icmp eq i8 %i.is, -1
  br i1 %.not.i194, label %_ZN9grpc_core12experimental4JsonD2Ev.exit196, label %bb.cb, !prof !32

bb.cb:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %38)
          to label %.noexc.i195 unwind label %bb.cc, !inline_history !62

.noexc.i195:                                      ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit196

bb.cc:                                            ; preds = %bb.cb
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit196:     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA12_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit193, %.noexc.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.iv, align 8, !tbaa !34, !alias.scope !255
  %i.iw = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %20) #27 ; 0 uses
  %i.ix = load ptr, ptr %i.e, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.ix)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.cd, !inline_history !71

bb.cd:                                            ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit196
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #28, !inline_history !71
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  ret void

bb.ce:                                            ; preds = %_ZN9grpc_core12experimental4Json8FromBoolEb.exit191
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.bb, %.body, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.x, %bb.w
  %.pn75.pn = phi { ptr, i32 } [ %i.ja, %bb.ce ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn71, %bb.af ], [ %.pn69, %.body ], [ %i.ft, %bb.bb ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn59, %bb.bx ], [ %i.co, %bb.x ], [ %.pn.pn.pn, %bb.w ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  resume { ptr, i32 } %.pn75.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_122ParsePathMatcherToJsonEPK33envoy_type_matcher_v3_PathMatcherPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %4 = alloca %class.anon.83, align 1             ; 3 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %6 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %7 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %8 = alloca %"class.std::map.47", align 8       ; 13 uses
  %9 = alloca [1 x %"struct.std::pair.64"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %2, ptr %6, align 8, !tbaa !65
  tail call void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 5, ptr nonnull @.str.74)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__type__matcher__v3__StringMatcher_msg_init) #27, !srcloc !64
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !188
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %envoy_type_matcher_v3_PathMatcher_path.exit, label %envoy_type_matcher_v3_PathMatcher_path.exit.thread

envoy_type_matcher_v3_PathMatcher_path.exit:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.in.then.val.i = load i64, ptr %i.d, align 4 ; 2 uses
  %i.e = icmp eq i64 %.0.in.then.val.i, 0
  br i1 %i.e, label %envoy_type_matcher_v3_PathMatcher_path.exit.thread, label %bb.d

envoy_type_matcher_v3_PathMatcher_path.exit.thread: ; preds = %bb.a, %envoy_type_matcher_v3_PathMatcher_path.exit
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 17, ptr nonnull @.str.75)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %envoy_type_matcher_v3_PathMatcher_path.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %envoy_type_matcher_v3_PathMatcher_path.exit.thread
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %envoy_type_matcher_v3_PathMatcher_path.exit
  %i.g = inttoptr i64 %.0.in.then.val.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_124ParseStringMatcherToJsonEPK35envoy_type_matcher_v3_StringMatcherPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %i.g, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA5_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull align 1 dereferenceable(5) @.str.76, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %.lr.ph.i.i unwind label %bb.l

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.h, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.h, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %8, ptr %5, align 8, !tbaa !162
  %i.m = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i unwind label %.body.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.n, align 8, !tbaa !34, !alias.scope !258
  %i.o = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %8) #27 ; 0 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.p)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.f, !inline_history !71

.body.a:                                          ; preds = %.lr.ph.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %9) #27
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %12 = load i8, ptr %11, align 8, !tbaa !34
  %.not.i.i16 = icmp eq i8 %12, -1
  br i1 %.not.i.i16, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.g, !prof !32

bb.f:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #28, !inline_history !71
  unreachable

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.noexc.i.i unwind label %bb.h, !inline_history !216

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28, !inline_history !217
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.v = load ptr, ptr %9, align 8, !tbaa !43     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !46
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29, !inline_history !218
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.i, !prof !32

bb.i:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %.noexc.i17 unwind label %bb.j, !inline_history !62

.noexc.i17:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit:        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %.noexc.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.l
  %.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %10, %.body.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.p

bb.n:                                             ; preds = %bb.b, %_ZN9grpc_core12experimental4JsonD2Ev.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #28
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.p:                                             ; preds = %bb.m, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn.pn, %bb.m ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_120ParseCidrRangeToJsonEPK30envoy_config_core_v3_CidrRange(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.83, align 1             ; 3 uses
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::map.47", align 8       ; 13 uses
  %5 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.010.0.copyload11.i = load ptr, ptr %i.g, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload13.i = load i64, ptr %.sroa.9.0..sroa_idx12.i, align 1 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !41, !alias.scope !261
  %i.i = icmp eq ptr %.sroa.010.0.copyload11.i, null
  %i.j = icmp ne i64 %.sroa.9.0.copyload13.i, 0
  %or.cond.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !261
  store i64 %.sroa.9.0.copyload13.i, ptr %i.a, align 8, !tbaa !74, !noalias !261
  %i.k = icmp ugt i64 %.sroa.9.0.copyload13.i, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.k   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i.i
  store ptr %i.l, ptr %6, align 8, !tbaa !43, !alias.scope !261
  %i.m = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !261
  store i64 %i.m, ptr %i.h, align 8, !tbaa !46, !alias.scope !261
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc14, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc14 ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %.sroa.9.0.copyload13.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %.sroa.010.0.copyload11.i, align 1, !tbaa !46
  store i8 %i.o, ptr %i.n, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %.sroa.010.0.copyload11.i, i64 %.sroa.9.0.copyload13.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !261 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !45, !alias.scope !261
  %i.r = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !261
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !261
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !34, !alias.scope !264
  %i.u = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #27 ; 0 uses
  %i.v = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA14_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.77, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA14_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit unwind label %bb.l ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA14_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit: ; preds = %bb.e
  %i.w = load i8, ptr %i.t, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.w, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA14_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc.i16 unwind label %bb.g, !inline_history !62

.noexc.i16:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit:        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA14_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit, %.noexc.i16
  %i.z = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt32Value_msg_init) #27, !srcloc !64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ag = inttoptr i64 %i.ae to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN9grpc_core12experimental4Json10FromNumberIjEENSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EES1_E4typeES4_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::experimental::Json") align 8 %7, i32 noundef %i.ai)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit
  %i.aj = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA10_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 dereferenceable(10) @.str.78, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA10_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit unwind label %bb.n ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA10_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !34
  %.not.i18 = icmp eq i8 %i.al, -1
  br i1 %.not.i18, label %_ZN9grpc_core12experimental4JsonD2Ev.exit20, label %bb.i, !prof !32

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA10_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %.noexc.i19 unwind label %bb.j, !inline_history !62

.noexc.i19:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit20

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit20:      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA10_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit, %.noexc.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread

bb.k:                                             ; preds = %.noexc.i.i, %.noexc.i
end_hunk_1
begin_hunk_2_@_ZN9grpc_core12_GLOBAL__N_120ParseCidrRangeToJsonEPK30envoy_config_core_v3_CidrRange:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.l:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  %i.aq = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.h
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.as = load i64, ptr %i.h, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.m:                                             ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn10 = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.q

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZN9grpc_core12experimental4JsonD2Ev.exit20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.aw, align 8, !tbaa !34, !alias.scope !267
  %i.ax = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #27 ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ay)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.p, !inline_history !71

bb.p:                                             ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #28, !inline_history !71
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.q:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.pn10, %bb.o ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12experimental4Json10FromNumberIjEENSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EES1_E4typeES4_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::experimental::Json") align 8 %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.grpc_core::experimental::Json::NumberValue", align 8 ; 11 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.d = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %1, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !41, !alias.scope !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !270
  store i64 %i.g, ptr %i.a, align 8, !tbaa !74, !noalias !270
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.f    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i.i
  store ptr %i.k, ptr %2, align 8, !tbaa !43, !alias.scope !270
  %i.l = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !270
  store i64 %i.l, ptr %i.i, align 8, !tbaa !46, !alias.scope !270
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc3 ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.c, align 8, !tbaa !46
  store i8 %i.n, ptr %i.m, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.c, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !270 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !45, !alias.scope !270
  %i.q = load ptr, ptr %2, align 8, !tbaa !43, !alias.scope !270
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !270
  %i.s = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #27 ; 0 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_ZN9grpc_core12experimental4Json11NumberValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.i, align 8, !tbaa !46
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZN9grpc_core12experimental4Json11NumberValueD2Ev.exit

_ZN9grpc_core12experimental4Json11NumberValueD2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %.noexc.i.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #27
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_126ParseMetadataMatcherToJsonEPK37envoy_type_matcher_v3_MetadataMatcher(ptr dead_on_unwind noalias nonnull writable align 8 %0, i8 %.9.val) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.83, align 1             ; 3 uses
  %2 = alloca %class.anon.83, align 1             ; 3 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %class.anon.83, align 1             ; 3 uses
  %5 = alloca %"class.std::map.47", align 8       ; 13 uses
  %6 = alloca [1 x %"struct.std::pair.64"], align 8 ; 10 uses
  %7 = alloca %"class.grpc_core::experimental::Json", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !34, !alias.scope !273
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !273
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %_ZN9grpc_core12experimental4Json8FromBoolEb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZN9grpc_core12experimental4Json8FromBoolEb.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !273
  store i8 %.9.val, ptr %7, align 8, !tbaa !39, !alias.scope !273
  store i8 1, ptr %i.a, align 8, !tbaa !34, !alias.scope !273
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA7_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 1 dereferenceable(7) @.str.79, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %.lr.ph.i.i unwind label %bb.h

.lr.ph.i.i:                                       ; preds = %_ZN9grpc_core12experimental4Json8FromBoolEb.exit
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %5, ptr %3, align 8, !tbaa !162
  %i.i = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i unwind label %.body.a ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.j, align 8, !tbaa !34, !alias.scope !276
  %i.k = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #27 ; 0 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.l)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.c, !inline_history !71

.body.a:                                          ; preds = %.lr.ph.i.i
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #27
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %10 = load i8, ptr %9, align 8, !tbaa !34
  %.not.i.i11 = icmp eq i8 %10, -1
  br i1 %.not.i.i11, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.d, !prof !32

bb.c:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #28, !inline_history !71
  unreachable

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %.noexc.i.i unwind label %bb.e, !inline_history !216

.noexc.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28, !inline_history !217
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.r = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !46
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29, !inline_history !218
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = load i8, ptr %i.a, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.w, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %.noexc.i12 unwind label %bb.g, !inline_history !62

.noexc.i12:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit:        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %.noexc.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.h:                                             ; preds = %_ZN9grpc_core12experimental4Json8FromBoolEb.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.h
  %.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %8, %.body.a ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_124ParseStringMatcherToJsonEPK35envoy_type_matcher_v3_StringMatcherPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %4 = alloca %class.anon.83, align 1             ; 3 uses
  %5 = alloca %class.anon.83, align 1             ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.83, align 1             ; 3 uses
  %7 = alloca %class.anon.83, align 1             ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %class.anon.83, align 1             ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %class.anon.83, align 1             ; 3 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::map.47", align 8      ; 17 uses
  %11 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %18 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.grpc_core::experimental::Json", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !188
  switch i32 %i.k, label %bb.as [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 3, label %bb.u
    i32 5, label %upb_Message_HasBaseField.exit.then.i
    i32 7, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.010.0.copyload11.i = load ptr, ptr %i.l, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload13.i = load i64, ptr %.sroa.9.0..sroa_idx12.i, align 4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !41, !alias.scope !279
  %i.n = icmp eq ptr %.sroa.010.0.copyload11.i, null
  %i.o = icmp ne i64 %.sroa.9.0.copyload13.i, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !279
  store i64 %.sroa.9.0.copyload13.i, ptr %i.d, align 8, !tbaa !74, !noalias !279
  %i.p = icmp ugt i64 %.sroa.9.0.copyload13.i, 15
  br i1 %i.p, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc43 unwind label %bb.j   ; 2 uses

.noexc43:                                         ; preds = %.noexc.i.i
  store ptr %i.q, ptr %12, align 8, !tbaa !43, !alias.scope !279
  %i.r = load i64, ptr %i.d, align 8, !tbaa !74, !noalias !279
  store i64 %i.r, ptr %i.m, align 8, !tbaa !46, !alias.scope !279
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc43, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc43 ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %.sroa.9.0.copyload13.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %.sroa.010.0.copyload11.i, align 1, !tbaa !46
  store i8 %i.t, ptr %i.s, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.sroa.010.0.copyload11.i, i64 %.sroa.9.0.copyload13.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !74, !noalias !279 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !45, !alias.scope !279
  %i.w = load ptr, ptr %12, align 8, !tbaa !43, !alias.scope !279
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !279
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store i8 0, ptr %i.y, align 8, !tbaa !34, !alias.scope !282
  %i.z = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #27 ; 0 uses
  %i.aa = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA6_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA6_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit unwind label %bb.k ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA6_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit: ; preds = %bb.f
  %i.ab = load i8, ptr %i.y, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.g, !prof !32

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA6_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %.noexc.i45 unwind label %bb.h, !inline_history !62

.noexc.i45:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit:        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRA6_KcS8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_.exit, %.noexc.i45
  %i.ae = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.at

bb.i:                                             ; preds = %bb.as
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.j:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.k:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #27
  %i.al = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.k
  %i.an = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.j
  %.pn37 = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.az

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.010.0.copyload11.i54 = load ptr, ptr %i.ap, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx12.i55 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload13.i56 = load i64, ptr %.sroa.9.0..sroa_idx12.i55, align 4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.aq, ptr %14, align 8, !tbaa !41, !alias.scope !285
  %i.ar = icmp eq ptr %.sroa.010.0.copyload11.i54, null
  %i.as = icmp ne i64 %.sroa.9.0.copyload13.i56, 0
end_hunk_2
begin_hunk_3_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA4_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !45
  %i.k = load ptr, ptr %0, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 -1, ptr %i.n, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.m, ptr %4, align 8, !tbaa !172
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEC1EOSQ_EUlOT_T0_E_JSt7variantIJS4_bS8_SE_SM_SP_EEEEDcOSU_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #28
  unreachable

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !34    ; 2 uses
  store i8 %i.r, ptr %i.n, align 8, !tbaa !34
  switch i8 %i.r, label %bb.f [
    i8 0, label %_ZN9grpc_core12experimental4JsonC2EOS1_.exit
    i8 -1, label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i
  ], !prof !140

bb.f:                                             ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc3.i.i unwind label %bb.g

.noexc3.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i: ; preds = %.noexc3.i.i, %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i
  store i8 0, ptr %i.q, align 8, !tbaa !34
  br label %_ZN9grpc_core12experimental4JsonC2EOS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN9grpc_core12experimental4JsonC2EOS1_.exit:     ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i, %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !335    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !337  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !41
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !74
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !43
  %i.j = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.j, ptr %i.e, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !46
  store i8 %i.l, ptr %i.k, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_123ParseRegexMatcherToJsonEPK34envoy_type_matcher_v3_RegexMatcher(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(address_is_null) %.16.val, i64 %.24.val) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.83, align 1             ; 3 uses
  %2 = alloca %class.anon.83, align 1             ; 3 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::map.47", align 8       ; 13 uses
  %5 = alloca [1 x %"struct.std::pair.64"], align 8 ; 10 uses
  %6 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !41, !alias.scope !338
  %i.c = icmp eq ptr %.16.val, null
  %i.d = icmp ne i64 %.24.val, 0
  %or.cond.i.i = and i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !338
  store i64 %.24.val, ptr %i.a, align 8, !tbaa !74, !noalias !338
  %i.e = icmp ugt i64 %.24.val, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !43, !alias.scope !338
  %i.g = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !338
  store i64 %i.g, ptr %i.b, align 8, !tbaa !46, !alias.scope !338
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %.24.val, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %.16.val, align 1, !tbaa !46
  store i8 %i.i, ptr %i.h, align 1, !tbaa !46
  br label %_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.16.val, i64 %.24.val, i1 false)
  br label %_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit

_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !338 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !45, !alias.scope !338
  %i.l = load ptr, ptr %7, align 8, !tbaa !43, !alias.scope !338
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !338
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !34, !alias.scope !341
  %i.o = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #27 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA6_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 1 dereferenceable(6) @.str.71, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %.lr.ph.i.i unwind label %bb.j

.lr.ph.i.i:                                       ; preds = %_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %4, ptr %3, align 8, !tbaa !162
  %i.u = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i11 unwind label %.body.a ; 0 uses

.noexc.i11:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.v, align 8, !tbaa !34, !alias.scope !344
  %i.w = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #27 ; 0 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.x)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.e, !inline_history !71

.body.a:                                          ; preds = %.lr.ph.i.i
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #27
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i11
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %10 = load i8, ptr %9, align 8, !tbaa !34
  %.not.i.i12 = icmp eq i8 %10, -1
  br i1 %.not.i.i12, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.f, !prof !32

bb.e:                                             ; preds = %.noexc.i11
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28, !inline_history !71
  unreachable

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %.noexc.i.i13 unwind label %bb.g, !inline_history !216

.noexc.i.i13:                                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28, !inline_history !217
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i13, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.ad = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29, !inline_history !218
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = load i8, ptr %i.n, align 8, !tbaa !34
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit, label %bb.h, !prof !32

bb.h:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %.noexc.i14 unwind label %bb.i, !inline_history !62

.noexc.i14:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit:        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %.noexc.i14
  %i.al = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit
  %i.an = load i64, ptr %i.b, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.j:                                             ; preds = %_ZN9grpc_core20UpbStringToStdStringB5cxx11ERK14upb_StringView.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %8, %.body.a ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #27
  %i.aq = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.loopexit
  %i.as = load i64, ptr %i.b, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRA5_KcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !162
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #31 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA5_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !164
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 5 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.p) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.x = sub i64 %i.p, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.z = phi i1 [ %i.y, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !56
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i.i, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %.noexc.i.i.i.i unwind label %bb.m, !inline_history !167

.noexc.i.i.i.i:                                   ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #28, !inline_history !168
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i.i:  ; preds = %.noexc.i.i.i.i, %bb.k
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29, !inline_history !169
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #29, !inline_history !170
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i
  %.sroa.3.015 = phi i8 [ 1, %.thread ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  %.sroa.010.014 = phi ptr [ %i.a, %.thread ], [ %i.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.014, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.015, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA5_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.83, align 1             ; 3 uses
  %4 = alloca %class.anon, align 8                ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.c, ptr %i.a, align 8, !tbaa !74
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43
  %i.f = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.f, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

end_hunk_3
begin_hunk_4_@"_ZZN9grpc_core12_GLOBAL__N_120ParsePrincipalToJsonEPK30envoy_config_rbac_v3_PrincipalmPNS_16ValidationErrorsEENK3$_0clEPK34envoy_config_rbac_v3_Principal_Set":bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !81
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %envoy_config_rbac_v3_Principal_Set_ids.exit
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, %bb.a, %envoy_config_rbac_v3_Principal_Set_ids.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !34, !alias.scope !357
  %i.s = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISL_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %17, ptr noundef nonnull align 8 dereferenceable(24) %8) #27 ; 0 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IRA4_KcS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull align 1 dereferenceable(4) @.str.101, ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %.lr.ph.i.i unwind label %bb.aa

bb.b:                                             ; preds = %.lr.ph, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit
  %.02148 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.t = load ptr, ptr %1, align 8, !tbaa !360, !nonnull !38, !align !210
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !183  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i64 5, ptr %11, align 8
  store ptr @.str.100, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.v = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.02148, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k
  store i64 %i.x, ptr %12, align 8, !tbaa !18
  store ptr %i.j, ptr %i.l, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i64 1, ptr %13, align 8
  store ptr @.str.14, ptr %i.m, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %10, align 8, !tbaa !43
  %i.z = load i64, ptr %i.n, align 8, !tbaa !45
  store ptr %i.u, ptr %9, align 8, !tbaa !65
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 %i.z, ptr %i.y)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.m

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02148
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !362, !nonnull !38, !align !210
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = add i64 %i.ah, 1
  %i.aj = load ptr, ptr %1, align 8, !tbaa !360, !nonnull !38, !align !210
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_120ParsePrincipalToJsonEPK30envoy_config_rbac_v3_PrincipalmPNS_16ValidationErrorsE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.af, i64 noundef %i.ai, ptr noundef %i.ak)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %bb.f unwind label %bb.p       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.q, align 8, !tbaa !34
  %.not.i31 = icmp eq i8 %i.am, -1
  br i1 %.not.i31, label %bb.i, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.noexc.i unwind label %bb.h, !inline_history !62

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #28, !inline_history !63
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ar = add nuw i64 %.02148, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !363

bb.k:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.o
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.m
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.l
  %.pn23 = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.k
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.as, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn27 = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.az, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.q ], [ %.pn23.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %15, ptr %6, align 8, !tbaa !162
  %i.bg = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i36 unwind label %.body.a ; 0 uses

.noexc.i36:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.bh, align 8, !tbaa !34, !alias.scope !364
  %i.bi = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #27 ; 0 uses
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.bj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader unwind label %bb.s, !inline_history !71

.body.a:                                          ; preds = %.lr.ph.i.i
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %16) #27
  br label %.loopexit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %.noexc.i36
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 80
  %20 = load i8, ptr %19, align 8, !tbaa !34
  %.not.i.i37 = icmp eq i8 %20, -1
  br i1 %.not.i.i37, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.t, !prof !32

bb.s:                                             ; preds = %.noexc.i36
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #28, !inline_history !71
  unreachable

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.bm)
          to label %.noexc.i.i unwind label %bb.u, !inline_history !216

.noexc.i.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #28, !inline_history !217
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.bp = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #29, !inline_history !218
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bu = load i8, ptr %i.r, align 8, !tbaa !34
  %.not.i38 = icmp eq i8 %i.bu, -1
  br i1 %.not.i38, label %_ZN9grpc_core12experimental4JsonD2Ev.exit40, label %bb.v, !prof !32

bb.v:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %.noexc.i39 unwind label %bb.w, !inline_history !62

.noexc.i39:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit40

bb.w:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #28, !inline_history !63
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit40:      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %.noexc.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.bx = load ptr, ptr %8, align 8, !tbaa !101   ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit40, %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i
  %.06.i.i = phi ptr [ %i.ce, %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i ], [ %i.bx, %_ZN9grpc_core12experimental4JsonD2Ev.exit40 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !34
  %.not4.i.i = icmp eq i8 %i.cb, -1
  br i1 %.not4.i.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i, label %bb.x, !prof !32

bb.x:                                             ; preds = %.lr.ph.i.i41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %.06.i.i)
          to label %.noexc.i.i.i unwind label %bb.y, !inline_history !102

.noexc.i.i.i:                                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store i8 -1, ptr %i.ca, align 8, !tbaa !34
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #28, !inline_history !103
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i:    ; preds = %.noexc.i.i.i, %.lr.ph.i.i41
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not.i.i42, label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i41, !llvm.loop !104

_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN9grpc_core12experimental4JsonD2Ev.exit40
  %i.cf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bx, %_ZN9grpc_core12experimental4JsonD2Ev.exit40 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #29, !inline_history !105
  br label %_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit

_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core12experimental4JsonES2_EvT_S4_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.aa:                                            ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.body.a, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %18, %.body.a ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.r
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.r ], [ %.pn, %.loopexit ]
  call void @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %.pn27.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.122", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !367

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %1, ptr %2, align 8, !tbaa !368, !alias.scope !370
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.83, align 1             ; 3 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %0, ptr %6, align 8, !tbaa !162
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #31 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !368
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !41
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !43
  %i.m = load i64, ptr %i.g, align 8, !tbaa !46
  store i64 %i.m, ptr %i.e, align 8, !tbaa !46
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !45
  store ptr %i.g, ptr %i.d, align 8, !tbaa !43
  store i64 0, ptr %i.p, align 8, !tbaa !45
  store i8 0, ptr %i.g, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, i8 0, i64 56, i1 false)
  store ptr %i.a, ptr %i.o, align 8, !tbaa !164
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

end_hunk_4

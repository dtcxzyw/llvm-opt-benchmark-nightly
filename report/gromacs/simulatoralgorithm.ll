Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simulatoralgorithm?download=true
inline.NumInlined: 4332
inline.NumDeleted: 2491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx19DomDecHelperBuilder5buildIJRKbRKiPNS_19StatePropagatorDataEPNS_14TopologyHolderERP8_IO_FILERP9t_commrecRKNS_8MDLoggerERPNS_11ConstraintsERPK10t_inputrecRKNS_18MDModulesNotifiersERPNS_7MDAtomsERP6t_nrnbRP13gmx_wallcycleRP10t_forcerecRPNS_19VirtualSitesHandlerERPNS_10ImdSessionERP6pull_tEEESt10unique_ptrINS_12DomDecHelperESt14default_deleteIS1F_EEDpOT_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.i = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #29
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  %i.j = load i8, ptr %2, align 1, !tbaa !656, !range !250, !noalias !1246, !noundef !242
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load i32, ptr %3, align 4, !tbaa !391, !noalias !1246
  %i.m = load ptr, ptr %4, align 8, !tbaa !194, !noalias !1246
  %i.n = load ptr, ptr %5, align 8, !tbaa !195, !noalias !1246
  %i.o = load ptr, ptr %6, align 8, !tbaa !267, !noalias !1246
  %i.p = load ptr, ptr %7, align 8, !tbaa !173, !noalias !1246
  %i.q = load ptr, ptr %9, align 8, !tbaa !663, !noalias !1246
  %i.r = load ptr, ptr %10, align 8, !tbaa !662, !noalias !1246
  %i.s = load ptr, ptr %12, align 8, !tbaa !653, !noalias !1246
  %i.t = load ptr, ptr %13, align 8, !tbaa !1247, !noalias !1246
  %i.u = load ptr, ptr %14, align 8, !tbaa !742, !noalias !1246
  %i.v = load ptr, ptr %15, align 8, !tbaa !744, !noalias !1246
  %i.w = load ptr, ptr %16, align 8, !tbaa !767, !noalias !1246
  %i.x = load ptr, ptr %17, align 8, !tbaa !1248, !noalias !1246
  %i.y = load ptr, ptr %18, align 8, !tbaa !666, !noalias !1246
  invoke void @_ZN3gmx12DomDecHelperC1EbiPNS_19StatePropagatorDataEPNS_14TopologyHolderEP8_IO_FILEP9t_commrecRKNS_8MDLoggerEPNS_11ConstraintsEPK10t_inputrecRKNS_18MDModulesNotifiersEPNS_7MDAtomsEP6t_nrnbP13gmx_wallcycleP10t_forcerecPNS_19VirtualSitesHandlerEPNS_10ImdSessionEP6pull_tOSt6vectorISt8functionIFvvEESaIS11_EE(ptr noundef nonnull align 8 dereferenceable(168) %i.i, i1 noundef zeroext %i.k, i32 noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.q, ptr noundef %i.r, ptr noundef nonnull align 1 %11, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.n unwind label %bb.b, !noalias !1246

bb.b:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 168) #28, !noalias !1246
  br label %.body

bb.c:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.030.034 = phi ptr [ %i.b, %.lr.ph ], [ %i.aq, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.aa = load ptr, ptr %.sroa.030.034, align 8, !tbaa !1250 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::function.304") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !218 ; 6 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !219
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !395
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !395
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !30
  %.not.i.i.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false), !tbaa.struct !396
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !30
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread

_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread: ; preds = %bb.e, %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.e, align 8, !tbaa !218
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.k

_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i27 = icmp eq ptr %.pre, null
  br i1 %.not.i27, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.an = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.030.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

bb.j:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit29

bb.k:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i28 = icmp eq ptr %i.at, null
  br i1 %.not.i28, label %_ZNSt14_Function_baseD2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit29 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit29:                 ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %.body

bb.n:                                             ; preds = %.noexc
  store ptr %i.i, ptr %0, align 8, !tbaa !216, !alias.scope !1246
  %i.ax = load ptr, ptr %19, align 8, !tbaa !217  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i ], [ %i.ax, %bb.n ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i:  ; preds = %bb.o, %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.az
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvvEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !217
  br label %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.n
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !219
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #28
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit

_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.b, %_ZNSt14_Function_baseD2Ev.exit29
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit29 ], [ %i.bm, %bb.r ], [ %i.z, %bb.b ]
  call void @_ZNSt6vectorISt8functionIFvvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN3gmx23CheckpointHelperBuilder20setCheckpointHandlerESt10unique_ptrINS_17CheckpointHandlerESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef align 8) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx23CheckpointHelperBuilder5buildIJRKlPNS_17TrajectoryElementERP8_IO_FILERP9t_commrecRP18ObservablesHistoryRP23gmx_walltime_accountingRP7t_stateRKbEEESt10unique_ptrINS_16CheckpointHelperESt14default_deleteISO_EEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.35") align 8 %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::unique_ptr.259", align 8 ; 6 uses
  %11 = alloca %"class.std::vector.392", align 8  ; 9 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::vector.254", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 1, ptr %i.a, align 8, !tbaa !1255
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1256, !range !250, !noundef !242
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !648
  call void @_ZNK3gmx24ReadCheckpointDataHolder4keysB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.392") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.f)
  %i.g = load ptr, ptr %11, align 8, !tbaa !731   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !731  ; 3 uses
  %.not71 = icmp eq ptr %i.g, %i.i
  br i1 %.not71, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split, label %.lr.ph.i.i.i34

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.g, %bb.n ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !169 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !171
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !768
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !769
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.p

.lr.ph.i.i.i34:                                   ; preds = %.lr.ph, %bb.n
  %.sroa.052.072 = phi ptr [ %i.bm, %bb.n ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.052.072, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !170  ; 4 uses
  %i.aa = load ptr, ptr %.sroa.052.072, align 8   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i34
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i34 ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i34 ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !170 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ac) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !169
  %i.ag = call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.ah = sub i64 %i.ac, %i.z
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !688 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3gmx23ICheckpointHelperClientEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !1251

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3gmx23ICheckpointHelperClientEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.aj, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3gmx23ICheckpointHelperClientEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.z) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !169
  %i.ap = call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ao, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.aq = sub i64 %i.z, %i.al
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split, label %bb.n

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3gmx23ICheckpointHelperClientEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %.lr.ph
  %.sroa.052.0.lcssa70.split = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.052.072, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3gmx23ICheckpointHelperClientEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %.sroa.052.072, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit ]
  %i.as = call ptr @__cxa_allocate_exception(i64 24) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.79, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.052.0.lcssa70.split)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.80)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx15CheckpointErrorE, i64 16), ptr %i.as, align 8, !tbaa !180
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN3gmx15CheckpointErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #33
          to label %bb.y unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread.split
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn28 = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.au, %bb.j ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.k ], [ true, %bb.j ]    ; 2 uses
  %i.aw = load ptr, ptr %13, align 8, !tbaa !169  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !171
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bb = load ptr, ptr %14, align 8, !tbaa !169  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %14, align 8, !tbaa !169  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !171
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !171
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bl) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.1, label %bb.m, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.1, label %bb.m, label %bb.o

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread
  %.pn28.pn.pn58.ph = phi { ptr, i32 } [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn28.pn.pn58 = phi { ptr, i32 } [ %.pn28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn28.pn.pn58.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.as) #30
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.052.072, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.i
  br i1 %.not, label %.lr.ph.i.i.i, label %.lr.ph.i.i.i34

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.m
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn58, %bb.m ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not4.i.i.i39 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i39, label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EE11_M_allocateEm.exit.i.i, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.p, %.lr.ph.i.i.i40
  %.06.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i40 ], [ 0, %bb.p ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i40 ], [ %i.bo, %bb.p ]
  %i.bq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #34 ; 2 uses
  %i.br = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i.i.i41, label %_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i40, !llvm.loop !1252

_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i40
  %i.bs = icmp samesign ugt i64 %.06.i.i.i, 230584300921369394
  br i1 %i.bs, label %.noexc.i, label %_ZNSt15__new_allocatorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEE8allocateEmPKv.exit.i.i.i

.noexc.i:                                         ; preds = %_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #33
  unreachable

_ZNSt15__new_allocatorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St18input_iterator_tag.exit.i.i
  %i.bt = mul nuw nsw i64 %i.br, 40
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #29
  br label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEE8allocateEmPKv.exit.i.i.i, %bb.p
  %.0.lcssa.i912.i.i = phi i64 [ 0, %bb.p ], [ %i.br, %_ZNSt15__new_allocatorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEE8allocateEmPKv.exit.i.i.i ] ; 2 uses
  %i.bv = phi ptr [ null, %bb.p ], [ %i.bu, %_ZNSt15__new_allocatorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.bv, ptr %15, align 8, !tbaa !212
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %.0.lcssa.i912.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !214
  %i.by = invoke noundef ptr @_ZSt16__do_uninit_copyISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEPSt5tupleIJS7_SB_EEET0_T_SI_SH_(ptr %i.bo, ptr nonnull %i.bp, ptr noundef %i.bv)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i7.i, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.idx = mul nuw nsw i64 %.0.lcssa.i912.i.i, 40
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %.idx) #28
  br label %.body

bb.s:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EE11_M_allocateEm.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !213
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ca = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc unwind label %bb.x     ; 3 uses

.noexc:                                           ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !209, !noalias !1257
  store i64 %i.cc, ptr %10, align 8, !tbaa !209, !noalias !1257
  store ptr null, ptr %i.cb, align 8, !tbaa !209, !noalias !1257
  %i.cd = load i64, ptr %2, align 8, !tbaa !398, !noalias !1257
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %3, align 8, !tbaa !746, !noalias !1257
  %i.cg = load ptr, ptr %4, align 8, !tbaa !267, !noalias !1257
  %i.ch = load ptr, ptr %5, align 8, !tbaa !173, !noalias !1257
  %i.ci = load ptr, ptr %6, align 8, !tbaa !664, !noalias !1257
  %i.cj = load ptr, ptr %7, align 8, !tbaa !743, !noalias !1257
  %i.ck = load ptr, ptr %8, align 8, !tbaa !687, !noalias !1257
  %i.cl = load i8, ptr %9, align 1, !tbaa !656, !range !250, !noalias !1257, !noundef !242
  %i.cm = trunc nuw i8 %i.cl to i1
  invoke void @_ZN3gmx16CheckpointHelperC1EOSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_23ICheckpointHelperClientEEESaISB_EESt10unique_ptrINS_17CheckpointHandlerESt14default_deleteISG_EEiPNS_17TrajectoryElementEP8_IO_FILEPK9t_commrecP18ObservablesHistoryP23gmx_walltime_accountingP7t_stateb(ptr noundef nonnull align 8 dereferenceable(120) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 %10, i32 noundef %i.ce, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef %i.ck, i1 noundef zeroext %i.cm)
          to label %bb.t unwind label %bb.u, !noalias !1257

bb.t:                                             ; preds = %.noexc
  store ptr %i.ca, ptr %0, align 8, !tbaa !207, !alias.scope !1257
  %i.cn = load ptr, ptr %10, align 8, !tbaa !209, !noalias !1257 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %bb.v, label %_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i.i: ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 24) #28, !noalias !1257
  br label %bb.v

bb.u:                                             ; preds = %.noexc
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %10, align 8, !tbaa !209, !noalias !1257 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.cp, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit14.i, label %_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i13.i

_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i13.i: ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 24) #28, !noalias !1257
  br label %_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit14.i

_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit14.i: ; preds = %_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i13.i, %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 120) #28, !noalias !1257
  br label %.body42

bb.v:                                             ; preds = %_ZNKSt14default_deleteIN3gmx17CheckpointHandlerEEclEPS1_.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cq = load ptr, ptr %15, align 8, !tbaa !212  ; 3 uses
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !213 ; 2 uses
  %.not4.i.i.i44 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not4.i.i.i44, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.v, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i
  %.05.i.i.i46 = phi ptr [ %i.cy, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i ], [ %i.cq, %bb.v ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i46, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !169 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i46, i64 24 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i45
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !171
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #28
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i46, i64 40 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.cy, %i.cr
  br i1 %.not.i.i.i47, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i45, !llvm.loop !2

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEEEvPT_.exit.i.i.i
  %.pr.i48 = load ptr, ptr %15, align 8, !tbaa !212
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, %bb.v
  %i.cz = phi ptr [ %.pr.i48, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i ], [ %i.cq, %bb.v ] ; 3 uses
  %.not.i.i1.i49 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i49, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exit.i
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !214
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #28
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESA_EvT_SC_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  ret void

bb.x:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.body42:                                          ; preds = %_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit14.i, %bb.x
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.de, %bb.x ], [ %i.co, %_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit14.i ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3gmx23ICheckpointHelperClientEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body

.body:                                            ; preds = %bb.r, %bb.q, %.body42, %bb.o
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %bb.o ], [ %eh.lpad-body43, %.body42 ], [ %lpad.thr_comm.split-lp, %bb.q ], [ %lpad.thr_comm.split-lp, %bb.r ]
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn

bb.y:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx16SignallerBuilderINS_15EnergySignallerEE5buildIJRKiiS5_RNS_25EnergySignallerVirialModeEEEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.954") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.1012", align 16 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::vector.1012", align 16 ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::vector.1012", align 16 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::vector.1012", align 16 ; 7 uses
  %10 = alloca %"class.std::vector.1012", align 16 ; 7 uses
  %11 = alloca %"class.std::vector.1012", align 16 ; 7 uses
end_hunk_0

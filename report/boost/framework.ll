Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/framework?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost9unit_test9framework5state17deduce_run_statusEm:bb.a
.lr.ph.i.i.i.i.i39.i:                             ; preds = %bb.v, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i
  %.05.i.i.i.i.i40.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i ], [ %i.ch, %bb.v ] ; 3 uses
  %i.cj = load ptr, ptr %.05.i.i.i.i.i40.i, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i41.i, label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i39.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !70
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #26, !inline_history !71
  br label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i

_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i: ; preds = %bb.w, %.lr.ph.i.i.i.i.i39.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i43.i = icmp eq ptr %i.cp, %i.ci
  br i1 %.not.i.i.i.i.i43.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i, label %.lr.ph.i.i.i.i.i39.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i: ; preds = %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i
  %.pr.i.i.i45.i = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i, %bb.v
  %i.cq = phi ptr [ %.pr.i.i.i45.i, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i ], [ %i.ch, %bb.v ] ; 3 uses
  %.not.i.i1.i.i.i47.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i.i47.i, label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #26, !inline_history !71
  br label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i

_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i: ; preds = %bb.x, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i

bb.y:                                             ; preds = %.noexc38
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9unit_test9framework4impl11name_filterD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i: ; preds = %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.z

bb.z:                                             ; preds = %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i
  %i.cw = phi i1 [ %.2115.i, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i ], [ %i.bh, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i ]
  %i.cx = freeze i1 %i.cw                         ; 3 uses
  %i.cy = load i8, ptr %13, align 8, !tbaa !59, !range !74, !noundef !75
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i, label %._crit_edge.i

_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !45
  store ptr %i.da, ptr %i.a, align 8, !tbaa !49
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.dc = invoke noundef zeroext i1 @_ZN5boost9unit_test5utils19token_iterator_baseINS1_27basic_string_token_iteratorIcNS1_9ut_detail20default_char_compareIcEEEEcS6_NS0_13basic_cstringIKcEESA_NS_9iterators21forward_traversal_tagEE3getIPS9_EEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.db)
          to label %.noexc39 unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc39:                                         ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.dd, ptr %i.af, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.de = zext i1 %i.dc to i8
  store i8 %i.de, ptr %13, align 8, !tbaa !59
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !368

._crit_edge.i:                                    ; preds = %.noexc39, %bb.z, %.noexc32
  %.2.lcssa.i = phi i1 [ %.031118.i, %.noexc32 ], [ %i.cx, %bb.z ], [ %i.cx, %.noexc39 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.096.0117.i, i64 32 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.u
  br i1 %i.dg, label %bb.aa, label %bb.d, !llvm.loop !369

bb.aa:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %spec.select = select i1 %.2.lcssa.i, i32 0, i32 3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread60, %.thread
  %i.dh = phi i32 [ 3, %.thread60 ], [ %spec.select, %bb.aa ], [ 3, %.thread ]
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl14set_run_statusE, i64 16), ptr %19, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !80
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %i.dj, align 8, !tbaa !81
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %19, i1 noundef zeroext true)
          to label %.preheader69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader69:                                     ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.dl = load ptr, ptr %17, align 8, !tbaa !83
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !83 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.ac

.preheader:                                       ; preds = %bb.au, %.preheader69
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.dr = load ptr, ptr %18, align 8, !tbaa !83
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !83 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.av

bb.ac:                                            ; preds = %.lr.ph, %bb.au
  %i.dw = phi ptr [ %i.dm, %.lr.ph ], [ %i.ft, %bb.au ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !37
  %i.dz = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE(i64 noundef %i.dy, i32 noundef 17)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ea = load ptr, ptr %i.dk, align 8, !tbaa !85
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !85
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 220
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !86
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %bb.au, label %bb.ae, !llvm.loop !370

.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i, %bb.u, %bb.t, %bb.n, %bb.m, %_ZN5boost9unit_test13basic_cstringIKcEC2EPS2_.exit.i.i.i, %bb.i, %bb.e, %.noexc30, %bb.c, %.noexc, %bb.a
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl14set_run_statusE, i64 16), ptr %20, align 8, !tbaa !62
  store i32 1, ptr %i.do, align 8, !tbaa !80
  store ptr %17, ptr %i.dp, align 8, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !37
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %20, i1 noundef zeroext true)
          to label %.preheader63 unwind label %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader63:                                     ; preds = %bb.ae, %bb.as
  %.pn = phi ptr [ %i.fn, %bb.as ], [ %i.dz, %bb.ae ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 56
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !37  ; 5 uses
  %i.eh = icmp ne i64 %.0, 4294967295
  %i.ei = icmp ne i64 %.0, %1
  %i.ej = and i1 %i.eh, %i.ei
  br i1 %i.ej, label %bb.af, label %bb.at

bb.af:                                            ; preds = %.preheader63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ek = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.ag, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, !prof !35

bb.ag:                                            ; preds = %bb.af
  %i.em = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.en = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body43

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i: ; preds = %bb.ai, %bb.ag, %bb.af
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ep, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !37
  %i.es = icmp ult i64 %i.er, %.0                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.es, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.et = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.et, label %.critedge.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !37
  %i.ew = icmp ult i64 %.0, %i.ev
  br i1 %i.ew, label %.critedge.i, label %.noexc45

.critedge.i:                                      ; preds = %bb.ak, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.ak ], [ %.19.i.i.i.i, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.ex = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc55 unwind label %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc55:                                         ; preds = %.critedge.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  store i64 %.0, ptr %i.ey, align 8, !tbaa !95
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr null, ptr %i.ez, align 8, !tbaa !96
  %i.fa = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %bb.al unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.al:                                            ; preds = %.noexc55
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i54, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i4.i = icmp ne ptr %i.fb, null
  %i.fd = icmp eq ptr %i.fc, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.fd
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.ff = load i64, ptr %i.ey, align 8, !tbaa !37
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !37
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.an, %bb.am
  %i.fi = phi i1 [ %i.fh, %bb.an ], [ true, %bb.am ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.fc, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.fj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %.noexc45

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc55
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 48) #26
  br label %.body43

bb.ao:                                            ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 48) #26
  br label %.noexc45

.noexc45:                                         ; preds = %bb.ao, %.thread.i.i, %bb.ak
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.ak ], [ %i.ex, %.thread.i.i ], [ %i.fb, %bb.ao ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !147
  %i.fp = and i32 %i.fo, 17
  %.not.i40 = icmp eq i32 %i.fp, 0
  br i1 %.not.i40, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.noexc45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr @.str.34, ptr %3, align 8, !tbaa !45
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.fq, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %.noexc46 unwind label %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ap
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc46
  unreachable

bb.ar:                                            ; preds = %.noexc46
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body43

bb.as:                                            ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fs = invoke noundef zeroext i1 @_ZN5boost9unit_test9framework4impl14set_run_status5visitERKNS0_9test_unitE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(280) %i.fn)
          to label %.preheader63 unwind label %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !371 ; 0 uses

.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %bb.as, %bb.ae, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %bb.aj, %bb.ar
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.fr, %bb.ar ], [ %i.eo, %bb.aj ], [ %i.fl, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp65.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %.preheader63
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %.pre = load ptr, ptr %i.dk, align 8, !tbaa !83
  br label %bb.au

bb.au:                                            ; preds = %bb.ad, %bb.at
  %i.ft = phi ptr [ %i.eb, %bb.ad ], [ %.pre, %bb.at ] ; 2 uses
  %i.fu = load ptr, ptr %17, align 8, !tbaa !83
  %i.fv = icmp eq ptr %i.fu, %i.ft
  br i1 %i.fv, label %.preheader, label %bb.ac

bb.av:                                            ; preds = %.lr.ph84, %bb.az
  %i.fw = phi ptr [ %i.ds, %.lr.ph84 ], [ %i.gh, %bb.az ]
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !37
  %i.fz = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE(i64 noundef %i.fy, i32 noundef 17)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ga = load ptr, ptr %i.dq, align 8, !tbaa !85
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8 ; 2 uses
  store ptr %i.gb, ptr %i.dq, align 8, !tbaa !85
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 220
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !86
  %i.ge = icmp eq i32 %i.gd, 1
  br i1 %i.ge, label %bb.ax, label %bb.az, !llvm.loop !372

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.ac, %bb.ab, %._crit_edge
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl14set_run_statusE, i64 16), ptr %21, align 8, !tbaa !62
  store i32 0, ptr %i.du, align 8, !tbaa !80
  store ptr null, ptr %i.dv, align 8, !tbaa !81
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !37
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %21, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %.pre101 = load ptr, ptr %i.dq, align 8, !tbaa !83
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %i.gh = phi ptr [ %i.gb, %bb.aw ], [ %.pre101, %bb.ay ] ; 2 uses
  %i.gi = load ptr, ptr %18, align 8, !tbaa !83
  %i.gj = icmp eq ptr %i.gi, %i.gh
  br i1 %i.gj, label %._crit_edge, label %bb.av

bb.ba:                                            ; preds = %bb.ax
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.az, %.preheader
  %i.gl = invoke noundef zeroext i1 @_ZN5boost9unit_test9framework5state19finalize_run_statusEm(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %1)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bb:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.gm = load ptr, ptr %18, align 8, !tbaa !148  ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.gs = load ptr, ptr %17, align 8, !tbaa !148  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorImSaImEED2Ev.exit49, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !149
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit49

_ZNSt6vectorImSaImEED2Ev.exit49:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ba, %.body43
  %.pn24.pn.pn = phi { ptr, i32 } [ %eh.lpad-body44, %.body43 ], [ %i.gk, %bb.ba ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %bb.r, %bb.k, %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %i.bg, %bb.k ], [ %i.cb, %bb.r ], [ %i.cv, %bb.y ], [ %i.ba, %bb.g ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gy = load ptr, ptr %18, align 8, !tbaa !148  ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.gy, null
end_hunk_0
begin_hunk_1_@_ZN5boost9unit_test9framework4impl13setup_loggersEv:bb.a
  %.0814.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.v, %.fr.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.split.i.i.i.i
  %i.w = icmp ult i64 %i.v, %.fr.i.i.i.i
  br i1 %i.w, label %bb.c, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.split.i.i.i.i, %bb.b
  %.015.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.b ], [ %.fr.i.i.i.i, %.lr.ph.i.split.i.i.i.i ]
  %.0814.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.b ], [ %i.i, %.lr.ph.i.split.i.i.i.i ] ; 2 uses
  %.0913.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.b ], [ %i.s, %.lr.ph.i.split.i.i.i.i ] ; 2 uses
  %i.x = load i8, ptr %.0913.i.i.i.i.i.i.i.i, align 1, !tbaa !60 ; 2 uses
  %i.y = load i8, ptr %.0814.i.i.i.i.i.i.i.i, align 1, !tbaa !60 ; 2 uses
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %bb.b, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i.i, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i.i, i64 1
  %i.ac = add i64 %.015.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ad = icmp slt i8 %i.x, %i.y
  br i1 %i.ad, label %bb.c, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  br label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i: ; preds = %bb.b, %bb.c, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ 24, %bb.c ], [ 16, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i ], [ 16, %.split.i.i.i.i.i ], [ 16, %bb.b ]
  %.19.i.i.i.i.i = phi ptr [ %.0814.i.i.i.i.i, %bb.c ], [ %.015.i.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i ], [ %.015.i.i.i.i.i, %.split.i.i.i.i.i ], [ %.015.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.split.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i
  %.us-phi.i.i.i.i = phi ptr [ %.015.i.us.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.af = icmp eq ptr %.us-phi.i.i.i.i, %i.n
  br i1 %i.af, label %.critedge208, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i, %i.am
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.an = icmp ult i64 %.fr.i.i.i.i, %i.am
  br i1 %i.an, label %.critedge208, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit

bb.e:                                             ; preds = %bb.d
  br i1 %.not12.i.i.i.i.i.i.i.i, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.f
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.at, %bb.f ], [ %.fr.i.i.i.i, %bb.e ]
  %.0814.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %.0913.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.ao = load i8, ptr %.0913.i.i.i.i.i.i.i, align 1, !tbaa !60 ; 2 uses
  %i.ap = load i8, ptr %.0814.i.i.i.i.i.i.i, align 1, !tbaa !60 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i, i64 1
  %i.at = add i64 %.015.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i3.i.i.i.i, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.au = icmp slt i8 %i.ao, %i.ap
  br i1 %i.au, label %.critedge208, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit

_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit: ; preds = %bb.f, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i, %bb.e, %.split.i.i.i.i
  %i.av = load ptr, ptr @_ZN5boost9unit_test14runtime_config20btrt_combined_loggerB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config20btrt_combined_loggerB5cxx11E, i64 8), align 8, !tbaa !43
  %i.ax = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc216 unwind label %bb.ak

.noexc216:                                        ; preds = %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.av, ptr %7, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !46
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost7runtime15arguments_store3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEERT_NS_9unit_test13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dead_on_return %7)
          to label %bb.g unwind label %bb.ak      ; 2 uses

bb.g:                                             ; preds = %.noexc216
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  %.not558 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not558, label %.critedge208, label %bb.aj

.critedge208:                                     ; preds = %.noexc, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i, %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %.split.i.i.i.i, %bb.g
  %i.be = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  %i.bf = load ptr, ptr @_ZN5boost9unit_test14runtime_config14btrt_log_levelB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config14btrt_log_levelB5cxx11E, i64 8), align 8, !tbaa !43
  %i.bh = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc218 unwind label %bb.ak

.noexc218:                                        ; preds = %.critedge208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.bf, ptr %6, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !46
  %i.bk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost7runtime15arguments_store3getINS_9unit_test9log_levelEEERT_NS3_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dead_on_return %6)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !448
  %i.bm = invoke noundef i32 @_ZN5boost9unit_test15unit_test_log_t19set_threshold_levelENS0_9log_levelE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 noundef %i.bl)
          to label %bb.i unwind label %bb.ak      ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.bn = load ptr, ptr @_ZN5boost9unit_test14runtime_config15btrt_log_formatB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config15btrt_log_formatB5cxx11E, i64 8), align 8, !tbaa !43
  %i.bp = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc220 unwind label %bb.ad

.noexc220:                                        ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bn, ptr %5, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !46
  %i.bs = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost7runtime15arguments_store3getINS_9unit_test13output_formatEEERT_NS3_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.j unwind label %bb.ad

bb.j:                                             ; preds = %.noexc220
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !189 ; 2 uses
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !189
  %i.bu = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  invoke void @_ZN5boost9unit_test15unit_test_log_t10set_formatENS0_13output_formatE(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %i.bt)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.bv = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.l, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.bx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.n, %bb.l, %bb.k
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 304), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !189 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.p ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.p ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !189
  %i.ce = icmp slt i32 %i.cd, %i.cb               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ce, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.p, !llvm.loop !390

_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.p
  %i.cf = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296)
  br i1 %i.cf, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !189
  %i.ci = icmp slt i32 %i.cb, %i.ch
  br i1 %i.ci, label %.critedge.i, label %bb.r

.critedge.i:                                      ; preds = %bb.q, %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.q ], [ %.19.i.i.i.i, %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.h, ptr %3, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cj = invoke ptr @_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 288), ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc222 unwind label %bb.ad

.noexc222:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.r

bb.r:                                             ; preds = %.noexc222, %bb.q
  %.sroa.06.0.i = phi ptr [ %i.cj, %.noexc222 ], [ %.19.i.i.i.i, %bb.q ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.cl = load ptr, ptr @_ZN5boost9unit_test14runtime_config13btrt_log_sinkB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config13btrt_log_sinkB5cxx11E, i64 8), align 8, !tbaa !43
  %i.cn = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc259 unwind label %bb.ad ; 2 uses

.noexc259:                                        ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %.not13.i.i.i.i.i223 = icmp eq ptr %i.cp, null
  br i1 %.not13.i.i.i.i.i223, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit260.thread, label %.lr.ph.i.i.i.i.i224

.lr.ph.i.i.i.i.i224:                              ; preds = %.noexc259
  %.fr.i.i.i.i225 = freeze i64 %i.cm              ; 7 uses
  %.not12.i.i.i.i.i.i.i.i226 = icmp eq i64 %.fr.i.i.i.i225, 0 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i.i226, label %.lr.ph.i.split.us.i.i.i.i255, label %.lr.ph.i.split.i.i.i.i227

.lr.ph.i.split.us.i.i.i.i255:                     ; preds = %.lr.ph.i.i.i.i.i224, %.lr.ph.i.split.us.i.i.i.i255
  %.015.i.us.i.i.i.i256 = phi ptr [ %.1.i.us.i.i.i.i257, %.lr.ph.i.split.us.i.i.i.i255 ], [ %i.cp, %.lr.ph.i.i.i.i.i224 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.us.i.i.i.i256, i64 16
  %.1.i.us.i.i.i.i257 = load ptr, ptr %i.cr, align 8, !tbaa !92 ; 2 uses
  %.not.i.us.i.i.i.i258 = icmp eq ptr %.1.i.us.i.i.i.i257, null
  br i1 %.not.i.us.i.i.i.i258, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i237, label %.lr.ph.i.split.us.i.i.i.i255, !llvm.loop !6

.lr.ph.i.split.i.i.i.i227:                        ; preds = %.lr.ph.i.i.i.i.i224, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232
  %.015.i.i.i.i.i228 = phi ptr [ %.1.i.i.i.i.i235, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232 ], [ %i.cp, %.lr.ph.i.i.i.i.i224 ] ; 6 uses
  %.0814.i.i.i.i.i229 = phi ptr [ %.19.i.i.i.i.i234, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232 ], [ %i.cq, %.lr.ph.i.i.i.i.i224 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i228, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i228, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !45 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %.not.i.i.i.i.i.i.i230 = icmp eq i64 %i.cy, %.fr.i.i.i.i225
  br i1 %.not.i.i.i.i.i.i.i230, label %.lr.ph.i.i.i.i.i.i.i.i249, label %.split.i.i.i.i.i231

.split.i.i.i.i.i231:                              ; preds = %.lr.ph.i.split.i.i.i.i227
  %i.cz = icmp ult i64 %i.cy, %.fr.i.i.i.i225
  br i1 %i.cz, label %bb.t, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232

.lr.ph.i.i.i.i.i.i.i.i249:                        ; preds = %.lr.ph.i.split.i.i.i.i227, %bb.s
  %.015.i.i.i.i.i.i.i.i250 = phi i64 [ %i.df, %bb.s ], [ %.fr.i.i.i.i225, %.lr.ph.i.split.i.i.i.i227 ]
  %.0814.i.i.i.i.i.i.i.i251 = phi ptr [ %i.de, %bb.s ], [ %i.cl, %.lr.ph.i.split.i.i.i.i227 ] ; 2 uses
  %.0913.i.i.i.i.i.i.i.i252 = phi ptr [ %i.dd, %bb.s ], [ %i.cv, %.lr.ph.i.split.i.i.i.i227 ] ; 2 uses
  %i.da = load i8, ptr %.0913.i.i.i.i.i.i.i.i252, align 1, !tbaa !60 ; 2 uses
  %i.db = load i8, ptr %.0814.i.i.i.i.i.i.i.i251, align 1, !tbaa !60 ; 2 uses
  %i.dc = icmp eq i8 %i.da, %i.db
  br i1 %i.dc, label %bb.s, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i249
  %i.dd = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i.i252, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i.i251, i64 1
  %i.df = add i64 %.015.i.i.i.i.i.i.i.i250, -1    ; 2 uses
  %.not.i.i.i.i.i.i.i.i254 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i254, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232, label %.lr.ph.i.i.i.i.i.i.i.i249, !llvm.loop !7

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253: ; preds = %.lr.ph.i.i.i.i.i.i.i.i249
  %i.dg = icmp slt i8 %i.da, %i.db
  br i1 %i.dg, label %bb.t, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232

bb.t:                                             ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253, %.split.i.i.i.i.i231
  br label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232: ; preds = %bb.s, %bb.t, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253, %.split.i.i.i.i.i231
  %.sink.i.i.i.i.i233 = phi i64 [ 24, %bb.t ], [ 16, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253 ], [ 16, %.split.i.i.i.i.i231 ], [ 16, %bb.s ]
  %.19.i.i.i.i.i234 = phi ptr [ %.0814.i.i.i.i.i229, %bb.t ], [ %.015.i.i.i.i.i228, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i.i253 ], [ %.015.i.i.i.i.i228, %.split.i.i.i.i.i231 ], [ %.015.i.i.i.i.i228, %bb.s ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i228, i64 %.sink.i.i.i.i.i233
  %.1.i.i.i.i.i235 = load ptr, ptr %i.dh, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i.i236 = icmp eq ptr %.1.i.i.i.i.i235, null
  br i1 %.not.i.i.i.i.i236, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i237, label %.lr.ph.i.split.i.i.i.i227, !llvm.loop !6

_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i237: ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232, %.lr.ph.i.split.us.i.i.i.i255
  %.us-phi.i.i.i.i238 = phi ptr [ %.015.i.us.i.i.i.i256, %.lr.ph.i.split.us.i.i.i.i255 ], [ %.19.i.i.i.i.i234, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i.i232 ] ; 3 uses
  %i.di = icmp eq ptr %.us-phi.i.i.i.i238, %i.cq
  br i1 %i.di, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit260.thread, label %bb.u

bb.u:                                             ; preds = %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i237
  %i.dj = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i238, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i.i238, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !45 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %.not.i.i.i.i.i.i239 = icmp eq i64 %.fr.i.i.i.i225, %i.dp
  br i1 %.not.i.i.i.i.i.i239, label %bb.v, label %.split.i.i.i.i240

.split.i.i.i.i240:                                ; preds = %bb.u
  %i.dq = icmp ult i64 %.fr.i.i.i.i225, %i.dp
  br i1 %i.dq, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit260.thread, label %.loopexit

bb.v:                                             ; preds = %bb.u
  br i1 %.not12.i.i.i.i.i.i.i.i226, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i.i243:                          ; preds = %bb.v, %bb.w
  %.015.i.i.i.i.i.i.i244 = phi i64 [ %i.dw, %bb.w ], [ %.fr.i.i.i.i225, %bb.v ]
  %.0814.i.i.i.i.i.i.i245 = phi ptr [ %i.dv, %bb.w ], [ %i.dm, %bb.v ] ; 2 uses
  %.0913.i.i.i.i.i.i.i246 = phi ptr [ %i.du, %bb.w ], [ %i.cl, %bb.v ] ; 2 uses
  %i.dr = load i8, ptr %.0913.i.i.i.i.i.i.i246, align 1, !tbaa !60 ; 2 uses
  %i.ds = load i8, ptr %.0814.i.i.i.i.i.i.i245, align 1, !tbaa !60 ; 2 uses
  %i.dt = icmp eq i8 %i.dr, %i.ds
  br i1 %i.dt, label %bb.w, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i247

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i243
  %i.du = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i246, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i245, i64 1
  %i.dw = add i64 %.015.i.i.i.i.i.i.i244, -1      ; 2 uses
  %.not.i.i.i3.i.i.i.i248 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i3.i.i.i.i248, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i243, !llvm.loop !7

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i247: ; preds = %.lr.ph.i.i.i.i.i.i.i243
  %i.dx = icmp slt i8 %i.dr, %i.ds
  br i1 %i.dx, label %_ZN5boost9unit_test14runtime_config3hasENS0_13basic_cstringIKcEE.exit260.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.split.i.i.i.i240, %bb.v, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i247
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dy = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ea = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.x unwind label %bb.ae      ; 5 uses

bb.x:                                             ; preds = %.loopexit
  %i.eb = ptrtoint ptr %i.dy to i64
  store i64 ptrtoint (ptr @_ZN5boost9unit_test15unit_test_log_t10set_streamERSo to i64), ptr %i.ea, align 8
  %.sroa.0.i.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 0, ptr %.sroa.0.i.i.i.i.i.sroa.4.0..sroa_idx, align 8, !tbaa !60
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 ptrtoint (ptr @_ZSt4cout to i64), ptr %i.ec, align 8, !tbaa !190
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !185
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !60
  store ptr @_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS9_JSA_EEENS3_4listIJNS3_5valueIPS9_EENS_17reference_wrapperISoEEEEEEEEEvT_E13stored_vtable, ptr %8, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ee = load ptr, ptr @_ZN5boost9unit_test14runtime_config13btrt_log_sinkB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.ef = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config13btrt_log_sinkB5cxx11E, i64 8), align 8, !tbaa !43
  %i.eg = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc262 unwind label %bb.af

.noexc262:                                        ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ee, ptr %2, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !46
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost7runtime15arguments_store3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_NS_9unit_test13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.y unwind label %bb.af      ; 2 uses

bb.y:                                             ; preds = %.noexc262
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ek, ptr %9, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test14runtime_config13stream_holder5setupERKNS0_13basic_cstringIKcEERKNS_8functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ep = load ptr, ptr %8, align 8, !tbaa !154   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = trunc i64 %i.eq to i1
  %or.cond.i = or i1 %.not.i.i, %i.er
  br i1 %or.cond.i, label %_ZN5boost10function_nIvJEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i, label %_ZN5boost10function_nIvJEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i32 noundef 2)
          to label %_ZN5boost10function_nIvJEED2Ev.exit unwind label %bb.ac, !inline_history !2

bb.ac:                                            ; preds = %bb.ab
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

_ZN5boost10function_nIvJEED2Ev.exit:              ; preds = %bb.z, %bb.aa, %bb.ab
end_hunk_1
begin_hunk_2_@_ZN5boost9unit_test9framework4impl13setup_loggersEv:bb.a
bb.db:                                            ; preds = %.loopexit560, %bb.co
  %.1120 = phi i32 [ %i.nt, %.loopexit560 ], [ %i.nk, %bb.co ] ; 2 uses
  %.not161 = icmp eq i32 %.1120, -1
  br i1 %.not161, label %.thread, label %bb.du

.thread:                                          ; preds = %.thread892, %bb.cp, %bb.db, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.9, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.8, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.7, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.6, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.5, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.4, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.3, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.2, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318.1, %_ZN5boost9unit_testeqIKcS2_EEbRKNS0_13basic_cstringIT_EERKNS3_IT0_EE.exit318, %.preheader.preheader, %.lr.ph.i.i313.10
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.qd = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.qd, align 8, !tbaa !45
  %i.qe = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.qe, align 8, !tbaa !46
  %i.qf = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.qg = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  store ptr %i.qg, ptr %i.qf, align 8, !tbaa !168
  %i.qh = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 0, ptr %i.qh, align 8, !tbaa !43
  store i8 0, ptr %i.qg, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime26access_to_missing_argumentE, i64 16), ptr %29, align 8, !tbaa !62
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_26access_to_missing_argumentENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::access_to_missing_argument") align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull @.str.27)
          to label %bb.dc unwind label %bb.dj

bb.dc:                                            ; preds = %.thread
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_26access_to_missing_argumentENS0_10init_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::access_to_missing_argument") align 8 %27, ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0476.0689)
          to label %bb.dd unwind label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_26access_to_missing_argumentENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::access_to_missing_argument") align 8 %26, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull @.str.24)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.df unwind label %bb.dm

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt10accumulateIPKSt4pairIPKcN5boost9unit_test9log_levelEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_9framework4impl17sum_to_first_onlyEET0_T_SJ_SI_T1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull @_ZZN5boost9unit_test9framework4impl13setup_loggersEvE14all_log_levels, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl13setup_loggersEvE14all_log_levels, i64 176), ptr noundef nonnull align 8 %31, i8 1)
          to label %bb.dg unwind label %bb.dn

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_26access_to_missing_argumentENS0_10init_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::access_to_missing_argument") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.dh unwind label %bb.do

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime26access_to_missing_argumentEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %25) #25
          to label %bb.di unwind label %bb.dp

bb.di:                                            ; preds = %bb.dh
  unreachable

bb.dj:                                            ; preds = %.thread
  %i.qi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.dt

bb.dk:                                            ; preds = %bb.dc
  %i.qj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.ds

bb.dl:                                            ; preds = %bb.dd
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.dr

bb.dm:                                            ; preds = %bb.de
  %i.ql = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.dn:                                            ; preds = %bb.df
  %i.qm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.do:                                            ; preds = %bb.dg
  %i.qn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dh
  %i.qo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #24
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn162 = phi { ptr, i32 } [ %i.qo, %bb.dp ], [ %i.qn, %bb.do ] ; 2 uses
  %i.qp = load ptr, ptr %30, align 8, !tbaa !42   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.dq
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !60
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.dn
  %.pn162.pn = phi { ptr, i32 } [ %i.qm, %bb.dn ], [ %.pn162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn162, %bb.dq ] ; 2 uses
  %i.qu = load ptr, ptr %31, align 8, !tbaa !42   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !60
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.dm
  %.pn162.pn.pn = phi { ptr, i32 } [ %i.ql, %bb.dm ], [ %.pn162.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %.pn162.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #24
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.dl
  %.pn162.pn.pn.pn = phi { ptr, i32 } [ %.pn162.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.qk, %bb.dl ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #24
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dk
  %.pn162.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn162.pn.pn.pn, %bb.dr ], [ %i.qj, %bb.dk ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #24
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dj
  %.pn162.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn162.pn.pn.pn.pn, %bb.ds ], [ %i.qi, %bb.dj ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %.body326

bb.du:                                            ; preds = %bb.db
  %i.qz = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  %i.ra = invoke noundef i32 @_ZN5boost9unit_test15unit_test_log_t19set_threshold_levelENS0_13output_formatENS0_9log_levelE(ptr noundef nonnull align 8 dereferenceable(8) %i.qz, i32 noundef %i.lq, i32 noundef %.1120)
          to label %bb.dv unwind label %bb.eq     ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.rb = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.rc = icmp eq i8 %i.rb, 0
  br i1 %i.rc, label %bb.dw, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328, !prof !35

bb.dw:                                            ; preds = %bb.dv
  %i.rd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i325 = icmp eq i32 %i.rd, 0
  br i1 %.not.i325, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.re = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328

bb.dz:                                            ; preds = %bb.dx
  %i.rf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body326

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328: ; preds = %bb.dy, %bb.dw, %bb.dv
  %i.rg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 304), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i329 = icmp eq ptr %i.rg, null
  br i1 %.not10.i.i.i.i329, label %.critedge.i340, label %.lr.ph.i.i.i.i330

.lr.ph.i.i.i.i330:                                ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328, %.lr.ph.i.i.i.i330
  %.012.i.i.i.i331 = phi ptr [ %.1.i.i.i.i336, %.lr.ph.i.i.i.i330 ], [ %i.rg, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328 ] ; 3 uses
  %.0811.i.i.i.i332 = phi ptr [ %.19.i.i.i.i333, %.lr.ph.i.i.i.i330 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328 ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i331, i64 32
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !189
  %i.rj = icmp slt i32 %i.ri, %i.lq               ; 2 uses
  %.19.i.i.i.i333 = select i1 %i.rj, ptr %.0811.i.i.i.i332, ptr %.012.i.i.i.i331 ; 6 uses
  %.1.in.v.i.i.i.i334 = select i1 %i.rj, i64 24, i64 16
  %.1.in.i.i.i.i335 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i331, i64 %.1.in.v.i.i.i.i334
  %.1.i.i.i.i336 = load ptr, ptr %.1.in.i.i.i.i335, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i337 = icmp eq ptr %.1.i.i.i.i336, null
  br i1 %.not.i.i.i.i337, label %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i338, label %.lr.ph.i.i.i.i330, !llvm.loop !390

_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i338: ; preds = %.lr.ph.i.i.i.i330
  %i.rk = icmp eq ptr %.19.i.i.i.i333, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296)
  br i1 %i.rk, label %.critedge.i340, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i338
  %i.rl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i333, i64 32
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !189
  %i.rn = icmp slt i32 %i.lq, %i.rm
  br i1 %i.rn, label %.critedge.i340, label %bb.ej

.critedge.i340:                                   ; preds = %bb.ea, %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i338, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328
  %.08.lcssa.i.i.i11.i341 = phi ptr [ %.19.i.i.i.i333, %bb.ea ], [ %.19.i.i.i.i333, %_ZNSt3mapIN5boost9unit_test13output_formatENS1_14runtime_config13stream_holderESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i338 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit328 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 288), ptr %0, align 8, !tbaa !197
  %i.ro = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %.noexc379 unwind label %bb.eq ; 8 uses

.noexc379:                                        ; preds = %.critedge.i340
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32 ; 3 uses
  store i32 %i.lq, ptr %i.rp, align 8, !tbaa !199
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rq, i8 0, i64 16, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 56
  store ptr @_ZSt4cout, ptr %i.rr, align 8, !tbaa !164
  store ptr %i.ro, ptr %i.gp, align 8, !tbaa !202
  %i.rs = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 288), ptr %.08.lcssa.i.i.i11.i341, ptr noundef nonnull align 4 dereferenceable(4) %i.rp)
          to label %bb.eb unwind label %bb.ee     ; 2 uses

bb.eb:                                            ; preds = %.noexc379
  %i.rt = extractvalue { ptr, ptr } %i.rs, 0      ; 2 uses
  %i.ru = extractvalue { ptr, ptr } %i.rs, 1      ; 4 uses
  %.not.i375 = icmp eq ptr %i.ru, null
  br i1 %.not.i375, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not.i.i.i376 = icmp ne ptr %i.rt, null
  %i.rv = icmp eq ptr %i.ru, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296)
  %or.cond.i.i.i = select i1 %.not.i.i.i376, i1 true, i1 %i.rv
  br i1 %or.cond.i.i.i, label %.thread.i377, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rx = load i32, ptr %i.rp, align 8, !tbaa !189
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !189
  %i.rz = icmp slt i32 %i.rx, %i.ry
  br label %.thread.i377

.thread.i377:                                     ; preds = %bb.ed, %bb.ec
  %i.sa = phi i1 [ %i.rz, %bb.ed ], [ true, %bb.ec ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.sa, ptr noundef nonnull %i.ro, ptr noundef nonnull %i.ru, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 296)) #24
  %i.sb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 328), align 8, !tbaa !97
  %i.sc = add i64 %i.sb, 1
  store i64 %i.sc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 328), align 8, !tbaa !97
  br label %.noexc342

bb.ee:                                            ; preds = %.noexc379
  %i.sd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  call void @_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br label %.body326

bb.ef:                                            ; preds = %bb.eb
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 48
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !166 ; 7 uses
  %.not.i.i.i.i.i.i.i.i378 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i.i.i.i.i.i378, label %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = atomicrmw add ptr %i.sg, i32 -1 acq_rel, align 4
  %i.si = icmp eq i32 %i.sh, 1
  br i1 %i.si, label %bb.eh, label %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.sj = load ptr, ptr %i.sf, align 8, !tbaa !62
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(16) %i.sf) #24, !inline_history !429
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.sn = atomicrmw add ptr %i.sm, i32 -1 acq_rel, align 4
  %i.so = icmp eq i32 %i.sn, 1
  br i1 %i.so, label %bb.ei, label %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.sp = load ptr, ptr %i.sf, align 8, !tbaa !62
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(16) %i.sf) #24, !inline_history !430
  br label %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef 64) #26
  br label %.noexc342

.noexc342:                                        ; preds = %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i377
  %.sroa.0.010.i = phi ptr [ %i.ro, %.thread.i377 ], [ %i.rt, %_ZNSt8_Rb_treeIN5boost9unit_test13output_formatESt4pairIKS2_NS1_14runtime_config13stream_holderEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ea, %.noexc342
  %.sroa.06.0.i339 = phi ptr [ %.sroa.0.010.i, %.noexc342 ], [ %.19.i.i.i.i333, %bb.ea ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i339, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.st = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  store ptr null, ptr %33, align 8, !tbaa !154
  %i.su = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %bb.ek unwind label %bb.er     ; 5 uses

bb.ek:                                            ; preds = %bb.ej
  %i.sv = ptrtoint ptr %i.st to i64
  store <2 x i64> <i64 ptrtoint (ptr @_ZN5boost9unit_test15unit_test_log_t10set_streamENS0_13output_formatERSo to i64), i64 0>, ptr %i.su, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store i64 ptrtoint (ptr @_ZSt4cout to i64), ptr %i.sw, align 8, !tbaa !190
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  store i32 %i.lq, ptr %i.sx, align 8, !tbaa !189
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  store i64 %i.sv, ptr %i.sy, align 8, !tbaa !185
  store ptr %i.su, ptr %i.gq, align 8, !tbaa !60
  store ptr @_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS8_13output_formatERSoEvS9_JSA_SB_EEENS3_4listIJNS3_5valueIPS9_EENSG_ISA_EENS_17reference_wrapperISoEEEEEEEEEvT_E13stored_vtable, ptr %33, align 8, !tbaa !154
  %i.sz = load i8, ptr %14, align 8, !tbaa !59, !range !74, !noundef !75
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.el, label %.critedge6

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.tb = load ptr, ptr %i.gn, align 8, !tbaa !45
  store ptr %i.tb, ptr %i.a, align 8, !tbaa !49
  %i.tc = load ptr, ptr %i.go, align 8, !tbaa !46
  %i.td = invoke noundef zeroext i1 @_ZN5boost9unit_test5utils19token_iterator_baseINS1_27basic_string_token_iteratorIcNS1_9ut_detail20default_char_compareIcEEEEcS6_NS0_13basic_cstringIKcEESA_NS_9iterators21forward_traversal_tagEE3getIPS9_EEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(112) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.tc)
          to label %bb.em unwind label %bb.es     ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.te = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.te, ptr %i.gn, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.tf = zext i1 %i.td to i8
  store i8 %i.tf, ptr %14, align 8, !tbaa !59
  br i1 %i.td, label %bb.en, label %.critedge6

bb.en:                                            ; preds = %bb.em
  %i.tg = load ptr, ptr %i.ge, align 8, !tbaa !45, !noalias !458 ; 2 uses
  %i.th = load ptr, ptr %i.gf, align 8, !tbaa !46, !noalias !458 ; 2 uses
  %.not172 = icmp eq ptr %i.th, %i.tg
  br i1 %.not172, label %.critedge6, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  store ptr %i.tg, ptr %34, align 8, !tbaa !45, !alias.scope !459
  store ptr %i.th, ptr %i.gr, align 8, !tbaa !46, !alias.scope !459
  invoke void @_ZN5boost9unit_test14runtime_config13stream_holder5setupERKNS0_13basic_cstringIKcEERKNS_8functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ss, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.ey

bb.eq:                                            ; preds = %.preheader565, %.critedge.i340, %bb.cm, %bb.co, %bb.du, %bb.cd, %bb.cc, %bb.cb
  %i.ti = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %.body326

bb.er:                                            ; preds = %bb.ej
  %i.tj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.fe

bb.es:                                            ; preds = %bb.el, %bb.ey
  %i.tk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  br label %bb.fd

bb.et:                                            ; preds = %bb.eo
  %i.tl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost7runtime10init_errorE
          catch ptr @_ZTIN5boost7runtime11input_errorE
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.fd

.critedge6:                                       ; preds = %bb.ek, %bb.em, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.tm = load ptr, ptr %i.mp, align 8, !tbaa !62
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 176
  %i.to = load ptr, ptr %i.tn, align 8
  invoke void %i.to(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(12) %i.mp)
          to label %bb.eu unwind label %bb.ew

bb.eu:                                            ; preds = %.critedge6
  %i.tp = load ptr, ptr %36, align 8, !tbaa !42   ; 2 uses
  store ptr %i.tp, ptr %35, align 8, !tbaa !45
  %i.tq = load i64, ptr %i.gt, align 8, !tbaa !43
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.tq
  store ptr %i.tr, ptr %i.gs, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test14runtime_config13stream_holder5setupERKNS0_13basic_cstringIKcEERKNS_8functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ss, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.ts = load ptr, ptr %36, align 8, !tbaa !42   ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.gu
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.ev
end_hunk_2
begin_hunk_3_@_ZN5boost9unit_test9framework20finalize_setup_phaseEm
define void @_ZN5boost9unit_test9framework20finalize_setup_phaseEm(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.apply_decorators, align 8    ; 5 uses
  %2 = alloca %"class.std::map.135", align 8      ; 11 uses
  %i.a = icmp eq i64 %0, 4294967295
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(400) ptr @_ZN5boost9unit_test9framework17master_test_suiteEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.a ]   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZN5boost9unit_test9framework20finalize_setup_phaseEmE16apply_decorators, i64 16), ptr %1, align 8, !tbaa !62
  call void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %.07, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !97
  %i.j = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.f, %bb.d, %bb.c
  invoke void @_ZN5boost9unit_test9framework5state21deduce_siblings_orderEmmRSt3mapImNS1_4impl10order_infoESt4lessImESaISt4pairIKmS5_EEE(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 noundef %.07, i64 noundef %.07, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %i.o = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i10, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13

bb.l:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13: ; preds = %bb.k, %bb.i, %bb.h
  %i.t = invoke noundef zeroext i1 @_ZN5boost9unit_test9framework5state27finalize_default_run_statusEmNS0_9test_unit10run_statusE(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 noundef %.07, i32 noundef 3)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !91
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.u)
          to label %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.o:                                             ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit13, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.l, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.x, %bb.o ], [ %i.s, %bb.l ]
  call void @_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9unit_test9framework5state21deduce_siblings_orderEmmRSt3mapImNS1_4impl10order_infoESt4lessImESaISt4pairIKmS5_EEE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %7 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %8 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %9 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %10 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %11 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %12 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, boost::unit_test::framework::impl::order_info>, std::_Select1st<std::pair<const unsigned long, boost::unit_test::framework::impl::order_info>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE(i64 noundef %1, i32 noundef 17) ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9unit_test9framework4implL26collect_dependant_siblingsEmmmRSt3mapImNS2_10order_infoESt4lessImESaISt4pairIKmS4_EEE.exit
  %.sroa.0185.0229 = phi ptr [ %i.c, %.lr.ph ], [ %i.hn, %_ZN5boost9unit_test9framework4implL26collect_dependant_siblingsEmmmRSt3mapImNS2_10order_infoESt4lessImESaISt4pairIKmS4_EEE.exit ] ; 2 uses
  %i.k = load i64, ptr %.sroa.0185.0229, align 8, !tbaa !37 ; 4 uses
  %i.l = tail call fastcc noundef i32 @_ZN5boost9unit_test9framework4implL8tu_depthEmmRSt3mapImNS2_10order_infoESt4lessImESaISt4pairIKmS4_EEE(i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %i.m = tail call fastcc noundef i32 @_ZN5boost9unit_test9framework4implL8tu_depthEmmRSt3mapImNS2_10order_infoESt4lessImESaISt4pairIKmS4_EEE(i64 noundef %i.k, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %i.n = icmp sgt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.b
  %i.o = icmp slt i32 %i.l, %i.m
  br i1 %i.o, label %.lr.ph33.i, label %.preheader.i.preheader

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99
  %.01629.i = phi i32 [ %i.ba, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99 ], [ %i.l, %bb.b ]
  %i.p = phi i64 [ %i.az, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99 ], [ %1, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.q = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94, !prof !35

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i98 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i98, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94

common.resume:                                    ; preds = %bb.ap, %bb.ax, %bb.ad, %bb.al, %bb.r, %bb.z, %bb.f, %bb.n, %bb.bd, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i115, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i134, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i153
  %common.resume.op = phi { ptr, i32 } [ %i.gh, %bb.bd ], [ %i.ar, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i153 ], [ %i.ax, %bb.n ], [ %i.cd, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i134 ], [ %i.cj, %bb.z ], [ %i.dq, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i115 ], [ %i.dw, %bb.al ], [ %i.fa, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.u, %bb.f ], [ %i.bg, %bb.r ], [ %i.ct, %bb.ad ], [ %i.ed, %bb.ap ], [ %i.fg, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94: ; preds = %bb.e, %bb.c, %.lr.ph.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i140 = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i.i140, label %.critedge.i151, label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94, %.lr.ph.i.i.i.i141
  %.012.i.i.i.i142 = phi ptr [ %.1.i.i.i.i147, %.lr.ph.i.i.i.i141 ], [ %i.v, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94 ] ; 3 uses
  %.0811.i.i.i.i143 = phi ptr [ %.19.i.i.i.i144, %.lr.ph.i.i.i.i141 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i142, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = icmp ult i64 %i.x, %i.p                  ; 2 uses
  %.19.i.i.i.i144 = select i1 %i.y, ptr %.0811.i.i.i.i143, ptr %.012.i.i.i.i142 ; 6 uses
  %.1.in.v.i.i.i.i145 = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i142, i64 %.1.in.v.i.i.i.i145
  %.1.i.i.i.i147 = load ptr, ptr %.1.in.i.i.i.i146, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %.1.i.i.i.i147, null
  br i1 %.not.i.i.i.i148, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i149, label %.lr.ph.i.i.i.i141, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i149: ; preds = %.lr.ph.i.i.i.i141
  %i.z = icmp eq ptr %.19.i.i.i.i144, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.z, label %.critedge.i151, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i149
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i144, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37
  %i.ac = icmp ult i64 %i.p, %i.ab
  br i1 %i.ac, label %.critedge.i151, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158

.critedge.i151:                                   ; preds = %bb.g, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i149, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94
  %.08.lcssa.i.i.i14.i152 = phi ptr [ %.19.i.i.i.i144, %bb.g ], [ %.19.i.i.i.i144, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i149 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i94 ]
  %i.ad = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  store i64 %i.p, ptr %i.ae, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr null, ptr %i.af, align 8, !tbaa !96
  %i.ag = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i152, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.h unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i153 ; 2 uses

bb.h:                                             ; preds = %.critedge.i151
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 4 uses
  %.not.i.i154 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i154, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i4.i155 = icmp ne ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ai, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i156 = select i1 %.not.i.i.i4.i155, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i156, label %.thread.i.i157, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.an = icmp ult i64 %i.al, %i.am
  br label %.thread.i.i157

.thread.i.i157:                                   ; preds = %bb.j, %bb.i
  %i.ao = phi i1 [ %i.an, %bb.j ], [ true, %bb.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ao, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i153: ; preds = %.critedge.i151
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 48) #26
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 48) #26
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158: ; preds = %bb.g, %.thread.i.i157, %bb.k
  %.sroa.09.0.i150 = phi ptr [ %.19.i.i.i.i144, %bb.g ], [ %i.ad, %.thread.i.i157 ], [ %i.ah, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i150, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !98 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !147
  %i.av = and i32 %i.au, 17
  %.not.i95 = icmp eq i32 %i.av, 0
  br i1 %.not.i95, label %bb.l, label %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99

bb.l:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.34, ptr %5, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.aw, align 8, !tbaa !46
  call void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %5)
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99: ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit158
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = add nsw i32 %.01629.i, -1               ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, %i.m
  br i1 %i.bb, label %.lr.ph.i, label %.preheader.i.preheader, !llvm.loop !484

.lr.ph33.i:                                       ; preds = %.preheader28.i, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93
  %.01532.i = phi i32 [ %i.cm, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93 ], [ %i.m, %.preheader28.i ]
  %.02431.i = phi i64 [ %i.cl, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93 ], [ %i.k, %.preheader28.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bc = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88, !prof !35

bb.o:                                             ; preds = %.lr.ph33.i
  %i.be = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i92 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i92, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88: ; preds = %bb.q, %bb.o, %.lr.ph33.i
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i121 = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i.i121, label %.critedge.i132, label %.lr.ph.i.i.i.i122

.lr.ph.i.i.i.i122:                                ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88, %.lr.ph.i.i.i.i122
  %.012.i.i.i.i123 = phi ptr [ %.1.i.i.i.i128, %.lr.ph.i.i.i.i122 ], [ %i.bh, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88 ] ; 3 uses
  %.0811.i.i.i.i124 = phi ptr [ %.19.i.i.i.i125, %.lr.ph.i.i.i.i122 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i123, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !37
  %i.bk = icmp ult i64 %i.bj, %.02431.i           ; 2 uses
  %.19.i.i.i.i125 = select i1 %i.bk, ptr %.0811.i.i.i.i124, ptr %.012.i.i.i.i123 ; 6 uses
  %.1.in.v.i.i.i.i126 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i127 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i123, i64 %.1.in.v.i.i.i.i126
  %.1.i.i.i.i128 = load ptr, ptr %.1.in.i.i.i.i127, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i129 = icmp eq ptr %.1.i.i.i.i128, null
  br i1 %.not.i.i.i.i129, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i130, label %.lr.ph.i.i.i.i122, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i130: ; preds = %.lr.ph.i.i.i.i122
  %i.bl = icmp eq ptr %.19.i.i.i.i125, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.bl, label %.critedge.i132, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i130
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i125, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !37
  %i.bo = icmp ult i64 %.02431.i, %i.bn
  br i1 %i.bo, label %.critedge.i132, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139

.critedge.i132:                                   ; preds = %bb.s, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i130, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88
  %.08.lcssa.i.i.i14.i133 = phi ptr [ %.19.i.i.i.i125, %bb.s ], [ %.19.i.i.i.i125, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i130 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i88 ]
  %i.bp = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  store i64 %.02431.i, ptr %i.bq, align 8, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr null, ptr %i.br, align 8, !tbaa !96
  %i.bs = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i133, ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %bb.t unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i134 ; 2 uses

bb.t:                                             ; preds = %.critedge.i132
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, ptr } %i.bs, 1      ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i135, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i4.i136 = icmp ne ptr %i.bt, null
  %i.bv = icmp eq ptr %i.bu, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i137 = select i1 %.not.i.i.i4.i136, i1 true, i1 %i.bv
  br i1 %or.cond.i.i.i.i137, label %.thread.i.i138, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load i64, ptr %i.bq, align 8, !tbaa !37
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !37
  %i.bz = icmp ult i64 %i.bx, %i.by
  br label %.thread.i.i138

.thread.i.i138:                                   ; preds = %bb.v, %bb.u
  %i.ca = phi i1 [ %i.bz, %bb.v ], [ true, %bb.u ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ca, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bu, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i134: ; preds = %.critedge.i132
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 48) #26
  br label %common.resume

bb.w:                                             ; preds = %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 48) #26
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139: ; preds = %bb.s, %.thread.i.i138, %bb.w
  %.sroa.09.0.i131 = phi ptr [ %.19.i.i.i.i125, %bb.s ], [ %i.bp, %.thread.i.i138 ], [ %i.bt, %bb.w ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i131, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !98 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !147
  %i.ch = and i32 %i.cg, 17
  %.not.i89 = icmp eq i32 %i.ch, 0
  br i1 %.not.i89, label %bb.x, label %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93

bb.x:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr @.str.34, ptr %7, align 8, !tbaa !45
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.ci, align 8, !tbaa !46
  call void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dead_on_return %7)
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93: ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !37 ; 2 uses
  %i.cm = add nsw i32 %.01532.i, -1               ; 2 uses
  %i.cn = icmp slt i32 %i.l, %i.cm
  br i1 %i.cn, label %.lr.ph33.i, label %.preheader.i.preheader, !llvm.loop !485

.preheader.i.preheader:                           ; preds = %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99, %.preheader28.i
  %.ph = phi i64 [ %i.az, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99 ], [ %1, %.preheader28.i ], [ %1, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93 ]
  %.1.i.ph = phi i64 [ %i.k, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit99 ], [ %i.k, %.preheader28.i ], [ %i.cl, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit93 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit
  %i.co = phi i64 [ %i.dy, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit ], [ %.ph, %.preheader.i.preheader ] ; 6 uses
  %.1.i = phi i64 [ %i.fi, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit ], [ %.1.i.ph, %.preheader.i.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.cp = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.aa, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82, !prof !35

bb.aa:                                            ; preds = %.preheader.i
  %i.cr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i86 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i86, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cs = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82

bb.ad:                                            ; preds = %bb.ab
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82: ; preds = %bb.ac, %bb.aa, %.preheader.i
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i102 = icmp eq ptr %i.cu, null
  br i1 %.not10.i.i.i.i102, label %.critedge.i113, label %.lr.ph.i.i.i.i103

.lr.ph.i.i.i.i103:                                ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82, %.lr.ph.i.i.i.i103
  %.012.i.i.i.i104 = phi ptr [ %.1.i.i.i.i109, %.lr.ph.i.i.i.i103 ], [ %i.cu, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82 ] ; 3 uses
  %.0811.i.i.i.i105 = phi ptr [ %.19.i.i.i.i106, %.lr.ph.i.i.i.i103 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i104, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !37
  %i.cx = icmp ult i64 %i.cw, %i.co               ; 2 uses
  %.19.i.i.i.i106 = select i1 %i.cx, ptr %.0811.i.i.i.i105, ptr %.012.i.i.i.i104 ; 6 uses
  %.1.in.v.i.i.i.i107 = select i1 %i.cx, i64 24, i64 16
  %.1.in.i.i.i.i108 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i104, i64 %.1.in.v.i.i.i.i107
  %.1.i.i.i.i109 = load ptr, ptr %.1.in.i.i.i.i108, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i110 = icmp eq ptr %.1.i.i.i.i109, null
  br i1 %.not.i.i.i.i110, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i111, label %.lr.ph.i.i.i.i103, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i111: ; preds = %.lr.ph.i.i.i.i103
  %i.cy = icmp eq ptr %.19.i.i.i.i106, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.cy, label %.critedge.i113, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i111
  %i.cz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i106, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  %i.db = icmp ult i64 %i.co, %i.da
  br i1 %i.db, label %.critedge.i113, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120

.critedge.i113:                                   ; preds = %bb.ae, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i111, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82
  %.08.lcssa.i.i.i14.i114 = phi ptr [ %.19.i.i.i.i106, %bb.ae ], [ %.19.i.i.i.i106, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i111 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i82 ]
  %i.dc = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 3 uses
  store i64 %i.co, ptr %i.dd, align 8, !tbaa !95
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr null, ptr %i.de, align 8, !tbaa !96
  %i.df = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i114, ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.af unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i115 ; 2 uses

bb.af:                                            ; preds = %.critedge.i113
  %i.dg = extractvalue { ptr, ptr } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.df, 1      ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i116, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i4.i117 = icmp ne ptr %i.dg, null
  %i.di = icmp eq ptr %i.dh, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i118 = select i1 %.not.i.i.i4.i117, i1 true, i1 %i.di
  br i1 %or.cond.i.i.i.i118, label %.thread.i.i119, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load i64, ptr %i.dd, align 8, !tbaa !37
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !37
  %i.dm = icmp ult i64 %i.dk, %i.dl
  br label %.thread.i.i119

.thread.i.i119:                                   ; preds = %bb.ah, %bb.ag
  %i.dn = phi i1 [ %i.dm, %bb.ah ], [ true, %bb.ag ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dn, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i115: ; preds = %.critedge.i113
  %i.dq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 48) #26
  br label %common.resume

bb.ai:                                            ; preds = %bb.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 48) #26
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120: ; preds = %bb.ae, %.thread.i.i119, %bb.ai
  %.sroa.09.0.i112 = phi ptr [ %.19.i.i.i.i106, %bb.ae ], [ %i.dc, %.thread.i.i119 ], [ %i.dg, %bb.ai ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i112, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !98 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !147
  %i.du = and i32 %i.dt, 17
  %.not.i83 = icmp eq i32 %i.du, 0
  br i1 %.not.i83, label %bb.aj, label %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit87

bb.aj:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr @.str.34, ptr %9, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.dv, align 8, !tbaa !46
  call void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %9)
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit87: ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit120
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.dz = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.am, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, !prof !35

bb.am:                                            ; preds = %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit87
  %i.eb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i81 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i81, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ec = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i: ; preds = %bb.ao, %bb.am, %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit87
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ee, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !37
  %i.eh = icmp ult i64 %i.eg, %.1.i               ; 2 uses
  %.19.i.i.i.i = select i1 %i.eh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.eh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i100, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ei = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.ei, label %.critedge.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !37
  %i.el = icmp ult i64 %.1.i, %i.ek
  br i1 %i.el, label %.critedge.i, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.aq, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.aq ], [ %.19.i.i.i.i, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.em = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 3 uses
  store i64 %.1.i, ptr %i.en, align 8, !tbaa !95
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr null, ptr %i.eo, align 8, !tbaa !96
  %i.ep = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %bb.ar unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.ar:                                            ; preds = %.critedge.i
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 4 uses
  %.not.i.i101 = icmp eq ptr %i.er, null
  br i1 %.not.i.i101, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i4.i = icmp ne ptr %i.eq, null
  %i.es = icmp eq ptr %i.er, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.es
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !37
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !37
  %i.ew = icmp ult i64 %i.eu, %i.ev
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.at, %bb.as
  %i.ex = phi i1 [ %i.ew, %bb.at ], [ true, %bb.as ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ex, ptr noundef nonnull %i.em, ptr noundef nonnull %i.er, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.ey = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 48) #26
  br label %common.resume

bb.au:                                            ; preds = %bb.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 48) #26
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit: ; preds = %bb.aq, %.thread.i.i, %bb.au
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.aq ], [ %i.em, %.thread.i.i ], [ %i.eq, %bb.au ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !98 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !147
  %i.fe = and i32 %i.fd, 17
  %.not.i80 = icmp eq i32 %i.fe, 0
  br i1 %.not.i80, label %bb.av, label %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit

bb.av:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr @.str.34, ptr %11, align 8, !tbaa !45
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.ff, align 8, !tbaa !46
  call void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dead_on_return %11)
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit: ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !37 ; 2 uses
  %i.fj = icmp eq i64 %i.dy, %i.fi
  br i1 %i.fj, label %bb.ay, label %.preheader.i

bb.ay:                                            ; preds = %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit
  %i.fk = load ptr, ptr %i.g, align 8, !tbaa !91  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ay, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fk, %bb.ay ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.ay ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !37
  %i.fn = icmp ult i64 %i.fm, %i.co               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fn, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fn, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fo = icmp eq ptr %.19.i.i.i.i.i, %i.h
  br i1 %i.fo, label %.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !37
  %i.fr = icmp ult i64 %i.co, %i.fq
  br i1 %i.fr, label %.critedge.i.i, label %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit.i

.critedge.i.i:                                    ; preds = %bb.az, %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i.i, %bb.ay
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.az ], [ %.19.i.i.i.i.i, %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i.i ], [ %i.h, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %3, ptr %12, align 8, !tbaa !263
  %i.fs = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 3 uses
  store i64 %i.co, ptr %i.ft, align 8, !tbaa !266
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  store i32 -1, ptr %i.fu, align 8, !tbaa !267
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  store ptr %i.fs, ptr %i.i, align 8, !tbaa !270
  %i.fw = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
          to label %bb.ba unwind label %bb.bd     ; 2 uses

bb.ba:                                            ; preds = %.critedge.i.i
  %i.fx = extractvalue { ptr, ptr } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { ptr, ptr } %i.fw, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.fy, null
  br i1 %.not.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i.i79 = icmp ne ptr %i.fx, null
  %i.fz = icmp eq ptr %i.fy, %i.h
  %or.cond.i.i.i = select i1 %.not.i.i.i79, i1 true, i1 %i.fz
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gb = load i64, ptr %i.ft, align 8, !tbaa !37
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !37
  %i.gd = icmp ult i64 %i.gb, %i.gc
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bc, %bb.bb
  %i.ge = phi i1 [ %i.gd, %bb.bc ], [ true, %bb.bb ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ge, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #24
  %i.gf = load i64, ptr %i.j, align 8, !tbaa !97
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.j, align 8, !tbaa !97
  br label %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

bb.bd:                                            ; preds = %.critedge.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

bb.be:                                            ; preds = %bb.ba
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !148 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !149
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #26
  br label %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.bf, %bb.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 72) #26
  br label %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %.thread.i, %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i
  %.sroa.0.010.i = phi ptr [ %i.fs, %.thread.i ], [ %i.fx, %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit.i

_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit, %bb.az
  %.sroa.06.0.i.i = phi ptr [ %.sroa.0.010.i, %_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test9framework4impl10order_infoEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit ], [ %.19.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 48 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 56 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !85 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 64 ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.gq, %i.gs
  br i1 %.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit.i
  store i64 %.1.i, ptr %i.gq, align 8, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gt, ptr %i.gp, align 8, !tbaa !85
  br label %_ZN5boost9unit_test9framework4implL26collect_dependant_siblingsEmmmRSt3mapImNS2_10order_infoESt4lessImESaISt4pairIKmS4_EEE.exit

bb.bh:                                            ; preds = %_ZNSt3mapImN5boost9unit_test9framework4impl10order_infoESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit.i
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !148 ; 4 uses
  %i.gv = ptrtoint ptr %i.gq to i64
  %i.gw = ptrtoint ptr %i.gu to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost10shared_ptrINS_9unit_test14runtime_config13stream_holder16callback_cleanerEED2Ev:bb.a
  br i1 %.not.i, label %_ZN5boost6detail12shared_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !16
  br label %_ZN5boost6detail12shared_countD2Ev.exit

_ZN5boost6detail12shared_countD2Ev.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost6detail15sp_counted_base7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24, !inline_history !617
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24, !inline_history !618
  br label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

_ZN5boost6detail15sp_counted_base7releaseEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !619

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9unit_test9framework4impl14set_run_status5visitERKNS0_9test_unitE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %3 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %4 = alloca %"class.boost::unit_test::ut_detail::entry_value_collector", align 1 ; 7 uses
  %5 = alloca %"struct.boost::unit_test::log::begin", align 16 ; 6 uses
  %6 = alloca %"class.boost::unit_test::lazy_ostream_impl.211", align 8 ; 8 uses
  %7 = alloca %"class.boost::unit_test::lazy_ostream_impl.212", align 8 ; 8 uses
  %8 = alloca %"class.boost::unit_test::lazy_ostream_impl.213", align 8 ; 8 uses
  %9 = alloca %"class.boost::unit_test::lazy_ostream_impl.214", align 8 ; 8 uses
  %10 = alloca %"class.boost::unit_test::lazy_ostream_impl.215", align 8 ; 8 uses
  %11 = alloca %"class.boost::unit_test::lazy_ostream_impl.216", align 8 ; 8 uses
  %12 = alloca %"class.boost::unit_test::lazy_ostream_impl.217", align 8 ; 8 uses
  %13 = alloca %"class.boost::unit_test::lazy_ostream_impl.218", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %i.e, i32 %i.g, i32 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.072.080 = phi ptr [ %i.m, %.lr.ph ], [ %i.dp, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.ar = load i64, ptr %.sroa.072.080, align 8, !tbaa !37 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.as = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.d, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i

common.resume:                                    ; preds = %bb.g, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bt, %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.aw, %bb.g ], [ %i.bz, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %common.resume

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i: ; preds = %bb.f, %bb.d, %bb.c
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !37
  %i.ba = icmp ult i64 %i.az, %i.ar               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ba, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ba, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bb = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.bb, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !37
  %i.be = icmp ult i64 %i.ar, %i.bd
  br i1 %i.be, label %.critedge.i, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.bf = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store i64 %i.ar, ptr %i.bg, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr null, ptr %i.bh, align 8, !tbaa !96
  %i.bi = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.i unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1      ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i63, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i4.i = icmp ne ptr %i.bj, null
  %i.bl = icmp eq ptr %i.bk, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.bl
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bn = load i64, ptr %i.bg, align 8, !tbaa !37
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !37
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %i.bq = phi i1 [ %i.bp, %bb.k ], [ true, %bb.j ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bq, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bk, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 48) #26
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 48) #26
  br label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit: ; preds = %bb.h, %.thread.i.i, %bb.l
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %i.bf, %.thread.i.i ], [ %i.bj, %bb.l ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !98 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !147
  %i.bx = and i32 %i.bw, 17
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %bb.m, label %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit

bb.m:                                             ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr @.str.34, ptr %3, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.34, i64 22), ptr %i.by, align 8, !tbaa !46
  call void @_ZN5boost9unit_test9framework14internal_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dead_on_return %3)
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework14internal_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit: ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEEixERS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 220
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !86
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !86
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ce = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !185, !nonnull !75, !align !186
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store <2 x ptr> <ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @.str.37, i64 20)>, ptr %5, align 16, !tbaa !49
  store i64 0, ptr %i.q, align 16, !tbaa !309
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test15unit_test_log_tlsERKNS0_3log5beginE(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @_ZN5boost9unit_test15unit_test_log_tclENS0_9log_levelE(ptr dead_on_unwind nonnull writable sret(%"class.boost::unit_test::ut_detail::entry_value_collector") align 1 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i8 0, ptr %i.r, align 8, !tbaa !311, !alias.scope !637
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA16_cRA16_KcEE, i64 16), ptr %13, align 8, !tbaa !62, !alias.scope !637
  store <2 x ptr> <ptr @_ZN5boost9unit_test12lazy_ostream4instE, ptr @.str.43>, ptr %i.s, align 8, !tbaa !165, !alias.scope !637
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 0, ptr %i.t, align 8, !tbaa !311, !alias.scope !638
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EE, i64 16), ptr %12, align 8, !tbaa !62, !alias.scope !638
  store ptr %13, ptr %i.u, align 8, !tbaa !639, !alias.scope !638
  store ptr %i.cg, ptr %i.v, align 8, !tbaa !640, !alias.scope !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 32, ptr %i.a, align 1, !tbaa !60
  store i8 0, ptr %i.w, align 8, !tbaa !311, !alias.scope !641
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EE, i64 16), ptr %11, align 8, !tbaa !62, !alias.scope !641
  store ptr %12, ptr %i.x, align 8, !tbaa !642, !alias.scope !641
  store ptr %i.a, ptr %i.y, align 8, !tbaa !49, !alias.scope !641
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNK5boost9unit_test9test_unit9full_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(280) %i.bv)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.z, align 8, !tbaa !311, !alias.scope !643
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSK_EE, i64 16), ptr %10, align 8, !tbaa !62, !alias.scope !643
  store ptr %11, ptr %i.aa, align 8, !tbaa !644, !alias.scope !643
  store ptr %14, ptr %i.ab, align 8, !tbaa !48, !alias.scope !643
  store i8 0, ptr %i.ac, align 8, !tbaa !311, !alias.scope !645
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSK_EEA26_cRA26_S4_EE, i64 16), ptr %9, align 8, !tbaa !62, !alias.scope !645
  store ptr %10, ptr %i.ad, align 8, !tbaa !646, !alias.scope !645
  store ptr @.str.44, ptr %i.ae, align 8, !tbaa !49, !alias.scope !645
  store i8 0, ptr %i.ag, align 8, !tbaa !311, !alias.scope !647
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS1_INS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSK_EEA26_cRA26_S4_EES9_SB_EE, i64 16), ptr %8, align 8, !tbaa !62, !alias.scope !647
  store ptr %9, ptr %i.ah, align 8, !tbaa !648, !alias.scope !647
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !640, !alias.scope !647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 32, ptr %i.b, align 1, !tbaa !60
  store i8 0, ptr %i.aj, align 8, !tbaa !311, !alias.scope !649
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS1_INS1_INS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSK_EEA26_cRA26_S4_EES9_SB_EEcSD_EE, i64 16), ptr %7, align 8, !tbaa !62, !alias.scope !649
  store ptr %8, ptr %i.ak, align 8, !tbaa !650, !alias.scope !649
  store ptr %i.b, ptr %i.al, align 8, !tbaa !49, !alias.scope !649
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNK5boost9unit_test9test_unit9full_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.am, align 8, !tbaa !311, !alias.scope !651
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS1_INS1_INS1_INS1_INS1_INS0_12lazy_ostreamEA16_cRA16_KcEENS0_13basic_cstringIS4_EERKS9_EEcRS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSK_EEA26_cRA26_S4_EES9_SB_EEcSD_EESK_SM_EE, i64 16), ptr %6, align 8, !tbaa !62, !alias.scope !651
  store ptr %7, ptr %i.an, align 8, !tbaa !652, !alias.scope !651
  store ptr %15, ptr %i.ao, align 8, !tbaa !48, !alias.scope !651
  %i.ch = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9unit_test9ut_detail21entry_value_collectorlsERKNS0_12lazy_ostreamE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %bb.s unwind label %bb.aa      ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ap
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !60
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.cm = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aq
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cq = load ptr, ptr %i.j, align 8, !tbaa !81  ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !149
  %.not.i56 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not.i56, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  store i64 %i.ar, ptr %i.cs, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !85
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !148 ; 4 uses
end_hunk_4

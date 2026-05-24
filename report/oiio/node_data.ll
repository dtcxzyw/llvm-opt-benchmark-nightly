inline.NumInlined: 533
inline.NumDeleted: 287
begin_hunk_0_@_ZN4YAML6detail9node_data6removeERNS0_4nodeERKSt10shared_ptrINS0_13memory_holderEE:bb.a

bb.l:                                             ; preds = %bb.k, %.preheader
  %.not20 = icmp eq ptr %i.f, %i.c
  br i1 %.not20, label %._crit_edge, label %.preheader, !llvm.loop !106

bb.m:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEEZNS4_9node_data6removeERS5_RKSt10shared_ptrINS4_13memory_holderEEE3$_0ET_SL_SL_T0_.exit"
  %i.aq = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.ar = sub i64 %i.aq, %i.q
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %.not.i.i = icmp eq ptr %i.at, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.p, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.ay = load ptr, ptr %.0910.i.i.i.i.i.i.i.prol, align 8, !tbaa !55
  store ptr %i.ay, ptr %.0811.i.i.i.i.i.i.i.prol, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !107

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.aw, 4
  br i1 %i.bf, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !55
  store ptr %i.bg, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !55
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !55
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !68
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 48
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !55
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 56
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 64
  %i.ce = add nsw i64 %.012.i.i.i.i.i.i.i, -4
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i.i.i, 4
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, !llvm.loop !109

_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.m, %bb.n
  %i.cg = getelementptr inbounds i8, ptr %i.o, i64 -16
  store ptr %i.cg, ptr %i.n, align 8, !tbaa !50
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEEZNS4_9node_data6removeERS5_RKSt10shared_ptrINS4_13memory_holderEEE3$_0ET_SL_SL_T0_.exit.thread"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEEZNS4_9node_data6removeERS5_RKSt10shared_ptrINS4_13memory_holderEEE3$_0ET_SL_SL_T0_.exit.thread": ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEEZNS4_9node_data6removeERS5_RKSt10shared_ptrINS4_13memory_holderEEE3$_0ET_SL_SL_T0_.exit", %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ], [ false, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4YAML6detail4nodeES6_ESt6vectorIS7_SaIS7_EEEEZNS4_9node_data6removeERS5_RKSt10shared_ptrINS4_13memory_holderEEE3$_0ET_SL_SL_T0_.exit" ], [ false, %._crit_edge.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6detail9node_data23convert_sequence_to_mapERKSt10shared_ptrINS0_13memory_holderEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt4pairIPN4YAML6detail4nodeES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIPN4YAML6detail4nodeES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !50
  br label %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i

_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIPN4YAML6detail4nodeES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not8.i.i.i, label %_ZN4YAML6detail9node_data9reset_mapEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.f, %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i ] ; 2 uses
  %i.g = load ptr, ptr %.09.i.i.i, align 8, !tbaa !42 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.09.i.i.i) #23
  %.not.i.i1.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i1.i, label %_ZN4YAML6detail9node_data9reset_mapEv.exit, label %.lr.ph.i.i.i, !llvm.loop !51

_ZN4YAML6detail9node_data9reset_mapEv.exit:       ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorISt4pairIPN4YAML6detail4nodeES4_ESaIS5_EE5clearEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.e, ptr %i.h, align 8, !tbaa !41
  store ptr %i.e, ptr %i.e, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !46
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %_ZN4YAML6detail9node_data14reset_sequenceEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4YAML6detail9node_data9reset_mapEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ag = icmp eq ptr %i.bm, %i.bn
  br i1 %i.ag, label %_ZN4YAML6detail9node_data14reset_sequenceEv.exit, label %_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.bn, ptr %i.k, align 8, !tbaa !47
  br label %_ZN4YAML6detail9node_data14reset_sequenceEv.exit

_ZN4YAML6detail9node_data14reset_sequenceEv.exit: ; preds = %_ZN4YAML6detail9node_data9reset_mapEv.exit, %._crit_edge, %_ZSt8_DestroyIPPN4YAML6detail4nodeES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.ai, align 8, !tbaa !39
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.030)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.b
  %i.ak = load ptr, ptr %1, align 8, !tbaa !99
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102
  %i.am = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML6detail6memory11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %_ZN4YAML6detail13memory_holder11create_nodeEv.exit unwind label %bb.h ; 3 uses

_ZN4YAML6detail13memory_holder11create_nodeEv.exit: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  store ptr %i.o, ptr %3, align 8, !tbaa !8, !alias.scope !116
  store i64 0, ptr %i.p, align 8, !tbaa !12, !alias.scope !116
  store i8 0, ptr %i.o, align 8, !tbaa !15, !alias.scope !116
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !117, !noalias !116 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  %4 = load ptr, ptr %i.r, align 8, !noalias !116 ; 2 uses
  %5 = icmp ugt ptr %i.an, %4
  %.08.i.i.i = select i1 %5, ptr %i.an, ptr %4    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4YAML6detail13memory_holder11create_nodeEv.exit
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !121, !noalias !116 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !45, !alias.scope !116 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.o
  br i1 %i.av, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN4YAML6detail13memory_holder11create_nodeEv.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  invoke void @_ZN4YAML6detail4node12mark_definedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62 ; 3 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 2, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4YAML6detail4node10set_scalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

_ZN4YAML6detail4node10set_scalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.ba = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.o
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML6detail4node10set_scalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML6detail4node10set_scalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.030
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !55
  invoke void @_ZN4YAML6detail9node_data15insert_map_pairERNS0_4nodeES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.be)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.u, ptr %2, align 8, !tbaa !88
  %i.bf = load i64, ptr %i.w, align 8
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  store ptr %i.v, ptr %i.bg, align 8, !tbaa !88
  store ptr %i.x, ptr %i.n, align 8, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.y, align 8, !tbaa !88
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !45  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.z
  br i1 %i.bi, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.bh) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.y, align 8, !tbaa !88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #22
  store ptr %i.ab, ptr %2, align 8, !tbaa !88
  %i.bj = load i64, ptr %i.ad, align 8
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  store ptr %i.ac, ptr %i.bk, align 8, !tbaa !88
  store i64 0, ptr %i.ae, align 8, !tbaa !122
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.af) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bl = add nuw i64 %.030, 1                    ; 2 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !46  ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = icmp ult i64 %i.bl, %i.br
  br i1 %i.bs, label %bb.b, label %._crit_edge, !llvm.loop !124

bb.g:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZNSolsEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.o
  br i1 %i.bx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.au, %bb.d ], [ %i.bw, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bv, %bb.i ]
  call void @_ZdlPv(ptr noundef %.sink) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bv, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.body, %bb.g
  %.pn14.pn = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %i.bu, %bb.h ], [ %.pn, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.b) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML9ExceptionE, i64 16), ptr %0, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.h = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.j, ptr %i.a, align 8, !tbaa !87
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %i.f, align 8, !tbaa !45
  %i.m = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.m, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !15
  store i8 %i.o, ptr %i.n, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !12
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.g:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !125
  %i.c = icmp eq i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, -1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, -1
  %or.cond = select i1 %or.cond.i, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK4YAML4Mark7is_nullEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !8
  %i.k = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !87
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !45
  %i.p = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.p, ptr %i.j, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !15
  store i8 %i.r, ptr %i.q, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !12
  %i.u = load ptr, ptr %0, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.k

_ZNK4YAML4Mark7is_nullEv.exit.thread:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK4YAML4Mark7is_nullEv.exit.thread
  %i.y = load i32, ptr %i.d, align 4, !tbaa !126
  %i.z = add nsw i32 %i.y, 1
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.z)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.e
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !127
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ad)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.f
  %i.ag = load ptr, ptr %2, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !8, !alias.scope !134
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !12, !alias.scope !134
  store i8 0, ptr %i.ak, align 8, !tbaa !15, !alias.scope !134
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !117, !noalias !134 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !134 ; 2 uses
  %6 = icmp ugt ptr %5, %i.an
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.an    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !121, !noalias !134 ; 2 uses
  %i.aq = ptrtoint ptr %.08.i.i.i to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !45, !alias.scope !134 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ak
  br i1 %i.aw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.av) #23
  br label %.body

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !88
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !88
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bd, ptr %i.w, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.be, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.bg) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.be, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #22
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bk, ptr %3, align 8, !tbaa !88
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !122
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %bb.f, %bb.e, %_ZNK4YAML4Mark7is_nullEv.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.j ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.au, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML6detail6memory11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail4node12mark_definedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !16, !range !53, !noundef !54
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4YAML6detail8node_ref12mark_definedEv.exit

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.e, align 8, !tbaa !39
  br label %_ZN4YAML6detail8node_ref12mark_definedEv.exit

_ZN4YAML6detail8node_ref12mark_definedEv.exit:    ; preds = %bb.b, %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.not7 = icmp eq ptr %i.j, %i.k
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4YAML6detail8node_ref12mark_definedEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  invoke void @_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.m)
          to label %_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE5clearEv.exit: ; preds = %._crit_edge
  store ptr null, ptr %i.l, align 8, !tbaa !140
  store ptr %i.k, ptr %i.i, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.p, align 8, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.q, align 8, !tbaa !142
  br label %bb.e

.lr.ph:                                           ; preds = %_ZN4YAML6detail8node_ref12mark_definedEv.exit, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.t, %.lr.ph ], [ %i.j, %_ZN4YAML6detail8node_ref12mark_definedEv.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  tail call void @_ZN4YAML6detail4node12mark_definedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s)
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.08) #27 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a, %_ZNSt3setIPN4YAML6detail4nodeENS2_4lessESaIS3_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  tail call void @_ZNSt8_Rb_treeIPN4YAML6detail4nodeES3_St9_IdentityIS3_ENS2_4lessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
end_hunk_0

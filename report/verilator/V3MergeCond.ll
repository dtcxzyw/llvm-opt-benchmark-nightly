Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3MergeCond?download=true
inline.NumInlined: 1694
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN15VNUserInUseBase8checkcntEiRjRKb:bb.a
  %i.ax = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  tail call void @_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !292

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorI11V3DupFinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN8V3HasherD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZN8V3HasherD2Ev.exit:                            ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11V3DupFinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN8V3HasherD2Ev.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZN8V3HasherD2Ev.exit.i.i.i.i:                    ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZN8V3HasherD2Ev.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169
  invoke void @_ZNSt8_Rb_treeI6V3HashSt4pairIKS0_P7AstNodeESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(64) %.05.i.i, ptr noundef %i.i)
          to label %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i.i:        ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !176
  br label %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI11V3DupFinderSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZNSt12_Vector_baseI11V3DupFinderSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI11V3DupFinderSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP11V3DupFinderS0_EvT_S2_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8V3HasherD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN12VNUser4InUseD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable

_ZN12VNUser4InUseD2Ev.exit:                       ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor5visitEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !177  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.m, ptr %i.o, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.p, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.r, align 8, !tbaa !190
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.i, align 8, !tbaa !177
  br label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorI11V3DupFinderSaIS0_EE17_M_realloc_insertIJR8V3HasherEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  br label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit

_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit:   ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.v, align 8, !tbaa !155 ; 4 uses
  %i.w = add i16 %.sroa.0.0.copyload.i.i.i, -484
  %spec.select.i.i = icmp ult i16 %i.w, -79
  br i1 %spec.select.i.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117  ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !302, !nonnull !73, !align !303
  %i.ab = invoke fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclIJEEERS2_PS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.r       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !304
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.v, align 8, !tbaa !155 ; 2 uses
  %i.ac = add i16 %.sroa.0.0.copyload.i.i.i.i.i, -472
  %spec.select.i.i.i.i = icmp ult i16 %i.ac, -6
  br i1 %spec.select.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !137 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.af, align 8, !tbaa !155
  switch i16 %.sroa.0.0.copyload.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i [
    i16 302, label %_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i
    i16 269, label %_ZN7AstNode4castI6AstAndS_EEPT_PT0_.exit.i.i.i
  ]

_ZN7AstNode4castI6AstAndS_EEPT_PT0_.exit.i.i.i:   ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !148 ; 3 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZN7AstNode4castI6AstAndS_EEPT_PT0_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.0.0.copyload.i.i.i24.i.i.i = load i16, ptr %i.ai, align 8, !tbaa !155
  %i.aj = icmp eq i16 %.sroa.0.0.copyload.i.i.i24.i.i.i, 302
  br i1 %i.aj, label %_ZN7AstNode4castI7AstCond11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i

_ZN7AstNode4castI7AstCond11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %.not.i26.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i26.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.i.i.i

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.i.i.i: ; preds = %_ZN7AstNode4castI7AstCond11AstNodeExprEEPT_PT0_.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.0.0.copyload.i.i.i27.i.i.i = load i16, ptr %i.am, align 8, !tbaa !155
  %i.an = icmp eq i16 %.sroa.0.0.copyload.i.i.i27.i.i.i, 121
  br i1 %i.an, label %_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i

bb.k:                                             ; preds = %bb.g
  %i.ao = and i16 %.sroa.0.0.copyload.i.i.i.i.i, -2
  %spec.select.i.i22.not.i.i = icmp eq i16 %i.ao, 480
  br i1 %spec.select.i.i22.not.i.i, label %_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i

_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i: ; preds = %bb.k, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.i.i.i, %bb.i
  %.sink41.i.i = phi ptr [ %i.ah, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.i.i.i ], [ %i.ae, %bb.i ], [ %1, %bb.k ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !137 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i32.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i, %bb.l
  %.333.i.i = phi ptr [ %i.au, %bb.l ], [ %i.aq, %_ZN12_GLOBAL__N_118extractCondFromRhsEP7AstNode.exit.thread.i.i ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.333.i.i, i64 64
  %.sroa.0.0.copyload.i.i.i24.i.i = load i16, ptr %i.ar, align 8, !tbaa !155
  %i.as = icmp eq i16 %.sroa.0.0.copyload.i.i.i24.i.i, 311
  br i1 %i.as, label %bb.l, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.333.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.i: ; preds = %.lr.ph.i.i
  store ptr %.333.i.i, ptr %i.ab, align 8, !tbaa !145
  br i1 %.0.shrunk, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !305 ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.ay = invoke ptr @_ZN11V3DupFinder13findDuplicateEP7AstNodeP19V3DupFinderUserSame(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull %.333.i.i, ptr noundef null)
          to label %bb.n unwind label %bb.s       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -56 ; 3 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !306, !nonnull !73
  %i.bd = invoke i32 @_ZNK8V3HasherclEP7AstNode(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull %.333.i.i)
          to label %.noexc.i unwind label %bb.t   ; 2 uses

.noexc.i:                                         ; preds = %bb.o
  %i.be = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30
          to label %.noexc48.i unwind label %bb.t ; 3 uses

.noexc48.i:                                       ; preds = %.noexc.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.333.i.i, ptr %i.bg, align 8, !tbaa !309
  %i.bh = getelementptr inbounds i8, ptr %i.aw, i64 -48
  %.078.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !191 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, null
  br i1 %.not9.i.i.i.i.i, label %bb.q, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc48.i, %.lr.ph.i.i.i.i.i
  %.0710.i.i.i.i.i = phi ptr [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i, %.noexc48.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i.i, i64 32
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !310
  %i.bk = icmp ult i32 %i.bd, %i.bj               ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.bk, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.07.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.07.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i.i, !llvm.loop !293

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = icmp eq ptr %.0710.i.i.i.i.i, %i.ay
  %spec.select.i.i.i47.i = or i1 %i.bl, %i.bk
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc48.i
  %.0.lcssa.i16.i.i.i.i = phi ptr [ %i.az, %.noexc48.i ], [ %.0710.i.i.i.i.i, %bb.p ]
  %i.bm = phi i1 [ true, %.noexc48.i ], [ %spec.select.i.i.i47.i, %bb.p ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bm, ptr noundef nonnull %i.be, ptr noundef nonnull %.0.lcssa.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #25
  %i.bn = getelementptr inbounds i8, ptr %i.aw, i64 -24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !192
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %.333.i.i, i64 128
  %i.br = ptrtoint ptr %1 to i64
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !22
  %i.bs = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.333.i.i, i64 136
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !193
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor16extractConditionEPK11AstNodeStmt.exit.thread.i

bb.r:                                             ; preds = %bb.ah, %bb.ag, %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor15checkPropertiesEP7AstNode.exit.i.i, %bb.ae, %_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.s:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %.noexc.i, %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !309 ; 5 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.bz, align 8, !tbaa !155
  %i.ca = add i16 %.sroa.0.0.copyload.i.i.i.i, -371
  %spec.select.i.i.i = icmp ult i16 %i.ca, -269
  br i1 %spec.select.i.i.i, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.cb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.7, i32 noundef 1063)
          to label %.noexc49.i unwind label %bb.y ; 0 uses

.noexc49.i:                                       ; preds = %bb.w
  %i.cc = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc50.i unwind label %bb.y ; 2 uses

.noexc50.i:                                       ; preds = %.noexc49.i
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.20, i64 noundef 55)
          to label %.noexc51.i unwind label %bb.y ; 0 uses

.noexc51.i:                                       ; preds = %.noexc50.i
  %.sroa.0.0.copyload.i.i5.i.i = load i16, ptr %i.bz, align 8, !tbaa !155
  %i.ce = zext i16 %.sroa.0.0.copyload.i.i5.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !156
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cg)
          to label %.noexc52.i unwind label %bb.y ; 2 uses

.noexc52.i:                                       ; preds = %.noexc51.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.21, i64 noundef 1)
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor5visitEP7AstNode:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !188
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  invoke void @_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertISt23_Rb_tree_const_iteratorIS2_EEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr %i.eb, ptr nonnull %i.ec)
          to label %bb.ai unwind label %bb.r

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load ptr, ptr %i.x, align 8, !tbaa !304 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.eg = load <4 x i8>, ptr %i.ee, align 8, !tbaa !154
  %i.eh = load <4 x i8>, ptr %i.ef, align 8, !tbaa !154
  %i.ei = or <4 x i8> %i.eh, %i.eg
  store <4 x i8> %i.ei, ptr %i.ef, align 8, !tbaa !154
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 108
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !200, !range !72, !noundef !73
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 108 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4, !tbaa !200, !range !72, !noundef !73
  %i.en = or i8 %i.em, %i.ek
  store i8 %i.en, ptr %i.el, align 4, !tbaa !200
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeStmtEP11AstNodeStmtb.exit

bb.aj:                                            ; preds = %bb.y, %bb.t, %bb.s, %bb.r
  %.pn42.i = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.ct, %bb.y ], [ %i.bv, %bb.s ], [ %i.bw, %bb.t ]
  store ptr %i.y, ptr %i.x, align 8, !tbaa !117
  resume { ptr, i32 } %.pn42.i

_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeStmtEP11AstNodeStmtb.exit: ; preds = %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit.i, %bb.ai
  store ptr %i.y, ptr %i.x, align 8, !tbaa !117
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit:      ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit
  %.not67 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %.not67, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit
  %i.eo = getelementptr i8, ptr %1, i64 152
  %.val = load ptr, ptr %i.eo, align 8, !tbaa !212 ; 10 uses
  %i.ep = getelementptr i8, ptr %1, i64 176
  %.val20 = load i8, ptr %i.ep, align 8, !tbaa !314 ; 2 uses
  %i.eq = and i8 %.val20, -3
  %spec.select.i.i25 = icmp eq i8 %i.eq, 0
  br i1 %spec.select.i.i25, label %bb.al, label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !304 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.et, align 8, !tbaa !191 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %bb.al ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !213 ; 2 uses
  %i.ex = icmp ult ptr %.val, %i.ew               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ex, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i26, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ex, label %._crit_edge.thread.i.i.i.i, label %bb.an

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.al
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.eu, %bb.al ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !188
  %i.fa = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.ez
  br i1 %i.fa, label %select.unfold.i.i.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.fb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #27
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !213
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i.i
  %i.fc = phi ptr [ %.pre.i.i.i, %bb.am ], [ %i.ew, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.am ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.fd = icmp ult ptr %i.fc, %.val
  br i1 %i.fd, label %select.unfold.i.i.i, label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

select.unfold.i.i.i:                              ; preds = %bb.an, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.an ] ; 3 uses
  %i.fe = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.eu
  br i1 %i.fe, label %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %select.unfold.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !213
  %i.fh = icmp ult ptr %.val, %i.fg
  br label %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i: ; preds = %bb.ao, %select.unfold.i.i.i
  %i.fi = phi i1 [ %i.fh, %bb.ao ], [ true, %select.unfold.i.i.i ]
  %i.fj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %.val, ptr %i.fk, align 8, !tbaa !213
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.fj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.eu) #25
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !192
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !192
  br label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i: ; preds = %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, %bb.an, %bb.ak
  %i.fo = add i8 %.val20, -1
  %spec.select.i5.i = icmp ult i8 %i.fo, 2
  br i1 %spec.select.i5.i, label %bb.ap, label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i

bb.ap:                                            ; preds = %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !304 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 64 ; 3 uses
  %.02022.i.i.i6.i = load ptr, ptr %i.fr, align 8, !tbaa !191 ; 2 uses
  %.not23.i.i.i7.i = icmp eq ptr %.02022.i.i.i6.i, null
  br i1 %.not23.i.i.i7.i, label %._crit_edge.thread.i.i.i24.i, label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i8.i:                                  ; preds = %bb.ap, %.lr.ph.i.i.i8.i
  %.02024.i.i.i9.i = phi ptr [ %.020.i.i.i12.i, %.lr.ph.i.i.i8.i ], [ %.02022.i.i.i6.i, %bb.ap ] ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.02024.i.i.i9.i, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !213 ; 2 uses
  %i.fv = icmp ult ptr %.val, %i.fu               ; 2 uses
  %.in.v.i.i.i10.i = select i1 %i.fv, i64 16, i64 24
  %.in.i.i.i11.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i9.i, i64 %.in.v.i.i.i10.i
  %.020.i.i.i12.i = load ptr, ptr %.in.i.i.i11.i, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %.020.i.i.i12.i, null
  br i1 %.not.i.i.i13.i, label %._crit_edge.i.i.i14.i, label %.lr.ph.i.i.i8.i, !llvm.loop !3

._crit_edge.i.i.i14.i:                            ; preds = %.lr.ph.i.i.i8.i
  br i1 %i.fv, label %._crit_edge.thread.i.i.i24.i, label %bb.ar

._crit_edge.thread.i.i.i24.i:                     ; preds = %._crit_edge.i.i.i14.i, %bb.ap
  %.019.lcssa29.i.i.i25.i = phi ptr [ %.02024.i.i.i9.i, %._crit_edge.i.i.i14.i ], [ %i.fs, %bb.ap ] ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !188
  %i.fy = icmp eq ptr %.019.lcssa29.i.i.i25.i, %i.fx
  br i1 %i.fy, label %select.unfold.i.i21.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.thread.i.i.i24.i
  %i.fz = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i25.i) #27
  %.phi.trans.insert.i.i26.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %.pre.i.i27.i = load ptr, ptr %.phi.trans.insert.i.i26.i, align 8, !tbaa !213
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i14.i
  %i.ga = phi ptr [ %.pre.i.i27.i, %bb.aq ], [ %i.fu, %._crit_edge.i.i.i14.i ]
  %.019.lcssa28.i.i.i15.i = phi ptr [ %.019.lcssa29.i.i.i25.i, %bb.aq ], [ %.02024.i.i.i9.i, %._crit_edge.i.i.i14.i ]
  %i.gb = icmp ult ptr %i.ga, %.val
  br i1 %i.gb, label %select.unfold.i.i21.i, label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i

select.unfold.i.i21.i:                            ; preds = %bb.ar, %._crit_edge.thread.i.i.i24.i
  %.sroa.4.0.i.ph.i.i22.i = phi ptr [ %.019.lcssa29.i.i.i25.i, %._crit_edge.thread.i.i.i24.i ], [ %.019.lcssa28.i.i.i15.i, %bb.ar ] ; 3 uses
  %i.gc = icmp eq ptr %.sroa.4.0.i.ph.i.i22.i, %i.fs
  br i1 %i.gc, label %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i23.i, label %bb.as

bb.as:                                            ; preds = %select.unfold.i.i21.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i22.i, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !213
  %i.gf = icmp ult ptr %.val, %i.ge
  br label %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i23.i

_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i23.i: ; preds = %bb.as, %select.unfold.i.i21.i
  %i.gg = phi i1 [ %i.gf, %bb.as ], [ true, %select.unfold.i.i21.i ]
  %i.gh = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %.val, ptr %i.gi, align 8, !tbaa !213
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gg, ptr noundef nonnull %i.gh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i22.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fs) #25
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fq, i64 96 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !192
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !192
  br label %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i

_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i: ; preds = %_ZNSt8_Rb_treeIPK6AstVarS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i23.i, %bb.ar, %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i
  %i.gm = tail call noundef zeroext i1 @_ZNK6AstVar11isSigPublicEv(ptr noundef nonnull align 8 dereferenceable(280) %.val)
  br i1 %i.gm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.val, i64 260
  %i.go = load i64, ptr %i.gn, align 4
  %i.gp = and i64 %i.go, 6755399441055744
  %or.cond.not.i = icmp eq i64 %i.gp, 0
  br i1 %or.cond.not.i, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit, label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt3setIPK6AstVarSt4lessIS2_ESaIS2_EE6insertERKS2_.exit29.i
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !304
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 108
  store i8 1, ptr %i.gs, align 4, !tbaa !200
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit

bb.av:                                            ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !304 ; 5 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = add i16 %.sroa.0.0.copyload.i.i.i, -287
  %spec.select.i.i.i.i30 = icmp ult i16 %i.gw, 3
  br i1 %spec.select.i.i.i.i30, label %_ZN7AstNode4castI12AstNodeCCallS_EEPT_PT0_.exit.i.i, label %_ZN7AstNode2isI10AstDisplayS_EEbPKT0_.exit.i.i

_ZN7AstNode4castI12AstNodeCCallS_EEPT_PT0_.exit.i.i: ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !313 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 315
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = and i8 %i.ha, 4
  %.not.i.i31 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i31, label %_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN7AstNode4castI12AstNodeCCallS_EEPT_PT0_.exit.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 313
  %i.hd = load i16, ptr %i.hc, align 1
  %i.he = and i16 %i.hd, 8192
  %.not24.i.i = icmp eq i16 %i.he, 0
  br i1 %.not24.i.i, label %bb.ay, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit

bb.ay:                                            ; preds = %bb.ax
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 105
  store i8 1, ptr %i.hf, align 1, !tbaa !196
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 106
  store i8 1, ptr %i.hg, align 2, !tbaa !197
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 107
  store i8 1, ptr %i.hh, align 1, !tbaa !198
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit

_ZN7AstNode2isI10AstDisplayS_EEbPKT0_.exit.i.i:   ; preds = %bb.aw
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i [
    i16 422, label %bb.az
    i16 457, label %bb.az
  ]

bb.az:                                            ; preds = %_ZN7AstNode2isI10AstDisplayS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI10AstDisplayS_EEbPKT0_.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 105
  store i8 1, ptr %i.hi, align 1, !tbaa !196
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit

_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i: ; preds = %_ZN7AstNode2isI10AstDisplayS_EEbPKT0_.exit.i.i, %_ZN7AstNode4castI12AstNodeCCallS_EEPT_PT0_.exit.i.i
  %i.hj = load ptr, ptr %1, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 208
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(152) %1), !inline_history !295
  br i1 %i.hm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i
  %i.hn = load ptr, ptr %1, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 160
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = tail call noundef zeroext i1 %i.hp(ptr noundef nonnull align 8 dereferenceable(152) %1), !inline_history !295
  br i1 %i.hq, label %bb.bb, label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit

bb.bb:                                            ; preds = %bb.ba, %_ZN7AstNode2isI7AstStopS_EEbPKT0_.exit.thread.i.i
  %i.hr = load ptr, ptr %i.gt, align 8, !tbaa !304
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 104
  store i8 1, ptr %i.hs, align 8, !tbaa !199
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit

_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit: ; preds = %bb.av, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit

_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit: ; preds = %bb.au, %bb.at, %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeNodeEP7AstNode.exit, %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor11analyzeStmtEP11AstNodeStmtb.exit
  br i1 %.0.shrunk, label %_ZNSt6vectorI11V3DupFinderSaIS0_EE8pop_backEv.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !131
  %.not19 = icmp eq ptr %i.hu, null
  br i1 %.not19, label %bb.bd, label %_ZNSt6vectorI11V3DupFinderSaIS0_EE8pop_backEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !177 ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -64 ; 2 uses
  store ptr %i.hx, ptr %i.hv, align 8, !tbaa !177
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !185 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i32, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN8V3HasherD2Ev.exit.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  tail call void @__clang_call_terminate(ptr %i.ib) #28
  unreachable

_ZN8V3HasherD2Ev.exit.i.i:                        ; preds = %bb.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 1) #26
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN8V3HasherD2Ev.exit.i.i, %bb.bd
  %i.ic = getelementptr inbounds i8, ptr %i.hw, i64 -48
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !169
  invoke void @_ZNSt8_Rb_treeI6V3HashSt4pairIKS0_P7AstNodeESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noundef %i.id)
          to label %_ZNSt6vectorI11V3DupFinderSaIS0_EE8pop_backEv.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  tail call void @__clang_call_terminate(ptr %i.if) #28
  unreachable

_ZNSt6vectorI11V3DupFinderSaIS0_EE8pop_backEv.exit: ; preds = %bb.bg, %bb.bc, %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitor13analyzeVarRefEP9AstVarRef.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorI11V3DupFinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitorD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZN12_GLOBAL__N_125CodeMotionAnalysisVisitorD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

declare void @_ZN7AstNode19iterateAndNextConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11V3DupFinderEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP11V3DupFinderEEvT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN8V3HasherD2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZN8V3HasherD2Ev.exit.i.i.i:                      ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZN8V3HasherD2Ev.exit.i.i.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169
  invoke void @_ZNSt8_Rb_treeI6V3HashSt4pairIKS0_P7AstNodeESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(64) %.05.i, ptr noundef %i.f)
          to label %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i:          ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP11V3DupFinderEEvT_S4_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIP11V3DupFinderEEvT_S4_.exit: ; preds = %_ZSt8_DestroyI11V3DupFinderEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11V3DupFinderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN8V3HasherD2Ev.exit unwind label %bb.c
end_hunk_1

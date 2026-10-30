Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgColorSCCs?download=true
inline.NumInlined: 405
inline.NumDeleted: 233
begin_hunk_0_@llvm.memset.p0.i64

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !86
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN32ColorStronglyConnectedComponents14visitColorSCCsERK9DfgVertex(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.30", align 8  ; 9 uses
  %3 = alloca %"class.std::function.30", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !168
  %i.c = add i32 %i.b, 1                          ; 5 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46, !nonnull !37, !align !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 8 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, %i.i
  br i1 %.not.i.i, label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.j, align 8, !tbaa !65
  store i32 %i.i, ptr %i.f, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit

_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store i32 %i.c, ptr %i.k, align 4, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %2, align 8, !tbaa !40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  store ptr @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.m, align 8, !tbaa !170
  store ptr @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.noexc21, %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit
  %.pre63 = phi ptr [ @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit ], [ %.pre, %.noexc21 ] ; 2 uses
  %.sroa.08.0.in.i = phi ptr [ %i.n, %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit ], [ %i.o, %.noexc21 ]
  %.sroa.08.0.i = load ptr, ptr %.sroa.08.0.in.i, align 8, !tbaa !66 ; 4 uses
  %.not.not.not.not.i.not = icmp eq ptr %.sroa.08.0.i, null
  br i1 %.not.not.not.not.i.not, label %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit, label %bb.c

bb.c:                                             ; preds = %thread-pre-split
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171  ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.p, null
  %i.q = select i1 %.not.i.i20, ptr %.sroa.08.0.i, ptr %i.p
  call void @llvm.prefetch.p0(ptr nonnull %i.q, i32 1, i32 3, i32 1)
  %.not.i.i.i = icmp eq ptr %.pre63, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc unwind label %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i:    ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !172
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %.noexc21 unwind label %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !166

.noexc21:                                         ; preds = %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  br i1 %i.u, label %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit, label %thread-pre-split

_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit: ; preds = %thread-pre-split, %.noexc21
  %i.v = phi ptr [ %.pre, %.noexc21 ], [ %.pre63, %thread-pre-split ] ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit, %bb.e
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !46, !nonnull !37, !align !38
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !63 ; 4 uses
  %.not.i.i22 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not.i.i22, label %_ZNSt14_Function_baseD2Ev.exit._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23_crit_edge, label %bb.g

_ZNSt14_Function_baseD2Ev.exit._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23_crit_edge: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre64 = load i32, ptr %i.k, align 4, !tbaa !64
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.ad, align 8, !tbaa !65
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23

_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23: ; preds = %_ZNSt14_Function_baseD2Ev.exit._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23_crit_edge, %bb.g
  %i.ae = phi i32 [ %.pre64, %_ZNSt14_Function_baseD2Ev.exit._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23_crit_edge ], [ 0, %bb.g ]
  %i.af = icmp eq i32 %i.ae, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.af, label %bb.h, label %bb.x

bb.h:                                             ; preds = %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !173
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !173 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 84 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !61
  %.not.i.i24 = icmp eq i32 %i.ao, %i.ac
  br i1 %.not.i.i24, label %._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25_crit_edge, label %bb.j

._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 92
  %.pre65 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i64 0, ptr %i.ap, align 8, !tbaa !65
  store i32 %i.ac, ptr %i.an, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25

_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25: ; preds = %._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25_crit_edge, %bb.j
  %i.aq = phi i32 [ %.pre65, %._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25_crit_edge ], [ 0, %bb.j ]
  %i.ar = icmp uge i32 %i.aq, %i.c
  br label %bb.k

bb.k:                                             ; preds = %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25, %bb.h
  %.not = phi i1 [ false, %bb.h ], [ %i.ar, %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit25 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.au, align 8
  %i.av = ptrtoint ptr %1 to i64
  store i64 %i.av, ptr %3, align 8, !tbaa !69
  store ptr @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E0_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.at, align 8, !tbaa !170
  store ptr @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.as, align 8, !tbaa !44
  %.sroa.08.0.i27110 = load ptr, ptr %i.n, align 8, !tbaa !66 ; 2 uses
  %.not.not.not.not.i28.not.not.not111.not = icmp eq ptr %.sroa.08.0.i27110, null
  br i1 %.not.not.not.not.i28.not.not.not111.not, label %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34, label %.lr.ph115

thread-pre-split88:                               ; preds = %.noexc33
  %.sroa.08.0.i27 = load ptr, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  %.not.not.not.not.i28.not.not.not.not = icmp eq ptr %.sroa.08.0.i27, null
  br i1 %.not.not.not.not.i28.not.not.not.not, label %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.k, %thread-pre-split88
  %.sroa.08.0.i27113 = phi ptr [ %.sroa.08.0.i27, %thread-pre-split88 ], [ %.sroa.08.0.i27110, %bb.k ] ; 3 uses
  %.pre67112 = phi ptr [ %.pre66, %thread-pre-split88 ], [ @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i27113, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !171 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ax, null
  %i.ay = select i1 %.not.i.i29, ptr %.sroa.08.0.i27113, ptr %i.ax
  call void @llvm.prefetch.p0(ptr nonnull %i.ay, i32 1, i32 3, i32 1)
  %.not.i.i.i30 = icmp eq ptr %.pre67112, null
  br i1 %.not.i.i.i30, label %bb.l, label %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i31

bb.l:                                             ; preds = %.lr.ph115
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.l
  unreachable

_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i31:  ; preds = %.lr.ph115
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i27113, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !172
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !170
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !166

.noexc33:                                         ; preds = %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i31
  %.pre66 = load ptr, ptr %i.as, align 8, !tbaa !44 ; 3 uses
  br i1 %i.bc, label %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34, label %thread-pre-split88

_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34: ; preds = %thread-pre-split88, %.noexc33, %bb.k
  %.not.not.not.not.i28.not.not.not106 = phi i1 [ %.not, %bb.k ], [ %.not, %thread-pre-split88 ], [ true, %.noexc33 ]
  %4 = phi ptr [ @_ZNSt17_Function_handlerIFbRK9DfgVertexEZN32ColorStronglyConnectedComponents14visitColorSCCsES2_EUlS2_E0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, %bb.k ], [ %.pre66, %.noexc33 ], [ %.pre66, %thread-pre-split88 ] ; 2 uses
  %.not.i35 = icmp eq ptr %4, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.m

bb.m:                                             ; preds = %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34
  %i.bd = invoke noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %_ZNK9DfgVertex11foreachSinkESt8functionIFbRKS_EE.exit34, %bb.m
  br i1 %.not.not.not.not.i28.not.not.not106, label %bb.o, label %bb.v

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !20
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !20
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !46, !nonnull !37, !align !38
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !63 ; 2 uses
  %.not.i.i37 = icmp eq i32 %i.bl, %i.bn
  br i1 %.not.i.i37, label %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %i.bk, align 8, !tbaa !65
  store i32 %i.bn, ptr %i.f, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit

_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit: ; preds = %bb.o, %bb.p
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !64
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !173 ; 2 uses
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !173 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit, %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit45
  %i.br = phi ptr [ %i.bs, %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit45 ], [ %i.bp, %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 84 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !61
  %i.bw = load i32, ptr %i.bm, align 8, !tbaa !63 ; 2 uses
  %.not.i.i38 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not.i.i38, label %.lr.ph._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39_crit_edge, label %bb.q

.lr.ph._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39_crit_edge: ; preds = %.lr.ph
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %i.bt, i64 92
  %.pre69 = load i32, ptr %.phi.trans.insert68, align 4, !tbaa !64
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39

bb.q:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  store i64 0, ptr %i.bx, align 8, !tbaa !65
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39

_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39: ; preds = %.lr.ph._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39_crit_edge, %bb.q
  %i.by = phi i32 [ %.pre69, %.lr.ph._ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39_crit_edge ], [ 0, %bb.q ]
  %i.bz = icmp ult i32 %i.by, %i.c
  br i1 %i.bz, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit, label %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit45

.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i, %bb.d
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %.not.i40 = icmp eq ptr %i.ca, null
  br i1 %.not.i40, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #21
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFbRK9DfgVertexEEclES2_.exit.i31, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ce, null
  br i1 %.not.i42, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit45: ; preds = %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.cj = load i32, ptr %i.bg, align 8, !tbaa !20
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !64
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !174
  %i.ck = icmp eq ptr %i.bo, %i.bs
  br i1 %i.ck, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit, label %.lr.ph, !llvm.loop !167

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit36
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !46, !nonnull !37, !align !38
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cn = load i32, ptr %i.f, align 4, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !63 ; 2 uses
  %.not.i.i46 = icmp eq i32 %i.cn, %i.cp
  br i1 %.not.i.i46, label %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit47, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.cm, align 8, !tbaa !65
  store i32 %i.cp, ptr %i.f, align 4, !tbaa !61
  br label %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit47

_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit47: ; preds = %bb.v, %bb.w
  store i32 0, ptr %i.cm, align 8, !tbaa !64
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit

bb.x:                                             ; preds = %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit23
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !174 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %.not.i.i48 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %1, ptr %i.cr, align 8, !tbaa !69
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !174
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 4 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.aa, label %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #22 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store ptr %1, ptr %i.dh, align 8, !tbaa !69
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.ab, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.dk = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dm) #19
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIPK9DfgVertexSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.dg, ptr %i.ag, align 8, !tbaa !21
  store ptr %i.dj, ptr %i.cq, align 8, !tbaa !174
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dn, ptr %i.cs, align 8, !tbaa !22
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK9DfgVertexSaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit45, %_ZN32ColorStronglyConnectedComponents5indexERK9DfgVertex.exit39, %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit, %_ZNSt6vectorIPK9DfgVertexSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.y, %_ZN32ColorStronglyConnectedComponents9componentERK9DfgVertex.exit47
  ret void

_ZNSt14_Function_baseD2Ev.exit41:                 ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp118, %bb.r ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.t ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #15
end_hunk_0

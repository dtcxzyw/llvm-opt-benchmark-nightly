Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_node?download=true
inline.NumInlined: 9612
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZNK6casadi6MXNode4dispERSob:bb.a
  %i.u = add nuw nsw i64 %.0, 1                   ; 2 uses
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.u)
          to label %_ZNSolsEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEx.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEx.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.0 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !61
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.ae = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !60
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.aj = load ptr, ptr %4, align 8, !tbaa !64    ; 3 uses
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ak
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ax)
          to label %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEx.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %bb.c
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %lpad.loopexit.split-lp33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.r, %bb.d ]
  call void @_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi6MXNode10can_inlineERSt3mapIPKS0_xSt4lessIS3_ESaISt4pairIKS3_xEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = icmp ult ptr %i.e, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread, label %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit

_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = icmp ult ptr %0, %i.i
  br i1 %i.j, label %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread, label %bb.f

_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.a, %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !96
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.b:                                             ; preds = %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %.not.i.i.i9 = icmp ne ptr %i.p, null
  %i.q = icmp eq ptr %i.o, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i9, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !90
  br label %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split

_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #33
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #33
  br label %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split

_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split: ; preds = %bb.e, %.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZNK6casadi6MXNode3depEx.exit, label %.loopexit

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split, %_ZNK6casadi6MXNode3depEx.exit
  %i.ai = phi ptr [ %i.an, %_ZNK6casadi6MXNode3depEx.exit ], [ %i.ad, %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split ]
  %.021 = phi i64 [ %i.al, %_ZNK6casadi6MXNode3depEx.exit ], [ 0, %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021
  %i.ak = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  tail call void @_ZNK6casadi6MXNode10can_inlineERSt3mapIPKS0_xSt4lessIS3_ESaISt4pairIKS3_xEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.al = add nuw nsw i64 %.021, 1                ; 2 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp slt i64 %i.al, %i.ar
  br i1 %i.as, label %_ZNK6casadi6MXNode3depEx.exit, label %.loopexit, !llvm.loop !432

bb.f:                                             ; preds = %_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEE4findERS7_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !96
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %0, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not = icmp eq i64 %i.az, 47
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.at, align 8, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6casadi6MXNode3depEx.exit, %_ZNSt8_Rb_treeIPKN6casadi6MXNodeESt4pairIKS3_xESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJS4_IS3_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit.split, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi6MXNode13print_compactERSt3mapIPKS0_xSt4lessIS3_ESaISt4pairIKS3_xEEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.5", align 8     ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPKN6casadi6MXNodeExSt4lessIS3_ESaISt4pairIKS3_xEEEixEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %.noexc unwind label %bb.e     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !55, !alias.scope !440
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.h, ptr %0, align 8, !tbaa !59, !alias.scope !440
  %i.o = load i64, ptr %i.i, align 8, !tbaa !60
  store i64 %i.o, ptr %i.g, align 8, !tbaa !60, !alias.scope !440
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !61, !alias.scope !440
  store ptr %i.i, ptr %i.f, align 8, !tbaa !59
  store i64 0, ptr %i.q, align 8, !tbaa !61
  store i8 0, ptr %i.i, align 8, !tbaa !60
  %i.s = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.am

bb.e:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !60
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 6 uses
  %i.al = icmp ugt i64 %i.ak, 288230376151711743
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #35
          to label %.noexc35 unwind label %bb.h

.noexc35:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %.loopexit64.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

.loopexit64.thread:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %._crit_edge

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.an = shl nuw nsw i64 %i.aj, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36
          to label %.noexc36 unwind label %bb.h   ; 4 uses

.noexc36:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.ao, ptr %5, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !66
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc36, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.ao, %.noexc36 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.noexc36 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc36 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ar, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !61
  store i8 0, ptr %i.ar, align 8, !tbaa !60
  %i.at = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !435

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc36
  %.lcssa137.unr = phi ptr [ poison, %.noexc36 ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ao, %.noexc36 ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ak, %.noexc36 ], [ %i.at, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_0

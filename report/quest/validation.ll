Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/validation?download=true
inline.NumInlined: 5002
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 319
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc:._crit_edge.i.i.i
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  store i64 %i.gs, ptr %i.do, align 8, !tbaa !23
  %i.gt = load ptr, ptr %11, align 8, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gs
  store i8 0, ptr %i.gu, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.dp, align 8, !tbaa !41
  store ptr null, ptr %i.dq, align 8, !tbaa !42
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !35
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !43
  store i64 0, ptr %i.dt, align 8, !tbaa !44
  %i.gv = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i85, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit93, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %12, ptr %3, align 8, !tbaa !46
  %i.gw = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i86 unwind label %bb.x ; 3 uses

.noexc.i.i86:                                     ; preds = %bb.r, %.noexc.i.i86
  %.0.i.i.i.i.i.i87 = phi ptr [ %i.gy, %.noexc.i.i86 ], [ %i.gw, %bb.r ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i87, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i88 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i88, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i89, label %.noexc.i.i86, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i89: ; preds = %.noexc.i.i86
  store ptr %.0.i.i.i.i.i.i87, ptr %i.dr, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i89
  %.0.i.i7.i.i.i.i90 = phi ptr [ %i.gw, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i89 ], [ %i.ha, %bb.s ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i90, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i91 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i8.i.i.i.i91, label %bb.t, label %bb.s, !llvm.loop !1

bb.t:                                             ; preds = %bb.s
  store ptr %.0.i.i7.i.i.i.i90, ptr %i.ds, align 8, !tbaa !48
  %i.hb = load i64, ptr %i.an, align 8, !tbaa !44
  store i64 %i.hb, ptr %i.dt, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.gw, ptr %i.dq, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit93

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit93: ; preds = %bb.t, %bb.q
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.gk, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %2)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit93
  %i.hc = load ptr, ptr %i.dq, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.hc)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit94 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit94: ; preds = %bb.u
  %i.hf = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.dn
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit94
  %i.hh = load i64, ptr %i.dn, align 8, !tbaa !26
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0107.0151, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.hj, %i.da
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i.i67

.preheader:                                       ; preds = %._crit_edge.i.i.i67
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !25 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

bb.w:                                             ; preds = %.noexc76
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !25 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.w
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !26
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !25 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !26
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.1
  %i.ic = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %.thread124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1
  %i.if = load i64, ptr %i.id, align 8, !tbaa !26
  br label %.thread124.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %.preheader
  %i.ig = load i64, ptr %i.hn, align 8, !tbaa !26
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.ih) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103: ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  %i.ii = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %.thread124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !26
  br label %.thread124.sink.split

.thread124.sink.split:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1
  %.sink198 = phi i64 [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2 ]
  %.sink = phi ptr [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1 ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2 ]
  %.pn38.pn129.ph = phi { ptr, i32 } [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.1 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.2 ]
  %i.im = add i64 %.sink198, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.im) #30
  br label %.thread124

.thread124:                                       ; preds = %.thread124.sink.split, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1
  %.pn38.pn129 = phi { ptr, i32 } [ %i.hp, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit100.1 ], [ %i.hk, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit103 ], [ %.pn38.pn129.ph, %.thread124.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i82, %.noexc.i52
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.x:                                             ; preds = %bb.r
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit93
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn41 = phi { ptr, i32 } [ %i.io, %bb.y ], [ %i.in, %bb.x ] ; 2 uses
  %i.ip = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.dn
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.z
  %i.ir = load i64, ptr %i.dn, align 8, !tbaa !26
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.z, %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn38.pn129, %.thread124 ], [ %.pn36, %bb.n ], [ %.pn41, %bb.z ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %.thread
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn.pn123, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn41.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_assign_uniqueIPKS8_EEvT_SI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !171
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.sink.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !171
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit: ; preds = %bb.b, %.sink.split.i
  %i.j = phi ptr [ %i.e, %bb.b ], [ %.sink.i, %.sink.split.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  store ptr %i.k, ptr %i.d, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !44
  %.not13 = icmp eq ptr %1, %2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit
  %i.n = phi ptr [ %i.bb, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit ], [ %i.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ] ; 8 uses
  %.014 = phi ptr [ %i.bc, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit ], [ %1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ] ; 6 uses
  %i.o = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(40) %.014)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 5 uses
  %.not.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i6, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.q = extractvalue { ptr, ptr } %i.o, 0
  %.not.i.i = icmp ne ptr %i.q, null
  %i.r = icmp eq ptr %i.p, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.t) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = load ptr, ptr %.014, align 8, !tbaa !25
  %i.aa = tail call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ab = sub i64 %i.t, %i.v
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ac = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.c
  %i.ad = phi i1 [ %i.ac, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  %.not.i.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i.i8, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 7 uses
  store ptr %i.af, ptr %i.c, align 8, !tbaa !171
  %.not9.i.i = icmp eq ptr %i.af, null
  br i1 %.not9.i.i, label %4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.ag, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %storemerge.i.i = phi ptr [ %i.am, %.preheader.i.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.am, null
  br i1 %.not11.i.i, label %bb.h, label %.preheader.i.i, !llvm.loop !169

bb.h:                                             ; preds = %.preheader.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ao, null
  %spec.store.select.i.i = select i1 %.not12.i.i, ptr %storemerge.i.i, ptr %i.ao ; 2 uses
  store ptr %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !171
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr null, ptr %i.ap, align 8, !tbaa !47
  br label %bb.j

4:                                                ; preds = %bb.e
  store ptr null, ptr %3, align 8, !tbaa !109
  br label %bb.j

bb.j:                                             ; preds = %4, %bb.i, %bb.h, %bb.g
  %i.aq = phi ptr [ null, %4 ], [ %i.af, %bb.i ], [ %spec.store.select.i.i, %bb.h ], [ %i.af, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.av = load i64, ptr %i.at, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %5 = load ptr, ptr %i.f, align 8, !tbaa !110, !nonnull !53, !align !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.014)
          to label %.noexc7 unwind label %bb.k

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i
  %6 = load ptr, ptr %i.f, align 8, !tbaa !110, !nonnull !53, !align !54
  %i.ax = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33
          to label %.noexc10 unwind label %bb.k   ; 2 uses

.noexc10:                                         ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %.014)
          to label %.noexc7 unwind label %bb.k

.noexc7:                                          ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, %.noexc10
  %i.ay = phi ptr [ %i.aq, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ], [ null, %.noexc10 ]
  %.0.i = phi ptr [ %i.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ], [ %i.ax, %.noexc10 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #27
  %i.az = load i64, ptr %i.m, align 8, !tbaa !44
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.m, align 8, !tbaa !44
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit: ; preds = %.noexc7, %.noexc
  %i.bb = phi ptr [ %i.ay, %.noexc7 ], [ %i.n, %.noexc ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bc, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !170

bb.k:                                             ; preds = %.noexc10, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.bd

._crit_edge.loopexit:                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_20_Reuse_or_alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !110
  %.pre16 = load ptr, ptr %3, align 8, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit
  %i.be = phi ptr [ %.pre16, %._crit_edge.loopexit ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  %i.bf = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef %i.be)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110, !nonnull !53, !align !54
  %i.c = load ptr, ptr %0, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::map", align 8          ; 15 uses
  %6 = alloca [3 x %"struct.std::pair"], align 8  ; 30 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::map", align 8          ; 10 uses
  %i.d = zext nneg i32 %0 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = sext i32 %0 to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 21, ptr %i.c, align 8, !tbaa !30
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc22 unwind label %bb.j   ; 2 uses

.noexc22:                                         ; preds = %._crit_edge.i.i.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !25
  %i.n = load i64, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.m, ptr noundef nonnull align 1 dereferenceable(21) @.str.604, i64 21, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.e, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106
  %i.v = load ptr, ptr %1, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 18, ptr %i.b, align 8, !tbaa !30
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc25 unwind label %bb.k   ; 2 uses

.noexc25:                                         ; preds = %.noexc22
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  store ptr %i.x, ptr %i.s, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.x, ptr noundef nonnull align 1 dereferenceable(18) @.str.603, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !46
  %i.am = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.noexc25
  %i.an = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.ao = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %.noexc25
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.az) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bg = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !106
  %i.bm = load ptr, ptr %1, align 8, !tbaa !107
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 4
  %i.br = icmp eq i64 %i.e, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !24
  %i.bt = load ptr, ptr @_ZN6report29DIAG_MATR_WRONG_NUM_NEW_ELEMSB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report29DIAG_MATR_WRONG_NUM_NEW_ELEMSB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !30
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i26, label %._crit_edge.i.i

.noexc.i26:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
end_hunk_0

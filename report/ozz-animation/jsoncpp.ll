Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4Json17CharReaderBuilder8validateEPNS_5ValueE:_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit.i
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.bx, %bb.bm
  %i.px = phi ptr [ %i.pq, %bb.bm ], [ %i.sk, %bb.bx ] ; 3 uses
  %.sroa.gep37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %spec.store.select.sroa.sel = select i1 %.not, ptr %i.e, ptr %.sroa.gep37
  %i.py = load i16, ptr %spec.store.select.sroa.sel, align 8
  %trunc.i = trunc i16 %i.py to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.bp
    i8 6, label %bb.bn
  ]

bb.bn:                                            ; preds = %._crit_edge
  %i.pz = load ptr, ptr %spec.store.select, align 8, !tbaa !50 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !129
  %i.qc = icmp eq i64 %i.qb, 0
  br i1 %i.qc, label %_ZNK4Json5Value4sizeEv.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qe = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.qd) #45
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !50
  %i.qh = add i32 %i.qg, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.bp:                                            ; preds = %._crit_edge
  %i.qi = load ptr, ptr %spec.store.select, align 8, !tbaa !50
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !129
  %i.ql = trunc i64 %i.qk to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %._crit_edge, %bb.bn, %bb.bo, %bb.bp
  %.0.i = phi i32 [ 0, %bb.bn ], [ %i.ql, %bb.bp ], [ %i.qh, %bb.bo ], [ 0, %._crit_edge ]
  %i.qm = load ptr, ptr %i.po, align 8, !tbaa !189 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.px, %i.qm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4Json5Value4sizeEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.qs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.px, %_ZNK4Json5Value4sizeEv.exit ] ; 3 uses
  %i.qn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !50
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20
  %i.qs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.qs, %i.qm
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNK4Json5Value4sizeEv.exit
  %i.qt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.px, %_ZNK4Json5Value4sizeEv.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.qu = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !191
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qy) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.qz = load ptr, ptr %i.j, align 8, !tbaa !186
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.qz)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ra = landingpad { ptr, i32 }
          catch ptr null
  %i.rb = extractvalue { ptr, i32 } %i.ra, 0
  call void @__clang_call_terminate(ptr %i.rb) #42
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.rc = icmp eq i32 %.0.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  ret i1 %i.rc

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i196.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bt:                                            ; preds = %.lr.ph, %bb.bx
  %i.re = phi ptr [ %i.pq, %.lr.ph ], [ %i.sk, %bb.bx ] ; 2 uses
  %.041 = phi i64 [ 0, %.lr.ph ], [ %i.sl, %bb.bx ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.re, i64 %.041 ; 4 uses
  %i.rg = load ptr, ptr %i.j, align 8, !tbaa !186 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.rg, null
  %.pre46 = load ptr, ptr %i.rf, align 8          ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %.pre47 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 5 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.bt, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.rg, %bb.bt ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.i, %bb.bt ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre47, i64 %i.ri) ; 2 uses
  %i.rj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.rj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i22
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !78
  %i.rm = call i32 @memcmp(ptr noundef %i.rl, ptr noundef %.pre46, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.rm, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i22
  %i.rn = sub i64 %i.ri, %.pre47
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.rn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.rm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ro = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ro, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i23, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i22, !llvm.loop !20

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.rp = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.rp, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.rq = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i24 = call i64 @llvm.umin.i64(i64 %i.rq, i64 %.pre47) ; 2 uses
  %i.rr = icmp eq i64 %.sroa.speculated.i.i.i.i.i24, 0
  br i1 %i.rr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25: ; preds = %bb.bu
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.rs = load ptr, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel, align 8, !tbaa !78
  %i.rt = call i32 @memcmp(ptr noundef %.pre46, ptr noundef %i.rs, i64 noundef %.sroa.speculated.i.i.i.i.i24) #40 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %bb.bu
  %i.ru = sub i64 %.pre47, %i.rq
  %spec.select7.i.i.i.i.i.i30 = call i64 @llvm.smax.i64(i64 %i.ru, i64 -2147483648)
  %.08.i.i.i.i.i.i31 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i30, i64 2147483647)
  %.0.i6.i.i.i.i.i32 = trunc nsw i64 %.08.i.i.i.i.i.i31 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29
  %.0.i.i.i.i.i28 = phi i32 [ %i.rt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25 ], [ %.0.i6.i.i.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29 ]
  %i.rv = icmp slt i32 %.0.i.i.i.i.i28, 0
  br i1 %i.rv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bx

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %bb.bt, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %.pre46, i64 %.pre47
  %i.rx = invoke noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pn, ptr noundef %.pre46, ptr noundef %i.rw)
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rz = load ptr, ptr %i.rf, align 8, !tbaa !78 ; 2 uses
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !49
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  %i.sc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %spec.store.select, ptr noundef %i.rz, ptr noundef %i.sb)
          to label %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bw ; 4 uses

_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bv
  %.not.i = icmp eq ptr %i.rx, null
  %_ZN4JsonL5kNullE..i = select i1 %.not.i, ptr @_ZN4JsonL5kNullE, ptr %i.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %_ZN4JsonL5kNullE..i)
          to label %_ZN4Json5ValueaSERKS0_.exit unwind label %bb.bw

_ZN4Json5ValueaSERKS0_.exit:                      ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 2 uses
  %i.se = load i16, ptr %i.sd, align 8
  %16 = load <8 x i16>, ptr %i.pv, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.sc, align 8, !tbaa !50
  %i.sf = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.sf, ptr %i.sc, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8, !tbaa !50
  %17 = shufflevector <8 x i16> %16, <8 x i16> poison, <2 x i32> zeroinitializer
  %18 = and <2 x i16> %17, <i16 511, i16 -512>
  %19 = insertelement <2 x i16> poison, i16 %i.se, i64 0
  %20 = shufflevector <2 x i16> %19, <2 x i16> poison, <2 x i32> zeroinitializer
  %21 = and <2 x i16> %20, <i16 -512, i16 511>
  %22 = or disjoint <2 x i16> %18, %21            ; 2 uses
  %23 = extractelement <2 x i16> %22, i64 0
  store i16 %23, ptr %i.sd, align 8
  %24 = extractelement <2 x i16> %22, i64 1
  store i16 %24, ptr %i.pv, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !130
  %i.si = load ptr, ptr %i.pw, align 8, !tbaa !130
  store ptr %i.si, ptr %i.sg, align 8, !tbaa !130
  store ptr %i.sh, ptr %i.pw, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre = load ptr, ptr %15, align 8, !tbaa !190
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.bv, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #40
  br label %bb.by

bb.bx:                                            ; preds = %_ZN4Json5ValueaSERKS0_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.sk = phi ptr [ %.pre, %_ZN4Json5ValueaSERKS0_.exit ], [ %i.re, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ] ; 2 uses
  %i.sl = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.sl, %i.pu
  br i1 %exitcond.not, label %._crit_edge, label %bb.bt, !llvm.loop !528

bb.by:                                            ; preds = %bb.bw, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %i.sj, %bb.bw ], [ %i.rd, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.by
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.by ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %.pn58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i ], [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i ], [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value14getMemberNamesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %trunc = trunc i16 %i.c to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.75, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #44
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !50
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.o, %i.p
  br i1 %.not91, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.sroa.050.095 = phi ptr [ %.sroa.050.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 12 uses
  %.sroa.10.094 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 8 uses
  %.sroa.047.093 = phi ptr [ %i.bf, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ %i.o, %bb.j ] ; 3 uses
  %.sroa.15.092 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.094, %.sroa.15.092
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.q = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.q, ptr %.sroa.10.094, align 8, !tbaa !192
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.10.094 to i64        ; 2 uses
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.m, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
          to label %.noexc unwind label %.loopexit.split-lp68

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #43
          to label %.noexc19 unwind label %.loopexit67 ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !192
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.050.095, %.sroa.10.094
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = add i64 %i.r, -8
  %i.ag = sub i64 %i.af, %i.s                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 24
  %i.aj = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp ult i64 %i.ag, 120
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 4611686018427387888     ; 4 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.050.095, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 4 uses
  %next.gep153 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.ap = getelementptr i8, ptr %next.gep153, i64 32
  %i.aq = getelementptr i8, ptr %next.gep153, i64 64
  %i.ar = getelementptr i8, ptr %next.gep153, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep153, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load154 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load155 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !541, !noalias !540
end_hunk_0
begin_hunk_1_@_ZN4Json5Value11removeIndexEjPS0_:bb.a
bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %.1.i.i, %bb.e ] ; 5 uses
  %.0812.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.19.i.i, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  br i1 %.not.i.i.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  %i.m = icmp ult i32 %i.l, %1
  br i1 %i.m, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.l, 2                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.n)
  %i.o = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef null, i64 noundef %i.o) #45 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i: ; preds = %bb.d
  %.not8.i.i.i.i = icmp eq i32 %i.p, 0
  %i.r = icmp samesign ult i32 %i.n, %i.h
  %spec.select.i.i.i.i = select i1 %.not8.i.i.i.i, i1 %i.r, i1 false
  br i1 %spec.select.i.i.i.i, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i, label %bb.e

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i: ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i, %bb.d, %.split.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i, %.split.i.i
  %.sink.i.i = phi i64 [ 24, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i ], [ 16, %.split.i.i ], [ 16, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i ]
  %.19.i.i = phi ptr [ %.0812.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i ], [ %.013.i.i, %.split.i.i ], [ %.013.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 %.sink.i.i
  %.1.i.i = load ptr, ptr %i.s, align 8, !tbaa !192 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, label %bb.c, !llvm.loop !21

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i: ; preds = %bb.e
  %i.t = icmp eq ptr %.19.i.i, %i.g
  br i1 %i.t, label %_ZN4Json5Value8CZStringD2Ev.exit34, label %.split.i

.split.i:                                         ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50
  %i.w = icmp ult i32 %1, %i.v
  br i1 %i.w, label %_ZN4Json5Value8CZStringD2Ev.exit34, label %bb.f

bb.f:                                             ; preds = %.split.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i16 %i.z, -512
  %i.ad = and i16 %i.ab, -512
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !50
  %i.ae = load i64, ptr %4, align 8, !tbaa !50
  store i64 %i.ae, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8, !tbaa !50
  %i.af = and i16 %i.ab, 511
  %i.ag = or disjoint i16 %i.af, %i.ac
  store i16 %i.ag, ptr %i.y, align 8
  %i.ah = and i16 %i.z, 511
  %i.ai = or disjoint i16 %i.ad, %i.ah
  store i16 %i.ai, ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !130
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !130
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !130
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.an = load i16, ptr %i.a, align 8
  %trunc.i = trunc i16 %i.an to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.i
    i8 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNK4Json5Value4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.as) #45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i32, ptr %i.au, align 8, !tbaa !50
  br label %_ZNK4Json5Value4sizeEv.exit

bb.i:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %0, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !129
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %i.az, -1
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ -1, %bb.g ], [ %i.ba, %bb.i ], [ %i.av, %bb.h ], [ -1, %bb.f ] ; 5 uses
  %i.bb = icmp ult i32 %1, %.0.i
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN4Json5Value8CZStringD2Ev.exit, %_ZNK4Json5Value4sizeEv.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !186 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 6 uses
  %.not11.i.i37 = icmp eq ptr %i.bh, null
  br i1 %.not11.i.i37, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %._crit_edge
  %i.bj = lshr i32 %.0.i, 2                       ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i38
  %.013.i.i39 = phi ptr [ %i.bh, %.lr.ph.i.i38 ], [ %.1.i.i48, %bb.l ] ; 5 uses
  %.0812.i.i40 = phi ptr [ %i.bi, %.lr.ph.i.i38 ], [ %.19.i.i47, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i39, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !200 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i39, i64 40
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  br i1 %.not.i.i.i.i41, label %.split.i.i59, label %bb.k

.split.i.i59:                                     ; preds = %bb.j
  %i.bo = icmp ult i32 %i.bn, %.0.i
  br i1 %i.bo, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = lshr i32 %i.bn, 2                       ; 2 uses
  %.sroa.speculated.i.i.i.i42 = call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bp)
  %i.bq = zext nneg i32 %.sroa.speculated.i.i.i.i42 to i64
  %i.br = call i32 @memcmp(ptr noundef nonnull %i.bl, ptr noundef null, i64 noundef %i.bq) #45 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43: ; preds = %bb.k
  %.not8.i.i.i.i44 = icmp eq i32 %i.br, 0
  %i.bt = icmp samesign ult i32 %i.bp, %i.bj
  %spec.select.i.i.i.i45 = select i1 %.not8.i.i.i.i44, i1 %i.bt, i1 false
  br i1 %spec.select.i.i.i.i45, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58, label %bb.l

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58: ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43, %bb.k, %.split.i.i59
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43, %.split.i.i59
  %.sink.i.i46 = phi i64 [ 24, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58 ], [ 16, %.split.i.i59 ], [ 16, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43 ]
  %.19.i.i47 = phi ptr [ %.0812.i.i40, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i58 ], [ %.013.i.i39, %.split.i.i59 ], [ %.013.i.i39, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i43 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i39, i64 %.sink.i.i46
  %.1.i.i48 = load ptr, ptr %i.bu, align 8, !tbaa !192 ; 2 uses
  %.not.i.i49 = icmp eq ptr %.1.i.i48, null
  br i1 %.not.i.i49, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i50, label %bb.j, !llvm.loop !21

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i50: ; preds = %bb.l
  %i.bv = icmp eq ptr %.19.i.i47, %i.bi
  br i1 %i.bv, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24, label %.split.i57

.split.i57:                                       ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i50
  %i.bw = getelementptr inbounds nuw i8, ptr %.19.i.i47, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !50
  %i.by = icmp ult i32 %.0.i, %i.bx
  %spec.select = select i1 %i.by, ptr %i.bi, ptr %.19.i.i47
  br label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24

bb.m:                                             ; preds = %.lr.ph, %_ZN4Json5Value8CZStringD2Ev.exit
  %.01676 = phi i32 [ %1, %.lr.ph ], [ %i.bz, %_ZN4Json5Value8CZStringD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr null, ptr %5, align 8, !tbaa !200
  store i32 %.01676, ptr %i.bc, align 8, !tbaa !50
  %i.bz = add nuw i32 %.01676, 1                  ; 3 uses
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bz)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %0, align 8, !tbaa !50
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.o unwind label %bb.s       ; 4 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ca)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 8
  %6 = load <8 x i16>, ptr %i.bd, align 8
  %.sroa.0.0.copyload.i.i.i.i25 = load i64, ptr %i.cc, align 8, !tbaa !50
  %i.cf = load i64, ptr %3, align 8, !tbaa !50
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i25, ptr %3, align 8, !tbaa !50
  %7 = shufflevector <8 x i16> %6, <8 x i16> poison, <2 x i32> zeroinitializer
  %8 = and <2 x i16> %7, <i16 511, i16 -512>
  %9 = insertelement <2 x i16> poison, i16 %i.ce, i64 0
  %10 = shufflevector <2 x i16> %9, <2 x i16> poison, <2 x i32> zeroinitializer
  %11 = and <2 x i16> %10, <i16 -512, i16 511>
  %12 = or disjoint <2 x i16> %8, %11             ; 2 uses
  %13 = extractelement <2 x i16> %12, i64 0
  store i16 %13, ptr %i.cd, align 8
  %14 = extractelement <2 x i16> %12, i64 1
  store i16 %14, ptr %i.bd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !130
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !130
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !130
  store ptr %i.ch, ptr %i.be, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.cj = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN4Json5Value8CZStringD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.bc, align 8
  %i.cl = and i32 %i.ck, 3
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.r, label %_ZN4Json5Value8CZStringD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.cj) #40
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %exitcond.not = icmp eq i32 %i.bz, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !572

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %.not.i27 = icmp eq ptr %i.co, null
  br i1 %.not.i27, label %_ZN4Json5Value8CZStringD2Ev.exit28, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = load i32, ptr %i.bc, align 8
  %i.cq = and i32 %i.cp, 3
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.u, label %_ZN4Json5Value8CZStringD2Ev.exit28

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.co) #40
  br label %_ZN4Json5Value8CZStringD2Ev.exit28

_ZN4Json5Value8CZStringD2Ev.exit28:               ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.cn

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24: ; preds = %.split.i57, %._crit_edge, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i50
  %.sroa.0.0.i56 = phi ptr [ %i.bi, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i50 ], [ %spec.select, %.split.i57 ], [ %i.bi, %._crit_edge ]
  %i.cs = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i56, ptr noundef nonnull align 8 dereferenceable(32) %i.bi) #40 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.cu) #40, !inline_history !22
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !200 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4Json5Value8CZStringD2Ev.exit30, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = and i32 %i.cx, 3
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.w, label %_ZN4Json5Value8CZStringD2Ev.exit30

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.cv) #40, !inline_history !23
  br label %_ZN4Json5Value8CZStringD2Ev.exit30

_ZN4Json5Value8CZStringD2Ev.exit30:               ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit24, %bb.v, %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 80) #41, !inline_history !24
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !129
  %i.dc = add i64 %i.db, -1
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !129
  br label %_ZN4Json5Value8CZStringD2Ev.exit34

_ZN4Json5Value8CZStringD2Ev.exit34:               ; preds = %_ZN4Json5Value8CZStringD2Ev.exit30, %.split.i, %bb.b, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN4Json5Value8CZStringD2Ev.exit30 ], [ false, %.split.i ], [ false, %bb.b ], [ false, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.86", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.89", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2                         ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.d ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i, label %bb.c

.split.i.i.i:                                     ; preds = %bb.b
  %i.l = icmp ult i32 %i.k, %i.e
  br i1 %i.l, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i32 %i.k, 2                         ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.m)
  %i.n = zext nneg i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.o = tail call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef %i.g, i64 noundef %i.n) #45 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.c
  %.not8.i.i.i.i.i = icmp eq i32 %i.o, 0
  %i.q = icmp samesign ult i32 %i.m, %i.f
  %spec.select.i.i.i.i.i = select i1 %.not8.i.i.i.i.i, i1 %i.q, i1 false
  br i1 %spec.select.i.i.i.i.i, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i, label %bb.d

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i, %bb.c, %.split.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i, %.split.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %.split.i.i.i ], [ 16, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.thread.i.i.i ], [ %.013.i.i.i, %.split.i.i.i ], [ %.013.i.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit.i.i.i ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !21

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit: ; preds = %bb.d
  %i.s = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %i.v = icmp ult i32 %i.e, %i.u
  br i1 %i.v, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = lshr i32 %i.y, 2                         ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.f)
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !200
  %i.ab = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef %i.aa, i64 noundef %i.ab) #45 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit

_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit: ; preds = %bb.f
  %.not8.i.i = icmp eq i32 %i.ac, 0
  %i.ae = icmp samesign ult i32 %i.f, %i.z
  %spec.select.i.i = select i1 %.not8.i.i, i1 %i.ae, i1 false
  br i1 %spec.select.i.i, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f, %bb.a, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, %.split, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit
  %.08.lcssa.i.i.i11 = phi ptr [ %.19.i.i.i, %.split ], [ %.19.i.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit ], [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit ], [ %.19.i.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr %1, ptr %2, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.af = call ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.g

bb.g:                                             ; preds = %.split, %.critedge, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit
  %.sroa.06.0 = phi ptr [ %i.af, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessIN4Json5Value8CZStringEEclERKS2_S5_.exit ], [ %.19.i.i.i, %.split ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 48
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKcS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
end_hunk_1
begin_hunk_2_@_ZNK4Json19StreamWriterBuilder8validateEPNS_5ValueE:_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit.i
  br label %bb.au

._crit_edge:                                      ; preds = %bb.ay, %bb.an
  %i.jo = phi ptr [ %i.jh, %bb.an ], [ %i.mb, %bb.ay ] ; 3 uses
  %.sroa.gep37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %spec.store.select.sroa.sel = select i1 %.not, ptr %i.d, ptr %.sroa.gep37
  %i.jp = load i16, ptr %spec.store.select.sroa.sel, align 8
  %trunc.i = trunc i16 %i.jp to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.aq
    i8 6, label %bb.ao
  ]

bb.ao:                                            ; preds = %._crit_edge
  %i.jq = load ptr, ptr %spec.store.select, align 8, !tbaa !50 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !129
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %_ZNK4Json5Value4sizeEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jv = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ju) #45
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !50
  %i.jy = add i32 %i.jx, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.aq:                                            ; preds = %._crit_edge
  %i.jz = load ptr, ptr %spec.store.select, align 8, !tbaa !50
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !129
  %i.kc = trunc i64 %i.kb to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %._crit_edge, %bb.ao, %bb.ap, %bb.aq
  %.0.i = phi i32 [ 0, %bb.ao ], [ %i.kc, %bb.aq ], [ %i.jy, %bb.ap ], [ 0, %._crit_edge ]
  %i.kd = load ptr, ptr %i.jf, align 8, !tbaa !189 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jo, %i.kd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4Json5Value4sizeEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jo, %_ZNK4Json5Value4sizeEv.exit ] ; 3 uses
  %i.ke = load ptr, ptr %.05.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !50
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.kj, %i.kd
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNK4Json5Value4sizeEv.exit
  %i.kk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.jo, %_ZNK4Json5Value4sizeEv.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !191
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kp) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.kq = load ptr, ptr %i.i, align 8, !tbaa !186
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.kq)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #42
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.kt = icmp eq i32 %.0.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret i1 %i.kt

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112.i
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %.lr.ph, %bb.ay
  %i.kv = phi ptr [ %i.jh, %.lr.ph ], [ %i.mb, %bb.ay ] ; 2 uses
  %.041 = phi i64 [ 0, %.lr.ph ], [ %i.mc, %bb.ay ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %.041 ; 4 uses
  %i.kx = load ptr, ptr %i.i, align 8, !tbaa !186 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kx, null
  %.pre46 = load ptr, ptr %i.kw, align 8          ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.pre47 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 5 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.au, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.kx, %bb.au ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.h, %bb.au ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre47, i64 %i.kz) ; 2 uses
  %i.la = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.la, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i22
  %i.lb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !78
  %i.ld = call i32 @memcmp(ptr noundef %i.lc, ptr noundef %.pre46, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i22
  %i.le = sub i64 %i.kz, %.pre47
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.le, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ld, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.lf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.lf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i23, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i22, !llvm.loop !20

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.lg = icmp eq ptr %.19.i.i.i, %i.h
  br i1 %i.lg, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lf, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.lh = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %.sroa.speculated.i.i.i.i.i24 = call i64 @llvm.umin.i64(i64 %i.lh, i64 %.pre47) ; 2 uses
  %i.li = icmp eq i64 %.sroa.speculated.i.i.i.i.i24, 0
  br i1 %i.li, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25: ; preds = %bb.av
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v = select i1 %i.lf, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lj = load ptr, ptr %.19.i.i.i.sroa.sel36.v.sroa.sel.v.sroa.sel, align 8, !tbaa !78
  %i.lk = call i32 @memcmp(ptr noundef %.pre46, ptr noundef %i.lj, i64 noundef %.sroa.speculated.i.i.i.i.i24) #40 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %bb.av
  %i.ll = sub i64 %.pre47, %i.lh
  %spec.select7.i.i.i.i.i.i30 = call i64 @llvm.smax.i64(i64 %i.ll, i64 -2147483648)
  %.08.i.i.i.i.i.i31 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i30, i64 2147483647)
  %.0.i6.i.i.i.i.i32 = trunc nsw i64 %.08.i.i.i.i.i.i31 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29
  %.0.i.i.i.i.i28 = phi i32 [ %i.lk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i25 ], [ %.0.i6.i.i.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i29 ]
  %i.lm = icmp slt i32 %.0.i.i.i.i.i28, 0
  br i1 %i.lm, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ay

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %bb.au, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %.pre46, i64 %.pre47
  %i.lo = invoke noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.je, ptr noundef %.pre46, ptr noundef %i.ln)
          to label %bb.aw unwind label %bb.ax     ; 2 uses

bb.aw:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lq = load ptr, ptr %i.kw, align 8, !tbaa !78 ; 2 uses
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !49
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lr
  %i.lt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %spec.store.select, ptr noundef %i.lq, ptr noundef %i.ls)
          to label %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ax ; 4 uses

_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aw
  %.not.i = icmp eq ptr %i.lo, null
  %_ZN4JsonL5kNullE..i = select i1 %.not.i, ptr @_ZN4JsonL5kNullE, ptr %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %_ZN4JsonL5kNullE..i)
          to label %_ZN4Json5ValueaSERKS0_.exit unwind label %bb.ax

_ZN4Json5ValueaSERKS0_.exit:                      ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lv = load i16, ptr %i.lu, align 8
  %12 = load <8 x i16>, ptr %i.jm, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.lt, align 8, !tbaa !50
  %i.lw = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.lw, ptr %i.lt, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8, !tbaa !50
  %13 = shufflevector <8 x i16> %12, <8 x i16> poison, <2 x i32> zeroinitializer
  %14 = and <2 x i16> %13, <i16 511, i16 -512>
  %15 = insertelement <2 x i16> poison, i16 %i.lv, i64 0
  %16 = shufflevector <2 x i16> %15, <2 x i16> poison, <2 x i32> zeroinitializer
  %17 = and <2 x i16> %16, <i16 -512, i16 511>
  %18 = or disjoint <2 x i16> %14, %17            ; 2 uses
  %19 = extractelement <2 x i16> %18, i64 0
  store i16 %19, ptr %i.lu, align 8
  %20 = extractelement <2 x i16> %18, i64 1
  store i16 %20, ptr %i.jm, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !130
  %i.lz = load ptr, ptr %i.jn, align 8, !tbaa !130
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !130
  store ptr %i.ly, ptr %i.jn, align 8, !tbaa !130
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre = load ptr, ptr %11, align 8, !tbaa !190
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.aw, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #40
  br label %bb.az

bb.ay:                                            ; preds = %_ZN4Json5ValueaSERKS0_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.mb = phi ptr [ %.pre, %_ZN4Json5ValueaSERKS0_.exit ], [ %i.kv, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ] ; 2 uses
  %i.mc = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.mc, %i.jl
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !700

bb.az:                                            ; preds = %bb.ax, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.ma, %bb.ax ], [ %i.ku, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, %bb.az
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.az ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i ], [ %.pn32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i ], [ %.pn30.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i ], [ %.pn28.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json19StreamWriterBuilderixENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.b, ptr noundef %i.e)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json11writeStringB5cxx11ERKNS_12StreamWriter7FactoryERKNS_5ValueE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !46, !alias.scope !707
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !49, !alias.scope !707
  store i8 0, ptr %i.i, align 8, !tbaa !50, !alias.scope !707
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !208, !noalias !707 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !707 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209, !noalias !707 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !78, !alias.scope !707 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8, !tbaa !50, !alias.scope !707
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #41
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.e

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %bb.d
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !27
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !134
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !134
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #41
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #40
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.g:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.e ]
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !27
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit7 ], [ %i.as, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4JsonlsERSoRKNS_5ValueE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::StreamWriterBuilder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Json19StreamWriterBuilderE, i64 16), ptr %2, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -512
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN4Json19StreamWriterBuilder11setDefaultsEPNS_5ValueE(ptr noundef nonnull %i.a)
          to label %_ZN4Json19StreamWriterBuilderC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #40
  br label %common.resume

_ZN4Json19StreamWriterBuilderC2Ev.exit:           ; preds = %bb.a
end_hunk_2

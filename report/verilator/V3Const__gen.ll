Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Const__gen?download=true
inline.NumInlined: 16874
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN21ConstBitOpTreeVisitor8simplifyEP11AstNodeExprijR8VDouble0:bb.a
  %i.aey = add i64 %i.aex, 1
  store i64 %i.aey, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  br label %_ZN7AstNode6dtypepEP12AstNodeDType.exit609

bb.hn:                                            ; preds = %bb.hg
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ho:                                            ; preds = %bb.hk, %bb.hh
  %i.afa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef 160) #26
  br label %bb.it

_ZN7AstNode6dtypepEP12AstNodeDType.exit609:       ; preds = %bb.hm, %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit, %_ZN7AstNode6dtypepEP12AstNodeDType.exit
  %.2 = phi ptr [ %.1, %_ZN7AstNode6dtypepEP12AstNodeDType.exit ], [ %i.aek, %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit ], [ %i.aek, %bb.hm ]
  %i.afb = invoke noundef ptr @_ZZN21ConstBitOpTreeVisitor8simplifyEP11AstNodeExprijR8VDouble0ENKUlS1_S1_E_clES1_S1_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef %.11321253, ptr noundef %.2)
          to label %bb.hp unwind label %bb.hq     ; 2 uses

bb.hp:                                            ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit609
  %i.afc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0642.01252) #29 ; 2 uses
  %.not804 = icmp eq ptr %i.afc, %i.mk
  br i1 %.not804, label %._crit_edge1256, label %.lr.ph1255

bb.hq:                                            ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit609
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.gs, %._crit_edge1256
  %i.afe = phi i32 [ %i.acx, %bb.gs ], [ 0, %._crit_edge1256 ]
  %i.aff = icmp eq i32 %1, 1
  %i.afg = select i1 %i.aff, i32 32, i32 %1
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.afe, i32 %i.afg) ; 2 uses
  br i1 %i.rm, label %bb.hr, label %bb.id

bb.hr:                                            ; preds = %_ZNK7AstNode5widthEv.exit
  br i1 %i.rn, label %bb.hs, label %bb.hw

bb.hs:                                            ; preds = %bb.hr
  %i.afh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.ht unwind label %bb.hu     ; 3 uses

bb.ht:                                            ; preds = %bb.hs
  invoke void @_ZN6AstNotC2EP8FileLineP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(160) %i.afh, ptr noundef %i.t, ptr noundef nonnull %.1132.lcssa)
          to label %.thread781 unwind label %bb.hv

bb.hu:                                            ; preds = %_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit, %bb.im, %bb.hs
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.hv:                                            ; preds = %bb.ht
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afh, i64 noundef 160) #26
  br label %bb.it

bb.hw:                                            ; preds = %bb.hr
  %i.afk = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #30
          to label %bb.hx unwind label %bb.ia     ; 3 uses

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij(ptr noundef nonnull align 8 dereferenceable(208) %i.afk, ptr noundef %i.t, i32 noundef %.sroa.speculated, i32 noundef 1)
          to label %bb.hy unwind label %bb.ib

bb.hy:                                            ; preds = %bb.hx
  %i.afl = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.hz unwind label %bb.ia     ; 4 uses

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN6AstXorC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.afl, ptr noundef %i.t, ptr noundef nonnull %i.afk, ptr noundef nonnull %.1132.lcssa)
          to label %._ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit_crit_edge unwind label %bb.ic

._ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit_crit_edge: ; preds = %bb.hz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.afl, i64 72
  %.pre1440 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit

bb.ia:                                            ; preds = %bb.hy, %bb.hw
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ib:                                            ; preds = %bb.hx
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef 208) #26
  br label %bb.it

bb.ic:                                            ; preds = %bb.hz
  %i.afo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afl, i64 noundef 160) #26
  br label %bb.it

bb.id:                                            ; preds = %_ZNK7AstNode5widthEv.exit
  br i1 %i.rn, label %.thread781, label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit

.thread781:                                       ; preds = %bb.ht, %bb.id
  %.2133783 = phi ptr [ %.1132.lcssa, %bb.id ], [ %i.afh, %bb.ht ]
  %i.afp = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #30
          to label %bb.ie unwind label %bb.ii     ; 8 uses

bb.ie:                                            ; preds = %.thread781
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.afp, i16 121, ptr noundef %i.t)
          to label %.noexc610 unwind label %bb.ij

.noexc610:                                        ; preds = %bb.ie
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.afp, align 8, !tbaa !52
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.afq, ptr noundef nonnull align 8 dereferenceable(208) %i.afp, i32 noundef %.sroa.speculated, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc611 unwind label %bb.ij

.noexc611:                                        ; preds = %.noexc610
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.afp)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit614 unwind label %bb.if

bb.if:                                            ; preds = %.noexc611
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.afq) #25
  br label %.body612

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit614: ; preds = %.noexc611
  %i.afs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.ig unwind label %bb.ii     ; 10 uses

bb.ig:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit614
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.afs, i16 269, ptr noundef %i.t)
          to label %.noexc617 unwind label %bb.ik

.noexc617:                                        ; preds = %bb.ig
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.afs, align 8, !tbaa !52
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 152
  store i64 0, ptr %i.aft, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.afs, ptr noundef nonnull %i.afp)
          to label %.noexc618 unwind label %bb.ik

.noexc618:                                        ; preds = %.noexc617
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.afs, ptr noundef nonnull %.2133783)
          to label %.noexc619 unwind label %bb.ik

.noexc619:                                        ; preds = %.noexc618
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstAnd, i64 16), ptr %i.afs, align 8, !tbaa !52
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 72
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !172 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 72 ; 2 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i616 = icmp eq ptr %i.afx, %i.afv
  br i1 %.not.i.i.i616, label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ih

bb.ih:                                            ; preds = %.noexc619
  store ptr %i.afv, ptr %i.afw, align 8, !tbaa !172
  %i.afy = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  %i.afz = add i64 %i.afy, 1
  store i64 %i.afz, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  br label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit

bb.ii:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit614, %.thread781
  %i.aga = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ij:                                            ; preds = %.noexc610, %bb.ie
  %i.agb = landingpad { ptr, i32 }
          cleanup
  br label %.body612

.body612:                                         ; preds = %bb.if, %bb.ij
  %eh.lpad-body613 = phi { ptr, i32 } [ %i.agb, %bb.ij ], [ %i.afr, %bb.if ]
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef 208) #26
  br label %bb.it

bb.ik:                                            ; preds = %.noexc618, %.noexc617, %bb.ig
  %i.agc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afs, i64 noundef 160) #26
  br label %bb.it

_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit:    ; preds = %._ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit_crit_edge, %bb.ih, %.noexc619, %bb.id
  %i.agd = phi ptr [ %i.acv, %bb.id ], [ %i.afv, %bb.ih ], [ %i.afx, %.noexc619 ], [ %.pre1440, %._ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.1132.lcssa, %bb.id ], [ %i.afs, %bb.ih ], [ %i.afs, %.noexc619 ], [ %i.afl, %._ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit_crit_edge ] ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.3, i64 72
  %.not.i620 = icmp eq ptr %i.agd, null
  br i1 %.not.i620, label %_ZNK7AstNode5widthEv.exit621, label %bb.il

bb.il:                                            ; preds = %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 152
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !176
  br label %_ZNK7AstNode5widthEv.exit621

_ZNK7AstNode5widthEv.exit621:                     ; preds = %bb.il, %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit
  %i.agh = phi i32 [ %i.agg, %bb.il ], [ 0, %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit ]
  %.not260 = icmp eq i32 %i.agh, %1
  br i1 %.not260, label %_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit, label %bb.im

bb.im:                                            ; preds = %_ZNK7AstNode5widthEv.exit621
  %i.agi = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %bb.in unwind label %bb.hu     ; 11 uses

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.agi, i16 311, ptr noundef %i.t)
          to label %bb.io unwind label %bb.ir

bb.io:                                            ; preds = %bb.in
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.agi, align 8, !tbaa !52
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 152
  store i64 0, ptr %i.agj, align 8
  %i.agk = load ptr, ptr %i.age, align 8, !tbaa !172 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agi, i64 72 ; 4 uses
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !172
  %.not.i.i.i.i623 = icmp eq ptr %i.agm, %i.agk
  br i1 %.not.i.i.i.i623, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i624, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  store ptr %i.agk, ptr %i.agl, align 8, !tbaa !172
  %i.agn = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  %i.ago = add i64 %i.agn, 1
  store i64 %i.ago, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i624

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i624: ; preds = %bb.ip, %bb.io
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(168) %i.agi, ptr noundef nonnull %.3)
          to label %.noexc629 unwind label %bb.ir

.noexc629:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i624
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV8AstCCast, i64 16), ptr %i.agi, align 8, !tbaa !52
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 160
  store i32 %1, ptr %i.agp, align 8, !tbaa !296
  %42 = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(168) %i.agi, i32 noundef %1, i32 noundef 1, i8 0)
          to label %.noexc630 unwind label %bb.ir ; 2 uses

.noexc630:                                        ; preds = %.noexc629
  %i.agq = load ptr, ptr %i.agl, align 8, !tbaa !172
  %.not.i.i12.i = icmp eq ptr %i.agq, %42
  br i1 %.not.i.i12.i, label %_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit, label %bb.iq

bb.iq:                                            ; preds = %.noexc630
  store ptr %42, ptr %i.agl, align 8, !tbaa !172
  %i.agr = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  %i.ags = add i64 %i.agr, 1
  store i64 %i.ags, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !50
  br label %_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit

bb.ir:                                            ; preds = %.noexc629, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i624, %bb.in
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.agi, i64 noundef 168) #26
  br label %bb.it

_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit:   ; preds = %bb.iq, %.noexc630, %_ZNK7AstNode5widthEv.exit621
  %.4 = phi ptr [ %.3, %_ZNK7AstNode5widthEv.exit621 ], [ %i.agi, %bb.iq ], [ %i.agi, %.noexc630 ] ; 2 uses
  invoke void @_ZN7AstNode13dtypeChgWidthEii(ptr noundef nonnull align 8 dereferenceable(152) %.4, i32 noundef %1, i32 noundef 1)
          to label %bb.is unwind label %bb.hu

bb.is:                                            ; preds = %_ZN8AstCCastC2EP8FileLineP11AstNodeExprii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %.loopexit

bb.it:                                            ; preds = %bb.gu, %bb.hq, %bb.hf, %bb.hc, %bb.ho, %bb.hn, %bb.hu, %bb.hv, %bb.ir, %bb.ic, %bb.ib, %bb.ia, %bb.ik, %.body612, %bb.ii, %bb.gr
  %.pn271 = phi { ptr, i32 } [ %i.act, %bb.gr ], [ %eh.lpad-body613, %.body612 ], [ %i.afi, %bb.hu ], [ %i.agt, %bb.ir ], [ %i.afn, %bb.ib ], [ %i.afj, %bb.hv ], [ %i.afa, %bb.ho ], [ %i.afo, %bb.ic ], [ %i.afm, %bb.ia ], [ %i.agc, %bb.ik ], [ %i.aga, %bb.ii ], [ %i.adk, %bb.gu ], [ %i.afd, %bb.hq ], [ %.pn263, %bb.hf ], [ %i.aed, %bb.hc ], [ %i.aez, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %bb.iv

.loopexit:                                        ; preds = %bb.gn, %bb.gm, %bb.gi, %bb.is
  %.4138 = phi ptr [ %.4, %bb.is ], [ %i.aca, %bb.gi ], [ null, %bb.gm ], [ null, %bb.gn ]
  %i.agu = load ptr, ptr %i.ml, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt4pairIKS1_St6vectorIP11AstNodeExprSaIS6_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %i.agu)
          to label %_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit unwind label %bb.iu

bb.iu:                                            ; preds = %.loopexit
  %i.agv = landingpad { ptr, i32 }
          catch ptr null
  %i.agw = extractvalue { ptr, i32 } %i.agv, 0
  call void @__clang_call_terminate(ptr %i.agw) #28
  unreachable

_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.loopexit823

bb.iv:                                            ; preds = %.loopexit817, %.loopexit.split-lp818, %bb.en, %bb.gj, %bb.gk, %bb.gl, %bb.it, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %bb.ey
  %.pn293.pn = phi { ptr, i32 } [ %i.acd, %bb.gl ], [ %.pn289.pn.pn, %bb.en ], [ %.pn280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ], [ %.pn275.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575 ], [ %i.ry, %bb.ey ], [ %i.aci, %bb.go ], [ %.pn271, %bb.it ], [ %i.acb, %bb.gj ], [ %i.acc, %bb.gk ], [ %lpad.loopexit819, %.loopexit817 ], [ %lpad.loopexit.split-lp820, %.loopexit.split-lp818 ]
  call void @_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.ix

.loopexit823:                                     ; preds = %bb.br, %.preheader822, %_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit
  %.sroa.31.01149 = phi ptr [ %.sroa.31.0.lcssa, %_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit ], [ %.sroa.31.01197, %.preheader822 ], [ %.sroa.31.01197, %bb.br ]
  %.sroa.0689.01082 = phi ptr [ %.sroa.0689.0.lcssa, %_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit ], [ %.sroa.0689.01199, %.preheader822 ], [ %.sroa.0689.01199, %bb.br ] ; 3 uses
  %.5 = phi ptr [ %.4138, %_ZNSt3mapIN21ConstBitOpTreeVisitor14FrozenNodeInfoESt6vectorIP11AstNodeExprSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit ], [ %.0142, %.preheader822 ], [ %.0142, %bb.br ] ; 2 uses
  %.not.i.i.i631 = icmp eq ptr %.sroa.0689.01082, null
  br i1 %.not.i.i.i631, label %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %.loopexit823
  %i.agx = ptrtoint ptr %.sroa.31.01149 to i64
  %i.agy = ptrtoint ptr %.sroa.0689.01082 to i64
  %i.agz = sub i64 %i.agx, %i.agy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0689.01082, i64 noundef %i.agz) #26
  br label %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit

bb.ix:                                            ; preds = %bb.o, %bb.dr, %bb.bs, %.body367, %bb.bl, %.body, %bb.ak, %bb.p, %bb.iv
  %.sroa.31.6 = phi ptr [ %.sroa.31.01197, %bb.o ], [ %.sroa.31.0.lcssa, %bb.iv ], [ %.sroa.31.01197, %bb.bs ], [ %.sroa.31.01197, %bb.p ], [ %.sroa.31.01197, %.body ], [ %.sroa.31.01197, %bb.ak ], [ %.sroa.31.01197, %.body367 ], [ %.sroa.31.01197, %bb.bl ], [ %.sroa.31.3, %bb.dr ]
  %.sroa.0689.6 = phi ptr [ %.sroa.0689.01199, %bb.o ], [ %.sroa.0689.0.lcssa, %bb.iv ], [ %.sroa.0689.01199, %bb.bs ], [ %.sroa.0689.01199, %bb.p ], [ %.sroa.0689.01199, %.body ], [ %.sroa.0689.01199, %bb.ak ], [ %.sroa.0689.01199, %.body367 ], [ %.sroa.0689.01199, %bb.bl ], [ %.sroa.0689.3, %bb.dr ] ; 3 uses
  %.pn296.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %.pn293.pn, %bb.iv ], [ %i.hg, %bb.bs ], [ %i.bh, %bb.p ], [ %eh.lpad-body, %.body ], [ %.pn251.pn.pn, %bb.ak ], [ %eh.lpad-body368, %.body367 ], [ %.pn242.pn.pn, %bb.bl ], [ %.pn232.pn.pn.pn, %bb.dr ] ; 2 uses
  %.not.i.i.i632 = icmp eq ptr %.sroa.0689.6, null
  br i1 %.not.i.i.i632, label %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit633, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aha = ptrtoint ptr %.sroa.31.6 to i64
  %i.ahb = ptrtoint ptr %.sroa.0689.6 to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0689.6, i64 noundef %i.ahc) #26
  br label %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit633

_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit633:  ; preds = %.thread786, %bb.ix, %bb.iy
  %.pn296.pn.pn.pn791 = phi { ptr, i32 } [ %i.as, %.thread786 ], [ %.pn296.pn.pn.pn, %bb.ix ], [ %.pn296.pn.pn.pn, %bb.iy ]
  call void @_ZN21ConstBitOpTreeVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn296.pn.pn.pn791

_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit:     ; preds = %bb.iw, %.loopexit823, %bb.c, %bb.d
  %.6 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.5, %.loopexit823 ], [ %.5, %bb.iw ]
  %i.ahd = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZNSt6vectorISt10unique_ptrIN21ConstBitOpTreeVisitor7VarInfoESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahd) #25
  %i.ahe = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i634 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i.i634, label %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EED2Ev.exit.i, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit
  %i.ahg = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !347
  %i.ahi = ptrtoint ptr %i.ahh to i64
  %i.ahj = ptrtoint ptr %i.ahf to i64
  %i.ahk = sub i64 %i.ahi, %i.ahj
  call void @_ZdlPvm(ptr noundef nonnull %i.ahf, i64 noundef %i.ahk) #26
  br label %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EED2Ev.exit.i: ; preds = %bb.iz, %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit
  %i.ahl = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !348 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EED2Ev.exit.i, label %bb.ja

bb.ja:                                            ; preds = %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EED2Ev.exit.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !349
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = ptrtoint ptr %i.ahm to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  call void @_ZdlPvm(ptr noundef nonnull %i.ahm, i64 noundef %i.ahr) #26
  br label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EED2Ev.exit.i: ; preds = %bb.ja, %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EED2Ev.exit.i
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZN21ConstBitOpTreeVisitorD2Ev.exit unwind label %bb.jb

bb.jb:                                            ; preds = %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EED2Ev.exit.i
  %i.ahs = landingpad { ptr, i32 }
          catch ptr null
  %i.aht = extractvalue { ptr, i32 } %i.ahs, 0
  call void @__clang_call_terminate(ptr %i.aht) #28
  unreachable

_ZN21ConstBitOpTreeVisitorD2Ev.exit:              ; preds = %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %.6
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %magicptr = ptrtoint ptr %1 to i64
  switch i64 %magicptr, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ], !prof !804

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.616, i64 noundef 7) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.617, i64 noundef 15) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret ptr %0
}

declare noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21ConstBitOpTreeVisitorC2EP11AstNodeExprj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12VNUser4InUseC2Ev.exit:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV21ConstBitOpTreeVisitor, i64 16), ptr %0, align 8, !tbaa !52
  tail call void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.a, align 1, !tbaa !316
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i8 1, ptr %i.b, align 2, !tbaa !350
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.c, align 4, !tbaa !341
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !351
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !325
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !354
  %i.j = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc45 unwind label %bb.b   ; 3 uses

.noexc45:                                         ; preds = %_ZN12VNUser4InUseC2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.j, align 8, !tbaa !320
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !318
  store ptr %i.m, ptr %i.l, align 8, !tbaa !317
  store ptr %i.m, ptr %i.k, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !325  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.n, null
  br i1 %.not.i.i23, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit, label %_ZNK21ConstBitOpTreeVisitor9isAndTreeEv.exit

_ZNK21ConstBitOpTreeVisitor9isAndTreeEv.exit:     ; preds = %.noexc45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.o, align 8, !tbaa !36 ; 3 uses
  switch i16 %.sroa.0.0.copyload.i.i.i.i, label %_ZN7AstNode2isI6AstXor11AstNodeExprEEbPKT0_.exit.i [
    i16 269, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit
    i16 273, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit
  ]

end_hunk_0

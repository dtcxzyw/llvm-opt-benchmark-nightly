Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/alethe_post_processor?download=true
inline.NumInlined: 5223
inline.NumDeleted: 757
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
          to label %bb.de unwind label %bb.df, !noalias !517 ; 0 uses

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %127, ptr noundef nonnull align 8 dereferenceable(124) %106)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %.noexc750
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %106) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26, !noalias !517
  br label %.body751

bb.dg:                                            ; preds = %bb.de
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %106) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %108)
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %129, i8 0, i64 24, i1 false)
  %i.no = invoke noundef zeroext i1 @_ZN4cvc58internal5proof30AletheProofPostprocessCallback13addAletheStepENS1_10AletheRuleENS0_12NodeTemplateILb1EEES5_RKSt6vectorIS5_SaIS5_EESA_RNS0_7CDProofE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 100, ptr noundef nonnull align 8 %126, ptr noundef nonnull align 8 %127, ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull align 8 dereferenceable(217) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765 unwind label %bb.ds ; 3 uses

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765: ; preds = %bb.dg
  %.pre2663 = load ptr, ptr %128, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert2664 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %.pre2665 = load ptr, ptr %.phi.trans.insert2664, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #26
  %.not4.i.i.i766 = icmp eq ptr %.pre2663, %.pre2665
  br i1 %.not4.i.i.i766, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i774, label %.lr.ph.i.i.i767

.lr.ph.i.i.i767:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770
  %.05.i.i.i768 = phi ptr [ %i.nz, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770 ], [ %.pre2663, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765 ] ; 2 uses
  %i.np = load ptr, ptr %.05.i.i.i768, align 8, !tbaa !52 ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8            ; 3 uses
  %i.nr = and i64 %i.nq, 1152920405095219200
  %.not.i.i.i.i.i.i769 = icmp eq i64 %i.nr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i769, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770, label %bb.dh, !prof !53

bb.dh:                                            ; preds = %.lr.ph.i.i.i767
  %i.ns = add i64 %i.nq, 1152920405095219200
  %i.nt = and i64 %i.ns, 1152920405095219200      ; 2 uses
  %i.nu = and i64 %i.nq, -1152920405095219201
  %i.nv = or disjoint i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %i.np, align 8
  %i.nw = icmp eq i64 %i.nt, 0
  br i1 %i.nw, label %bb.di, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770, !prof !53

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770: ; preds = %bb.di, %bb.dh, %.lr.ph.i.i.i767
  %i.nz = getelementptr inbounds nuw i8, ptr %.05.i.i.i768, i64 8 ; 2 uses
  %.not.i.i.i771 = icmp eq ptr %i.nz, %.pre2665
  br i1 %.not.i.i.i771, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i772, label %.lr.ph.i.i.i767, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i772: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i770
  %.pr.i773 = load ptr, ptr %128, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i774

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i774: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i772, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765
  %i.oa = phi ptr [ %.pr.i773, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i772 ], [ %.pre2663, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit765 ] ; 3 uses
  %.not.i.i1.i775 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i1.i775, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit777, label %bb.dk

bb.dk:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i774
  %i.ob = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !74
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit777

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit777: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i774, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #26
  %i.og = load ptr, ptr %127, align 8, !tbaa !52  ; 3 uses
  %i.oh = load i64, ptr %i.og, align 8            ; 3 uses
  %i.oi = and i64 %i.oh, 1152920405095219200
  %.not.i.i778 = icmp eq i64 %i.oi, 1152920405095219200
  br i1 %.not.i.i778, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779, label %bb.dl, !prof !53

bb.dl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit777
  %i.oj = add i64 %i.oh, 1152920405095219200
  %i.ok = and i64 %i.oj, 1152920405095219200      ; 2 uses
  %i.ol = and i64 %i.oh, -1152920405095219201
  %i.om = or disjoint i64 %i.ok, %i.ol
  store i64 %i.om, ptr %i.og, align 8
  %i.on = icmp eq i64 %i.ok, 0
  br i1 %i.on, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779, !prof !53

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit777, %bb.dl, %bb.dm
  %i.oq = load ptr, ptr %126, align 8, !tbaa !52  ; 3 uses
  %i.or = load i64, ptr %i.oq, align 8            ; 3 uses
  %i.os = and i64 %i.or, 1152920405095219200
  %.not.i.i780 = icmp eq i64 %i.os, 1152920405095219200
  br i1 %.not.i.i780, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781thread-pre-split, label %bb.do, !prof !53

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779
  %i.ot = add i64 %i.or, 1152920405095219200
  %i.ou = and i64 %i.ot, 1152920405095219200      ; 2 uses
  %i.ov = and i64 %i.or, -1152920405095219201
  %i.ow = or disjoint i64 %i.ou, %i.ov
  store i64 %i.ow, ptr %i.oq, align 8
  %i.ox = icmp eq i64 %i.ou, 0
  br i1 %i.ox, label %bb.dp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781thread-pre-split, !prof !53

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781thread-pre-split unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #28
  unreachable

bb.dr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit749
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %.body751

bb.ds:                                            ; preds = %bb.dg
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %129) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %128) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #26
  br label %.body751

.body751:                                         ; preds = %bb.dr, %bb.df, %bb.ds
  %.pn641 = phi { ptr, i32 } [ %i.pb, %bb.ds ], [ %i.pa, %bb.dr ], [ %i.nn, %bb.df ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #26
  br label %bb.ayl

bb.dt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #26
  %i.pc = getelementptr inbounds nuw i8, ptr %130, i64 48 ; 2 uses
  store ptr %i.pc, ptr %130, align 8, !tbaa !77
  %i.pd = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 4 uses
  store i64 1, ptr %i.pd, align 8, !tbaa !78
  %i.pe = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %130, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pf, align 8, !tbaa !79
  %i.pg = getelementptr inbounds nuw i8, ptr %130, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #26
  %i.ph = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.pi = icmp eq i8 %i.ph, 0
  br i1 %i.pi, label %bb.du, label %bb.dy, !prof !50

bb.du:                                            ; preds = %bb.dt
  %i.pj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  %.not.i.i782 = icmp eq i32 %i.pj, 0
  br i1 %.not.i.i782, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.dw unwind label %bb.dx     ; 3 uses

bb.dw:                                            ; preds = %bb.dv
  store i64 1152920405095219200, ptr %i.pk, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, i8 0, i64 16, i1 false)
  store ptr %i.pk, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !51
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %.body783

bb.dy:                                            ; preds = %bb.dw, %bb.du, %bb.dt
  %i.pn = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !51 ; 6 uses
  store ptr %i.pn, ptr %131, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %132, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %133, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.po = load ptr, ptr %1, align 8, !tbaa !52, !noalias !518 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = load i64, ptr %i.pp, align 8, !noalias !518
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = and i32 %i.pr, 1023                     ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 1023
  %i.pu = select i1 %i.pt, i32 -1, i32 %i.ps
  %i.pv = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.pu)
          to label %.noexc786 unwind label %bb.eo

.noexc786:                                        ; preds = %bb.dy
  %i.pw = icmp eq i32 %i.pv, 2
  %i.px = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.py = zext i1 %i.pw to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !51, !noalias !518 ; 10 uses
  store ptr %i.qa, ptr %134, align 8, !tbaa !52, !alias.scope !518
  %i.qb = load i64, ptr %i.qa, align 8, !noalias !518 ; 3 uses
  %i.qc = lshr i64 %i.qb, 40
  %i.qd = trunc nuw nsw i64 %i.qc to i32
  %i.qe = and i32 %i.qd, 1048575                  ; 3 uses
  %i.qf = icmp samesign ult i32 %i.qe, 1048574
  br i1 %i.qf, label %bb.dz, label %bb.ea, !prof !54

bb.dz:                                            ; preds = %.noexc786
  %i.qg = add nuw nsw i32 %i.qe, 1
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = shl nuw nsw i64 %i.qh, 40
  %i.qj = and i64 %i.qb, -1152920405095219201
  %i.qk = or i64 %i.qi, %i.qj
  store i64 %i.qk, ptr %i.qa, align 8, !noalias !518
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788

bb.ea:                                            ; preds = %.noexc786
  %i.ql = icmp eq i32 %i.qe, 1048574
  br i1 %i.ql, label %bb.eb, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788, !prof !53

bb.eb:                                            ; preds = %bb.ea
  %i.qm = or i64 %i.qb, 1152920405095219200
  store i64 %i.qm, ptr %i.qa, align 8, !noalias !518
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qa)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788 unwind label %bb.eo

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788: ; preds = %bb.ea, %bb.dz, %bb.eb
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = and i32 %i.qp, 1023                     ; 2 uses
  %i.qr = icmp eq i32 %i.qq, 1023
  %i.qs = select i1 %i.qr, i32 -1, i32 %i.qq
  %i.qt = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.qs)
          to label %bb.ec unwind label %bb.ep

bb.ec:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788
  %i.qu = icmp eq i32 %i.qt, 2
  %spec.select.v.i.i = select i1 %i.qu, i64 32, i64 24
  %spec.select.i.i789 = getelementptr inbounds nuw i8, ptr %i.qa, i64 %spec.select.v.i.i
  %i.qv = load i64, ptr %i.qa, align 8            ; 3 uses
  %i.qw = and i64 %i.qv, 1152920405095219200
  %.not.i.i791 = icmp eq i64 %i.qw, 1152920405095219200
  br i1 %.not.i.i791, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792, label %bb.ed, !prof !53

bb.ed:                                            ; preds = %bb.ec
  %i.qx = add i64 %i.qv, 1152920405095219200
  %i.qy = and i64 %i.qx, 1152920405095219200      ; 2 uses
  %i.qz = and i64 %i.qv, -1152920405095219201
  %i.ra = or disjoint i64 %i.qy, %i.qz
  store i64 %i.ra, ptr %i.qa, align 8
  %i.rb = icmp eq i64 %i.qy, 0
  br i1 %i.rb, label %bb.ee, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792, !prof !53

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  call void @__clang_call_terminate(ptr %i.rd) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792: ; preds = %bb.ec, %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #26
  %i.re = getelementptr inbounds nuw i8, ptr %130, i64 24
  %i.rf = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 6 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792
  %.sroa.02347.0 = phi ptr [ %spec.select.i.i789, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit792 ], [ %i.ada, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838 ] ; 7 uses
  %i.rh = load ptr, ptr %1, align 8, !tbaa !52, !noalias !519 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !noalias !519
  %i.rk = trunc i64 %i.rj to i32
  %i.rl = and i32 %i.rk, 1023                     ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 1023
  %i.rn = select i1 %i.rm, i32 -1, i32 %i.rl
  %i.ro = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.rn)
          to label %.noexc794 unwind label %.loopexit.split-lp3193.loopexit.split-lp

.noexc794:                                        ; preds = %bb.eg
  %i.rp = icmp eq i32 %i.ro, 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rr = zext i1 %i.rp to i64
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rr
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !51, !noalias !519 ; 9 uses
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !519 ; 4 uses
  %i.rv = lshr i64 %i.ru, 40
  %i.rw = trunc nuw nsw i64 %i.rv to i32
  %i.rx = and i32 %i.rw, 1048575                  ; 3 uses
  %i.ry = icmp samesign ult i32 %i.rx, 1048574
  br i1 %i.ry, label %bb.eh, label %bb.ei, !prof !54

bb.eh:                                            ; preds = %.noexc794
  %i.rz = add nuw nsw i32 %i.rx, 1
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = shl nuw nsw i64 %i.sa, 40
  %i.sc = and i64 %i.ru, -1152920405095219201
  %i.sd = or i64 %i.sb, %i.sc                     ; 2 uses
  store i64 %i.sd, ptr %i.rt, align 8, !noalias !519
  br label %bb.ek

bb.ei:                                            ; preds = %.noexc794
  %i.se = icmp eq i32 %i.rx, 1048574
  br i1 %i.se, label %bb.ej, label %bb.ek, !prof !53

bb.ej:                                            ; preds = %bb.ei
  %i.sf = or i64 %i.ru, 1152920405095219200
  store i64 %i.sf, ptr %i.rt, align 8, !noalias !519
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rt)
          to label %._crit_edge2660 unwind label %.loopexit.split-lp3193.loopexit.split-lp

._crit_edge2660:                                  ; preds = %bb.ej
  %.pre2661 = load i64, ptr %i.rt, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge2660, %bb.eh, %bb.ei
  %i.sg = phi i64 [ %.pre2661, %._crit_edge2660 ], [ %i.sd, %bb.eh ], [ %i.ru, %bb.ei ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.si = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.sj = load i64, ptr %i.si, align 8
  %i.sk = lshr i64 %i.sj, 32
  %i.sl = and i64 %i.sk, 67108863
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sl
  %.not2402 = icmp eq ptr %.sroa.02347.0, %i.sm
  %i.sn = and i64 %i.sg, 1152920405095219200
  %.not.i.i797 = icmp eq i64 %i.sn, 1152920405095219200
  br i1 %.not.i.i797, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798, label %bb.el, !prof !53

bb.el:                                            ; preds = %bb.ek
  %i.so = add i64 %i.sg, 1152920405095219200
  %i.sp = and i64 %i.so, 1152920405095219200      ; 2 uses
  %i.sq = and i64 %i.sg, -1152920405095219201
  %i.sr = or disjoint i64 %i.sp, %i.sq
  store i64 %i.sr, ptr %i.rt, align 8
  %i.ss = icmp eq i64 %i.sp, 0
  br i1 %i.ss, label %bb.em, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798, !prof !53

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.st = landingpad { ptr, i32 }
          catch ptr null
  %i.su = extractvalue { ptr, i32 } %i.st, 0
  call void @__clang_call_terminate(ptr %i.su) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798: ; preds = %bb.ek, %bb.el, %bb.em
  br i1 %.not2402, label %.noexc.i840, label %bb.er

bb.eo:                                            ; preds = %bb.eb, %bb.dy
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit788
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %134) #26
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn605 = phi { ptr, i32 } [ %i.sw, %bb.ep ], [ %i.sv, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #26
  br label %bb.lq

bb.er:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.sx = load ptr, ptr %.sroa.02347.0, align 8, !tbaa !51, !noalias !520 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  %i.th = or i64 %i.tf, %i.tg
  store i64 %i.th, ptr %i.sx, align 8, !noalias !520
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.et:                                            ; preds = %bb.er
  %i.ti = icmp eq i32 %i.tb, 1048574
  br i1 %i.ti, label %bb.eu, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !53

bb.eu:                                            ; preds = %bb.et
  %i.tj = or i64 %i.sy, 1152920405095219200
  store i64 %i.tj, ptr %i.sx, align 8, !noalias !520
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sx)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %bb.gk

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.et, %bb.es, %bb.eu
  %i.tk = load i64, ptr %i.re, align 8, !tbaa !80
  %.not.not.i.i.i = icmp eq i64 %i.tk, 0
  br i1 %.not.not.i.i.i, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.tl = load ptr, ptr %135, align 8             ; 3 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ex, %bb.ev
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.pe, %bb.ev ], [ %.sroa.06.0.i.i.i, %bb.ex ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i801 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i801, label %.loopexit2412, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !52
  %i.to = icmp eq ptr %i.tl, %i.tn
  br i1 %i.to, label %.loopexit2412, label %bb.ew, !llvm.loop !338

bb.ey:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.tp = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %130, ptr noundef nonnull align 8 dereferenceable(8) %135)
          to label %.noexc802 unwind label %bb.gl ; 3 uses

.noexc802:                                        ; preds = %bb.ey
  %i.tq = load i64, ptr %i.pd, align 8, !tbaa !78 ; 2 uses
  %i.tr = urem i64 %i.tp, %i.tq                   ; 2 uses
  %i.ts = load ptr, ptr %130, align 8, !tbaa !77
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tr
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.tu, null
  %.pre2662 = load ptr, ptr %135, align 8         ; 7 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit2412, label %bb.ez

bb.ez:                                            ; preds = %.noexc802
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !29 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !83
  %i.tz = icmp eq i64 %i.tp, %i.ty
  %i.ua = load ptr, ptr %i.tw, align 8
  %i.ub = icmp eq ptr %.pre2662, %i.ua
  %i.uc = select i1 %i.tz, i1 %i.ub, i1 false
  br i1 %i.uc, label %.loopexit2412, label %.lr.ph.i.i.i.i.i

bb.fa:                                            ; preds = %bb.fb
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.ue = icmp eq i64 %i.tp, %i.uk
  %i.uf = load ptr, ptr %i.ud, align 8
  %i.ug = icmp eq ptr %.pre2662, %i.uf
  %i.uh = select i1 %i.ue, i1 %i.ug, i1 false
  br i1 %i.uh, label %.loopexit2412, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ez, %bb.fa
  %.020.i.i.i.i.i = phi ptr [ %i.ui, %bb.fa ], [ %i.tv, %bb.ez ]
  %i.ui = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !29 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit2412, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !83 ; 2 uses
  %i.ul = urem i64 %i.uk, %i.tq
  %.not19.i.i.i.i.i = icmp eq i64 %i.ul, %i.tr
  br i1 %.not19.i.i.i.i.i, label %bb.fa, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !339

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.fb
  br label %.loopexit2412, !llvm.loop !339

.loopexit2412:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.fa, %bb.ex, %bb.ew, %..loopexit_crit_edge21.i.i.i.i.i, %bb.ez, %.noexc802
  %i.um = phi ptr [ %.pre2662, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.tl, %bb.ex ], [ %.pre2662, %bb.ez ], [ %.pre2662, %.noexc802 ], [ %i.tl, %bb.ew ], [ %.pre2662, %bb.fa ], [ %.pre2662, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.sroa.06.0.i.i.i, %bb.ex ], [ %i.tv, %bb.ez ], [ null, %.noexc802 ], [ null, %bb.ew ], [ null, %.lr.ph.i.i.i.i.i ], [ %i.ui, %bb.fa ]
  %.not.i.i800.not = icmp eq ptr %.sroa.06.1.i.i.i, null
  %i.un = load i64, ptr %i.um, align 8            ; 3 uses
  %i.uo = and i64 %i.un, 1152920405095219200
  %.not.i.i803 = icmp eq i64 %i.uo, 1152920405095219200
  br i1 %.not.i.i803, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit804, label %bb.fc, !prof !53

bb.fc:                                            ; preds = %.loopexit2412
  %i.up = add i64 %i.un, 1152920405095219200
  %i.uq = and i64 %i.up, 1152920405095219200      ; 2 uses
  %i.ur = and i64 %i.un, -1152920405095219201
  %i.us = or disjoint i64 %i.uq, %i.ur
  store i64 %i.us, ptr %i.um, align 8
  %i.ut = icmp eq i64 %i.uq, 0
  br i1 %i.ut, label %bb.fd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit804, !prof !53

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.um)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit804 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  %i.uv = extractvalue { ptr, i32 } %i.uu, 0
  call void @__clang_call_terminate(ptr %i.uv) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit804: ; preds = %.loopexit2412, %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #26
  br i1 %.not.i.i800.not, label %bb.gt, label %bb.ff

bb.ff:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit804
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.uw = load ptr, ptr %.sroa.02347.0, align 8, !tbaa !51, !noalias !521 ; 17 uses
  store ptr %i.uw, ptr %136, align 8, !tbaa !52, !alias.scope !521
  %i.ux = load i64, ptr %i.uw, align 8, !noalias !521 ; 3 uses
  %i.uy = lshr i64 %i.ux, 40
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = and i32 %i.uz, 1048575                  ; 3 uses
  %i.vb = icmp samesign ult i32 %i.va, 1048574
  br i1 %i.vb, label %bb.fg, label %bb.fh, !prof !54

bb.fg:                                            ; preds = %bb.ff
  %i.vc = add nuw nsw i32 %i.va, 1
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = shl nuw nsw i64 %i.vd, 40
  %i.vf = and i64 %i.ux, -1152920405095219201
  %i.vg = or i64 %i.ve, %i.vf
  store i64 %i.vg, ptr %i.uw, align 8, !noalias !521
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806

bb.fh:                                            ; preds = %bb.ff
  %i.vh = icmp eq i32 %i.va, 1048574
  br i1 %i.vh, label %bb.fi, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806, !prof !53

bb.fi:                                            ; preds = %bb.fh
  %i.vi = or i64 %i.ux, 1152920405095219200
  store i64 %i.vi, ptr %i.uw, align 8, !noalias !521
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uw)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806 unwind label %bb.gn

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806: ; preds = %bb.fh, %bb.fg, %bb.fi
  %.not.i = icmp eq ptr %i.pn, %i.uw
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.fj, !prof !53

bb.fj:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806
  %i.vj = load i64, ptr %i.pn, align 8            ; 3 uses
  %i.vk = and i64 %i.vj, 1152920405095219200
  %.not.i.i807 = icmp eq i64 %i.vk, 1152920405095219200
  br i1 %.not.i.i807, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.fk, !prof !53

bb.fk:                                            ; preds = %bb.fj
  %i.vl = add i64 %i.vj, 1152920405095219200
  %i.vm = and i64 %i.vl, 1152920405095219200      ; 2 uses
  %i.vn = and i64 %i.vj, -1152920405095219201
  %i.vo = or disjoint i64 %i.vm, %i.vn
  store i64 %i.vo, ptr %i.pn, align 8
  %i.vp = icmp eq i64 %i.vm, 0
  br i1 %i.vp, label %bb.fl, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !53

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pn)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.go

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.fl, %bb.fk, %bb.fj
  store ptr %i.uw, ptr %131, align 8, !tbaa !52
  %i.vq = load i64, ptr %i.uw, align 8            ; 3 uses
  %i.vr = lshr i64 %i.vq, 40
  %i.vs = trunc nuw nsw i64 %i.vr to i32
  %i.vt = and i32 %i.vs, 1048575                  ; 3 uses
  %i.vu = icmp samesign ult i32 %i.vt, 1048574
  br i1 %i.vu, label %bb.fm, label %bb.fn, !prof !54

bb.fm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.vv = add nuw nsw i32 %i.vt, 1
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = shl nuw nsw i64 %i.vw, 40
  %i.vy = and i64 %i.vq, -1152920405095219201
  %i.vz = or i64 %i.vx, %i.vy
  store i64 %i.vz, ptr %i.uw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.fn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.wa = icmp eq i32 %i.vt, 1048574
  br i1 %i.wa, label %bb.fo, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !53

bb.fo:                                            ; preds = %bb.fn
  %i.wb = or i64 %i.vq, 1152920405095219200
  store i64 %i.wb, ptr %i.uw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.go

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.fn, %bb.fm, %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806, %bb.fo
  %i.wc = phi ptr [ %i.uw, %bb.fn ], [ %i.uw, %bb.fm ], [ %i.pn, %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit806 ], [ %i.uw, %bb.fo ] ; 7 uses
  %i.wd = load i64, ptr %i.uw, align 8            ; 3 uses
  %i.we = and i64 %i.wd, 1152920405095219200
  %.not.i.i810 = icmp eq i64 %i.we, 1152920405095219200
  br i1 %.not.i.i810, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812, label %bb.fp, !prof !53

bb.fp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.wf = add i64 %i.wd, 1152920405095219200
  %i.wg = and i64 %i.wf, 1152920405095219200      ; 2 uses
  %i.wh = and i64 %i.wd, -1152920405095219201
  %i.wi = or disjoint i64 %i.wg, %i.wh
  store i64 %i.wi, ptr %i.uw, align 8
  %i.wj = icmp eq i64 %i.wg, 0
  br i1 %i.wj, label %bb.fq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812, !prof !53

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812 unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #26
  %i.wm = load ptr, ptr %132, align 8, !tbaa !66  ; 5 uses
  %i.wn = load ptr, ptr %i.rf, align 8, !tbaa !66 ; 3 uses
  %i.wo = ptrtoint ptr %i.wn to i64               ; 2 uses
  %i.wp = ptrtoint ptr %i.wm to i64
  %i.wq = sub i64 %i.wo, %i.wp                    ; 3 uses
  %i.wr = ashr i64 %i.wq, 5                       ; 2 uses
  %i.ws = icmp sgt i64 %i.wr, 0
  br i1 %i.ws, label %.lr.ph.i.i.i813, label %._crit_edge.i.i.i

.lr.ph.i.i.i813:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812
  %i.wt = and i64 %i.wq, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.wm, i64 %i.wt ; 2 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fw, %.lr.ph.i.i.i813
  %.052.i.i.i = phi i64 [ %i.wr, %.lr.ph.i.i.i813 ], [ %i.xg, %bb.fw ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.wm, %.lr.ph.i.i.i813 ], [ %i.xf, %bb.fw ] ; 9 uses
  %i.wu = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !52
  %i.wv = icmp eq ptr %i.wu, %i.wc
  br i1 %i.wv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !52
  %i.wy = icmp eq ptr %i.wx, %i.wc
  br i1 %i.wy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3174, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !52
  %i.xb = icmp eq ptr %i.xa, %i.wc
  br i1 %i.xb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3172, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !52
  %i.xe = icmp eq ptr %i.xd, %i.wc
  br i1 %i.xe, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.xg = add nsw i64 %.052.i.i.i, -1
  %i.xh = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.xh, label %bb.fs, label %._crit_edge.loopexit.i.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.fw
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.wo, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.wq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812 ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.wm, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit812 ] ; 5 uses
  %i.xi = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.xi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit [
    i64 3, label %bb.fx
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.fx:                                            ; preds = %._crit_edge.i.i.i
  %i.xj = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !52
  %i.xk = icmp eq ptr %i.xj, %i.wc
  br i1 %i.xk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.fy
  %.sroa.032.1.i.i.i = phi ptr [ %i.xl, %bb.fy ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.xm = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !52
  %i.xn = icmp eq ptr %i.xm, %i.wc
  br i1 %i.xn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.fz

bb.fz:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.fz
  %.sroa.032.2.i.i.i = phi ptr [ %i.xo, %bb.fz ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.xp = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !52
  %i.xq = icmp eq ptr %i.xp, %i.wc
  %spec.select.i.i.i = select i1 %i.xq, ptr %.sroa.032.2.i.i.i, ptr %i.wn
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.fv
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3172: ; preds = %bb.fu
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3174: ; preds = %bb.ft
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.fs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3172, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3174, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.fx, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.wn, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.fx ], [ %i.xt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3174 ], [ %i.xr, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %i.xs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3172 ], [ %.sroa.032.051.i.i.i, %bb.fs ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !66
  %i.xw = load ptr, ptr %133, align 16, !tbaa !66 ; 2 uses
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.xw, i64 %i.xz
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %133, ptr %i.ya, ptr %i.wm, ptr %.sroa.08.0.in.sroa.speculated.i.i.i)
          to label %bb.ga unwind label %.loopexit.split-lp3193.loopexit.split-lp

bb.ga:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.yb = getelementptr inbounds nuw i8, ptr %133, i64 24 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %133, i64 32
  %i.yd = load ptr, ptr %i.yc, align 16, !tbaa !66
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  %i.yf = load ptr, ptr %i.rf, align 8, !tbaa !66
  %i.yg = load ptr, ptr %i.yb, align 8, !tbaa !66 ; 2 uses
  %i.yh = ptrtoint ptr %i.yd to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = getelementptr inbounds i8, ptr %i.yg, i64 %i.yj
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr %i.yk, ptr nonnull %i.ye, ptr %i.yf)
          to label %bb.gb unwind label %.loopexit.split-lp3193.loopexit.split-lp

bb.gb:                                            ; preds = %bb.ga
  %i.yl = getelementptr inbounds nuw i8, ptr %133, i64 48 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %133, i64 56
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !66
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.02347.0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.yp = load ptr, ptr %1, align 8, !tbaa !52, !noalias !522 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load i64, ptr %i.yq, align 8, !noalias !522
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = and i32 %i.ys, 1023                     ; 2 uses
  %i.yu = icmp eq i32 %i.yt, 1023
  %i.yv = select i1 %i.yu, i32 -1, i32 %i.yt
  %i.yw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.yv)
          to label %.noexc818 unwind label %bb.gq

.noexc818:                                        ; preds = %bb.gb
  %i.yx = icmp eq i32 %i.yw, 2
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yz = zext i1 %i.yx to i64
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yz
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !51, !noalias !522 ; 10 uses
  store ptr %i.zb, ptr %137, align 8, !tbaa !52, !alias.scope !522
  %i.zc = load i64, ptr %i.zb, align 8, !noalias !522 ; 3 uses
  %i.zd = lshr i64 %i.zc, 40
  %i.ze = trunc nuw nsw i64 %i.zd to i32
  %i.zf = and i32 %i.ze, 1048575                  ; 3 uses
  %i.zg = icmp samesign ult i32 %i.zf, 1048574
  br i1 %i.zg, label %bb.gc, label %bb.gd, !prof !54

bb.gc:                                            ; preds = %.noexc818
  %i.zh = add nuw nsw i32 %i.zf, 1
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl nuw nsw i64 %i.zi, 40
  %i.zk = and i64 %i.zc, -1152920405095219201
  %i.zl = or i64 %i.zj, %i.zk
  store i64 %i.zl, ptr %i.zb, align 8, !noalias !522
  br label %bb.gf

bb.gd:                                            ; preds = %.noexc818
  %i.zm = icmp eq i32 %i.zf, 1048574
  br i1 %i.zm, label %bb.ge, label %bb.gf, !prof !53

bb.ge:                                            ; preds = %bb.gd
  %i.zn = or i64 %i.zc, 1152920405095219200
  store i64 %i.zn, ptr %i.zb, align 8, !noalias !522
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zb)
          to label %bb.gf unwind label %bb.gq
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  %i.aar = trunc nuw nsw i64 %i.aaq to i32
  %i.aas = and i32 %i.aar, 1048575                ; 3 uses
  %i.aat = icmp samesign ult i32 %i.aas, 1048574
  br i1 %i.aat, label %bb.gu, label %bb.gv, !prof !54

bb.gu:                                            ; preds = %bb.gt
  %i.aau = add nuw nsw i32 %i.aas, 1
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = shl nuw nsw i64 %i.aav, 40
  %i.aax = and i64 %i.aap, -1152920405095219201
  %i.aay = or i64 %i.aaw, %i.aax
  store i64 %i.aay, ptr %i.aao, align 8, !noalias !523
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826

bb.gv:                                            ; preds = %bb.gt
  %i.aaz = icmp eq i32 %i.aas, 1048574
  br i1 %i.aaz, label %bb.gw, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826, !prof !53

bb.gw:                                            ; preds = %bb.gv
  %i.aba = or i64 %i.aap, 1152920405095219200
  store i64 %i.aba, ptr %i.aao, align 8, !noalias !523
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aao)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826 unwind label %bb.hm

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826: ; preds = %bb.gv, %bb.gu, %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #26
  store ptr %130, ptr %105, align 8, !tbaa !524
  %i.abb = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %130, ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull align 8 dereferenceable(8) %105)
          to label %bb.gx unwind label %bb.hn     ; 0 uses

bb.gx:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  %i.abc = load ptr, ptr %138, align 8, !tbaa !52 ; 3 uses
  %i.abd = load i64, ptr %i.abc, align 8          ; 3 uses
  %i.abe = and i64 %i.abd, 1152920405095219200
  %.not.i.i828 = icmp eq i64 %i.abe, 1152920405095219200
  br i1 %.not.i.i828, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830, label %bb.gy, !prof !53

bb.gy:                                            ; preds = %bb.gx
  %i.abf = add i64 %i.abd, 1152920405095219200
  %i.abg = and i64 %i.abf, 1152920405095219200    ; 2 uses
  %i.abh = and i64 %i.abd, -1152920405095219201
  %i.abi = or disjoint i64 %i.abg, %i.abh
  store i64 %i.abi, ptr %i.abc, align 8
  %i.abj = icmp eq i64 %i.abg, 0
  br i1 %i.abj, label %bb.gz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830, !prof !53

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  %i.abl = extractvalue { ptr, i32 } %i.abk, 0
  call void @__clang_call_terminate(ptr %i.abl) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830: ; preds = %bb.gx, %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.abm = load ptr, ptr %.sroa.02347.0, align 8, !tbaa !51, !noalias !525 ; 5 uses
  store ptr %i.abm, ptr %139, align 8, !tbaa !52, !alias.scope !525
  %i.abn = load i64, ptr %i.abm, align 8, !noalias !525 ; 3 uses
  %i.abo = lshr i64 %i.abn, 40
  %i.abp = trunc nuw nsw i64 %i.abo to i32
  %i.abq = and i32 %i.abp, 1048575                ; 3 uses
  %i.abr = icmp samesign ult i32 %i.abq, 1048574
  br i1 %i.abr, label %bb.hb, label %bb.hc, !prof !54

bb.hb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830
  %i.abs = add nuw nsw i32 %i.abq, 1
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = shl nuw nsw i64 %i.abt, 40
  %i.abv = and i64 %i.abn, -1152920405095219201
  %i.abw = or i64 %i.abu, %i.abv
  store i64 %i.abw, ptr %i.abm, align 8, !noalias !525
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832

bb.hc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit830
  %i.abx = icmp eq i32 %i.abq, 1048574
  br i1 %i.abx, label %bb.hd, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832, !prof !53

bb.hd:                                            ; preds = %bb.hc
  %i.aby = or i64 %i.abn, 1152920405095219200
  store i64 %i.aby, ptr %i.abm, align 8, !noalias !525
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abm)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832 unwind label %bb.hp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832: ; preds = %bb.hc, %bb.hb, %bb.hd
  %i.abz = load ptr, ptr %i.rf, align 8, !tbaa !75 ; 3 uses
  %i.aca = load ptr, ptr %i.rg, align 8, !tbaa !74
  %.not.i.i833 = icmp eq ptr %i.abz, %i.aca
  br i1 %.not.i.i833, label %bb.hi, label %bb.he

bb.he:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832
  %i.acb = load ptr, ptr %139, align 8, !tbaa !52 ; 5 uses
  store ptr %i.acb, ptr %i.abz, align 8, !tbaa !52
  %i.acc = load i64, ptr %i.acb, align 8          ; 3 uses
  %i.acd = lshr i64 %i.acc, 40
  %i.ace = trunc nuw nsw i64 %i.acd to i32
  %i.acf = and i32 %i.ace, 1048575                ; 3 uses
  %i.acg = icmp samesign ult i32 %i.acf, 1048574
  br i1 %i.acg, label %bb.hf, label %bb.hg, !prof !54

bb.hf:                                            ; preds = %bb.he
  %i.ach = add nuw nsw i32 %i.acf, 1
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = shl nuw nsw i64 %i.aci, 40
  %i.ack = and i64 %i.acc, -1152920405095219201
  %i.acl = or i64 %i.acj, %i.ack
  store i64 %i.acl, ptr %i.acb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.hg:                                            ; preds = %bb.he
  %i.acm = icmp eq i32 %i.acf, 1048574
  br i1 %i.acm, label %bb.hh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !53

bb.hh:                                            ; preds = %bb.hg
  %i.acn = or i64 %i.acc, 1152920405095219200
  store i64 %i.acn, ptr %i.acb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.hq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.hh, %bb.hg, %bb.hf
  %i.aco = load ptr, ptr %i.rf, align 8, !tbaa !75
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store ptr %i.acp, ptr %i.rf, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.hi:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit832
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %132, ptr %i.abz, ptr noundef nonnull align 8 dereferenceable(8) %139)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.hq

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.hi
  %i.acq = load ptr, ptr %139, align 8, !tbaa !52 ; 3 uses
  %i.acr = load i64, ptr %i.acq, align 8          ; 3 uses
  %i.acs = and i64 %i.acr, 1152920405095219200
  %.not.i.i836 = icmp eq i64 %i.acs, 1152920405095219200
  br i1 %.not.i.i836, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, label %bb.hj, !prof !53

bb.hj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.act = add i64 %i.acr, 1152920405095219200
  %i.acu = and i64 %i.act, 1152920405095219200    ; 2 uses
  %i.acv = and i64 %i.acr, -1152920405095219201
  %i.acw = or disjoint i64 %i.acu, %i.acv
  store i64 %i.acw, ptr %i.acq, align 8
  %i.acx = icmp eq i64 %i.acu, 0
  br i1 %i.acx, label %bb.hk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, !prof !53

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838 unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.acy = landingpad { ptr, i32 }
          catch ptr null
  %i.acz = extractvalue { ptr, i32 } %i.acy, 0
  call void @__clang_call_terminate(ptr %i.acz) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.hj, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.02347.0, i64 8
  br label %bb.eg, !llvm.loop !348

bb.hm:                                            ; preds = %bb.gw
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hn:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit826
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #26
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.pn612 = phi { ptr, i32 } [ %i.adc, %bb.hn ], [ %i.adb, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #26
  br label %bb.lq

bb.hp:                                            ; preds = %bb.hd
  %i.add = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hi, %bb.hh
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %139) #26
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.pn614 = phi { ptr, i32 } [ %i.ade, %bb.hq ], [ %i.add, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  br label %bb.lq

.noexc.i840:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit798, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit824
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #26
  %i.adf = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 6 uses
  store ptr %i.adf, ptr %142, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 16, ptr %i.b, align 8, !tbaa !59
  %i.adg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc841 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864.thread ; 2 uses

.noexc841:                                        ; preds = %.noexc.i840
  store ptr %i.adg, ptr %142, align 8, !tbaa !57
  %i.adh = load i64, ptr %i.b, align 8, !tbaa !59 ; 3 uses
  store i64 %i.adh, ptr %i.adf, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.adg, ptr noundef nonnull align 1 dereferenceable(16) @.str.3, i64 16, i1 false)
  %i.adi = getelementptr inbounds nuw i8, ptr %142, i64 8
  store i64 %i.adh, ptr %i.adi, align 8, !tbaa !40
  %i.adj = load ptr, ptr %142, align 8, !tbaa !57
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adh
  store i8 0, ptr %i.adk, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #26
  invoke void @_ZN4cvc58internal11NodeManager9sExprTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %143, ptr noundef nonnull align 8 dereferenceable(3592) %i.d)
          to label %bb.hs unwind label %bb.im

bb.hs:                                            ; preds = %.noexc841
  invoke void @_ZN4cvc58internal11NodeManager11mkRawSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %141, ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.ht unwind label %bb.in

bb.ht:                                            ; preds = %bb.hs
  %i.adl = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 3 uses
  %301 = load ptr, ptr %131, align 8, !tbaa !52   ; 8 uses
  store ptr %301, ptr %i.adl, align 8, !tbaa !52
  %i.adm = load i64, ptr %301, align 8            ; 3 uses
  %i.adn = lshr i64 %i.adm, 40
  %i.ado = trunc nuw nsw i64 %i.adn to i32
  %i.adp = and i32 %i.ado, 1048575                ; 3 uses
  %i.adq = icmp samesign ult i32 %i.adp, 1048574
  br i1 %i.adq, label %bb.hu, label %bb.hv, !prof !54

bb.hu:                                            ; preds = %bb.ht
  %i.adr = add nuw nsw i32 %i.adp, 1
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = shl nuw nsw i64 %i.ads, 40
  %i.adu = and i64 %i.adm, -1152920405095219201
  %i.adv = or i64 %i.adt, %i.adu
  store i64 %i.adv, ptr %301, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844

bb.hv:                                            ; preds = %bb.ht
  %i.adw = icmp eq i32 %i.adp, 1048574
  br i1 %i.adw, label %bb.hw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844, !prof !53

bb.hw:                                            ; preds = %bb.hv
  %i.adx = or i64 %i.adm, 1152920405095219200
  store i64 %i.adx, ptr %301, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %301)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844 unwind label %bb.in

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844: ; preds = %bb.hv, %bb.hu, %bb.hw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, i8 0, i64 24, i1 false)
  %i.ady = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i847 unwind label %bb.hx ; 3 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i847: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844
  %i.adz = getelementptr inbounds nuw i8, ptr %141, i64 16
  store ptr %i.ady, ptr %140, align 8, !tbaa !68
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aeb = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 4 uses
  store ptr %i.aea, ptr %i.aeb, align 8, !tbaa !74
  %i.aec = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef nonnull %141, ptr noundef nonnull %i.adz, ptr noundef nonnull %i.ady)
          to label %bb.hz unwind label %bb.hx

bb.hx:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i847, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit844
  %i.aed = landingpad { ptr, i32 }
          cleanup
  %i.aee = load ptr, ptr %140, align 8, !tbaa !68 ; 3 uses
  %.not.i.i5.i845 = icmp eq ptr %i.aee, null
  br i1 %.not.i.i5.i845, label %.body848, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aef = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !74
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aee to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aee, i64 noundef %i.aej) #25
  br label %.body848

bb.hz:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i847
  %i.aek = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 8 uses
  store ptr %i.aec, ptr %i.aek, align 8, !tbaa !75
  %i.ael = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !52 ; 3 uses
  %i.aen = load i64, ptr %i.aem, align 8          ; 3 uses
  %i.aeo = and i64 %i.aen, 1152920405095219200
  %.not.i.i851 = icmp eq i64 %i.aeo, 1152920405095219200
  br i1 %.not.i.i851, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853, label %bb.ia, !prof !53

bb.ia:                                            ; preds = %bb.hz
  %i.aep = add i64 %i.aen, 1152920405095219200
  %i.aeq = and i64 %i.aep, 1152920405095219200    ; 2 uses
  %i.aer = and i64 %i.aen, -1152920405095219201
  %i.aes = or disjoint i64 %i.aeq, %i.aer
  store i64 %i.aes, ptr %i.aem, align 8
  %i.aet = icmp eq i64 %i.aeq, 0
  br i1 %i.aet, label %bb.ib, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853, !prof !53

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aem)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853 unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ie, %bb.ib
  %i.aeu = landingpad { ptr, i32 }
          catch ptr null
  %i.aev = extractvalue { ptr, i32 } %i.aeu, 0
  call void @__clang_call_terminate(ptr %i.aev) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853: ; preds = %bb.hz, %bb.ia, %bb.ib
  %i.aew = load ptr, ptr %141, align 8, !tbaa !52 ; 3 uses
  %i.aex = load i64, ptr %i.aew, align 8          ; 3 uses
  %i.aey = and i64 %i.aex, 1152920405095219200
  %.not.i.i851.1 = icmp eq i64 %i.aey, 1152920405095219200
  br i1 %.not.i.i851.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1, label %bb.id, !prof !53

bb.id:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853
  %i.aez = add i64 %i.aex, 1152920405095219200
  %i.afa = and i64 %i.aez, 1152920405095219200    ; 2 uses
  %i.afb = and i64 %i.aex, -1152920405095219201
  %i.afc = or disjoint i64 %i.afa, %i.afb
  store i64 %i.afc, ptr %i.aew, align 8
  %i.afd = icmp eq i64 %i.afa, 0
  br i1 %i.afd, label %bb.ie, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1, !prof !53

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1 unwind label %bb.ic

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1: ; preds = %bb.ie, %bb.id, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853
  %i.afe = load ptr, ptr %143, align 8, !tbaa !56 ; 3 uses
  %i.aff = load i64, ptr %i.afe, align 8          ; 3 uses
  %i.afg = and i64 %i.aff, 1152920405095219200
  %.not.i.i854 = icmp eq i64 %i.afg, 1152920405095219200
  br i1 %.not.i.i854, label %_ZN4cvc58internal8TypeNodeD2Ev.exit856, label %bb.if, !prof !53

bb.if:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1
  %i.afh = add i64 %i.aff, 1152920405095219200
  %i.afi = and i64 %i.afh, 1152920405095219200    ; 2 uses
  %i.afj = and i64 %i.aff, -1152920405095219201
  %i.afk = or disjoint i64 %i.afi, %i.afj
  store i64 %i.afk, ptr %i.afe, align 8
  %i.afl = icmp eq i64 %i.afi, 0
  br i1 %i.afl, label %bb.ig, label %_ZN4cvc58internal8TypeNodeD2Ev.exit856, !prof !53

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afe)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit856 unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.afm = landingpad { ptr, i32 }
          catch ptr null
  %i.afn = extractvalue { ptr, i32 } %i.afm, 0
  call void @__clang_call_terminate(ptr %i.afn) #28
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit856:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit853.1, %bb.if, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  %i.afo = load ptr, ptr %142, align 8, !tbaa !57 ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.adf
  br i1 %i.afp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit856
  %i.afq = load i64, ptr %i.adf, align 8, !tbaa !41
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %145, i64 8
  %i.afu = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 4 uses
  br label %bb.ip

bb.ii:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.afw = load ptr, ptr %1, align 8, !tbaa !52   ; 5 uses
  store ptr %i.afw, ptr %147, align 8, !tbaa !52
  %i.afx = load i64, ptr %i.afw, align 8          ; 3 uses
  %i.afy = lshr i64 %i.afx, 40
  %i.afz = trunc nuw nsw i64 %i.afy to i32
  %i.aga = and i32 %i.afz, 1048575                ; 3 uses
  %i.agb = icmp samesign ult i32 %i.aga, 1048574
  br i1 %i.agb, label %bb.ij, label %bb.ik, !prof !54

bb.ij:                                            ; preds = %bb.ii
  %i.agc = add nuw nsw i32 %i.aga, 1
  %i.agd = zext nneg i32 %i.agc to i64
  %i.age = shl nuw nsw i64 %i.agd, 40
  %i.agf = and i64 %i.afx, -1152920405095219201
  %i.agg = or i64 %i.age, %i.agf
  store i64 %i.agg, ptr %i.afw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit861

bb.ik:                                            ; preds = %bb.ii
  %i.agh = icmp eq i32 %i.aga, 1048574
  br i1 %i.agh, label %bb.il, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit861, !prof !53

bb.il:                                            ; preds = %bb.ik
  %i.agi = or i64 %i.afx, 1152920405095219200
  store i64 %i.agi, ptr %i.afw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit861 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864.thread: ; preds = %.noexc.i840
  %i.agj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br label %.loopexit2410

bb.im:                                            ; preds = %.noexc841
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.in:                                            ; preds = %bb.hw, %bb.hs
  %.0374 = phi ptr [ %i.adl, %bb.hw ], [ %141, %bb.hs ]
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2411
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  store i64 %i.aok, ptr %i.aoe, align 8
  %i.aol = icmp eq i64 %i.aoi, 0
  br i1 %i.aol, label %bb.kx, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945, !prof !53

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aoe)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945 unwind label %.loopexit.split-lp2612.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2612.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ld, %bb.la, %bb.kx
  %lpad.loopexit.split-lp3271 = landingpad { ptr, i32 }
          catch ptr null
  %i.aom = extractvalue { ptr, i32 } %lpad.loopexit.split-lp3271, 0
  call void @__clang_call_terminate(ptr %i.aom) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945: ; preds = %bb.kx, %bb.kw, %.lr.ph.i.i.i942
  %i.aon = getelementptr inbounds nuw i8, ptr %.05.i.i.i943, i64 8 ; 2 uses
  %.not.i.i.i946 = icmp eq ptr %i.aon, %i.aob
  br i1 %.not.i.i.i946, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947, label %.lr.ph.i.i.i942, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945
  %.pr.i948 = load ptr, ptr %i.any, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit940
  %i.aoo = phi ptr [ %.pr.i948, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947 ], [ %i.anz, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit940 ] ; 3 uses
  %.not.i.i1.i950 = icmp eq ptr %i.aoo, null
  br i1 %.not.i.i1.i950, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952, label %bb.ky

bb.ky:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949
  %i.aop = getelementptr inbounds nuw i8, ptr %133, i64 64
  %i.aoq = load ptr, ptr %i.aop, align 16, !tbaa !74
  %i.aor = ptrtoint ptr %i.aoq to i64
  %i.aos = ptrtoint ptr %i.aoo to i64
  %i.aot = sub i64 %i.aor, %i.aos
  call void @_ZdlPvm(ptr noundef nonnull %i.aoo, i64 noundef %i.aot) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949, %bb.ky
  %i.aou = getelementptr inbounds nuw i8, ptr %133, i64 24 ; 2 uses
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !68 ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %133, i64 32
  %i.aox = load ptr, ptr %i.aow, align 16, !tbaa !75 ; 2 uses
  %.not4.i.i.i941.1 = icmp eq ptr %i.aov, %i.aox
  br i1 %.not4.i.i.i941.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.1, label %.lr.ph.i.i.i942.1

.lr.ph.i.i.i942.1:                                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1
  %.05.i.i.i943.1 = phi ptr [ %i.apg, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1 ], [ %i.aov, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952 ] ; 2 uses
  %i.aoy = load ptr, ptr %.05.i.i.i943.1, align 8, !tbaa !52 ; 3 uses
  %i.aoz = load i64, ptr %i.aoy, align 8          ; 3 uses
  %i.apa = and i64 %i.aoz, 1152920405095219200
  %.not.i.i.i.i.i.i944.1 = icmp eq i64 %i.apa, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i944.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1, label %bb.kz, !prof !53

bb.kz:                                            ; preds = %.lr.ph.i.i.i942.1
  %i.apb = add i64 %i.aoz, 1152920405095219200
  %i.apc = and i64 %i.apb, 1152920405095219200    ; 2 uses
  %i.apd = and i64 %i.aoz, -1152920405095219201
  %i.ape = or disjoint i64 %i.apc, %i.apd
  store i64 %i.ape, ptr %i.aoy, align 8
  %i.apf = icmp eq i64 %i.apc, 0
  br i1 %i.apf, label %bb.la, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1, !prof !53

bb.la:                                            ; preds = %bb.kz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aoy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1 unwind label %.loopexit.split-lp2612.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1: ; preds = %bb.la, %bb.kz, %.lr.ph.i.i.i942.1
  %i.apg = getelementptr inbounds nuw i8, ptr %.05.i.i.i943.1, i64 8 ; 2 uses
  %.not.i.i.i946.1 = icmp eq ptr %i.apg, %i.aox
  br i1 %.not.i.i.i946.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.1, label %.lr.ph.i.i.i942.1, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.1
  %.pr.i948.1 = load ptr, ptr %i.aou, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952
  %i.aph = phi ptr [ %.pr.i948.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.1 ], [ %i.aov, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952 ] ; 3 uses
  %.not.i.i1.i950.1 = icmp eq ptr %i.aph, null
  br i1 %.not.i.i1.i950.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1, label %bb.lb

bb.lb:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.1
  %i.api = getelementptr inbounds nuw i8, ptr %133, i64 40
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !74
  %i.apk = ptrtoint ptr %i.apj to i64
  %i.apl = ptrtoint ptr %i.aph to i64
  %i.apm = sub i64 %i.apk, %i.apl
  call void @_ZdlPvm(ptr noundef nonnull %i.aph, i64 noundef %i.apm) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1: ; preds = %bb.lb, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.1
  %i.apn = load ptr, ptr %133, align 16, !tbaa !68 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i941.2 = icmp eq ptr %i.apn, %i.app
  br i1 %.not4.i.i.i941.2, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.2, label %.lr.ph.i.i.i942.2

.lr.ph.i.i.i942.2:                                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2
  %.05.i.i.i943.2 = phi ptr [ %i.apy, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2 ], [ %i.apn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1 ] ; 2 uses
  %i.apq = load ptr, ptr %.05.i.i.i943.2, align 8, !tbaa !52 ; 3 uses
  %i.apr = load i64, ptr %i.apq, align 8          ; 3 uses
  %i.aps = and i64 %i.apr, 1152920405095219200
  %.not.i.i.i.i.i.i944.2 = icmp eq i64 %i.aps, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i944.2, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2, label %bb.lc, !prof !53

bb.lc:                                            ; preds = %.lr.ph.i.i.i942.2
  %i.apt = add i64 %i.apr, 1152920405095219200
  %i.apu = and i64 %i.apt, 1152920405095219200    ; 2 uses
  %i.apv = and i64 %i.apr, -1152920405095219201
  %i.apw = or disjoint i64 %i.apu, %i.apv
  store i64 %i.apw, ptr %i.apq, align 8
  %i.apx = icmp eq i64 %i.apu, 0
  br i1 %i.apx, label %bb.ld, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2, !prof !53

bb.ld:                                            ; preds = %bb.lc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.apq)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2 unwind label %.loopexit.split-lp2612.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2: ; preds = %bb.ld, %bb.lc, %.lr.ph.i.i.i942.2
  %i.apy = getelementptr inbounds nuw i8, ptr %.05.i.i.i943.2, i64 8 ; 2 uses
  %.not.i.i.i946.2 = icmp eq ptr %i.apy, %i.app
  br i1 %.not.i.i.i946.2, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.2, label %.lr.ph.i.i.i942.2, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.2: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i945.2
  %.pr.i948.2 = load ptr, ptr %133, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.2

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.2: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1
  %i.apz = phi ptr [ %.pr.i948.2, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i947.2 ], [ %i.apn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.1 ] ; 3 uses
  %.not.i.i1.i950.2 = icmp eq ptr %i.apz, null
  br i1 %.not.i.i1.i950.2, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2, label %bb.le

bb.le:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.2
  %i.aqa = getelementptr inbounds nuw i8, ptr %133, i64 16
  %i.aqb = load ptr, ptr %i.aqa, align 16, !tbaa !74
  %i.aqc = ptrtoint ptr %i.aqb to i64
  %i.aqd = ptrtoint ptr %i.apz to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd
  call void @_ZdlPvm(ptr noundef nonnull %i.apz, i64 noundef %i.aqe) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2: ; preds = %bb.le, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i949.2
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #26
  %i.aqf = load ptr, ptr %132, align 8, !tbaa !68 ; 3 uses
  %i.aqg = load ptr, ptr %i.rf, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i953 = icmp eq ptr %i.aqf, %i.aqg
  br i1 %.not4.i.i.i953, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i961, label %.lr.ph.i.i.i954

.lr.ph.i.i.i954:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957
  %.05.i.i.i955 = phi ptr [ %i.aqr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957 ], [ %i.aqf, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2 ] ; 2 uses
  %i.aqh = load ptr, ptr %.05.i.i.i955, align 8, !tbaa !52 ; 3 uses
  %i.aqi = load i64, ptr %i.aqh, align 8          ; 3 uses
  %i.aqj = and i64 %i.aqi, 1152920405095219200
  %.not.i.i.i.i.i.i956 = icmp eq i64 %i.aqj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i956, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957, label %bb.lf, !prof !53

bb.lf:                                            ; preds = %.lr.ph.i.i.i954
  %i.aqk = add i64 %i.aqi, 1152920405095219200
  %i.aql = and i64 %i.aqk, 1152920405095219200    ; 2 uses
  %i.aqm = and i64 %i.aqi, -1152920405095219201
  %i.aqn = or disjoint i64 %i.aql, %i.aqm
  store i64 %i.aqn, ptr %i.aqh, align 8
  %i.aqo = icmp eq i64 %i.aql, 0
  br i1 %i.aqo, label %bb.lg, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957, !prof !53

bb.lg:                                            ; preds = %bb.lf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957 unwind label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aqp = landingpad { ptr, i32 }
          catch ptr null
  %i.aqq = extractvalue { ptr, i32 } %i.aqp, 0
  call void @__clang_call_terminate(ptr %i.aqq) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957: ; preds = %bb.lg, %bb.lf, %.lr.ph.i.i.i954
  %i.aqr = getelementptr inbounds nuw i8, ptr %.05.i.i.i955, i64 8 ; 2 uses
  %.not.i.i.i958 = icmp eq ptr %i.aqr, %i.aqg
  br i1 %.not.i.i.i958, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i959, label %.lr.ph.i.i.i954, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i959: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i957
  %.pr.i960 = load ptr, ptr %132, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i961

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i961: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i959, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2
  %i.aqs = phi ptr [ %.pr.i960, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i959 ], [ %i.aqf, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit952.2 ] ; 3 uses
  %.not.i.i1.i962 = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i1.i962, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit964, label %bb.li

bb.li:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i961
  %i.aqt = load ptr, ptr %i.rg, align 8, !tbaa !74
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = ptrtoint ptr %i.aqs to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  call void @_ZdlPvm(ptr noundef nonnull %i.aqs, i64 noundef %i.aqw) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit964

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit964: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i961, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #26
  %i.aqx = load i64, ptr %301, align 8            ; 3 uses
  %i.aqy = and i64 %i.aqx, 1152920405095219200
  %.not.i.i965 = icmp eq i64 %i.aqy, 1152920405095219200
  br i1 %.not.i.i965, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967, label %bb.lj, !prof !53

bb.lj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit964
  %i.aqz = add i64 %i.aqx, 1152920405095219200
  %i.ara = and i64 %i.aqz, 1152920405095219200    ; 2 uses
  %i.arb = and i64 %i.aqx, -1152920405095219201
  %i.arc = or disjoint i64 %i.ara, %i.arb
  store i64 %i.arc, ptr %301, align 8
  %i.ard = icmp eq i64 %i.ara, 0
  br i1 %i.ard, label %bb.lk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967, !prof !53

bb.lk:                                            ; preds = %bb.lj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %301)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967 unwind label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.are = landingpad { ptr, i32 }
          catch ptr null
  %i.arf = extractvalue { ptr, i32 } %i.are, 0
  call void @__clang_call_terminate(ptr %i.arf) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit964, %bb.lj, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #26
  %i.arg = load ptr, ptr %i.pe, align 8, !tbaa !85 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.arg, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i2236

.lr.ph.i.i.i2236:                                 ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.arh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.arg, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967 ] ; 3 uses
  %i.arh = load ptr, ptr %.06.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !52 ; 3 uses
  %i.ark = load i64, ptr %i.arj, align 8          ; 3 uses
  %i.arl = and i64 %i.ark, 1152920405095219200
  %.not.i.i.i.i.i.i2237 = icmp eq i64 %i.arl, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i2237, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.lm, !prof !53

bb.lm:                                            ; preds = %.lr.ph.i.i.i2236
  %i.arm = add i64 %i.ark, 1152920405095219200
  %i.arn = and i64 %i.arm, 1152920405095219200    ; 2 uses
  %i.aro = and i64 %i.ark, -1152920405095219201
  %i.arp = or disjoint i64 %i.arn, %i.aro
  store i64 %i.arp, ptr %i.arj, align 8
  %i.arq = icmp eq i64 %i.arn, 0
  br i1 %i.arq, label %bb.ln, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !53

bb.ln:                                            ; preds = %bb.lm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arj)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.arr = landingpad { ptr, i32 }
          catch ptr null
  %i.ars = extractvalue { ptr, i32 } %i.arr, 0
  call void @__clang_call_terminate(ptr %i.ars) #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.ln, %bb.lm, %.lr.ph.i.i.i2236
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #25
  %.not.i.i.i2238 = icmp eq ptr %i.arh, null
  br i1 %.not.i.i.i2238, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i2236, !llvm.loop !4

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit967
  %i.art = load ptr, ptr %130, align 8, !tbaa !77
  %i.aru = load i64, ptr %i.pd, align 8, !tbaa !78
  %i.arv = shl i64 %i.aru, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.art, i8 0, i64 %i.arv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false)
  %i.arw = load ptr, ptr %130, align 8, !tbaa !77 ; 2 uses
  %i.arx = icmp eq ptr %i.arw, %i.pc
  br i1 %i.arx, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.lp

bb.lp:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.ary = load i64, ptr %i.pd, align 8, !tbaa !78
  %i.arz = shl i64 %i.ary, 3
  call void @_ZdlPvm(ptr noundef %i.arw, i64 noundef %i.arz) #25
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #26
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781thread-pre-split

bb.lq:                                            ; preds = %bb.eq, %bb.gm, %bb.gp, %bb.ho, %bb.hr, %bb.gs, %.loopexit.split-lp3193.loopexit.split-lp, %bb.kv
  %.pn635.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn, %bb.kv ], [ %.pn605, %bb.eq ], [ %.pn616, %bb.gp ], [ %.pn614, %bb.hr ], [ %.pn612, %bb.ho ], [ %.pn609, %bb.gm ], [ %lpad.loopexit.split-lp3286, %.loopexit.split-lp3193.loopexit.split-lp ], [ %.pn618, %bb.gs ]
  %i.asa = getelementptr inbounds nuw i8, ptr %133, i64 48
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asa) #26
  %i.asb = getelementptr inbounds nuw i8, ptr %133, i64 24
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asb) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %133) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %132) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #26
  br label %.body783

.body783:                                         ; preds = %bb.dx, %bb.lq
  %.pn635.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn, %bb.lq ], [ %i.pm, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #26
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %130) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #26
  br label %bb.ayl

bb.lr:                                            ; preds = %bb.a
  %i.asc = load ptr, ptr %1, align 8, !tbaa !52   ; 5 uses
  store ptr %i.asc, ptr %150, align 8, !tbaa !52
  %i.asd = load i64, ptr %i.asc, align 8          ; 3 uses
  %i.ase = lshr i64 %i.asd, 40
  %i.asf = trunc nuw nsw i64 %i.ase to i32
  %i.asg = and i32 %i.asf, 1048575                ; 3 uses
  %i.ash = icmp samesign ult i32 %i.asg, 1048574
  br i1 %i.ash, label %bb.ls, label %bb.lt, !prof !54

bb.ls:                                            ; preds = %bb.lr
  %i.asi = add nuw nsw i32 %i.asg, 1
  %i.asj = zext nneg i32 %i.asi to i64
  %i.ask = shl nuw nsw i64 %i.asj, 40
  %i.asl = and i64 %i.asd, -1152920405095219201
  %i.asm = or i64 %i.ask, %i.asl
  store i64 %i.asm, ptr %i.asc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit969

bb.lt:                                            ; preds = %bb.lr
  %i.asn = icmp eq i32 %i.asg, 1048574
  br i1 %i.asn, label %bb.lu, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit969, !prof !53

bb.lu:                                            ; preds = %bb.lt
  %i.aso = or i64 %i.asd, 1152920405095219200
  store i64 %i.aso, ptr %i.asc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.asc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit969 unwind label %bb.nc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit969: ; preds = %bb.lt, %bb.ls, %bb.lu
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !52 ; 2 uses
  %i.asr = load ptr, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #26, !noalias !528
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !71, !noalias !528
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %97, ptr noundef %i.ast, i32 noundef 10)
          to label %.noexc970 unwind label %bb.mj

.noexc970:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit969
  store ptr %i.asq, ptr %98, align 8, !tbaa !73, !noalias !528
  %i.asu = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %97, ptr noundef nonnull align 8 %98)
          to label %bb.lv unwind label %bb.lx, !noalias !528

bb.lv:                                            ; preds = %.noexc970
  store ptr %i.asr, ptr %99, align 8, !tbaa !73, !noalias !528
  %i.asv = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.asu, ptr noundef nonnull align 8 %99)
          to label %bb.lw unwind label %bb.lx, !noalias !528 ; 0 uses

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %151, ptr noundef nonnull align 8 dereferenceable(124) %97)
          to label %bb.ly unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv, %.noexc970
  %i.asw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26, !noalias !528
  br label %.body971

bb.ly:                                            ; preds = %bb.lw
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26, !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %152, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  %i.asx = invoke noundef zeroext i1 @_ZN4cvc58internal5proof30AletheProofPostprocessCallback13addAletheStepENS1_10AletheRuleENS0_12NodeTemplateILb1EEES5_RKSt6vectorIS5_SaIS5_EESA_RNS0_7CDProofE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 79, ptr noundef nonnull align 8 %150, ptr noundef nonnull align 8 %151, ptr noundef nonnull align 8 dereferenceable(24) %152, ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(217) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit985 unwind label %bb.mk ; 3 uses

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit985: ; preds = %bb.ly
  %.pre2657 = load ptr, ptr %152, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert2658 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %.pre2659 = load ptr, ptr %.phi.trans.insert2658, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #26
  %.not4.i.i.i986 = icmp eq ptr %.pre2657, %.pre2659
  br i1 %.not4.i.i.i986, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i994, label %.lr.ph.i.i.i987

.lr.ph.i.i.i987:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit985, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i990
  %.05.i.i.i988 = phi ptr [ %i.ati, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i990 ], [ %.pre2657, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit985 ] ; 2 uses
  %i.asy = load ptr, ptr %.05.i.i.i988, align 8, !tbaa !52 ; 3 uses
  %i.asz = load i64, ptr %i.asy, align 8          ; 3 uses
  %i.ata = and i64 %i.asz, 1152920405095219200
  %.not.i.i.i.i.i.i989 = icmp eq i64 %i.ata, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i989, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i990, label %bb.lz, !prof !53

bb.lz:                                            ; preds = %.lr.ph.i.i.i987
  %i.atb = add i64 %i.asz, 1152920405095219200
  %i.atc = and i64 %i.atb, 1152920405095219200    ; 2 uses
  %i.atd = and i64 %i.asz, -1152920405095219201
  %i.ate = or disjoint i64 %i.atc, %i.atd
  store i64 %i.ate, ptr %i.asy, align 8
  %i.atf = icmp eq i64 %i.atc, 0
  br i1 %i.atf, label %bb.ma, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i990, !prof !53

bb.ma:                                            ; preds = %bb.lz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.asy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i990 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.atg = landingpad { ptr, i32 }
          catch ptr null
  %i.ath = extractvalue { ptr, i32 } %i.atg, 0
  call void @__clang_call_terminate(ptr %i.ath) #28
  unreachable

end_hunk_3

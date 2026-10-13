Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/alethe_post_processor?download=true
inline.NumInlined: 5222
inline.NumDeleted: 757
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %.pn5.i750 = phi { ptr, i32 } [ %i.np, %bb.di ], [ %i.nr, %bb.dk ], [ %i.nq, %bb.dj ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %106) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26, !noalias !517
  br label %.body752

bb.dm:                                            ; preds = %bb.dh
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %106) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %108)
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %129, i8 0, i64 24, i1 false)
  %i.ns = invoke noundef zeroext i1 @_ZN4cvc58internal5proof30AletheProofPostprocessCallback13addAletheStepENS1_10AletheRuleENS0_12NodeTemplateILb1EEES5_RKSt6vectorIS5_SaIS5_EESA_RNS0_7CDProofE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 100, ptr noundef nonnull align 8 %126, ptr noundef nonnull align 8 %127, ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull align 8 dereferenceable(217) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766 unwind label %bb.dz ; 3 uses

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766: ; preds = %bb.dm
  %.pre2662 = load ptr, ptr %128, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert2663 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %.pre2664 = load ptr, ptr %.phi.trans.insert2663, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #26
  %.not4.i.i.i767 = icmp eq ptr %.pre2662, %.pre2664
  br i1 %.not4.i.i.i767, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i775, label %.lr.ph.i.i.i768

.lr.ph.i.i.i768:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771
  %.05.i.i.i769 = phi ptr [ %i.od, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771 ], [ %.pre2662, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766 ] ; 2 uses
  %i.nt = load ptr, ptr %.05.i.i.i769, align 8, !tbaa !52 ; 3 uses
  %i.nu = load i64, ptr %i.nt, align 8            ; 3 uses
  %i.nv = and i64 %i.nu, 1152920405095219200
  %.not.i.i.i.i.i.i770 = icmp eq i64 %i.nv, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i770, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771, label %bb.dn, !prof !53

bb.dn:                                            ; preds = %.lr.ph.i.i.i768
  %i.nw = add i64 %i.nu, 1152920405095219200
  %i.nx = and i64 %i.nw, 1152920405095219200      ; 2 uses
  %i.ny = and i64 %i.nu, -1152920405095219201
  %i.nz = or disjoint i64 %i.nx, %i.ny
  store i64 %i.nz, ptr %i.nt, align 8
  %i.oa = icmp eq i64 %i.nx, 0
  br i1 %i.oa, label %bb.do, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771, !prof !53

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ob = landingpad { ptr, i32 }
          catch ptr null
  %i.oc = extractvalue { ptr, i32 } %i.ob, 0
  call void @__clang_call_terminate(ptr %i.oc) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771: ; preds = %bb.do, %bb.dn, %.lr.ph.i.i.i768
  %i.od = getelementptr inbounds nuw i8, ptr %.05.i.i.i769, i64 8 ; 2 uses
  %.not.i.i.i772 = icmp eq ptr %i.od, %.pre2664
  br i1 %.not.i.i.i772, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i773, label %.lr.ph.i.i.i768, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i773: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i771
  %.pr.i774 = load ptr, ptr %128, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i775

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i775: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i773, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766
  %i.oe = phi ptr [ %.pr.i774, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i773 ], [ %.pre2662, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit766 ] ; 3 uses
  %.not.i.i1.i776 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i1.i776, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit778, label %bb.dq

bb.dq:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i775
  %i.of = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !74
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = ptrtoint ptr %i.oe to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef %i.oj) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit778

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit778: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i775, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #26
  %i.ok = load ptr, ptr %127, align 8, !tbaa !52  ; 3 uses
  %i.ol = load i64, ptr %i.ok, align 8            ; 3 uses
  %i.om = and i64 %i.ol, 1152920405095219200
  %.not.i.i779 = icmp eq i64 %i.om, 1152920405095219200
  br i1 %.not.i.i779, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit780, label %bb.dr, !prof !53

bb.dr:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit778
  %i.on = add i64 %i.ol, 1152920405095219200
  %i.oo = and i64 %i.on, 1152920405095219200      ; 2 uses
  %i.op = and i64 %i.ol, -1152920405095219201
  %i.oq = or disjoint i64 %i.oo, %i.op
  store i64 %i.oq, ptr %i.ok, align 8
  %i.or = icmp eq i64 %i.oo, 0
  br i1 %i.or, label %bb.ds, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit780, !prof !53

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ok)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit780 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit780: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit778, %bb.dr, %bb.ds
  %i.ou = load ptr, ptr %126, align 8, !tbaa !52  ; 3 uses
  %i.ov = load i64, ptr %i.ou, align 8            ; 3 uses
  %i.ow = and i64 %i.ov, 1152920405095219200
  %.not.i.i781 = icmp eq i64 %i.ow, 1152920405095219200
  br i1 %.not.i.i781, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782thread-pre-split, label %bb.du, !prof !53

bb.du:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit780
  %i.ox = add i64 %i.ov, 1152920405095219200
  %i.oy = and i64 %i.ox, 1152920405095219200      ; 2 uses
  %i.oz = and i64 %i.ov, -1152920405095219201
  %i.pa = or disjoint i64 %i.oy, %i.oz
  store i64 %i.pa, ptr %i.ou, align 8
  %i.pb = icmp eq i64 %i.oy, 0
  br i1 %i.pb, label %bb.dv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782thread-pre-split, !prof !53

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ou)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782thread-pre-split unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pc = landingpad { ptr, i32 }
          catch ptr null
  %i.pd = extractvalue { ptr, i32 } %i.pc, 0
  call void @__clang_call_terminate(ptr %i.pd) #28
  unreachable

bb.dx:                                            ; preds = %bb.bce, %bb.bbl, %bb.bas, %bb.aey, %bb.aeb, %bb.ade, %bb.ach, %bb.ml, %bb.df
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bcy

bb.dy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit749
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.body752

bb.dz:                                            ; preds = %bb.dm
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %129) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %128) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #26
  br label %.body752

.body752:                                         ; preds = %bb.dy, %bb.dl, %bb.dz
  %.pn641 = phi { ptr, i32 } [ %i.pg, %bb.dz ], [ %i.pf, %bb.dy ], [ %.pn5.i750, %bb.dl ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #26
  br label %bb.bcy

bb.ea:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #26
  %i.ph = getelementptr inbounds nuw i8, ptr %130, i64 48 ; 2 uses
  store ptr %i.ph, ptr %130, align 8, !tbaa !77
  %i.pi = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 4 uses
  store i64 1, ptr %i.pi, align 8, !tbaa !78
  %i.pj = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %130, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pk, align 8, !tbaa !79
  %i.pl = getelementptr inbounds nuw i8, ptr %130, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #26
  %i.pm = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %bb.eb, label %bb.ef, !prof !50

bb.eb:                                            ; preds = %bb.ea
  %i.po = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  %.not.i.i783 = icmp eq i32 %i.po, 0
  br i1 %.not.i.i783, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ed unwind label %bb.ee     ; 3 uses

bb.ed:                                            ; preds = %bb.ec
  store i64 1152920405095219200, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i8 0, i64 16, i1 false)
  store ptr %i.pp, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !51
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %.body784

bb.ef:                                            ; preds = %bb.ed, %bb.eb, %bb.ea
  %i.ps = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !51 ; 6 uses
  store ptr %i.ps, ptr %131, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %132, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %133, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.pt = load ptr, ptr %1, align 8, !tbaa !52, !noalias !518 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !518
  %i.pw = trunc i64 %i.pv to i32
  %i.px = and i32 %i.pw, 1023                     ; 2 uses
  %i.py = icmp eq i32 %i.px, 1023
  %i.pz = select i1 %i.py, i32 -1, i32 %i.px
  %i.qa = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.pz)
          to label %.noexc787 unwind label %bb.ev

.noexc787:                                        ; preds = %bb.ef
  %i.qb = icmp eq i32 %i.qa, 2
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.qd = zext i1 %i.qb to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !51, !noalias !518 ; 10 uses
  store ptr %i.qf, ptr %134, align 8, !tbaa !52, !alias.scope !518
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !518 ; 3 uses
  %i.qh = lshr i64 %i.qg, 40
  %i.qi = trunc nuw nsw i64 %i.qh to i32
  %i.qj = and i32 %i.qi, 1048575                  ; 3 uses
  %i.qk = icmp samesign ult i32 %i.qj, 1048574
  br i1 %i.qk, label %bb.eg, label %bb.eh, !prof !54

bb.eg:                                            ; preds = %.noexc787
  %i.ql = add nuw nsw i32 %i.qj, 1
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl nuw nsw i64 %i.qm, 40
  %i.qo = and i64 %i.qg, -1152920405095219201
  %i.qp = or i64 %i.qn, %i.qo
  store i64 %i.qp, ptr %i.qf, align 8, !noalias !518
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789

bb.eh:                                            ; preds = %.noexc787
  %i.qq = icmp eq i32 %i.qj, 1048574
  br i1 %i.qq, label %bb.ei, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789, !prof !53

bb.ei:                                            ; preds = %bb.eh
  %i.qr = or i64 %i.qg, 1152920405095219200
  store i64 %i.qr, ptr %i.qf, align 8, !noalias !518
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qf)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789 unwind label %bb.ev

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789: ; preds = %bb.eh, %bb.eg, %bb.ei
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qt = load i64, ptr %i.qs, align 8
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1023                     ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 1023
  %i.qx = select i1 %i.qw, i32 -1, i32 %i.qv
  %i.qy = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.qx)
          to label %bb.ej unwind label %bb.ew

bb.ej:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789
  %i.qz = icmp eq i32 %i.qy, 2
  %spec.select.v.i.i = select i1 %i.qz, i64 32, i64 24
  %spec.select.i.i790 = getelementptr inbounds nuw i8, ptr %i.qf, i64 %spec.select.v.i.i
  %i.ra = load i64, ptr %i.qf, align 8            ; 3 uses
  %i.rb = and i64 %i.ra, 1152920405095219200
  %.not.i.i792 = icmp eq i64 %i.rb, 1152920405095219200
  br i1 %.not.i.i792, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793, label %bb.ek, !prof !53

bb.ek:                                            ; preds = %bb.ej
  %i.rc = add i64 %i.ra, 1152920405095219200
  %i.rd = and i64 %i.rc, 1152920405095219200      ; 2 uses
  %i.re = and i64 %i.ra, -1152920405095219201
  %i.rf = or disjoint i64 %i.rd, %i.re
  store i64 %i.rf, ptr %i.qf, align 8
  %i.rg = icmp eq i64 %i.rd, 0
  br i1 %i.rg, label %bb.el, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793, !prof !53

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.rh = landingpad { ptr, i32 }
          catch ptr null
  %i.ri = extractvalue { ptr, i32 } %i.rh, 0
  call void @__clang_call_terminate(ptr %i.ri) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793: ; preds = %bb.ej, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #26
  %i.rj = getelementptr inbounds nuw i8, ptr %130, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793
  %.sroa.02387.0 = phi ptr [ %spec.select.i.i790, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit793 ], [ %i.adi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839 ] ; 7 uses
  %i.rm = load ptr, ptr %1, align 8, !tbaa !52, !noalias !519 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !noalias !519
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = and i32 %i.rp, 1023                     ; 2 uses
  %i.rr = icmp eq i32 %i.rq, 1023
  %i.rs = select i1 %i.rr, i32 -1, i32 %i.rq
  %i.rt = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.rs)
          to label %.noexc795 unwind label %bb.ey

.noexc795:                                        ; preds = %bb.en
  %i.ru = icmp eq i32 %i.rt, 2
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.rw = zext i1 %i.ru to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !51, !noalias !519 ; 9 uses
  %i.rz = load i64, ptr %i.ry, align 8, !noalias !519 ; 4 uses
  %i.sa = lshr i64 %i.rz, 40
  %i.sb = trunc nuw nsw i64 %i.sa to i32
  %i.sc = and i32 %i.sb, 1048575                  ; 3 uses
  %i.sd = icmp samesign ult i32 %i.sc, 1048574
  br i1 %i.sd, label %bb.eo, label %bb.ep, !prof !54

bb.eo:                                            ; preds = %.noexc795
  %i.se = add nuw nsw i32 %i.sc, 1
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = shl nuw nsw i64 %i.sf, 40
  %i.sh = and i64 %i.rz, -1152920405095219201
  %i.si = or i64 %i.sg, %i.sh                     ; 2 uses
  store i64 %i.si, ptr %i.ry, align 8, !noalias !519
  br label %bb.er

bb.ep:                                            ; preds = %.noexc795
  %i.sj = icmp eq i32 %i.sc, 1048574
  br i1 %i.sj, label %bb.eq, label %bb.er, !prof !53

bb.eq:                                            ; preds = %bb.ep
  %i.sk = or i64 %i.rz, 1152920405095219200
  store i64 %i.sk, ptr %i.ry, align 8, !noalias !519
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ry)
          to label %._crit_edge2659 unwind label %bb.ey

._crit_edge2659:                                  ; preds = %bb.eq
  %.pre2660 = load i64, ptr %i.ry, align 8
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge2659, %bb.eo, %bb.ep
  %i.sl = phi i64 [ %.pre2660, %._crit_edge2659 ], [ %i.si, %bb.eo ], [ %i.rz, %bb.ep ] ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.so = load i64, ptr %i.sn, align 8
  %i.sp = lshr i64 %i.so, 32
  %i.sq = and i64 %i.sp, 67108863
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sq
  %.not2442 = icmp eq ptr %.sroa.02387.0, %i.sr
  %i.ss = and i64 %i.sl, 1152920405095219200
  %.not.i.i798 = icmp eq i64 %i.ss, 1152920405095219200
  br i1 %.not.i.i798, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799, label %bb.es, !prof !53

bb.es:                                            ; preds = %bb.er
  %i.st = add i64 %i.sl, 1152920405095219200
  %i.su = and i64 %i.st, 1152920405095219200      ; 2 uses
  %i.sv = and i64 %i.sl, -1152920405095219201
  %i.sw = or disjoint i64 %i.su, %i.sv
  store i64 %i.sw, ptr %i.ry, align 8
  %i.sx = icmp eq i64 %i.su, 0
  br i1 %i.sx, label %bb.et, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799, !prof !53

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ry)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sy = landingpad { ptr, i32 }
          catch ptr null
  %i.sz = extractvalue { ptr, i32 } %i.sy, 0
  call void @__clang_call_terminate(ptr %i.sz) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799: ; preds = %bb.er, %bb.es, %bb.et
  br i1 %.not2442, label %.noexc.i841, label %bb.ez

bb.ev:                                            ; preds = %bb.ei, %bb.ef
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit789
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %134) #26
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn605 = phi { ptr, i32 } [ %i.tb, %bb.ew ], [ %i.ta, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #26
  br label %bb.mh

bb.ey:                                            ; preds = %bb.eq, %bb.en
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  %i.tn = or i64 %i.tl, %i.tm
  store i64 %i.tn, ptr %i.td, align 8, !noalias !520
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.fb:                                            ; preds = %bb.ez
  %i.to = icmp eq i32 %i.th, 1048574
  br i1 %i.to, label %bb.fc, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !53

bb.fc:                                            ; preds = %bb.fb
  %i.tp = or i64 %i.te, 1152920405095219200
  store i64 %i.tp, ptr %i.td, align 8, !noalias !520
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.td)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %bb.gs

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.fb, %bb.fa, %bb.fc
  %i.tq = load i64, ptr %i.rj, align 8, !tbaa !80
  %.not.not.i.i.i = icmp eq i64 %i.tq, 0
  br i1 %.not.not.i.i.i, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.tr = load ptr, ptr %135, align 8             ; 3 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ff, %bb.fd
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.pj, %bb.fd ], [ %.sroa.06.0.i.i.i, %bb.ff ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i802 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i802, label %.loopexit2448, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !52
  %i.tu = icmp eq ptr %i.tr, %i.tt
  br i1 %i.tu, label %.loopexit2448, label %bb.fe, !llvm.loop !338

bb.fg:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.tv = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %130, ptr noundef nonnull align 8 dereferenceable(8) %135)
          to label %.noexc803 unwind label %bb.gt ; 3 uses

.noexc803:                                        ; preds = %bb.fg
  %i.tw = load i64, ptr %i.pi, align 8, !tbaa !78 ; 2 uses
  %i.tx = urem i64 %i.tv, %i.tw                   ; 2 uses
  %i.ty = load ptr, ptr %130, align 8, !tbaa !77
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.tx
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ua, null
  %.pre2661 = load ptr, ptr %135, align 8         ; 7 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit2448, label %bb.fh

bb.fh:                                            ; preds = %.noexc803
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !29 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !83
  %i.uf = icmp eq i64 %i.tv, %i.ue
  %i.ug = load ptr, ptr %i.uc, align 8
  %i.uh = icmp eq ptr %.pre2661, %i.ug
  %i.ui = select i1 %i.uf, i1 %i.uh, i1 false
  br i1 %i.ui, label %.loopexit2448, label %.lr.ph.i.i.i.i.i

bb.fi:                                            ; preds = %bb.fj
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uk = icmp eq i64 %i.tv, %i.uq
  %i.ul = load ptr, ptr %i.uj, align 8
  %i.um = icmp eq ptr %.pre2661, %i.ul
  %i.un = select i1 %i.uk, i1 %i.um, i1 false
  br i1 %i.un, label %.loopexit2448, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fh, %bb.fi
  %.020.i.i.i.i.i = phi ptr [ %i.uo, %bb.fi ], [ %i.ub, %bb.fh ]
  %i.uo = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !29 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.uo, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit2448, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !83 ; 2 uses
  %i.ur = urem i64 %i.uq, %i.tw
  %.not19.i.i.i.i.i = icmp eq i64 %i.ur, %i.tx
  br i1 %.not19.i.i.i.i.i, label %bb.fi, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !339

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.fj
  br label %.loopexit2448, !llvm.loop !339

.loopexit2448:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.fi, %bb.ff, %bb.fe, %..loopexit_crit_edge21.i.i.i.i.i, %bb.fh, %.noexc803
  %i.us = phi ptr [ %.pre2661, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.tr, %bb.ff ], [ %.pre2661, %bb.fh ], [ %.pre2661, %.noexc803 ], [ %i.tr, %bb.fe ], [ %.pre2661, %bb.fi ], [ %.pre2661, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.06.1.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.sroa.06.0.i.i.i, %bb.ff ], [ %i.ub, %bb.fh ], [ null, %.noexc803 ], [ null, %bb.fe ], [ null, %.lr.ph.i.i.i.i.i ], [ %i.uo, %bb.fi ]
  %.not.i.i801.not = icmp eq ptr %.sroa.06.1.i.i.i, null
  %i.ut = load i64, ptr %i.us, align 8            ; 3 uses
  %i.uu = and i64 %i.ut, 1152920405095219200
  %.not.i.i804 = icmp eq i64 %i.uu, 1152920405095219200
  br i1 %.not.i.i804, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805, label %bb.fk, !prof !53

bb.fk:                                            ; preds = %.loopexit2448
  %i.uv = add i64 %i.ut, 1152920405095219200
  %i.uw = and i64 %i.uv, 1152920405095219200      ; 2 uses
  %i.ux = and i64 %i.ut, -1152920405095219201
  %i.uy = or disjoint i64 %i.uw, %i.ux
  store i64 %i.uy, ptr %i.us, align 8
  %i.uz = icmp eq i64 %i.uw, 0
  br i1 %i.uz, label %bb.fl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805, !prof !53

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.us)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805: ; preds = %.loopexit2448, %bb.fk, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #26
  br i1 %.not.i.i801.not, label %bb.hd, label %bb.fn

bb.fn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.vc = load ptr, ptr %.sroa.02387.0, align 8, !tbaa !51, !noalias !521 ; 17 uses
  store ptr %i.vc, ptr %136, align 8, !tbaa !52, !alias.scope !521
  %i.vd = load i64, ptr %i.vc, align 8, !noalias !521 ; 3 uses
  %i.ve = lshr i64 %i.vd, 40
  %i.vf = trunc nuw nsw i64 %i.ve to i32
  %i.vg = and i32 %i.vf, 1048575                  ; 3 uses
  %i.vh = icmp samesign ult i32 %i.vg, 1048574
  br i1 %i.vh, label %bb.fo, label %bb.fp, !prof !54

bb.fo:                                            ; preds = %bb.fn
  %i.vi = add nuw nsw i32 %i.vg, 1
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = shl nuw nsw i64 %i.vj, 40
  %i.vl = and i64 %i.vd, -1152920405095219201
  %i.vm = or i64 %i.vk, %i.vl
  store i64 %i.vm, ptr %i.vc, align 8, !noalias !521
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807

bb.fp:                                            ; preds = %bb.fn
  %i.vn = icmp eq i32 %i.vg, 1048574
  br i1 %i.vn, label %bb.fq, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807, !prof !53

bb.fq:                                            ; preds = %bb.fp
  %i.vo = or i64 %i.vd, 1152920405095219200
  store i64 %i.vo, ptr %i.vc, align 8, !noalias !521
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vc)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807 unwind label %bb.gv

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807: ; preds = %bb.fp, %bb.fo, %bb.fq
  %.not.i = icmp eq ptr %i.ps, %i.vc
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.fr, !prof !53

bb.fr:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807
  %i.vp = load i64, ptr %i.ps, align 8            ; 3 uses
  %i.vq = and i64 %i.vp, 1152920405095219200
  %.not.i.i808 = icmp eq i64 %i.vq, 1152920405095219200
  br i1 %.not.i.i808, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.fs, !prof !53

bb.fs:                                            ; preds = %bb.fr
  %i.vr = add i64 %i.vp, 1152920405095219200
  %i.vs = and i64 %i.vr, 1152920405095219200      ; 2 uses
  %i.vt = and i64 %i.vp, -1152920405095219201
  %i.vu = or disjoint i64 %i.vs, %i.vt
  store i64 %i.vu, ptr %i.ps, align 8
  %i.vv = icmp eq i64 %i.vs, 0
  br i1 %i.vv, label %bb.ft, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !53

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.gw

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.ft, %bb.fs, %bb.fr
  store ptr %i.vc, ptr %131, align 8, !tbaa !52
  %i.vw = load i64, ptr %i.vc, align 8            ; 3 uses
  %i.vx = lshr i64 %i.vw, 40
  %i.vy = trunc nuw nsw i64 %i.vx to i32
  %i.vz = and i32 %i.vy, 1048575                  ; 3 uses
  %i.wa = icmp samesign ult i32 %i.vz, 1048574
  br i1 %i.wa, label %bb.fu, label %bb.fv, !prof !54

bb.fu:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.wb = add nuw nsw i32 %i.vz, 1
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = shl nuw nsw i64 %i.wc, 40
  %i.we = and i64 %i.vw, -1152920405095219201
  %i.wf = or i64 %i.wd, %i.we
  store i64 %i.wf, ptr %i.vc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.fv:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.wg = icmp eq i32 %i.vz, 1048574
  br i1 %i.wg, label %bb.fw, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !53

bb.fw:                                            ; preds = %bb.fv
  %i.wh = or i64 %i.vw, 1152920405095219200
  store i64 %i.wh, ptr %i.vc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.gw

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.fv, %bb.fu, %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807, %bb.fw
  %i.wi = phi ptr [ %i.vc, %bb.fv ], [ %i.vc, %bb.fu ], [ %i.ps, %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit807 ], [ %i.vc, %bb.fw ] ; 7 uses
  %i.wj = load i64, ptr %i.vc, align 8            ; 3 uses
  %i.wk = and i64 %i.wj, 1152920405095219200
  %.not.i.i811 = icmp eq i64 %i.wk, 1152920405095219200
  br i1 %.not.i.i811, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813, label %bb.fx, !prof !53

bb.fx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.wl = add i64 %i.wj, 1152920405095219200
  %i.wm = and i64 %i.wl, 1152920405095219200      ; 2 uses
  %i.wn = and i64 %i.wj, -1152920405095219201
  %i.wo = or disjoint i64 %i.wm, %i.wn
  store i64 %i.wo, ptr %i.vc, align 8
  %i.wp = icmp eq i64 %i.wm, 0
  br i1 %i.wp, label %bb.fy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813, !prof !53

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #26
  %i.ws = load ptr, ptr %132, align 8, !tbaa !66  ; 5 uses
  %i.wt = load ptr, ptr %i.rk, align 8, !tbaa !66 ; 3 uses
  %i.wu = ptrtoint ptr %i.wt to i64               ; 2 uses
  %i.wv = ptrtoint ptr %i.ws to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 3 uses
  %i.wx = ashr i64 %i.ww, 5                       ; 2 uses
  %i.wy = icmp sgt i64 %i.wx, 0
  br i1 %i.wy, label %.lr.ph.i.i.i814, label %._crit_edge.i.i.i

.lr.ph.i.i.i814:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813
  %i.wz = and i64 %i.ww, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ws, i64 %i.wz ; 2 uses
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ge, %.lr.ph.i.i.i814
  %.052.i.i.i = phi i64 [ %i.wx, %.lr.ph.i.i.i814 ], [ %i.xm, %bb.ge ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ws, %.lr.ph.i.i.i814 ], [ %i.xl, %bb.ge ] ; 9 uses
  %i.xa = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !52
  %i.xb = icmp eq ptr %i.xa, %i.wi
  br i1 %i.xb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !52
  %i.xe = icmp eq ptr %i.xd, %i.wi
  br i1 %i.xe, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3179, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !52
  %i.xh = icmp eq ptr %i.xg, %i.wi
  br i1 %i.xh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3177, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !52
  %i.xk = icmp eq ptr %i.xj, %i.wi
  br i1 %i.xk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.xm = add nsw i64 %.052.i.i.i, -1
  %i.xn = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.xn, label %bb.ga, label %._crit_edge.loopexit.i.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ge
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.wu, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ww, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813 ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ws, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit813 ] ; 5 uses
  %i.xo = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.xo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit [
    i64 3, label %bb.gf
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.gf:                                            ; preds = %._crit_edge.i.i.i
  %i.xp = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !52
  %i.xq = icmp eq ptr %i.xp, %i.wi
  br i1 %i.xq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.gg
  %.sroa.032.1.i.i.i = phi ptr [ %i.xr, %bb.gg ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.xs = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !52
  %i.xt = icmp eq ptr %i.xs, %i.wi
  br i1 %i.xt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.gh

bb.gh:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.gh
  %.sroa.032.2.i.i.i = phi ptr [ %i.xu, %bb.gh ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.xv = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !52
  %i.xw = icmp eq ptr %i.xv, %i.wi
  %spec.select.i.i.i = select i1 %i.xw, ptr %.sroa.032.2.i.i.i, ptr %i.wt
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.gd
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3177: ; preds = %bb.gc
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3179: ; preds = %bb.gb
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.ga, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3177, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3179, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.gf, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.wt, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.gf ], [ %i.xz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3179 ], [ %i.xx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %i.xy, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit3177 ], [ %.sroa.032.051.i.i.i, %bb.ga ] ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !66
  %i.yc = load ptr, ptr %133, align 16, !tbaa !66 ; 2 uses
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = ptrtoint ptr %i.yc to i64
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = getelementptr inbounds i8, ptr %i.yc, i64 %i.yf
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %133, ptr %i.yg, ptr %i.ws, ptr %.sroa.08.0.in.sroa.speculated.i.i.i)
          to label %bb.gi unwind label %bb.gy

bb.gi:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.yh = getelementptr inbounds nuw i8, ptr %133, i64 24 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %133, i64 32
  %i.yj = load ptr, ptr %i.yi, align 16, !tbaa !66
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  %i.yl = load ptr, ptr %i.rk, align 8, !tbaa !66
  %i.ym = load ptr, ptr %i.yh, align 8, !tbaa !66 ; 2 uses
  %i.yn = ptrtoint ptr %i.yj to i64
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = sub i64 %i.yn, %i.yo
  %i.yq = getelementptr inbounds i8, ptr %i.ym, i64 %i.yp
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.yh, ptr %i.yq, ptr nonnull %i.yk, ptr %i.yl)
          to label %bb.gj unwind label %bb.gz

bb.gj:                                            ; preds = %bb.gi
  %i.yr = getelementptr inbounds nuw i8, ptr %133, i64 48 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %133, i64 56
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !66
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.02387.0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.yv = load ptr, ptr %1, align 8, !tbaa !52, !noalias !522 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.yx = load i64, ptr %i.yw, align 8, !noalias !522
  %i.yy = trunc i64 %i.yx to i32
  %i.yz = and i32 %i.yy, 1023                     ; 2 uses
  %i.za = icmp eq i32 %i.yz, 1023
  %i.zb = select i1 %i.za, i32 -1, i32 %i.yz
  %i.zc = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.zb)
          to label %.noexc819 unwind label %bb.ha

.noexc819:                                        ; preds = %bb.gj
  %i.zd = icmp eq i32 %i.zc, 2
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.zf = zext i1 %i.zd to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zf
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !51, !noalias !522 ; 10 uses
  store ptr %i.zh, ptr %137, align 8, !tbaa !52, !alias.scope !522
  %i.zi = load i64, ptr %i.zh, align 8, !noalias !522 ; 3 uses
  %i.zj = lshr i64 %i.zi, 40
  %i.zk = trunc nuw nsw i64 %i.zj to i32
  %i.zl = and i32 %i.zk, 1048575                  ; 3 uses
  %i.zm = icmp samesign ult i32 %i.zl, 1048574
  br i1 %i.zm, label %bb.gk, label %bb.gl, !prof !54

bb.gk:                                            ; preds = %.noexc819
  %i.zn = add nuw nsw i32 %i.zl, 1
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = shl nuw nsw i64 %i.zo, 40
  %i.zq = and i64 %i.zi, -1152920405095219201
  %i.zr = or i64 %i.zp, %i.zq
  store i64 %i.zr, ptr %i.zh, align 8, !noalias !522
  br label %bb.gn

bb.gl:                                            ; preds = %.noexc819
  %i.zs = icmp eq i32 %i.zl, 1048574
  br i1 %i.zs, label %bb.gm, label %bb.gn, !prof !53

bb.gm:                                            ; preds = %bb.gl
  %i.zt = or i64 %i.zi, 1152920405095219200
  store i64 %i.zt, ptr %i.zh, align 8, !noalias !522
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zh)
          to label %bb.gn unwind label %bb.ha
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  %i.aaz = trunc nuw nsw i64 %i.aay to i32
  %i.aba = and i32 %i.aaz, 1048575                ; 3 uses
  %i.abb = icmp samesign ult i32 %i.aba, 1048574
  br i1 %i.abb, label %bb.he, label %bb.hf, !prof !54

bb.he:                                            ; preds = %bb.hd
  %i.abc = add nuw nsw i32 %i.aba, 1
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = shl nuw nsw i64 %i.abd, 40
  %i.abf = and i64 %i.aax, -1152920405095219201
  %i.abg = or i64 %i.abe, %i.abf
  store i64 %i.abg, ptr %i.aaw, align 8, !noalias !523
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827

bb.hf:                                            ; preds = %bb.hd
  %i.abh = icmp eq i32 %i.aba, 1048574
  br i1 %i.abh, label %bb.hg, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827, !prof !53

bb.hg:                                            ; preds = %bb.hf
  %i.abi = or i64 %i.aax, 1152920405095219200
  store i64 %i.abi, ptr %i.aaw, align 8, !noalias !523
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aaw)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827 unwind label %bb.hw

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827: ; preds = %bb.hf, %bb.he, %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #26
  store ptr %130, ptr %105, align 8, !tbaa !524
  %i.abj = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %130, ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull align 8 dereferenceable(8) %105)
          to label %bb.hh unwind label %bb.hx     ; 0 uses

bb.hh:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  %i.abk = load ptr, ptr %138, align 8, !tbaa !52 ; 3 uses
  %i.abl = load i64, ptr %i.abk, align 8          ; 3 uses
  %i.abm = and i64 %i.abl, 1152920405095219200
  %.not.i.i829 = icmp eq i64 %i.abm, 1152920405095219200
  br i1 %.not.i.i829, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831, label %bb.hi, !prof !53

bb.hi:                                            ; preds = %bb.hh
  %i.abn = add i64 %i.abl, 1152920405095219200
  %i.abo = and i64 %i.abn, 1152920405095219200    ; 2 uses
  %i.abp = and i64 %i.abl, -1152920405095219201
  %i.abq = or disjoint i64 %i.abo, %i.abp
  store i64 %i.abq, ptr %i.abk, align 8
  %i.abr = icmp eq i64 %i.abo, 0
  br i1 %i.abr, label %bb.hj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831, !prof !53

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831 unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abs = landingpad { ptr, i32 }
          catch ptr null
  %i.abt = extractvalue { ptr, i32 } %i.abs, 0
  call void @__clang_call_terminate(ptr %i.abt) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831: ; preds = %bb.hh, %bb.hi, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.abu = load ptr, ptr %.sroa.02387.0, align 8, !tbaa !51, !noalias !525 ; 5 uses
  store ptr %i.abu, ptr %139, align 8, !tbaa !52, !alias.scope !525
  %i.abv = load i64, ptr %i.abu, align 8, !noalias !525 ; 3 uses
  %i.abw = lshr i64 %i.abv, 40
  %i.abx = trunc nuw nsw i64 %i.abw to i32
  %i.aby = and i32 %i.abx, 1048575                ; 3 uses
  %i.abz = icmp samesign ult i32 %i.aby, 1048574
  br i1 %i.abz, label %bb.hl, label %bb.hm, !prof !54

bb.hl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831
  %i.aca = add nuw nsw i32 %i.aby, 1
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = shl nuw nsw i64 %i.acb, 40
  %i.acd = and i64 %i.abv, -1152920405095219201
  %i.ace = or i64 %i.acc, %i.acd
  store i64 %i.ace, ptr %i.abu, align 8, !noalias !525
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833

bb.hm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit831
  %i.acf = icmp eq i32 %i.aby, 1048574
  br i1 %i.acf, label %bb.hn, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833, !prof !53

bb.hn:                                            ; preds = %bb.hm
  %i.acg = or i64 %i.abv, 1152920405095219200
  store i64 %i.acg, ptr %i.abu, align 8, !noalias !525
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abu)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833 unwind label %bb.hz

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833: ; preds = %bb.hm, %bb.hl, %bb.hn
  %i.ach = load ptr, ptr %i.rk, align 8, !tbaa !75 ; 3 uses
  %i.aci = load ptr, ptr %i.rl, align 8, !tbaa !74
  %.not.i.i834 = icmp eq ptr %i.ach, %i.aci
  br i1 %.not.i.i834, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833
  %i.acj = load ptr, ptr %139, align 8, !tbaa !52 ; 5 uses
  store ptr %i.acj, ptr %i.ach, align 8, !tbaa !52
  %i.ack = load i64, ptr %i.acj, align 8          ; 3 uses
  %i.acl = lshr i64 %i.ack, 40
  %i.acm = trunc nuw nsw i64 %i.acl to i32
  %i.acn = and i32 %i.acm, 1048575                ; 3 uses
  %i.aco = icmp samesign ult i32 %i.acn, 1048574
  br i1 %i.aco, label %bb.hp, label %bb.hq, !prof !54

bb.hp:                                            ; preds = %bb.ho
  %i.acp = add nuw nsw i32 %i.acn, 1
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = shl nuw nsw i64 %i.acq, 40
  %i.acs = and i64 %i.ack, -1152920405095219201
  %i.act = or i64 %i.acr, %i.acs
  store i64 %i.act, ptr %i.acj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.acu = icmp eq i32 %i.acn, 1048574
  br i1 %i.acu, label %bb.hr, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !53

bb.hr:                                            ; preds = %bb.hq
  %i.acv = or i64 %i.ack, 1152920405095219200
  store i64 %i.acv, ptr %i.acj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.ia

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.acw = load ptr, ptr %i.rk, align 8, !tbaa !75
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store ptr %i.acx, ptr %i.rk, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.hs:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit833
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %132, ptr %i.ach, ptr noundef nonnull align 8 dereferenceable(8) %139)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ia

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.hs
  %i.acy = load ptr, ptr %139, align 8, !tbaa !52 ; 3 uses
  %i.acz = load i64, ptr %i.acy, align 8          ; 3 uses
  %i.ada = and i64 %i.acz, 1152920405095219200
  %.not.i.i837 = icmp eq i64 %i.ada, 1152920405095219200
  br i1 %.not.i.i837, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839, label %bb.ht, !prof !53

bb.ht:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.adb = add i64 %i.acz, 1152920405095219200
  %i.adc = and i64 %i.adb, 1152920405095219200    ; 2 uses
  %i.add = and i64 %i.acz, -1152920405095219201
  %i.ade = or disjoint i64 %i.adc, %i.add
  store i64 %i.ade, ptr %i.acy, align 8
  %i.adf = icmp eq i64 %i.adc, 0
  br i1 %i.adf, label %bb.hu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839, !prof !53

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839 unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.adg = landingpad { ptr, i32 }
          catch ptr null
  %i.adh = extractvalue { ptr, i32 } %i.adg, 0
  call void @__clang_call_terminate(ptr %i.adh) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit839: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.ht, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.02387.0, i64 8
  br label %bb.en, !llvm.loop !348

bb.hw:                                            ; preds = %bb.hg
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hx:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit827
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #26
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.pn612 = phi { ptr, i32 } [ %i.adk, %bb.hx ], [ %i.adj, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #26
  br label %bb.mh

bb.hz:                                            ; preds = %bb.hn
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hs, %bb.hr
  %i.adm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %139) #26
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.pn614 = phi { ptr, i32 } [ %i.adm, %bb.ia ], [ %i.adl, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  br label %bb.mh

.noexc.i841:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit825
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #26
  %i.adn = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 6 uses
  store ptr %i.adn, ptr %142, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 16, ptr %i.b, align 8, !tbaa !59
  %i.ado = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc842 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865.thread ; 2 uses

.noexc842:                                        ; preds = %.noexc.i841
  store ptr %i.ado, ptr %142, align 8, !tbaa !57
  %i.adp = load i64, ptr %i.b, align 8, !tbaa !59 ; 3 uses
  store i64 %i.adp, ptr %i.adn, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ado, ptr noundef nonnull align 1 dereferenceable(16) @.str.3, i64 16, i1 false)
  %i.adq = getelementptr inbounds nuw i8, ptr %142, i64 8
  store i64 %i.adp, ptr %i.adq, align 8, !tbaa !40
  %i.adr = load ptr, ptr %142, align 8, !tbaa !57
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adp
  store i8 0, ptr %i.ads, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #26
  invoke void @_ZN4cvc58internal11NodeManager9sExprTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %143, ptr noundef nonnull align 8 dereferenceable(3592) %i.d)
          to label %bb.ic unwind label %bb.iw

bb.ic:                                            ; preds = %.noexc842
  invoke void @_ZN4cvc58internal11NodeManager11mkRawSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %141, ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.id unwind label %bb.ix

bb.id:                                            ; preds = %bb.ic
  %i.adt = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 3 uses
  %301 = load ptr, ptr %131, align 8, !tbaa !52   ; 8 uses
  store ptr %301, ptr %i.adt, align 8, !tbaa !52
  %i.adu = load i64, ptr %301, align 8            ; 3 uses
  %i.adv = lshr i64 %i.adu, 40
  %i.adw = trunc nuw nsw i64 %i.adv to i32
  %i.adx = and i32 %i.adw, 1048575                ; 3 uses
  %i.ady = icmp samesign ult i32 %i.adx, 1048574
  br i1 %i.ady, label %bb.ie, label %bb.if, !prof !54

bb.ie:                                            ; preds = %bb.id
  %i.adz = add nuw nsw i32 %i.adx, 1
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = shl nuw nsw i64 %i.aea, 40
  %i.aec = and i64 %i.adu, -1152920405095219201
  %i.aed = or i64 %i.aeb, %i.aec
  store i64 %i.aed, ptr %301, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845

bb.if:                                            ; preds = %bb.id
  %i.aee = icmp eq i32 %i.adx, 1048574
  br i1 %i.aee, label %bb.ig, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845, !prof !53

bb.ig:                                            ; preds = %bb.if
  %i.aef = or i64 %i.adu, 1152920405095219200
  store i64 %i.aef, ptr %301, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %301)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845 unwind label %bb.ix

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845: ; preds = %bb.if, %bb.ie, %bb.ig
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, i8 0, i64 24, i1 false)
  %i.aeg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i848 unwind label %bb.ih ; 3 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i848: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845
  %i.aeh = getelementptr inbounds nuw i8, ptr %141, i64 16
  store ptr %i.aeg, ptr %140, align 8, !tbaa !68
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aej = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 4 uses
  store ptr %i.aei, ptr %i.aej, align 8, !tbaa !74
  %i.aek = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef nonnull %141, ptr noundef nonnull %i.aeh, ptr noundef nonnull %i.aeg)
          to label %bb.ij unwind label %bb.ih

bb.ih:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i848, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit845
  %i.ael = landingpad { ptr, i32 }
          cleanup
  %i.aem = load ptr, ptr %140, align 8, !tbaa !68 ; 3 uses
  %.not.i.i5.i846 = icmp eq ptr %i.aem, null
  br i1 %.not.i.i5.i846, label %.body849, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aen = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !74
  %i.aep = ptrtoint ptr %i.aeo to i64
  %i.aeq = ptrtoint ptr %i.aem to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef %i.aer) #25
  br label %.body849

bb.ij:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i848
  %i.aes = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 8 uses
  store ptr %i.aek, ptr %i.aes, align 8, !tbaa !75
  %i.aet = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !52 ; 3 uses
  %i.aev = load i64, ptr %i.aeu, align 8          ; 3 uses
  %i.aew = and i64 %i.aev, 1152920405095219200
  %.not.i.i852 = icmp eq i64 %i.aew, 1152920405095219200
  br i1 %.not.i.i852, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854, label %bb.ik, !prof !53

bb.ik:                                            ; preds = %bb.ij
  %i.aex = add i64 %i.aev, 1152920405095219200
  %i.aey = and i64 %i.aex, 1152920405095219200    ; 2 uses
  %i.aez = and i64 %i.aev, -1152920405095219201
  %i.afa = or disjoint i64 %i.aey, %i.aez
  store i64 %i.afa, ptr %i.aeu, align 8
  %i.afb = icmp eq i64 %i.aey, 0
  br i1 %i.afb, label %bb.il, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854, !prof !53

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aeu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854 unwind label %bb.im

bb.im:                                            ; preds = %bb.io, %bb.il
  %i.afc = landingpad { ptr, i32 }
          catch ptr null
  %i.afd = extractvalue { ptr, i32 } %i.afc, 0
  call void @__clang_call_terminate(ptr %i.afd) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854: ; preds = %bb.ij, %bb.ik, %bb.il
  %i.afe = load ptr, ptr %141, align 8, !tbaa !52 ; 3 uses
  %i.aff = load i64, ptr %i.afe, align 8          ; 3 uses
  %i.afg = and i64 %i.aff, 1152920405095219200
  %.not.i.i852.1 = icmp eq i64 %i.afg, 1152920405095219200
  br i1 %.not.i.i852.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1, label %bb.in, !prof !53

bb.in:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854
  %i.afh = add i64 %i.aff, 1152920405095219200
  %i.afi = and i64 %i.afh, 1152920405095219200    ; 2 uses
  %i.afj = and i64 %i.aff, -1152920405095219201
  %i.afk = or disjoint i64 %i.afi, %i.afj
  store i64 %i.afk, ptr %i.afe, align 8
  %i.afl = icmp eq i64 %i.afi, 0
  br i1 %i.afl, label %bb.io, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1, !prof !53

bb.io:                                            ; preds = %bb.in
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1 unwind label %bb.im

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1: ; preds = %bb.io, %bb.in, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854
  %i.afm = load ptr, ptr %143, align 8, !tbaa !56 ; 3 uses
  %i.afn = load i64, ptr %i.afm, align 8          ; 3 uses
  %i.afo = and i64 %i.afn, 1152920405095219200
  %.not.i.i855 = icmp eq i64 %i.afo, 1152920405095219200
  br i1 %.not.i.i855, label %_ZN4cvc58internal8TypeNodeD2Ev.exit857, label %bb.ip, !prof !53

bb.ip:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1
  %i.afp = add i64 %i.afn, 1152920405095219200
  %i.afq = and i64 %i.afp, 1152920405095219200    ; 2 uses
  %i.afr = and i64 %i.afn, -1152920405095219201
  %i.afs = or disjoint i64 %i.afq, %i.afr
  store i64 %i.afs, ptr %i.afm, align 8
  %i.aft = icmp eq i64 %i.afq, 0
  br i1 %i.aft, label %bb.iq, label %_ZN4cvc58internal8TypeNodeD2Ev.exit857, !prof !53

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afm)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit857 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #28
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit857:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit854.1, %bb.ip, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  %i.afw = load ptr, ptr %142, align 8, !tbaa !57 ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.adn
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit857
  %i.afy = load i64, ptr %i.adn, align 8, !tbaa !41
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %145, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 3 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 4 uses
  br label %bb.iz

bb.is:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.age = load ptr, ptr %1, align 8, !tbaa !52   ; 5 uses
  store ptr %i.age, ptr %147, align 8, !tbaa !52
  %i.agf = load i64, ptr %i.age, align 8          ; 3 uses
  %i.agg = lshr i64 %i.agf, 40
  %i.agh = trunc nuw nsw i64 %i.agg to i32
  %i.agi = and i32 %i.agh, 1048575                ; 3 uses
  %i.agj = icmp samesign ult i32 %i.agi, 1048574
  br i1 %i.agj, label %bb.it, label %bb.iu, !prof !54

bb.it:                                            ; preds = %bb.is
  %i.agk = add nuw nsw i32 %i.agi, 1
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = shl nuw nsw i64 %i.agl, 40
  %i.agn = and i64 %i.agf, -1152920405095219201
  %i.ago = or i64 %i.agm, %i.agn
  store i64 %i.ago, ptr %i.age, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit862

bb.iu:                                            ; preds = %bb.is
  %i.agp = icmp eq i32 %i.agi, 1048574
  br i1 %i.agp, label %bb.iv, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit862, !prof !53

bb.iv:                                            ; preds = %bb.iu
  %i.agq = or i64 %i.agf, 1152920405095219200
  store i64 %i.agq, ptr %i.age, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.age)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit862 unwind label %bb.li

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865.thread: ; preds = %.noexc.i841
  %i.agr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br label %.loopexit2446

bb.iw:                                            ; preds = %.noexc842
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ig, %bb.ic
  %.0374 = phi ptr [ %i.adt, %bb.ig ], [ %141, %bb.ic ]
  %i.agt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2447
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal5proof30AletheProofPostprocessCallback35updateTheoryRewriteProofRewriteRuleENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EES9_PNS0_7CDProofENS_16ProofRewriteRuleE:bb.a
  %lpad.loopexit2615 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.lu
  %lpad.loopexit.split-lp2616 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit2614
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit2614 ], [ %lpad.loopexit2615, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp2616, %.loopexit.split-lp.loopexit.split-lp ]
  %i.aoy = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.aoy) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947: ; preds = %bb.lo, %bb.ln, %.lr.ph.i.i.i944
  %i.aoz = getelementptr inbounds nuw i8, ptr %.05.i.i.i945, i64 8 ; 2 uses
  %.not.i.i.i948 = icmp eq ptr %i.aoz, %i.aom
  br i1 %.not.i.i.i948, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949, label %.lr.ph.i.i.i944, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947
  %.pr.i950 = load ptr, ptr %i.aoj, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit942
  %i.apa = phi ptr [ %.pr.i950, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949 ], [ %i.aok, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit942 ] ; 3 uses
  %.not.i.i1.i952 = icmp eq ptr %i.apa, null
  br i1 %.not.i.i1.i952, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954, label %bb.lp

bb.lp:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951
  %i.apb = getelementptr inbounds nuw i8, ptr %133, i64 64
  %i.apc = load ptr, ptr %i.apb, align 16, !tbaa !74
  %i.apd = ptrtoint ptr %i.apc to i64
  %i.ape = ptrtoint ptr %i.apa to i64
  %i.apf = sub i64 %i.apd, %i.ape
  call void @_ZdlPvm(ptr noundef nonnull %i.apa, i64 noundef %i.apf) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951, %bb.lp
  %i.apg = getelementptr inbounds nuw i8, ptr %133, i64 24 ; 2 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !68 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %133, i64 32
  %i.apj = load ptr, ptr %i.api, align 16, !tbaa !75 ; 2 uses
  %.not4.i.i.i943.1 = icmp eq ptr %i.aph, %i.apj
  br i1 %.not4.i.i.i943.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.1, label %.lr.ph.i.i.i944.1

.lr.ph.i.i.i944.1:                                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1
  %.05.i.i.i945.1 = phi ptr [ %i.aps, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1 ], [ %i.aph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954 ] ; 2 uses
  %i.apk = load ptr, ptr %.05.i.i.i945.1, align 8, !tbaa !52 ; 3 uses
  %i.apl = load i64, ptr %i.apk, align 8          ; 3 uses
  %i.apm = and i64 %i.apl, 1152920405095219200
  %.not.i.i.i.i.i.i946.1 = icmp eq i64 %i.apm, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i946.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1, label %bb.lq, !prof !53

bb.lq:                                            ; preds = %.lr.ph.i.i.i944.1
  %i.apn = add i64 %i.apl, 1152920405095219200
  %i.apo = and i64 %i.apn, 1152920405095219200    ; 2 uses
  %i.app = and i64 %i.apl, -1152920405095219201
  %i.apq = or disjoint i64 %i.apo, %i.app
  store i64 %i.apq, ptr %i.apk, align 8
  %i.apr = icmp eq i64 %i.apo, 0
  br i1 %i.apr, label %bb.lr, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1, !prof !53

bb.lr:                                            ; preds = %bb.lq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.apk)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1 unwind label %.loopexit.split-lp.loopexit

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1: ; preds = %bb.lr, %bb.lq, %.lr.ph.i.i.i944.1
  %i.aps = getelementptr inbounds nuw i8, ptr %.05.i.i.i945.1, i64 8 ; 2 uses
  %.not.i.i.i948.1 = icmp eq ptr %i.aps, %i.apj
  br i1 %.not.i.i.i948.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.1, label %.lr.ph.i.i.i944.1, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.1
  %.pr.i950.1 = load ptr, ptr %i.apg, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954
  %i.apt = phi ptr [ %.pr.i950.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.1 ], [ %i.aph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954 ] ; 3 uses
  %.not.i.i1.i952.1 = icmp eq ptr %i.apt, null
  br i1 %.not.i.i1.i952.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1, label %bb.ls

bb.ls:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.1
  %i.apu = getelementptr inbounds nuw i8, ptr %133, i64 40
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !74
  %i.apw = ptrtoint ptr %i.apv to i64
  %i.apx = ptrtoint ptr %i.apt to i64
  %i.apy = sub i64 %i.apw, %i.apx
  call void @_ZdlPvm(ptr noundef nonnull %i.apt, i64 noundef %i.apy) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1: ; preds = %bb.ls, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.1
  %i.apz = load ptr, ptr %133, align 16, !tbaa !68 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i943.2 = icmp eq ptr %i.apz, %i.aqb
  br i1 %.not4.i.i.i943.2, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.2, label %.lr.ph.i.i.i944.2

.lr.ph.i.i.i944.2:                                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2
  %.05.i.i.i945.2 = phi ptr [ %i.aqk, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2 ], [ %i.apz, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1 ] ; 2 uses
  %i.aqc = load ptr, ptr %.05.i.i.i945.2, align 8, !tbaa !52 ; 3 uses
  %i.aqd = load i64, ptr %i.aqc, align 8          ; 3 uses
  %i.aqe = and i64 %i.aqd, 1152920405095219200
  %.not.i.i.i.i.i.i946.2 = icmp eq i64 %i.aqe, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i946.2, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2, label %bb.lt, !prof !53

bb.lt:                                            ; preds = %.lr.ph.i.i.i944.2
  %i.aqf = add i64 %i.aqd, 1152920405095219200
  %i.aqg = and i64 %i.aqf, 1152920405095219200    ; 2 uses
  %i.aqh = and i64 %i.aqd, -1152920405095219201
  %i.aqi = or disjoint i64 %i.aqg, %i.aqh
  store i64 %i.aqi, ptr %i.aqc, align 8
  %i.aqj = icmp eq i64 %i.aqg, 0
  br i1 %i.aqj, label %bb.lu, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2, !prof !53

bb.lu:                                            ; preds = %bb.lt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqc)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2: ; preds = %bb.lu, %bb.lt, %.lr.ph.i.i.i944.2
  %i.aqk = getelementptr inbounds nuw i8, ptr %.05.i.i.i945.2, i64 8 ; 2 uses
  %.not.i.i.i948.2 = icmp eq ptr %i.aqk, %i.aqb
  br i1 %.not.i.i.i948.2, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.2, label %.lr.ph.i.i.i944.2, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.2: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i947.2
  %.pr.i950.2 = load ptr, ptr %133, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.2

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.2: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1
  %i.aql = phi ptr [ %.pr.i950.2, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i949.2 ], [ %i.apz, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.1 ] ; 3 uses
  %.not.i.i1.i952.2 = icmp eq ptr %i.aql, null
  br i1 %.not.i.i1.i952.2, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2, label %bb.lv

bb.lv:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.2
  %i.aqm = getelementptr inbounds nuw i8, ptr %133, i64 16
  %i.aqn = load ptr, ptr %i.aqm, align 16, !tbaa !74
  %i.aqo = ptrtoint ptr %i.aqn to i64
  %i.aqp = ptrtoint ptr %i.aql to i64
  %i.aqq = sub i64 %i.aqo, %i.aqp
  call void @_ZdlPvm(ptr noundef nonnull %i.aql, i64 noundef %i.aqq) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2: ; preds = %bb.lv, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i951.2
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #26
  %i.aqr = load ptr, ptr %132, align 8, !tbaa !68 ; 3 uses
  %i.aqs = load ptr, ptr %i.rk, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i955 = icmp eq ptr %i.aqr, %i.aqs
  br i1 %.not4.i.i.i955, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963, label %.lr.ph.i.i.i956

.lr.ph.i.i.i956:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959
  %.05.i.i.i957 = phi ptr [ %i.ard, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959 ], [ %i.aqr, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2 ] ; 2 uses
  %i.aqt = load ptr, ptr %.05.i.i.i957, align 8, !tbaa !52 ; 3 uses
  %i.aqu = load i64, ptr %i.aqt, align 8          ; 3 uses
  %i.aqv = and i64 %i.aqu, 1152920405095219200
  %.not.i.i.i.i.i.i958 = icmp eq i64 %i.aqv, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i958, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959, label %bb.lw, !prof !53

bb.lw:                                            ; preds = %.lr.ph.i.i.i956
  %i.aqw = add i64 %i.aqu, 1152920405095219200
  %i.aqx = and i64 %i.aqw, 1152920405095219200    ; 2 uses
  %i.aqy = and i64 %i.aqu, -1152920405095219201
  %i.aqz = or disjoint i64 %i.aqx, %i.aqy
  store i64 %i.aqz, ptr %i.aqt, align 8
  %i.ara = icmp eq i64 %i.aqx, 0
  br i1 %i.ara, label %bb.lx, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959, !prof !53

bb.lx:                                            ; preds = %bb.lw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqt)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959 unwind label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.arb = landingpad { ptr, i32 }
          catch ptr null
  %i.arc = extractvalue { ptr, i32 } %i.arb, 0
  call void @__clang_call_terminate(ptr %i.arc) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959: ; preds = %bb.lx, %bb.lw, %.lr.ph.i.i.i956
  %i.ard = getelementptr inbounds nuw i8, ptr %.05.i.i.i957, i64 8 ; 2 uses
  %.not.i.i.i960 = icmp eq ptr %i.ard, %i.aqs
  br i1 %.not.i.i.i960, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961, label %.lr.ph.i.i.i956, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959
  %.pr.i962 = load ptr, ptr %132, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2
  %i.are = phi ptr [ %.pr.i962, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961 ], [ %i.aqr, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit954.2 ] ; 3 uses
  %.not.i.i1.i964 = icmp eq ptr %i.are, null
  br i1 %.not.i.i1.i964, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966, label %bb.lz

bb.lz:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963
  %i.arf = load ptr, ptr %i.rl, align 8, !tbaa !74
  %i.arg = ptrtoint ptr %i.arf to i64
  %i.arh = ptrtoint ptr %i.are to i64
  %i.ari = sub i64 %i.arg, %i.arh
  call void @_ZdlPvm(ptr noundef nonnull %i.are, i64 noundef %i.ari) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #26
  %i.arj = load i64, ptr %301, align 8            ; 3 uses
  %i.ark = and i64 %i.arj, 1152920405095219200
  %.not.i.i967 = icmp eq i64 %i.ark, 1152920405095219200
  br i1 %.not.i.i967, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969, label %bb.ma, !prof !53

bb.ma:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966
  %i.arl = add i64 %i.arj, 1152920405095219200
  %i.arm = and i64 %i.arl, 1152920405095219200    ; 2 uses
  %i.arn = and i64 %i.arj, -1152920405095219201
  %i.aro = or disjoint i64 %i.arm, %i.arn
  store i64 %i.aro, ptr %301, align 8
  %i.arp = icmp eq i64 %i.arm, 0
  br i1 %i.arp, label %bb.mb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969, !prof !53

bb.mb:                                            ; preds = %bb.ma
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %301)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969 unwind label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.arq = landingpad { ptr, i32 }
          catch ptr null
  %i.arr = extractvalue { ptr, i32 } %i.arq, 0
  call void @__clang_call_terminate(ptr %i.arr) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966, %bb.ma, %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #26
  %i.ars = load ptr, ptr %i.pj, align 8, !tbaa !85 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ars, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i2276

.lr.ph.i.i.i2276:                                 ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.art, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.ars, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969 ] ; 3 uses
  %i.art = load ptr, ptr %.06.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !52 ; 3 uses
  %i.arw = load i64, ptr %i.arv, align 8          ; 3 uses
  %i.arx = and i64 %i.arw, 1152920405095219200
  %.not.i.i.i.i.i.i2277 = icmp eq i64 %i.arx, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i2277, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.md, !prof !53

bb.md:                                            ; preds = %.lr.ph.i.i.i2276
  %i.ary = add i64 %i.arw, 1152920405095219200
  %i.arz = and i64 %i.ary, 1152920405095219200    ; 2 uses
  %i.asa = and i64 %i.arw, -1152920405095219201
  %i.asb = or disjoint i64 %i.arz, %i.asa
  store i64 %i.asb, ptr %i.arv, align 8
  %i.asc = icmp eq i64 %i.arz, 0
  br i1 %i.asc, label %bb.me, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !53

bb.me:                                            ; preds = %bb.md
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arv)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.asd = landingpad { ptr, i32 }
          catch ptr null
  %i.ase = extractvalue { ptr, i32 } %i.asd, 0
  call void @__clang_call_terminate(ptr %i.ase) #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.me, %bb.md, %.lr.ph.i.i.i2276
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #25
  %.not.i.i.i2278 = icmp eq ptr %i.art, null
  br i1 %.not.i.i.i2278, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i2276, !llvm.loop !4

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit969
  %i.asf = load ptr, ptr %130, align 8, !tbaa !77
  %i.asg = load i64, ptr %i.pi, align 8, !tbaa !78
  %i.ash = shl i64 %i.asg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.asf, i8 0, i64 %i.ash, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  %i.asi = load ptr, ptr %130, align 8, !tbaa !77 ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.ph
  br i1 %i.asj, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.mg

bb.mg:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.ask = load i64, ptr %i.pi, align 8, !tbaa !78
  %i.asl = shl i64 %i.ask, 3
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asl) #25
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #26
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782thread-pre-split

bb.mh:                                            ; preds = %bb.ex, %bb.ey, %bb.gu, %bb.gx, %bb.hy, %bb.ib, %bb.hc, %bb.gz, %bb.gy, %bb.lm
  %.pn635.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn, %bb.lm ], [ %.pn605, %bb.ex ], [ %.pn616, %bb.gx ], [ %.pn614, %bb.ib ], [ %.pn612, %bb.hy ], [ %.pn609, %bb.gu ], [ %i.tc, %bb.ey ], [ %.pn618, %bb.hc ], [ %i.aat, %bb.gz ], [ %i.aas, %bb.gy ]
  %i.asm = getelementptr inbounds nuw i8, ptr %133, i64 48
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asm) #26
  %i.asn = getelementptr inbounds nuw i8, ptr %133, i64 24
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asn) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %133) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #26
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %132) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #26
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #26
  br label %.body784

.body784:                                         ; preds = %bb.ee, %bb.mh
  %.pn635.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn635.pn.pn.pn, %bb.mh ], [ %i.pr, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #26
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %130) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #26
  br label %bb.bcy

bb.mi:                                            ; preds = %bb.a
  %i.aso = load ptr, ptr %1, align 8, !tbaa !52   ; 5 uses
  store ptr %i.aso, ptr %150, align 8, !tbaa !52
  %i.asp = load i64, ptr %i.aso, align 8          ; 3 uses
  %i.asq = lshr i64 %i.asp, 40
  %i.asr = trunc nuw nsw i64 %i.asq to i32
  %i.ass = and i32 %i.asr, 1048575                ; 3 uses
  %i.ast = icmp samesign ult i32 %i.ass, 1048574
  br i1 %i.ast, label %bb.mj, label %bb.mk, !prof !54

bb.mj:                                            ; preds = %bb.mi
  %i.asu = add nuw nsw i32 %i.ass, 1
  %i.asv = zext nneg i32 %i.asu to i64
  %i.asw = shl nuw nsw i64 %i.asv, 40
  %i.asx = and i64 %i.asp, -1152920405095219201
  %i.asy = or i64 %i.asw, %i.asx
  store i64 %i.asy, ptr %i.aso, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit971

bb.mk:                                            ; preds = %bb.mi
  %i.asz = icmp eq i32 %i.ass, 1048574
  br i1 %i.asz, label %bb.ml, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit971, !prof !53

bb.ml:                                            ; preds = %bb.mk
  %i.ata = or i64 %i.asp, 1152920405095219200
  store i64 %i.ata, ptr %i.aso, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aso)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit971 unwind label %bb.dx

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit971: ; preds = %bb.mk, %bb.mj, %bb.ml
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !52 ; 2 uses
  %i.atd = load ptr, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #26, !noalias !528
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !71, !noalias !528
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %97, ptr noundef %i.atf, i32 noundef 10)
          to label %.noexc973 unwind label %bb.nd

.noexc973:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit971
  store ptr %i.atc, ptr %98, align 8, !tbaa !73, !noalias !528
  %i.atg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %97, ptr noundef nonnull align 8 %98)
          to label %bb.mm unwind label %bb.mp, !noalias !528

bb.mm:                                            ; preds = %.noexc973
  store ptr %i.atd, ptr %99, align 8, !tbaa !73, !noalias !528
  %i.ath = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.atg, ptr noundef nonnull align 8 %99)
          to label %bb.mn unwind label %bb.mq, !noalias !528 ; 0 uses

bb.mn:                                            ; preds = %bb.mm
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %151, ptr noundef nonnull align 8 dereferenceable(124) %97)
          to label %bb.ms unwind label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.ati = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mp:                                            ; preds = %.noexc973
  %i.atj = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mq:                                            ; preds = %bb.mm
  %i.atk = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp, %bb.mo
  %.pn5.i972 = phi { ptr, i32 } [ %i.ati, %bb.mo ], [ %i.atk, %bb.mq ], [ %i.atj, %bb.mp ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26, !noalias !528
  br label %.body974

bb.ms:                                            ; preds = %bb.mn
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26, !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %98)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %152, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  %i.atl = invoke noundef zeroext i1 @_ZN4cvc58internal5proof30AletheProofPostprocessCallback13addAletheStepENS1_10AletheRuleENS0_12NodeTemplateILb1EEES5_RKSt6vectorIS5_SaIS5_EESA_RNS0_7CDProofE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 79, ptr noundef nonnull align 8 %150, ptr noundef nonnull align 8 %151, ptr noundef nonnull align 8 dereferenceable(24) %152, ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(217) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit988 unwind label %bb.ne ; 3 uses

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit988: ; preds = %bb.ms
  %.pre2656 = load ptr, ptr %152, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert2657 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %.pre2658 = load ptr, ptr %.phi.trans.insert2657, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #26
  %.not4.i.i.i989 = icmp eq ptr %.pre2656, %.pre2658
  br i1 %.not4.i.i.i989, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i997, label %.lr.ph.i.i.i990

.lr.ph.i.i.i990:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit988, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i993
  %.05.i.i.i991 = phi ptr [ %i.atw, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i993 ], [ %.pre2656, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit988 ] ; 2 uses
  %i.atm = load ptr, ptr %.05.i.i.i991, align 8, !tbaa !52 ; 3 uses
  %i.atn = load i64, ptr %i.atm, align 8          ; 3 uses
  %i.ato = and i64 %i.atn, 1152920405095219200
  %.not.i.i.i.i.i.i992 = icmp eq i64 %i.ato, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i992, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i993, label %bb.mt, !prof !53

bb.mt:                                            ; preds = %.lr.ph.i.i.i990
  %i.atp = add i64 %i.atn, 1152920405095219200
  %i.atq = and i64 %i.atp, 1152920405095219200    ; 2 uses
  %i.atr = and i64 %i.atn, -1152920405095219201
  %i.ats = or disjoint i64 %i.atq, %i.atr
  store i64 %i.ats, ptr %i.atm, align 8
end_hunk_3

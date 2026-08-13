inline.NumInlined: 1780
inline.NumDeleted: 705
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes14SygusInference10solveSygusERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EERS8_SB_:bb.a
bb.df:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276
  br i1 %i.nf, label %bb.dq, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ng = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc58internal14WarningChannelE, i64 48), align 8, !tbaa !285 ; 6 uses
  %.not1370 = icmp eq ptr %i.ng, @_ZN4cvc58internal7null_osE
  %.not.i280 = icmp eq ptr %i.ng, null
  %or.cond1376 = or i1 %.not1370, %.not.i280
  br i1 %or.cond1376, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit305.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !17
  %i.ni = getelementptr i8, ptr %i.nh, i64 -24
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds i8, ptr %i.ng, i64 %i.nj ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 192
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !298
  %i.nn = icmp ult i32 %i.gr, %i.nm
  br i1 %i.nn, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 200
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !307
  %i.nq = getelementptr inbounds [16 x i8], ptr %i.np, i64 %i.gs
  br label %_ZNSt8ios_base5iwordEi.exit.i283

bb.dj:                                            ; preds = %bb.dh
  %i.nr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216) %i.nk, i32 noundef %i.gr, i1 noundef zeroext true)
          to label %_ZNSt8ios_base5iwordEi.exit.i283 unwind label %.loopexit.split-lp1405.loopexit

_ZNSt8ios_base5iwordEi.exit.i283:                 ; preds = %bb.dj, %bb.di
  %i.ns = phi ptr [ %i.nq, %bb.di ], [ %i.nr, %bb.dj ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !308 ; 2 uses
  %i.nv = icmp sgt i64 %i.nu, 0
  br i1 %i.nv, label %.lr.ph.i285, label %.loopexit.i281

.lr.ph.i285:                                      ; preds = %_ZNSt8ios_base5iwordEi.exit.i283, %.noexc289
  %i.nw = phi ptr [ %i.nz, %.noexc289 ], [ %i.ng, %_ZNSt8ios_base5iwordEi.exit.i283 ]
  %.04.i286 = phi i64 [ %i.oa, %.noexc289 ], [ 0, %_ZNSt8ios_base5iwordEi.exit.i283 ]
  %i.nx = load ptr, ptr @_ZN4cvc58internal11Cvc5ostream5s_tabB5cxx11E, align 8, !tbaa !16
  %i.ny = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc58internal11Cvc5ostream5s_tabB5cxx11E, i64 8), align 8, !tbaa !12
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef %i.nx, i64 noundef %i.ny)
          to label %.noexc289 unwind label %.loopexit1404 ; 2 uses

.noexc289:                                        ; preds = %.lr.ph.i285
  %i.oa = add nuw nsw i64 %.04.i286, 1            ; 2 uses
  %exitcond.not.i287 = icmp eq i64 %i.oa, %i.nu
  br i1 %exitcond.not.i287, label %.loopexit.i281, label %.lr.ph.i285, !llvm.loop !337

.loopexit.i281:                                   ; preds = %.noexc289, %_ZNSt8ios_base5iwordEi.exit.i283
  %.sroa.01297.0 = phi ptr [ %i.ng, %_ZNSt8ios_base5iwordEi.exit.i283 ], [ %i.nz, %.noexc289 ] ; 5 uses
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01297.0, ptr noundef nonnull @.str.12, i64 noundef 84)
          to label %.loopexit.i292 unwind label %.loopexit.split-lp1405.loopexit ; 0 uses

.loopexit.i292:                                   ; preds = %.loopexit.i281
  %i.oc = load ptr, ptr %39, align 8, !tbaa !32
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.oc, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01297.0)
          to label %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit302 unwind label %.loopexit.split-lp1405.loopexit

_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit302: ; preds = %.loopexit.i292
  %i.od = load ptr, ptr %.sroa.01297.0, align 8, !tbaa !17
  %i.oe = getelementptr i8, ptr %i.od, i64 -24
  %i.of = load i64, ptr %i.oe, align 8
  %i.og = getelementptr inbounds i8, ptr %.sroa.01297.0, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 240
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !310 ; 6 uses
  %.not.i.i.i1058 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i1058, label %bb.dk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1059

bb.dk:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit302
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc1063 unwind label %.loopexit.split-lp1405.loopexit.split-lp

.noexc1063:                                       ; preds = %bb.dk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1059: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit302
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %i.ok = load i8, ptr %i.oj, align 8, !tbaa !316
  %.not.i1.i.i1060 = icmp eq i8 %i.ok, 0
  br i1 %.not.i1.i.i1060, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1059
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 67
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1061

bb.dm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1059
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oi)
          to label %.noexc1064 unwind label %.loopexit.split-lp1405.loopexit

.noexc1064:                                       ; preds = %bb.dm
  %i.on = load ptr, ptr %i.oi, align 8, !tbaa !17
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = invoke noundef signext i8 %i.op(ptr noundef nonnull align 8 dereferenceable(570) %i.oi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1061 unwind label %.loopexit.split-lp1405.loopexit, !inline_history !338

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1061: ; preds = %.noexc1064, %bb.dl
  %.0.i.i.i1062 = phi i8 [ %i.om, %bb.dl ], [ %i.oq, %.noexc1064 ]
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01297.0, i8 noundef signext %.0.i.i.i1062)
          to label %.noexc1066 unwind label %.loopexit.split-lp1405.loopexit

.noexc1066:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1061
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.or)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit305 unwind label %.loopexit.split-lp1405.loopexit ; 0 uses

bb.dn:                                            ; preds = %bb.cw
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.do:                                            ; preds = %bb.da, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1405

bb.dp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit273
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #19
  br label %.loopexit.split-lp1405

.loopexit1404:                                    ; preds = %.lr.ph.i285
  %lpad.loopexit1406 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1405

.loopexit.split-lp1405.loopexit:                  ; preds = %.noexc1066, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1061, %.noexc1064, %bb.dm, %.loopexit.i292, %.loopexit.i281, %bb.dj
  %lpad.loopexit1409 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1405

.loopexit.split-lp1405.loopexit.split-lp:         ; preds = %bb.dk
  %lpad.loopexit.split-lp1410 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1405

bb.dq:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ow = load ptr, ptr %39, align 8, !tbaa !32, !noalias !339 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !noalias !339
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = and i32 %i.oz, 1023                     ; 2 uses
  %i.pb = icmp eq i32 %i.pa, 1023
  %i.pc = select i1 %i.pb, i32 -1, i32 %i.pa
  %i.pd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.pc)
          to label %.noexc307 unwind label %bb.eb

.noexc307:                                        ; preds = %bb.dq
  %i.pe = icmp eq i32 %i.pd, 2
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.pg = zext i1 %i.pe to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pg
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !334, !noalias !339 ; 9 uses
  store ptr %i.pi, ptr %47, align 8, !tbaa !32, !alias.scope !339
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !339 ; 3 uses
  %i.pk = lshr i64 %i.pj, 40
  %i.pl = trunc nuw nsw i64 %i.pk to i32
  %i.pm = and i32 %i.pl, 1048575                  ; 3 uses
  %i.pn = icmp samesign ult i32 %i.pm, 1048574
  br i1 %i.pn, label %bb.dr, label %bb.ds, !prof !35

bb.dr:                                            ; preds = %.noexc307
  %i.po = add nuw nsw i32 %i.pm, 1
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = shl nuw nsw i64 %i.pp, 40
  %i.pr = and i64 %i.pj, -1152920405095219201
  %i.ps = or i64 %i.pq, %i.pr
  store i64 %i.ps, ptr %i.pi, align 8, !noalias !339
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.ds:                                            ; preds = %.noexc307
  %i.pt = icmp eq i32 %i.pm, 1048574
  br i1 %i.pt, label %bb.dt, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !36

bb.dt:                                            ; preds = %bb.ds
  %i.pu = or i64 %i.pj, 1152920405095219200
  store i64 %i.pu, ptr %i.pi, align 8, !noalias !339
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pi)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit unwind label %bb.eb

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.ds, %bb.dr, %bb.dt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8
  %i.px = trunc i64 %i.pw to i32
  %i.py = and i32 %i.px, 1023                     ; 2 uses
  %i.pz = icmp eq i32 %i.py, 1023
  %i.qa = select i1 %i.pz, i32 -1, i32 %i.py
  %i.qb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.qa)
          to label %bb.du unwind label %bb.ec

bb.du:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.qc = icmp eq i32 %i.qb, 2
  %spec.select.v.i.i309 = select i1 %i.qc, i64 32, i64 24 ; 2 uses
  %i.qd = load i64, ptr %i.pv, align 8
  %i.qe = lshr i64 %i.qd, 29
  %.idx = and i64 %i.qe, 536870904
  %i.qf = add nuw nsw i64 %.idx, 24               ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.qf
  %.not13711688 = icmp samesign eq i64 %spec.select.v.i.i309, %i.qf
  br i1 %.not13711688, label %._crit_edge1692, label %.lr.ph1691.preheader

.lr.ph1691.preheader:                             ; preds = %bb.du
  %spec.select.i.i310 = getelementptr inbounds nuw i8, ptr %i.pi, i64 %spec.select.v.i.i309
  br label %.lr.ph1691

._crit_edge1692.loopexit:                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit414
  %.pre1925 = load ptr, ptr %47, align 8, !tbaa !32
  br label %._crit_edge1692

._crit_edge1692:                                  ; preds = %._crit_edge1692.loopexit, %bb.du
  %i.qh = phi ptr [ %.pre1925, %._crit_edge1692.loopexit ], [ %i.pi, %bb.du ] ; 3 uses
  %i.qi = load i64, ptr %i.qh, align 8            ; 3 uses
  %i.qj = and i64 %i.qi, 1152920405095219200
  %.not.i.i313 = icmp eq i64 %i.qj, 1152920405095219200
  br i1 %.not.i.i313, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315, label %bb.dv, !prof !36

bb.dv:                                            ; preds = %._crit_edge1692
  %i.qk = add i64 %i.qi, 1152920405095219200
  %i.ql = and i64 %i.qk, 1152920405095219200      ; 2 uses
  %i.qm = and i64 %i.qi, -1152920405095219201
  %i.qn = or disjoint i64 %i.ql, %i.qm
  store i64 %i.qn, ptr %i.qh, align 8
  %i.qo = icmp eq i64 %i.ql, 0
  br i1 %i.qo, label %bb.dw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315, !prof !36

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315: ; preds = %._crit_edge1692, %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.qr = load ptr, ptr %39, align 8, !tbaa !32, !noalias !342 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !342
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1023                     ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 1023
  %i.qx = select i1 %i.qw, i32 -1, i32 %i.qv
  %i.qy = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.qx)
          to label %.noexc317 unwind label %bb.hn

.noexc317:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315
  %i.qz = icmp eq i32 %i.qy, 2
  %spec.select.i.i316 = select i1 %i.qz, i64 2, i64 1
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %spec.select.i.i316
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !334, !noalias !342 ; 14 uses
  store ptr %i.rc, ptr %51, align 8, !tbaa !32, !alias.scope !342
  %i.rd = load i64, ptr %i.rc, align 8, !noalias !342 ; 3 uses
  %i.re = lshr i64 %i.rd, 40
  %i.rf = trunc nuw nsw i64 %i.re to i32
  %i.rg = and i32 %i.rf, 1048575                  ; 3 uses
  %i.rh = icmp samesign ult i32 %i.rg, 1048574
  br i1 %i.rh, label %bb.dy, label %bb.dz, !prof !35

bb.dy:                                            ; preds = %.noexc317
  %i.ri = add nuw nsw i32 %i.rg, 1
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 40
  %i.rl = and i64 %i.rd, -1152920405095219201
  %i.rm = or i64 %i.rk, %i.rl
  store i64 %i.rm, ptr %i.rc, align 8, !noalias !342
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit319

bb.dz:                                            ; preds = %.noexc317
  %i.rn = icmp eq i32 %i.rg, 1048574
  br i1 %i.rn, label %bb.ea, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit319, !prof !36

bb.ea:                                            ; preds = %bb.dz
  %i.ro = or i64 %i.rd, 1152920405095219200
  store i64 %i.ro, ptr %i.rc, align 8, !noalias !342
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit319 unwind label %bb.hn

bb.eb:                                            ; preds = %bb.dt, %bb.dq
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1405

bb.ec:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.lr.ph1691:                                       ; preds = %.lr.ph1691.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit414
  %.sroa.01294.01689 = phi ptr [ %i.aar, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit414 ], [ %spec.select.i.i310, %.lr.ph1691.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.rr = load ptr, ptr %.sroa.01294.01689, align 8, !tbaa !334, !noalias !345 ; 5 uses
  store ptr %i.rr, ptr %48, align 8, !tbaa !32, !alias.scope !345
  %i.rs = load i64, ptr %i.rr, align 8, !noalias !345 ; 3 uses
  %i.rt = lshr i64 %i.rs, 40
  %i.ru = trunc nuw nsw i64 %i.rt to i32
  %i.rv = and i32 %i.ru, 1048575                  ; 3 uses
  %i.rw = icmp samesign ult i32 %i.rv, 1048574
  br i1 %i.rw, label %bb.ed, label %bb.ee, !prof !35

bb.ed:                                            ; preds = %.lr.ph1691
  %i.rx = add nuw nsw i32 %i.rv, 1
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = shl nuw nsw i64 %i.ry, 40
  %i.sa = and i64 %i.rs, -1152920405095219201
  %i.sb = or i64 %i.rz, %i.sa
  store i64 %i.sb, ptr %i.rr, align 8, !noalias !345
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit321

bb.ee:                                            ; preds = %.lr.ph1691
  %i.sc = icmp eq i32 %i.rv, 1048574
  br i1 %i.sc, label %bb.ef, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit321, !prof !36

bb.ef:                                            ; preds = %bb.ee
  %i.sd = or i64 %i.rs, 1152920405095219200
  store i64 %i.sd, ptr %i.rr, align 8, !noalias !345
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rr)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit321 unwind label %bb.fe

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit321: ; preds = %bb.ee, %bb.ed, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %49, ptr noundef nonnull align 8 dereferenceable(8) %48, i1 noundef zeroext false)
          to label %bb.eg unwind label %bb.ff

bb.eg:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit321
  %i.se = load ptr, ptr %i.gm, align 8, !tbaa !324 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.se, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.eg
  %i.sf = load ptr, ptr %49, align 8, !tbaa !348
  %i.sg = load i64, ptr %i.sf, align 8
  %i.sh = and i64 %i.sg, 1099511627775            ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.se, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.eh ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.eh ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !348
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = and i64 %i.sk, 1099511627775
  %i.sm = icmp samesign ult i64 %i.sl, %i.sh      ; 3 uses
  %.19.i.i.i.i = select i1 %i.sm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.sm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !350 ; 2 uses
  %.not.i.i.i.i322 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i322, label %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i, label %bb.eh, !llvm.loop !351

_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i: ; preds = %bb.eh
  %i.sn = icmp eq ptr %.19.i.i.i.i, %i.gl
  br i1 %i.sn, label %.critedge.i, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.sm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.so = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !348
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = and i64 %i.sp, 1099511627775
  %i.sr = icmp samesign ult i64 %i.sh, %i.sq
  br i1 %i.sr, label %.critedge.i, label %.thread

.thread:                                          ; preds = %bb.ei
  %i.ss = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !297
  br label %.lr.ph.i.i.i.i325

.critedge.i:                                      ; preds = %bb.ei, %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i, %bb.eg
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ei ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i ], [ %i.gl, %bb.eg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store ptr %49, ptr %24, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.su = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ej unwind label %bb.fg

bb.ej:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %.pre1924 = load ptr, ptr %i.gm, align 8, !tbaa !324 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !297 ; 2 uses
  %.not10.i.i.i.i324 = icmp eq ptr %.pre1924, null
  br i1 %.not10.i.i.i.i324, label %.critedge.i335, label %.lr.ph.i.i.i.i325

.lr.ph.i.i.i.i325:                                ; preds = %.thread, %bb.ej
  %i.sx = phi i32 [ %i.st, %.thread ], [ %i.sw, %bb.ej ] ; 3 uses
  %i.sy = phi ptr [ %i.se, %.thread ], [ %.pre1924, %bb.ej ]
  %i.sz = load ptr, ptr %49, align 8, !tbaa !348
  %i.ta = load i64, ptr %i.sz, align 8
  %i.tb = and i64 %i.ta, 1099511627775            ; 2 uses
  br label %bb.ek
end_hunk_0

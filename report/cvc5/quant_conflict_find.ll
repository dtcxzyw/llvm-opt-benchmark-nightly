Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quant_conflict_find?download=true
inline.NumInlined: 7873
inline.NumDeleted: 2411
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers9QuantInfoC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_12TermRegistryEPNS2_17QuantConflictFindENS0_12NodeTemplateILb1EEE:bb.a
bb.l:                                             ; preds = %.noexc114
  %i.dv = add nuw nsw i32 %i.dt, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 40
  %i.dy = and i64 %i.dq, -1152920405095219201
  %i.dz = or i64 %i.dx, %i.dy
  store i64 %i.dz, ptr %i.dp, align 8, !noalias !602
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116

bb.m:                                             ; preds = %.noexc114
  %i.ea = icmp eq i32 %i.dt, 1048574
  br i1 %i.ea, label %bb.n, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116, !prof !125

bb.n:                                             ; preds = %bb.m
  %i.eb = or i64 %i.dq, 1152920405095219200
  store i64 %i.eb, ptr %i.dp, align 8, !noalias !602
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116 unwind label %bb.y

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116: ; preds = %bb.m, %bb.l, %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1023                     ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 1023
  %i.eh = select i1 %i.eg, i32 -1, i32 %i.ef
  %i.ei = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eh)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116
  %i.ej = icmp eq i32 %i.ei, 2
  %i.ek = load i64, ptr %i.ec, align 8
  %i.el = lshr i64 %i.ek, 32
  %i.em = and i64 %i.el, 67108863
  %i.en = sext i1 %i.ej to i64
  %i.eo = add nsw i64 %i.em, %i.en
  %i.ep = and i64 %i.eo, 4294967295               ; 2 uses
  %i.eq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.er = and i64 %i.eq, 1152920405095219200
  %.not.i.i118 = icmp eq i64 %i.er, 1152920405095219200
  br i1 %.not.i.i118, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.p, !prof !125

bb.p:                                             ; preds = %bb.o
  %i.es = add i64 %i.eq, 1152920405095219200
  %i.et = and i64 %i.es, 1152920405095219200      ; 2 uses
  %i.eu = and i64 %i.eq, -1152920405095219201
  %i.ev = or disjoint i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.dp, align 8
  %i.ew = icmp eq i64 %i.et, 0
  br i1 %i.ew, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !125

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %.not633 = icmp eq i64 %i.ep, 0
  br i1 %.not633, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fh = load ptr, ptr %21, align 8, !tbaa !120  ; 5 uses
  store ptr %i.fh, ptr %27, align 8, !tbaa !120
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = lshr i64 %i.fi, 40
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 1048575                  ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fl, 1048574
  br i1 %i.fm, label %bb.s, label %bb.t, !prof !124

bb.s:                                             ; preds = %._crit_edge
  %i.fn = add nuw nsw i32 %i.fl, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 40
  %i.fq = and i64 %i.fi, -1152920405095219201
  %i.fr = or i64 %i.fp, %i.fq
  store i64 %i.fr, ptr %i.fh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit120

bb.t:                                             ; preds = %._crit_edge
  %i.fs = icmp eq i32 %i.fl, 1048574
  br i1 %i.fs, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit120, !prof !125

bb.u:                                             ; preds = %bb.t
  %i.ft = or i64 %i.fi, 1152920405095219200
  store i64 %i.ft, ptr %i.fh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit120 unwind label %bb.ck

bb.v:                                             ; preds = %bb.a
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.w:                                             ; preds = %bb.e
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.x:                                             ; preds = %bb.h, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.y:                                             ; preds = %bb.n, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.z ], [ %i.fx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.hx

bb.ab:                                            ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175
  %.059608 = phi i64 [ 0, %.lr.ph ], [ %i.nf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.fz = load ptr, ptr %i.ah, align 8, !tbaa !120, !noalias !603 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !603
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = and i32 %i.gc, 1023                     ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 1023
  %i.gf = select i1 %i.ge, i32 -1, i32 %i.gd
  %i.gg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gf)
          to label %.noexc122 unwind label %bb.bo

.noexc122:                                        ; preds = %bb.ab
  %i.gh = icmp eq i32 %i.gg, 2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gj = zext i1 %i.gh to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !129, !noalias !603 ; 10 uses
  store ptr %i.gl, ptr %24, align 8, !tbaa !120, !alias.scope !603
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !603 ; 3 uses
  %i.gn = lshr i64 %i.gm, 40
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = and i32 %i.go, 1048575                  ; 3 uses
  %i.gq = icmp samesign ult i32 %i.gp, 1048574
  br i1 %i.gq, label %bb.ac, label %bb.ad, !prof !124

bb.ac:                                            ; preds = %.noexc122
  %i.gr = add nuw nsw i32 %i.gp, 1
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 40
  %i.gu = and i64 %i.gm, -1152920405095219201
  %i.gv = or i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gl, align 8, !noalias !603
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit124

bb.ad:                                            ; preds = %.noexc122
  %i.gw = icmp eq i32 %i.gp, 1048574
  br i1 %i.gw, label %bb.ae, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit124, !prof !125

bb.ae:                                            ; preds = %bb.ad
  %i.gx = or i64 %i.gm, 1152920405095219200
  store i64 %i.gx, ptr %i.gl, align 8, !noalias !603
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit124 unwind label %bb.bo

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit124: ; preds = %bb.ad, %bb.ac, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !604
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = and i32 %i.ha, 1023                     ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 1023
  %i.hd = select i1 %i.hc, i32 -1, i32 %i.hb
  %i.he = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hd)
          to label %.noexc126 unwind label %bb.bp

.noexc126:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit124
  %i.hf = icmp eq i32 %i.he, 2
  %i.hg = zext i1 %i.hf to i64
  %spec.select.i.i125 = add nuw nsw i64 %.059608, %i.hg
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %sext577 = shl i64 %spec.select.i.i125, 32
  %i.hi = ashr exact i64 %sext577, 29
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !129, !noalias !604 ; 5 uses
  store ptr %i.hk, ptr %23, align 8, !tbaa !120, !alias.scope !604
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !604 ; 3 uses
  %i.hm = lshr i64 %i.hl, 40
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = and i32 %i.hn, 1048575                  ; 3 uses
  %i.hp = icmp samesign ult i32 %i.ho, 1048574
  br i1 %i.hp, label %bb.af, label %bb.ag, !prof !124

bb.af:                                            ; preds = %.noexc126
  %i.hq = add nuw nsw i32 %i.ho, 1
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 40
  %i.ht = and i64 %i.hl, -1152920405095219201
  %i.hu = or i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.hk, align 8, !noalias !604
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128

bb.ag:                                            ; preds = %.noexc126
  %i.hv = icmp eq i32 %i.ho, 1048574
  br i1 %i.hv, label %bb.ah, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128, !prof !125

bb.ah:                                            ; preds = %bb.ag
  %i.hw = or i64 %i.hl, 1152920405095219200
  store i64 %i.hw, ptr %i.hk, align 8, !noalias !604
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128 unwind label %bb.bp

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128: ; preds = %bb.ag, %bb.af, %bb.ah
  %i.hx = load i64, ptr %i.gl, align 8            ; 3 uses
  %i.hy = and i64 %i.hx, 1152920405095219200
  %.not.i.i129 = icmp eq i64 %i.hy, 1152920405095219200
  br i1 %.not.i.i129, label %bb.al, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128
  %i.hz = add i64 %i.hx, 1152920405095219200
  %i.ia = and i64 %i.hz, 1152920405095219200      ; 2 uses
  %i.ib = and i64 %i.hx, -1152920405095219201
  %i.ic = or disjoint i64 %i.ia, %i.ib
  store i64 %i.ic, ptr %i.gl, align 8
  %i.id = icmp eq i64 %i.ia, 0
  br i1 %i.id, label %bb.aj, label %bb.al, !prof !125

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #25
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ai, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.ig = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb0EE6s_nullE, align 8, !tbaa !122, !noalias !605 ; 2 uses
  %i.ih = load ptr, ptr %i.ez, align 8, !tbaa !133 ; 6 uses
  %i.ii = load ptr, ptr %i.fa, align 8, !tbaa !134
  %.not.i.i131 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i131, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !122
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.ij, ptr %i.ez, align 8, !tbaa !133
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.ik = load ptr, ptr %i.o, align 8, !tbaa !135 ; 5 uses
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = sub i64 %i.il, %i.im                    ; 3 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775800
  br i1 %i.io, label %bb.ao, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #26
          to label %.noexc133 unwind label %.loopexit.split-lp591

.noexc133:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.ip = ashr exact i64 %i.in, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 1152921504606846975)
  %i.it = select i1 %i.ir, i64 1152921504606846975, i64 %i.is ; 3 uses
  %.not.i.i.i.i132 = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i.i132)
  %i.iu = shl nuw nsw i64 %i.it, 3
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #27
          to label %.noexc134 unwind label %.loopexit590 ; 5 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.in
  store ptr %i.ig, ptr %i.iw, align 8, !tbaa !122
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.ih
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc134, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.iv, %.noexc134 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ik, %.noexc134 ] ; 2 uses
  %i.ix = load ptr, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.ix, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.iy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.iy, %i.ih
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc134
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %.noexc134 ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  %i.jb = load ptr, ptr %i.fa, align 8, !tbaa !134
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.jd) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  store ptr %i.iv, ptr %i.o, align 8, !tbaa !135
  store ptr %i.ja, ptr %i.ez, align 8, !tbaa !133
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.je, ptr %i.fa, align 8, !tbaa !134
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.jf = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb0EE6s_nullE, align 8, !tbaa !122, !noalias !606 ; 2 uses
  %i.jg = load ptr, ptr %i.fb, align 8, !tbaa !133 ; 6 uses
  %i.jh = load ptr, ptr %i.fc, align 8, !tbaa !134
  %.not.i.i135 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i135, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !122
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.ji, ptr %i.fb, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit150

bb.as:                                            ; preds = %bb.aq
  %i.jj = load ptr, ptr %i.p, align 8, !tbaa !135 ; 5 uses
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 3 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.jn, label %bb.at, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i136

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #26
          to label %.noexc148 unwind label %.loopexit.split-lp596

.noexc148:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i136: ; preds = %bb.as
  %i.jo = ashr exact i64 %i.jm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i137 = call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i.i137, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 1152921504606846975)
  %i.js = select i1 %i.jq, i64 1152921504606846975, i64 %i.jr ; 3 uses
  %.not.i.i.i.i138 = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i.i138)
  %i.jt = shl nuw nsw i64 %i.js, 3
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #27
          to label %.noexc149 unwind label %.loopexit595 ; 5 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i136
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jm
  store ptr %i.jf, ptr %i.jv, align 8, !tbaa !122
  %.not13.i.i.i.i.i.i.i.i139 = icmp eq ptr %i.jj, %i.jg
  br i1 %.not13.i.i.i.i.i.i.i.i139, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i144, label %.lr.ph.i.i.i.i.i.i.i.i140

.lr.ph.i.i.i.i.i.i.i.i140:                        ; preds = %.noexc149, %.lr.ph.i.i.i.i.i.i.i.i140
  %.015.i.i.i.i.i.i.i.i141 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i.i140 ], [ %i.ju, %.noexc149 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i142 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i.i140 ], [ %i.jj, %.noexc149 ] ; 2 uses
  %i.jw = load ptr, ptr %.01214.i.i.i.i.i.i.i.i142, align 8, !tbaa !122
  store ptr %i.jw, ptr %.015.i.i.i.i.i.i.i.i141, align 8, !tbaa !122
  %i.jx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i142, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i141, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i143 = icmp eq ptr %i.jx, %i.jg
  br i1 %.not.i.i.i.i.i.i.i.i143, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i144, label %.lr.ph.i.i.i.i.i.i.i.i140, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i144: ; preds = %.lr.ph.i.i.i.i.i.i.i.i140, %.noexc149
  %.0.lcssa.i.i.i.i.i.i.i.i145 = phi ptr [ %i.ju, %.noexc149 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i.i.i140 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i145, i64 8
  %.not.i35.i.i.i146 = icmp eq ptr %i.jj, null
  br i1 %.not.i35.i.i.i146, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i147, label %bb.au

bb.au:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i144
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers9QuantInfoC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_12TermRegistryEPNS2_17QuantConflictFindENS0_12NodeTemplateILb1EEE:bb.a
  call void @__clang_call_terminate(ptr %i.ade) #25
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit328
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %.pre658 = load ptr, ptr %33, align 8, !tbaa !137
  %.phi.trans.insert659 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %.pre660 = load ptr, ptr %.phi.trans.insert659, align 8, !tbaa !137
  br label %bb.fk

bb.fh:                                            ; preds = %bb.fb, %bb.ey
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit326
  %i.adg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #24
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn74 = phi { ptr, i32 } [ %i.adg, %bb.fi ], [ %i.adf, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %thread-pre-split766

.loopexit579:                                     ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit316
  %i.adh = phi ptr [ null, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit316 ], [ %i.abh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ]
  %.lcssa610 = phi ptr [ null, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit316 ], [ %i.abi, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  store ptr %.lcssa610, ptr %33, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %.loopexit579, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit
  %i.adi = phi ptr [ %i.adh, %.loopexit579 ], [ %.pre660, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit ] ; 2 uses
  %i.adj = phi ptr [ %.lcssa610, %.loopexit579 ], [ %.pre658, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit ] ; 3 uses
  %.not575628 = icmp eq ptr %i.adj, %i.adi
  br i1 %.not575628, label %._crit_edge632, label %.lr.ph631

.lr.ph631:                                        ; preds = %bb.fk
  %i.adk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.fm

._crit_edge632.loopexit:                          ; preds = %.loopexit
  %.pre661 = load ptr, ptr %33, align 8, !tbaa !135
  br label %._crit_edge632

._crit_edge632:                                   ; preds = %._crit_edge632.loopexit, %bb.fk
  %i.adm = phi ptr [ %.pre661, %._crit_edge632.loopexit ], [ %i.adj, %bb.fk ] ; 3 uses
  %.not.i.i.i329 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i329, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %._crit_edge632
  %i.adn = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !134
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.adm to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.adm, i64 noundef %i.adr) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %._crit_edge632, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit308.thread

bb.fm:                                            ; preds = %.lr.ph631, %.loopexit
  %.sroa.0544.0629 = phi ptr [ %i.adj, %.lr.ph631 ], [ %i.amf, %.loopexit ] ; 2 uses
  %i.ads = load ptr, ptr %.sroa.0544.0629, align 8, !tbaa !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.adt = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.adu = invoke noundef ptr @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule15getTermDatabaseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.adt)
          to label %bb.fn unwind label %bb.fx

bb.fn:                                            ; preds = %bb.fm
  store ptr %i.ads, ptr %39, align 8, !tbaa !122
  invoke void @_ZN4cvc58internal6theory11quantifiers6TermDb16getMatchOperatorENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %38, ptr noundef nonnull align 8 dereferenceable(1104) %i.adu, ptr noundef nonnull align 8 %39)
          to label %bb.fo unwind label %bb.fy

bb.fo:                                            ; preds = %bb.fn
  %i.adv = load ptr, ptr %38, align 8, !tbaa !120 ; 6 uses
  %i.adw = load i64, ptr %i.adv, align 8          ; 3 uses
  %i.adx = and i64 %i.adw, 1152920405095219200
  %.not.i.i330 = icmp eq i64 %i.adx, 1152920405095219200
  br i1 %.not.i.i330, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331, label %bb.fp, !prof !125

bb.fp:                                            ; preds = %bb.fo
  %i.ady = add i64 %i.adw, 1152920405095219200
  %i.adz = and i64 %i.ady, 1152920405095219200    ; 2 uses
  %i.aea = and i64 %i.adw, -1152920405095219201
  %i.aeb = or disjoint i64 %i.adz, %i.aea
  store i64 %i.aeb, ptr %i.adv, align 8
  %i.aec = icmp eq i64 %i.adz, 0
  br i1 %i.aec, label %bb.fq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331, !prof !125

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331 unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aed = landingpad { ptr, i32 }
          catch ptr null
  %i.aee = extractvalue { ptr, i32 } %i.aed, 0
  call void @__clang_call_terminate(ptr %i.aee) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331: ; preds = %bb.fo, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.aef = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.aeg = icmp eq i8 %i.aef, 0
  br i1 %i.aeg, label %bb.fs, label %bb.fw, !prof !409

bb.fs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331
  %i.aeh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i332 = icmp eq i32 %i.aeh, 0
  br i1 %.not.i.i332, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aei = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.fu unwind label %bb.fv     ; 3 uses

bb.fu:                                            ; preds = %bb.ft
  store i64 1152920405095219200, ptr %i.aei, align 8
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aej, i8 0, i64 16, i1 false)
  store ptr %i.aei, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %thread-pre-split766

bb.fw:                                            ; preds = %bb.fu, %bb.fs, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit331
  %i.ael = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  %i.aem = icmp eq ptr %i.adv, %i.ael
  br i1 %i.aem, label %.loopexit, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit359

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit359: ; preds = %bb.fw
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ads, i64 8 ; 3 uses
  %i.aeo = load i64, ptr %i.aen, align 8
  %i.aep = trunc i64 %i.aeo to i32
  %i.aeq = and i32 %i.aep, 1023                   ; 2 uses
  %i.aer = icmp eq i32 %i.aeq, 1023
  %i.aes = select i1 %i.aer, i32 -1, i32 %i.aeq
  %i.aet = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.aes)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit unwind label %bb.ga

_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit359
  %i.aeu = icmp eq i32 %i.aet, 2
  %i.aev = load i64, ptr %i.aen, align 8
  %i.aew = lshr i64 %i.aev, 32
  %i.aex = and i64 %i.aew, 67108863
  %i.aey = sext i1 %i.aeu to i64
  %i.aez = add nsw i64 %i.aex, %i.aey
  %i.afa = and i64 %i.aez, 4294967295             ; 2 uses
  %.not634 = icmp eq i64 %i.afa, 0
  br i1 %.not634, label %.loopexit, label %.lr.ph627

.lr.ph627:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ads, i64 24
  br label %bb.gb

bb.fx:                                            ; preds = %bb.fm
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fn
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.pn78 = phi { ptr, i32 } [ %i.afd, %bb.fy ], [ %i.afc, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %thread-pre-split766

bb.ga:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit359
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split766

bb.gb:                                            ; preds = %.lr.ph627, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427
  %.0623 = phi i64 [ 0, %.lr.ph627 ], [ %i.ame, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.aff = load i64, ptr %i.aen, align 8, !noalias !612
  %i.afg = trunc i64 %i.aff to i32
  %i.afh = and i32 %i.afg, 1023                   ; 2 uses
  %i.afi = icmp eq i32 %i.afh, 1023
  %i.afj = select i1 %i.afi, i32 -1, i32 %i.afh
  %i.afk = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.afj)
          to label %bb.gc unwind label %bb.hm

bb.gc:                                            ; preds = %bb.gb
  %i.afl = icmp eq i32 %i.afk, 2
  %i.afm = zext i1 %i.afl to i64
  %spec.select.i.i361 = add nuw nsw i64 %.0623, %i.afm
  %sext = shl i64 %spec.select.i.i361, 32
  %i.afn = ashr exact i64 %sext, 29
  %i.afo = getelementptr inbounds i8, ptr %i.afb, i64 %i.afn
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !129, !noalias !612 ; 6 uses
  store ptr %i.afp, ptr %40, align 8, !tbaa !120
  %i.afq = load i64, ptr %i.afp, align 8          ; 3 uses
  %i.afr = lshr i64 %i.afq, 40
  %i.afs = trunc nuw nsw i64 %i.afr to i32
  %i.aft = and i32 %i.afs, 1048575                ; 3 uses
  %i.afu = icmp samesign ult i32 %i.aft, 1048574
  br i1 %i.afu, label %bb.gd, label %bb.ge, !prof !124

bb.gd:                                            ; preds = %bb.gc
  %i.afv = add nuw nsw i32 %i.aft, 1
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = shl nuw nsw i64 %i.afw, 40
  %i.afy = and i64 %i.afq, -1152920405095219201
  %i.afz = or i64 %i.afx, %i.afy
  store i64 %i.afz, ptr %i.afp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.ge:                                            ; preds = %bb.gc
  %i.aga = icmp eq i32 %i.aft, 1048574
  br i1 %i.aga, label %bb.gf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !125

bb.gf:                                            ; preds = %bb.ge
  %i.agb = or i64 %i.afq, 1152920405095219200
  store i64 %i.agb, ptr %i.afp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.hn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.ge, %bb.gd, %bb.gf
  %i.agc = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.agc, null
  br i1 %.not10.i.i.i, label %_ZNSt6vectorImSaImEE9push_backERKm.exit425, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.agd = load i64, ptr %i.afp, align 8
  %i.age = and i64 %i.agd, 1099511627775          ; 2 uses
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gg, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.agc, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.gg ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.gg ]
  %i.agf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !122
  %i.agh = load i64, ptr %i.agg, align 8
  %i.agi = and i64 %i.agh, 1099511627775
  %i.agj = icmp samesign ult i64 %i.agi, %i.age   ; 2 uses
  %.19.i.i.i = select i1 %i.agj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.agj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i364 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i364, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.gg, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.gg
  %i.agk = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.agk, label %_ZNSt6vectorImSaImEE9push_backERKm.exit425, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.agl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !122
  %i.agn = load i64, ptr %i.agm, align 8
  %i.ago = and i64 %i.agn, 1099511627775
  %i.agp = icmp samesign ult i64 %i.age, %i.ago
  br i1 %i.agp, label %_ZNSt6vectorImSaImEE9push_backERKm.exit425, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit
  %i.agq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.agr = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 2 uses
  %.not10.i.i.i.i366 = icmp eq ptr %i.agr, null
  br i1 %.not10.i.i.i.i366, label %.critedge.i376, label %.lr.ph.i.i.i.i367

.lr.ph.i.i.i.i367:                                ; preds = %bb.gh
  %i.ags = load i64, ptr %i.agq, align 8, !tbaa !138 ; 2 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %.lr.ph.i.i.i.i367
  %.012.i.i.i.i368 = phi ptr [ %i.agr, %.lr.ph.i.i.i.i367 ], [ %.1.i.i.i.i373, %bb.gi ] ; 3 uses
  %.0811.i.i.i.i369 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i367 ], [ %.19.i.i.i.i370, %bb.gi ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i368, i64 32
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !138
  %i.agv = icmp ult i64 %i.agu, %i.ags            ; 2 uses
  %.19.i.i.i.i370 = select i1 %i.agv, ptr %.0811.i.i.i.i369, ptr %.012.i.i.i.i368 ; 6 uses
  %.1.in.v.i.i.i.i371 = select i1 %i.agv, i64 24, i64 16
  %.1.in.i.i.i.i372 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i368, i64 %.1.in.v.i.i.i.i371
  %.1.i.i.i.i373 = load ptr, ptr %.1.in.i.i.i.i372, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %.1.i.i.i.i373, null
  br i1 %.not.i.i.i.i374, label %_ZNSt3mapImS_IN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEES7_ImESaIS9_IKmSD_EEE11lower_boundERSF_.exit.i, label %bb.gi, !llvm.loop !7

_ZNSt3mapImS_IN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEES7_ImESaIS9_IKmSD_EEE11lower_boundERSF_.exit.i: ; preds = %bb.gi
  %i.agw = icmp eq ptr %.19.i.i.i.i370, %i.bf
  br i1 %i.agw, label %.critedge.i376, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt3mapImS_IN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEES7_ImESaIS9_IKmSD_EEE11lower_boundERSF_.exit.i
  %i.agx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i370, i64 32
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !138
  %i.agz = icmp ult i64 %i.ags, %i.agy
  br i1 %i.agz, label %.critedge.i376, label %bb.gq

.critedge.i376:                                   ; preds = %bb.gj, %_ZNSt3mapImS_IN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEES7_ImESaIS9_IKmSD_EEE11lower_boundERSF_.exit.i, %bb.gh
  %.08.lcssa.i.i.i11.i377 = phi ptr [ %.19.i.i.i.i370, %bb.gj ], [ %.19.i.i.i.i370, %_ZNSt3mapImS_IN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEES7_ImESaIS9_IKmSD_EEE11lower_boundERSF_.exit.i ], [ %i.bf, %bb.gh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.be, ptr %7, align 8, !tbaa !613
  %i.aha = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27
          to label %.noexc498 unwind label %.loopexit578 ; 11 uses

.noexc498:                                        ; preds = %.critedge.i376
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32 ; 3 uses
  %i.ahc = load i64, ptr %i.agq, align 8, !tbaa !138
  store i64 %i.ahc, ptr %i.ahb, align 8, !tbaa !618
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 40 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 48 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahd, i8 0, i64 24, i1 false)
  store ptr %i.ahe, ptr %i.ahf, align 8, !tbaa !46
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aha, i64 72
  store ptr %i.ahe, ptr %i.ahg, align 8, !tbaa !47
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.aha, i64 80
  store i64 0, ptr %i.ahh, align 8, !tbaa !48
  store ptr %i.aha, ptr %i.adk, align 8, !tbaa !413
  %i.ahi = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISG_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr %.08.lcssa.i.i.i11.i377, ptr noundef nonnull align 8 dereferenceable(8) %i.ahb)
          to label %bb.gk unwind label %bb.gn     ; 2 uses

bb.gk:                                            ; preds = %.noexc498
  %i.ahj = extractvalue { ptr, ptr } %i.ahi, 0    ; 2 uses
  %i.ahk = extractvalue { ptr, ptr } %i.ahi, 1    ; 4 uses
  %.not.i496 = icmp eq ptr %i.ahk, null
  br i1 %.not.i496, label %bb.go, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.not.i.i.i497 = icmp ne ptr %i.ahj, null
  %i.ahl = icmp eq ptr %i.ahk, %i.bf
  %or.cond.i.i.i = or i1 %.not.i.i.i497, %i.ahl
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahn = load i64, ptr %i.ahb, align 8, !tbaa !138
  %i.aho = load i64, ptr %i.ahm, align 8, !tbaa !138
  %i.ahp = icmp ult i64 %i.ahn, %i.aho
  br label %.thread.i

.thread.i:                                        ; preds = %bb.gm, %bb.gl
  %i.ahq = phi i1 [ %i.ahp, %bb.gm ], [ true, %bb.gl ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahq, ptr noundef nonnull %i.aha, ptr noundef nonnull %i.ahk, ptr noundef nonnull align 8 dereferenceable(32) %i.bf) #24
  %i.ahr = load i64, ptr %i.bj, align 8, !tbaa !48
  %i.ahs = add i64 %i.ahr, 1
  store i64 %i.ahs, ptr %i.bj, align 8, !tbaa !48
  br label %.noexc378

bb.gn:                                            ; preds = %.noexc498
  %i.aht = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body499

bb.go:                                            ; preds = %bb.gk
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aha, i64 56
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_St6vectorImSaImEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ahd, ptr noundef %i.ahv)
          to label %_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISG_E.exit.i.i unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ahw = landingpad { ptr, i32 }
          catch ptr null
  %i.ahx = extractvalue { ptr, i32 } %i.ahw, 0
  call void @__clang_call_terminate(ptr %i.ahx) #25
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISG_E.exit.i.i: ; preds = %bb.go
  call void @_ZdlPvm(ptr noundef nonnull %i.aha, i64 noundef 88) #28
  br label %.noexc378

.noexc378:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISG_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.aha, %.thread.i ], [ %i.ahj, %_ZNSt8_Rb_treeImSt4pairIKmSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorImSaImEESt4lessIS6_ESaIS0_IKS6_S9_EEEESt10_Select1stISG_ESA_ImESaISG_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISG_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.gq

bb.gq:                                            ; preds = %.noexc378, %bb.gj
  %.sroa.06.0.i375 = phi ptr [ %.sroa.0.010.i, %.noexc378 ], [ %.19.i.i.i.i370, %bb.gj ] ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i375, i64 40 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i375, i64 56
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !45 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i375, i64 48 ; 5 uses
  %.not10.i.i.i.i379 = icmp eq ptr %i.aia, null
  br i1 %.not10.i.i.i.i379, label %.critedge.i389, label %.lr.ph.i.i.i.i380

.lr.ph.i.i.i.i380:                                ; preds = %bb.gq
  %i.aic = load i64, ptr %i.adv, align 8
  %i.aid = and i64 %i.aic, 1099511627775          ; 2 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %.lr.ph.i.i.i.i380
  %.012.i.i.i.i381 = phi ptr [ %i.aia, %.lr.ph.i.i.i.i380 ], [ %.1.i.i.i.i386, %bb.gr ] ; 3 uses
  %.0811.i.i.i.i382 = phi ptr [ %i.aib, %.lr.ph.i.i.i.i380 ], [ %.19.i.i.i.i383, %bb.gr ]
  %i.aie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i381, i64 32
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !122
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory11quantifiers17QuantConflictFind11reset_roundENS1_6Theory6EffortE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #26
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store ptr %i.bc, ptr %i.bu, align 8, !tbaa !122
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.be
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bt, %.noexc16 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bi, %.noexc16 ] ; 2 uses
  %i.bv = load ptr, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.bv, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc16 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cb) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !135
  store ptr %i.by, ptr %i.bd, align 8, !tbaa !133
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.cc, ptr %i.bf, align 8, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit

bb.u:                                             ; preds = %bb.ad, %.lr.ph
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %.critedge.i, %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.ab

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.q, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ch = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i17 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i17, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.y, !prof !125

bb.y:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.ch, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.z, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !125

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ad

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %i.cf, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.ce, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ai

bb.ad:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.c
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ae unwind label %bb.u      ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i18 = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i18, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.af, !prof !125

bb.af:                                            ; preds = %bb.ae
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !125

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dc = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq17EqClassesIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.dc, label %._crit_edge, label %.lr.ph, !llvm.loop !936

bb.ai:                                            ; preds = %bb.ac, %bb.u
  %.pn8 = phi { ptr, i32 } [ %i.cd, %bb.u ], [ %.pn.pn, %bb.ac ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn8

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

declare noundef ptr @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory2eq17EqClassesIteratorC1EPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory2eq17EqClassesIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal6theory2eq17EqClassesIteratordeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers6TermDb14hasTermCurrentERKNS0_12NodeTemplateILb1EEEb(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers8TermUtil16hasInstConstAttrENS0_12NodeTemplateILb1EEE(ptr noundef align 8) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers17QuantConflictFind5checkENS1_6Theory6EffortENS2_17QuantifiersModule7QEffortE(ptr noundef nonnull align 8 dereferenceable(452) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145
  %i.e = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc58internal6theory11quantifiers16QuantifiersState8getStatsEv(ptr noundef nonnull align 8 dereferenceable(376) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.i = load i8, ptr %i.h, align 8, !tbaa !406, !range !405, !noundef !144
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !431
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule14beginCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.critedge107 unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.critedge107:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.p)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE5clearEv.exit unwind label %bb.f

bb.f:                                             ; preds = %.critedge107
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE5clearEv.exit: ; preds = %.critedge107
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.s, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE5clearEv.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

bb.h:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.ae, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 0, ptr %i.b, align 1, !tbaa !406
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !530, !nonnull !144, !align !145
  %i.ah = invoke noundef ptr @_ZNK4cvc58internal6theory11quantifiers12TermRegistry8getModelEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ag)
          to label %bb.i unwind label %bb.am      ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef i64 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel25getNumAssertedQuantifiersEv(ptr noundef nonnull align 8 dereferenceable(664) %i.ah)
          to label %bb.j unwind label %bb.an      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.k unwind label %bb.ao

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365, !nonnull !144, !align !145
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.an = load i32, ptr %i.am, align 8, !tbaa !939
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i32                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %.not417 = icmp eq i64 %i.ai, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %.not417, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us413, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us: ; preds = %bb.k, %bb.al
  %storemerge381.us = phi i32 [ %8, %bb.al ], [ 0, %bb.k ] ; 3 uses
  store i32 %storemerge381.us, ptr %i.aq, align 8, !tbaa !484
  br label %bb.l

bb.l:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us
  %.046380.us = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us ], [ %i.dq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.as = trunc i64 %.046380.us to i32
  invoke void @_ZN4cvc58internal6theory11quantifiers15FirstOrderModel21getAssertedQuantifierEjb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(664) %i.ah, i32 noundef %i.as, i1 noundef zeroext true)
          to label %bb.m unwind label %.split385.us

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !529, !nonnull !144, !align !145
  %i.au = load ptr, ptr %4, align 8, !tbaa !120   ; 5 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !120
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = lshr i64 %i.av, 40
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1048575                  ; 3 uses
  %i.az = icmp samesign ult i32 %i.ay, 1048574
  br i1 %i.az, label %bb.p, label %bb.n, !prof !124

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp eq i32 %i.ay, 1048574
  br i1 %i.ba, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us, !prof !125

bb.o:                                             ; preds = %bb.n
  %i.bb = or i64 %i.av, 1152920405095219200
  store i64 %i.bb, ptr %i.au, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us unwind label %.split387.us

bb.p:                                             ; preds = %bb.m
  %i.bc = add nuw nsw i32 %i.ay, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 40
  %i.bf = and i64 %i.av, -1152920405095219201
  %i.bg = or i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.au, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us: ; preds = %bb.p, %bb.o, %bb.n
  %i.bh = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers19QuantifiersRegistry12hasOwnershipENS0_12NodeTemplateILb1EEEPNS2_17QuantifiersModuleE(ptr noundef nonnull align 8 dereferenceable(568) %i.at, ptr noundef nonnull align 8 %5, ptr noundef nonnull %0)
          to label %bb.q unwind label %.split390.us

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us
  br i1 %i.bh, label %bb.r, label %.thread.us

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %.not10.i.i.i.us = icmp eq ptr %i.bi, null
  %.pre = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  br i1 %.not10.i.i.i.us, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.r
  %i.bj = load i64, ptr %.pre, align 8
  %i.bk = and i64 %i.bj, 1099511627775            ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.us
  %.012.i.i.i.us = phi ptr [ %i.bi, %.lr.ph.i.i.i.us ], [ %.1.i.i.i.us, %bb.s ] ; 3 uses
  %.0811.i.i.i.us = phi ptr [ %i.ab, %.lr.ph.i.i.i.us ], [ %.19.i.i.i.us, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !120
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 1099511627775
  %i.bp = icmp samesign ult i64 %i.bo, %i.bk      ; 2 uses
  %.19.i.i.i.us = select i1 %i.bp, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us ; 3 uses
  %.1.in.v.i.i.i.us = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 %.1.in.v.i.i.i.us
  %.1.i.i.i.us = load ptr, ptr %.1.in.i.i.i.us, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.1.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us, label %bb.s, !llvm.loop !21

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us: ; preds = %bb.s
  %i.bq = icmp eq ptr %.19.i.i.i.us, %i.ab
  br i1 %i.bq, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.us, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !120
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 1099511627775
  %i.bv = icmp samesign ult i64 %i.bk, %i.bu
  br i1 %i.bv, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us, label %.thread.us

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us, %bb.r
  store ptr %.pre, ptr %6, align 8, !tbaa !122
  %i.bw = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel18isQuantifierActiveENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(664) %i.ah, ptr noundef nonnull align 8 %6)
          to label %.thread.us unwind label %.split393.us

.thread.us:                                       ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us, %bb.q
  %i.bx = phi i1 [ %i.bw, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us ], [ false, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us ], [ false, %bb.q ]
  %i.by = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i.us = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us, label %bb.t, !prof !125

bb.t:                                             ; preds = %.thread.us
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us, !prof !125

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us unwind label %.split396.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us: ; preds = %bb.u, %bb.t, %.thread.us
  %.pre420 = load ptr, ptr %4, align 8, !tbaa !120 ; 6 uses
  br i1 %i.bx, label %bb.v, label %.critedge113.us

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us
  store ptr %.pre420, ptr %7, align 8, !tbaa !120
  %i.cg = load i64, ptr %.pre420, align 8         ; 3 uses
  %i.ch = lshr i64 %i.cg, 40
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 1048574
  br i1 %i.ck, label %bb.y, label %bb.w, !prof !124

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp eq i32 %i.cj, 1048574
  br i1 %i.cl, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us, !prof !125

bb.x:                                             ; preds = %bb.w
  %i.cm = or i64 %i.cg, 1152920405095219200
  store i64 %i.cm, ptr %.pre420, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre420)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us unwind label %.split387.us

bb.y:                                             ; preds = %bb.v
  %i.cn = add nuw nsw i32 %i.cj, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.cg, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %.pre420, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us: ; preds = %bb.y, %bb.x, %bb.w
  invoke void @_ZN4cvc58internal6theory11quantifiers17QuantConflictFind22checkQuantifiedFormulaENS0_12NodeTemplateILb1EEERbRj(ptr noundef nonnull align 8 dereferenceable(452) %0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.z unwind label %.split399.us

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us
  %i.cs = load ptr, ptr %7, align 8, !tbaa !120   ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i195.us = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i195.us, label %bb.ac, label %bb.aa, !prof !125

bb.aa:                                            ; preds = %bb.z
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.ab, label %bb.ac, !prof !125

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %bb.ac unwind label %.split402.us

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 248
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !406, !range !405, !noundef !144
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(160) %i.da)
          to label %bb.ae unwind label %.split387.us

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dh, label %bb.ah, label %..critedge113.us_crit_edge

..critedge113.us_crit_edge:                       ; preds = %bb.ae
  %.pre419 = load ptr, ptr %4, align 8, !tbaa !120
  br label %.critedge113.us

.critedge113.us:                                  ; preds = %..critedge113.us_crit_edge, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us
  %i.di = phi ptr [ %.pre419, %..critedge113.us_crit_edge ], [ %.pre420, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us ] ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = and i64 %i.dj, 1152920405095219200
  %.not.i.i197.us = icmp eq i64 %i.dk, 1152920405095219200
  br i1 %.not.i.i197.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us, label %bb.af, !prof !125

bb.af:                                            ; preds = %.critedge113.us
  %i.dl = add i64 %i.dj, 1152920405095219200
  %i.dm = and i64 %i.dl, 1152920405095219200      ; 2 uses
  %i.dn = and i64 %i.dj, -1152920405095219201
  %i.do = or disjoint i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.di, align 8
  %i.dp = icmp eq i64 %i.dm, 0
  br i1 %i.dp, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us, !prof !125

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us unwind label %.split405.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us: ; preds = %bb.ag, %bb.af, %.critedge113.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.dq = add nuw i64 %.046380.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.ai
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.l, !llvm.loop !937

bb.ah:                                            ; preds = %bb.ae, %bb.ac
  %i.dr = load ptr, ptr %4, align 8, !tbaa !120   ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8            ; 3 uses
  %i.dt = and i64 %i.ds, 1152920405095219200
  %.not.i.i199.us = icmp eq i64 %i.dt, 1152920405095219200
  br i1 %.not.i.i199.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit200.us, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.du = add i64 %i.ds, 1152920405095219200
  %i.dv = and i64 %i.du, 1152920405095219200      ; 2 uses
  %i.dw = and i64 %i.ds, -1152920405095219201
  %i.dx = or disjoint i64 %i.dv, %i.dw
  store i64 %i.dx, ptr %i.dr, align 8
  %i.dy = icmp eq i64 %i.dv, 0
  br i1 %i.dy, label %bb.aj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit200.us, !prof !125

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit200.us unwind label %.split408.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit200.us: ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit200.us
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !431
  %.not87.us = icmp eq i32 %i.dz, 0
  br i1 %.not87.us, label %bb.ak, label %.split383.us

bb.ak:                                            ; preds = %..loopexit_crit_edge.us
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(160) %i.ea)
          to label %bb.al unwind label %.split411.us

bb.al:                                            ; preds = %bb.ak
  %8 = add nuw nsw i32 %storemerge381.us, 1
  %.not80.us = icmp samesign uge i32 %storemerge381.us, %i.ap
  %or.cond = select i1 %i.ee, i1 true, i1 %.not80.us
  br i1 %or.cond, label %.split383.us, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us, !llvm.loop !938

.split385.us:                                     ; preds = %bb.l
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.split387.us:                                     ; preds = %bb.ad, %bb.x, %bb.o
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split390.us:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.split393.us:                                     ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.thread.us
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.split396.us:                                     ; preds = %bb.u
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #25
  unreachable

.split399.us:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit194.us
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.aq

.split402.us:                                     ; preds = %bb.ab
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #25
  unreachable

.split405.us:                                     ; preds = %bb.ag
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #25
  unreachable

.split408.us:                                     ; preds = %bb.aj
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #25
  unreachable

.split411.us:                                     ; preds = %bb.ak
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.split411.split.us

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us413: ; preds = %bb.k, %.split411.split.us.loopexit
  %storemerge381.us414 = phi i32 [ %9, %.split411.split.us.loopexit ], [ 0, %bb.k ] ; 3 uses
  store i32 %storemerge381.us414, ptr %i.aq, align 8, !tbaa !484
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(160) %i.et)
          to label %.split411.split.us.loopexit unwind label %.split411.split.us.loopexit.split-lp

.split411.split.us.loopexit:                      ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us413
  %9 = add nuw nsw i32 %storemerge381.us414, 1
  %.not80.us415 = icmp samesign uge i32 %storemerge381.us414, %i.ap
  %or.cond416 = select i1 %i.ex, i1 true, i1 %.not80.us415
  br i1 %or.cond416, label %.critedge117, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us413, !llvm.loop !938

.split411.split.us.loopexit.split-lp:             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit191.us413
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split411.split.us

bb.am:                                            ; preds = %bb.h
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.split411.split.us

bb.an:                                            ; preds = %bb.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.split411.split.us

bb.ao:                                            ; preds = %.critedge117, %bb.as, %bb.j
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.split411.split.us

bb.ap:                                            ; preds = %.split393.us, %.split390.us
  %.pn81.pn = phi { ptr, i32 } [ %i.eh, %.split390.us ], [ %i.ei, %.split393.us ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.aq

bb.aq:                                            ; preds = %.split399.us, %bb.ap, %.split387.us
  %.pn84 = phi { ptr, i32 } [ %i.eg, %.split387.us ], [ %i.el, %.split399.us ], [ %.pn81.pn, %bb.ap ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split385.us
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.aq ], [ %i.ef, %.split385.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.split411.split.us

.split383.us:                                     ; preds = %..loopexit_crit_edge.us, %bb.al
  %.pre421 = load i8, ptr %i.b, align 1, !tbaa !406, !range !405
  %i.fb = trunc nuw i8 %.pre421 to i1
  br i1 %i.fb, label %bb.as, label %.critedge117

bb.as:                                            ; preds = %.split383.us
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !506, !nonnull !144, !align !145
  invoke void @_ZN4cvc58internal6theory11quantifiers16QuantifiersState21notifyConflictingInstEv(ptr noundef nonnull align 8 dereferenceable(376) %i.fc)
          to label %.critedge117 unwind label %bb.ao

.critedge117:                                     ; preds = %.split411.split.us.loopexit, %.split383.us, %bb.as
  invoke void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule12endCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.at unwind label %bb.ao

bb.at:                                            ; preds = %.critedge117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit139: ; preds = %bb.b, %bb.a, %bb.at
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.split411.split.us:                               ; preds = %.split411.split.us.loopexit.split-lp, %.split411.us, %bb.ar, %bb.an, %bb.ao, %bb.am
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.am ], [ %i.ez, %bb.an ], [ %i.fa, %bb.ao ], [ %.pn84.pn, %bb.ar ], [ %lpad.loopexit.split-lp, %.split411.split.us.loopexit.split-lp ], [ %i.es, %.split411.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.au

bb.au:                                            ; preds = %.split411.split.us, %bb.e
  %.pn98.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn98.pn.pn, %.split411.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn98.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc58internal6theory11quantifiers16QuantifiersState8getStatsEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #1

declare void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule14beginCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory11quantifiers17QuantConflictFind10debugPrintEPKc(ptr noundef nonnull align 8 dereferenceable(452) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::theory::eq::EqClassesIterator", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::theory::eq::EqClassIterator", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = tail call noundef ptr @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @_ZN4cvc58internal6theory2eq17EqClassesIteratorC1EPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.a)
  %i.b = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq17EqClassesIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK4cvc58internal6theory2eq17EqClassesIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = load ptr, ptr %3, align 8, !tbaa !120    ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !120
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !124

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.m

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.p = invoke noundef ptr @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  invoke void @_ZN4cvc58internal6theory2eq15EqClassIteratorC1ENS0_12NodeTemplateILb1EEEPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %5, ptr noundef %i.p)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %5, align 8, !tbaa !120    ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.s, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, label %bb.g, !prof !125

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, 1152920405095219200
  %i.u = and i64 %i.t, 1152920405095219200        ; 2 uses
  %i.v = and i64 %i.r, -1152920405095219201
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.q, align 8
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, !prof !125

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader unwind label %bb.i

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader: ; preds = %bb.f, %bb.g, %bb.h
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit60
  %i.aa = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq15EqClassIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %i.aa, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNK4cvc58internal6theory2eq15EqClassIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq15EqClassIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.n:                                             ; preds = %bb.e, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.aa

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %6, align 8, !tbaa !120   ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.ah, 1152920405095219200
  %.not.i.i59 = icmp eq i64 %i.ai, 1152920405095219200
  br i1 %.not.i.i59, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit60, label %bb.r, !prof !125

bb.r:                                             ; preds = %bb.q
  %i.aj = add i64 %i.ah, 1152920405095219200
  %i.ak = and i64 %i.aj, 1152920405095219200      ; 2 uses
  %i.al = and i64 %i.ah, -1152920405095219201
  %i.am = or disjoint i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ag, align 8
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit60, !prof !125

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit60 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit60: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !llvm.loop !940

bb.u:                                             ; preds = %bb.p, %bb.o
  %.pn16.pn = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.ae, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aa

bb.v:                                             ; preds = %bb.j
  %i.aq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ar = load ptr, ptr %3, align 8, !tbaa !120   ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i64 = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i64, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65, label %bb.x, !prof !125

bb.x:                                             ; preds = %bb.w
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
end_hunk_2

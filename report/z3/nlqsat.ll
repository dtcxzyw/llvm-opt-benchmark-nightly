Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlqsat?download=true
inline.NumInlined: 2613
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2qe6nlqsat5hoistER7obj_refI4expr11ast_managerE:bb.a
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !159, !align !160 ; 6 uses
  store ptr null, ptr %24, align 8, !tbaa !186
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store ptr null, ptr %25, align 8, !tbaa !186
  %i.el = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr null, ptr %26, align 8, !tbaa !186
  %i.em = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 816
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.13)
          to label %.noexc122 unwind label %bb.ao

.noexc122:                                        ; preds = %_ZN2qe6nlqsat12solver_state13init_expr2varERK6vectorI10ref_vectorI3app11ast_managerELb1EjE.exit
  %i.ep = invoke noundef ptr @_ZN11ast_manager18mk_fresh_func_declERK6symbolS2_jPKP4sortS4_b(ptr noundef nonnull align 8 dereferenceable(952) %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, ptr noundef %i.eo, i1 noundef zeroext true)
          to label %.noexc123 unwind label %bb.ao

.noexc123:                                        ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.eq = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ej, ptr noundef %i.ep, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit unwind label %bb.ao ; 4 uses

_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit: ; preds = %.noexc123
  %.not.i125 = icmp eq ptr %i.eq, null
  br i1 %.not.i125, label %bb.ag, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !162
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !162
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.eq, ptr %24, align 8, !tbaa !186
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !159, !align !160
  %i.ev = load ptr, ptr %1, align 8, !tbaa !186
  %i.ew = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.eu, i32 noundef 0, i32 noundef 2, ptr noundef %i.eq, ptr noundef %i.ev)
          to label %_ZN11ast_manager6mk_iffEP4exprS1_.exit unwind label %bb.ao ; 3 uses

_ZN11ast_manager6mk_iffEP4exprS1_.exit:           ; preds = %bb.ag
  %.not.i128 = icmp eq ptr %i.ew, null
  br i1 %.not.i128, label %bb.ah, label %_ZN11ast_manager7inc_refEP3ast.exit.i129

_ZN11ast_manager7inc_refEP3ast.exit.i129:         ; preds = %_ZN11ast_manager6mk_iffEP4exprS1_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !162
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !162
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i129, %_ZN11ast_manager6mk_iffEP4exprS1_.exit
  %i.fa = load ptr, ptr %1, align 8, !tbaa !186   ; 3 uses
  %.not.i4.i130 = icmp eq ptr %i.fa, null
  br i1 %.not.i4.i130, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !187, !nonnull !159, !align !160
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !162
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !162
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fc, ptr noundef nonnull %i.fa)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.aj
  store ptr %i.ew, ptr %1, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.fh = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %bb.al unwind label %bb.ap     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !159, !align !160
  invoke void @_ZN4goalC1ER11ast_managerbb(ptr noundef nonnull align 8 dereferenceable(124) %i.fh, ptr noundef nonnull align 8 dereferenceable(952) %i.fi, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  store ptr %i.fh, ptr %27, align 8, !tbaa !183
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !199
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !199
  %i.fm = load ptr, ptr %1, align 8, !tbaa !186
  invoke void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124) %i.fh, ptr noundef %i.fm, ptr noundef null)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !127 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.an
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !156 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fs
  %.not339 = icmp eq i32 %i.fq, 0
  br i1 %.not339, label %._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.aj, %bb.ag, %.noexc123, %.noexc122, %_ZN2qe6nlqsat12solver_state13init_expr2varERK6vectorI10ref_vectorI3app11ast_managerELb1EjE.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.aq:                                            ; preds = %bb.am
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZN4goal11assert_exprEP4expr.exit138
  %.046340 = phi ptr [ %i.fz, %_ZN4goal11assert_exprEP4expr.exit138 ], [ %i.fn, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.fx = load ptr, ptr %.046340, align 8, !tbaa !157
  %i.fy = load ptr, ptr %27, align 8, !tbaa !183
  invoke void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124) %i.fy, ptr noundef %i.fx, ptr noundef null)
          to label %_ZN4goal11assert_exprEP4expr.exit138 unwind label %bb.ar

_ZN4goal11assert_exprEP4expr.exit138:             ; preds = %.lr.ph
  %i.fz = getelementptr inbounds nuw i8, ptr %.046340, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fz, %i.ft
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.ar:                                            ; preds = %.lr.ph
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

._crit_edge:                                      ; preds = %_ZN4goal11assert_exprEP4expr.exit138, %bb.an, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !159, !align !160
  store ptr null, ptr %28, align 8, !tbaa !287
  %i.gc = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.gd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.gd, ptr %29, align 8, !tbaa !204
  %i.ge = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !202
  %i.gf = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 16, ptr %i.gf, align 4, !tbaa !203
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !119 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(12) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(144) %29)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %._crit_edge
  %i.gl = load ptr, ptr %29, align 8, !tbaa !204
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN10goal2nlsatC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  invoke void @_ZN10goal2nlsatclERK4goalRK10params_refRN5nlsat6solverER8expr2varSA_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(124) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(41) %i.gp, ptr noundef nonnull align 8 dereferenceable(41) %i.gq)
          to label %_ZN2qe6nlqsat12solver_state3g2sERK4goal.exit unwind label %bb.at

bb.at:                                            ; preds = %.noexc139
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10goal2nlsatD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

_ZN2qe6nlqsat12solver_state3g2sERK4goal.exit:     ; preds = %.noexc139
  call void @_ZN10goal2nlsatD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gs = load ptr, ptr %19, align 8, !tbaa !278  ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %.critedge, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.lr.ph: ; preds = %_ZN2qe6nlqsat12solver_state3g2sERK4goal.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  br label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.lr.ph, %._crit_edge344
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %._crit_edge344 ] ; 4 uses
  %i.hc = phi ptr [ %i.gs, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %i.kb, %._crit_edge344 ]
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !156
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv, %i.hf
  br i1 %i.hg, label %bb.aw, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit, %._crit_edge344, %_ZN2qe6nlqsat12solver_state3g2sERK4goal.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !288 ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %._crit_edge.i, label %_ZNK8expr2var3endEv.exit.i

_ZNK8expr2var3endEv.exit.i:                       ; preds = %.critedge
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !156 ; 2 uses
  %i.hm = zext i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hn
  %.not21.i = icmp eq i32 %i.hl, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZNK8expr2var3endEv.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.au

._crit_edge.i:                                    ; preds = %.noexc142, %_ZNK8expr2var3endEv.exit.i, %.critedge
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !288 ; 4 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZN2qe6nlqsat12solver_state13init_var2exprEv.exit, label %_ZNK8expr2var3endEv.exit20.i

_ZNK8expr2var3endEv.exit20.i:                     ; preds = %._crit_edge.i
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !156 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hx
  %.not1823.i = icmp eq i32 %i.hv, 0
  br i1 %.not1823.i, label %_ZN2qe6nlqsat12solver_state13init_var2exprEv.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %_ZNK8expr2var3endEv.exit20.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.av

bb.au:                                            ; preds = %.noexc142, %.lr.ph.i140
  %.01722.i = phi ptr [ %i.hi, %.lr.ph.i140 ], [ %i.ie, %.noexc142 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01722.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !156
  store i32 %i.ic, ptr %14, align 8, !tbaa !289
  %i.id = load ptr, ptr %.01722.i, align 8, !tbaa !157
  store ptr %i.id, ptr %i.hq, align 8, !tbaa !290
  invoke void @_ZN14core_hashtableI17default_map_entryIjP4exprEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit

.noexc142:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.ie = getelementptr inbounds nuw i8, ptr %.01722.i, i64 16 ; 2 uses
  %.not.i141 = icmp eq ptr %i.ie, %i.ho
  br i1 %.not.i141, label %._crit_edge.i, label %bb.au

bb.av:                                            ; preds = %.noexc143, %.lr.ph25.i
  %.024.i = phi ptr [ %i.hs, %.lr.ph25.i ], [ %i.ii, %.noexc143 ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !156
  store i32 %i.ig, ptr %13, align 8, !tbaa !289
  %i.ih = load ptr, ptr %.024.i, align 8, !tbaa !157
  store ptr %i.ih, ptr %i.ia, align 8, !tbaa !290
  invoke void @_ZN14core_hashtableI17default_map_entryIjP4exprEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc143 unwind label %.loopexit

.noexc143:                                        ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ii = getelementptr inbounds nuw i8, ptr %.024.i, i64 16 ; 2 uses
  %.not18.i = icmp eq ptr %i.ii, %i.hy
  br i1 %.not18.i, label %_ZN2qe6nlqsat12solver_state13init_var2exprEv.exit, label %bb.av

.loopexit:                                        ; preds = %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.au
  %lpad.loopexit310 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.as, %._crit_edge
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store ptr null, ptr %30, align 8, !tbaa !164
  %i.ij = load ptr, ptr %i.gu, align 8, !tbaa !170 ; 4 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !156 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.ij, i64 -8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !156
  %i.ip = icmp eq i32 %i.im, %i.io
  br i1 %i.ip, label %bb.ay, label %_ZN6vectorIjLb0EjED2Ev.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  invoke void @_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %.noexc145 unwind label %bb.bb

.noexc145:                                        ; preds = %bb.ay
  %.pre.i144 = load ptr, ptr %i.gu, align 8, !tbaa !170 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i144, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !156
  br label %_ZN6vectorIjLb0EjED2Ev.exit

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.ax, %.noexc145
  %i.iq = phi i32 [ %.pre2.i, %.noexc145 ], [ %i.im, %bb.ax ] ; 2 uses
  %i.ir = phi ptr [ %.pre.i144, %.noexc145 ], [ %i.ij, %bb.ax ] ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -4
  %i.it = zext i32 %i.iq to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.it
  store ptr null, ptr %i.iu, align 8, !tbaa !164
  %i.iv = add i32 %i.iq, 1
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store ptr null, ptr %31, align 8, !tbaa !164
  %i.iw = load ptr, ptr %i.gv, align 8, !tbaa !170 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !156 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !156
  %i.jc = icmp eq i32 %i.iz, %i.jb
  br i1 %i.jc, label %bb.ba, label %_ZN6vectorIjLb0EjED2Ev.exit153

bb.ba:                                            ; preds = %bb.az, %_ZN6vectorIjLb0EjED2Ev.exit
  invoke void @_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gv)
          to label %.noexc150 unwind label %bb.bc

.noexc150:                                        ; preds = %bb.ba
  %.pre.i147 = load ptr, ptr %i.gv, align 8, !tbaa !170 ; 2 uses
  %.phi.trans.insert.i148 = getelementptr inbounds i8, ptr %.pre.i147, i64 -4
  %.pre2.i149 = load i32, ptr %.phi.trans.insert.i148, align 4, !tbaa !156
  br label %_ZN6vectorIjLb0EjED2Ev.exit153

_ZN6vectorIjLb0EjED2Ev.exit153:                   ; preds = %bb.az, %.noexc150
  %i.jd = phi i32 [ %.pre2.i149, %.noexc150 ], [ %i.iz, %bb.az ] ; 2 uses
  %i.je = phi ptr [ %.pre.i147, %.noexc150 ], [ %i.iw, %bb.az ] ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -4
  %i.jg = zext i32 %i.jd to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jg
  store ptr null, ptr %i.jh, align 8, !tbaa !164
  %i.ji = add i32 %i.jd, 1
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.jj = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.jk = and i32 %i.jj, 1
  %i.jl = icmp eq i32 %i.jk, 0                    ; 2 uses
  %spec.select = select i1 %i.jl, i32 %i.jj, i32 -1 ; 3 uses
  %spec.select306 = select i1 %i.jl, i32 -1, i32 %i.jj ; 3 uses
  %i.jm = load ptr, ptr %19, align 8, !tbaa !278  ; 3 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %indvars.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !281 ; 4 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %._crit_edge344, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

bb.bb:                                            ; preds = %bb.ay
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %.body

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit153
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !156 ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 3
end_hunk_0
begin_hunk_1_@_ZN2qe6nlqsat5hoistER7obj_refI4expr11ast_managerE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i249: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.cc:                                            ; preds = %bb.by
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @__cxa_free_exception(ptr %i.nk) #19
  br label %.body

bb.cd:                                            ; preds = %bb.bx
  %i.oe = zext i32 %i.nh to i64
  %i.of = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.mx, i64 noundef %i.oe)
          to label %.noexc255 unwind label %.loopexit313 ; 2 uses

.noexc255:                                        ; preds = %bb.cd
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  store ptr %i.og, ptr %i.gx, align 8, !tbaa !169
  store i32 %i.nf, ptr %i.of, align 4, !tbaa !156
  br label %.noexc169

bb.ce:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i247
  unreachable

.noexc169:                                        ; preds = %.noexc255, %.noexc252
  %.pre.i.i.i165 = phi ptr [ %i.og, %.noexc255 ], [ %i.nc, %.noexc252 ] ; 2 uses
  %.phi.trans.insert.i.i.i166 = getelementptr inbounds i8, ptr %.pre.i.i.i165, i64 -4
  %.pre2.i.i.i167 = load i32, ptr %.phi.trans.insert.i.i.i166, align 4, !tbaa !156
  br label %_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit.i

_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit.i: ; preds = %.noexc169, %bb.bu
  %i.oh = phi i32 [ %.pre2.i.i.i167, %.noexc169 ], [ %i.mw, %bb.bu ] ; 2 uses
  %i.oi = phi ptr [ %.pre.i.i.i165, %.noexc169 ], [ %i.mt, %bb.bu ] ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 -4
  %i.ok = zext i32 %i.oh to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ok
  store ptr %i.mr, ptr %i.ol, align 8, !tbaa !270
  %i.om = add i32 %i.oh, 1
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !156
  br label %bb.bt, !llvm.loop !10

bb.cf:                                            ; preds = %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.i
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ka
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !270 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !273, !nonnull !159, !align !160
  %i.oq = and i32 %i.kl, 2147483647
  invoke void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.op, i32 noundef %i.oq)
          to label %.noexc170 unwind label %.loopexit.split-lp314

.noexc170:                                        ; preds = %bb.cf
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !167 ; 4 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc170
  %i.ou = getelementptr inbounds i8, ptr %i.os, i64 -4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !156 ; 5 uses
  %i.ow = getelementptr inbounds i8, ptr %i.os, i64 -8 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !156
  %i.oy = icmp eq i32 %i.ov, %i.ox
  br i1 %i.oy, label %bb.ci, label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit.i

bb.ch:                                            ; preds = %.noexc170
  %i.oz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc238 unwind label %.loopexit.split-lp314 ; 3 uses

.noexc238:                                        ; preds = %bb.ch
  store i32 2, ptr %i.oz, align 4, !tbaa !156
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store i32 0, ptr %i.pa, align 4, !tbaa !156
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 2 uses
  store ptr %i.pb, ptr %i.or, align 8, !tbaa !167
  br label %.noexc171

bb.ci:                                            ; preds = %bb.cg
  %i.pc = mul i32 %i.ov, 3
  %i.pd = add i32 %i.pc, 1
  %i.pe = lshr i32 %i.pd, 1                       ; 3 uses
  %i.pf = shl i32 %i.pe, 2
  %i.pg = add i32 %i.pf, 8                        ; 2 uses
  %.not.i228 = icmp ugt i32 %i.pe, %i.ov
  br i1 %.not.i228, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ph = shl i32 %i.ov, 2
  %i.pi = add i32 %i.ph, 8
  %.not27.i237 = icmp ugt i32 %i.pg, %i.pi
  br i1 %.not27.i237, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.pj = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.pj, align 8, !tbaa !32
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 24 ; 3 uses
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !177
  %i.pm = load ptr, ptr %8, align 8, !tbaa !179   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230

bb.cm:                                            ; preds = %bb.cl
  %i.pp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !180 ; 3 uses
  %i.pr = icmp ult i64 %i.pq, 16
  call void @llvm.assume(i1 %i.pr)
  %i.ps = add nuw nsw i64 %i.pq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pl, ptr noundef nonnull align 8 dereferenceable(1) %i.pn, i64 %i.ps, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230: ; preds = %bb.cl
  store ptr %i.pm, ptr %i.pk, align 8, !tbaa !179
  %i.pt = load i64, ptr %i.pn, align 8, !tbaa !141
  store i64 %i.pt, ptr %i.pl, align 8, !tbaa !141
  %.phi.trans.insert.i231 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i232 = load i64, ptr %.phi.trans.insert.i231, align 8, !tbaa !180
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i233

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i233: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230, %bb.cm
  %i.pu = phi i64 [ %i.pq, %bb.cm ], [ %.pre.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store i64 %i.pu, ptr %i.pw, align 8, !tbaa !180
  store ptr %i.pn, ptr %8, align 8, !tbaa !179
  store i64 0, ptr %i.pv, align 8, !tbaa !180
  store i8 0, ptr %i.pn, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.pj, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i233
  %i.px = landingpad { ptr, i32 }
          cleanup
  %i.py = load ptr, ptr %8, align 8, !tbaa !179   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.pn
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i234: ; preds = %bb.cn
  %i.qa = load i64, ptr %i.pn, align 8, !tbaa !141
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i235: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.co:                                            ; preds = %bb.ck
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @__cxa_free_exception(ptr %i.pj) #19
  br label %.body

bb.cp:                                            ; preds = %bb.cj
  %i.qd = zext i32 %i.pg to i64
  %i.qe = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ow, i64 noundef %i.qd)
          to label %.noexc241 unwind label %.loopexit.split-lp314 ; 2 uses

.noexc241:                                        ; preds = %bb.cp
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  store ptr %i.qf, ptr %i.or, align 8, !tbaa !167
  store i32 %i.pe, ptr %i.qe, align 4, !tbaa !156
  br label %.noexc171

bb.cq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i233
  unreachable

.noexc171:                                        ; preds = %.noexc241, %.noexc238
  %.pre.i.i5.i = phi ptr [ %i.qf, %.noexc241 ], [ %i.pb, %.noexc238 ] ; 2 uses
  %.phi.trans.insert.i.i6.i = getelementptr inbounds i8, ptr %.pre.i.i5.i, i64 -4
  %.pre2.i.i7.i = load i32, ptr %.phi.trans.insert.i.i6.i, align 4, !tbaa !156
  br label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit.i

_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit.i: ; preds = %.noexc171, %bb.cg
  %i.qg = phi i32 [ %.pre2.i.i7.i, %.noexc171 ], [ %i.ov, %bb.cg ] ; 2 uses
  %i.qh = phi ptr [ %.pre.i.i5.i, %.noexc171 ], [ %i.os, %bb.cg ] ; 2 uses
  %i.qi = shl i32 %i.kl, 1
  %i.qj = getelementptr inbounds i8, ptr %i.qh, i64 -4
  %i.qk = zext i32 %i.qg to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qk
  store i32 %i.qi, ptr %i.ql, align 4, !tbaa !156
  %i.qm = add i32 %i.qg, 1
  store i32 %i.qm, ptr %i.qj, align 4, !tbaa !156
  invoke void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i32 noundef %i.kl)
          to label %.noexc172 unwind label %.loopexit.split-lp314

.noexc172:                                        ; preds = %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i32 %i.kl, ptr %12, align 4, !tbaa !275
  store i64 %.sroa.0290.0.insert.insert, ptr %i.gz, align 4
  invoke void @_ZN14core_hashtableI17default_map_entryIjN2qe9max_levelEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 4 dereferenceable(12) %12)
          to label %bb.cr unwind label %.loopexit.split-lp314

bb.cr:                                            ; preds = %.noexc172
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZNK8expr2var6is_varEP4expr.exit178.thread

.loopexit313:                                     ; preds = %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread.i, %bb.bv, %bb.cd
  %lpad.loopexit315 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp314:                            ; preds = %bb.be, %bb.cf, %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit.i, %.noexc172, %bb.bj, %bb.br, %bb.ch, %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK8expr2var6is_varEP4expr.exit.thread:          ; preds = %bb.bd, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK8expr2var6is_varEP4expr.exit
  %i.qn = load ptr, ptr %i.ha, align 8, !tbaa !164 ; 3 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %_ZNK8expr2var6is_varEP4expr.exit178.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i174

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i174:           ; preds = %_ZNK8expr2var6is_varEP4expr.exit.thread
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 -4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !156
  %.not.i.i175 = icmp ult i32 %i.ke, %i.qq
  br i1 %.not.i.i175, label %_ZNK8expr2var6is_varEP4expr.exit178, label %_ZNK8expr2var6is_varEP4expr.exit178.thread

_ZNK8expr2var6is_varEP4expr.exit178:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i174
  %i.qr = zext i32 %i.ke to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qr
  %.0.i.sroa.speculate.load..i177 = load i32, ptr %i.qs, align 4, !tbaa !156
  %.not308 = icmp eq i32 %.0.i.sroa.speculate.load..i177, -1
  br i1 %.not308, label %_ZNK8expr2var6is_varEP4expr.exit178.thread, label %bb.cs

bb.cs:                                            ; preds = %_ZNK8expr2var6is_varEP4expr.exit178
  %i.qt = invoke noundef i32 @_ZNK8expr2var6to_varEP4expr(ptr noundef nonnull align 8 dereferenceable(41) %i.gq, ptr noundef nonnull %i.kd)
          to label %bb.ct unwind label %bb.du     ; 5 uses

bb.ct:                                            ; preds = %bb.cs
  %i.qu = load ptr, ptr %i.gv, align 8, !tbaa !170 ; 3 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qw = getelementptr inbounds i8, ptr %i.qu, i64 -4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !156
  %i.qy = add i32 %i.qx, -1
  %i.qz = zext i32 %i.qy to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0.i.i179 = phi i64 [ %i.qz, %bb.cu ], [ 4294967295, %bb.ct ]
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.0.i.i179 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !164 ; 4 uses
  %i.rc = icmp eq ptr %i.rb, null
  br i1 %i.rc, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 -4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !156 ; 5 uses
  %i.rf = getelementptr inbounds i8, ptr %i.rb, i64 -8 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !156
  %i.rh = icmp eq i32 %i.re, %i.rg
  br i1 %i.rh, label %bb.cy, label %bb.dh

bb.cx:                                            ; preds = %bb.cv
  %i.ri = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc266 unwind label %bb.du ; 3 uses

.noexc266:                                        ; preds = %bb.cx
  store i32 2, ptr %i.ri, align 4, !tbaa !156
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store i32 0, ptr %i.rj, align 4, !tbaa !156
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  store ptr %i.rk, ptr %i.ra, align 8, !tbaa !164
  br label %.noexc184

bb.cy:                                            ; preds = %bb.cw
  %i.rl = mul i32 %i.re, 3
  %i.rm = add i32 %i.rl, 1
  %i.rn = lshr i32 %i.rm, 1                       ; 3 uses
  %i.ro = shl i32 %i.rn, 2
  %i.rp = add i32 %i.ro, 8                        ; 2 uses
  %.not.i256 = icmp ugt i32 %i.rn, %i.re
  br i1 %.not.i256, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rq = shl i32 %i.re, 2
  %i.rr = add i32 %i.rq, 8
  %.not27.i265 = icmp ugt i32 %i.rp, %i.rr
  br i1 %.not27.i265, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.rs = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.rs, align 8, !tbaa !32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 24 ; 3 uses
  store ptr %i.ru, ptr %i.rt, align 8, !tbaa !177
  %i.rv = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258

bb.dc:                                            ; preds = %bb.db
  %i.ry = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !180 ; 3 uses
  %i.sa = icmp ult i64 %i.rz, 16
  call void @llvm.assume(i1 %i.sa)
  %i.sb = add nuw nsw i64 %i.rz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ru, ptr noundef nonnull align 8 dereferenceable(1) %i.rw, i64 %i.sb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258: ; preds = %bb.db
  store ptr %i.rv, ptr %i.rt, align 8, !tbaa !179
  %i.sc = load i64, ptr %i.rw, align 8, !tbaa !141
  store i64 %i.sc, ptr %i.ru, align 8, !tbaa !141
  %.phi.trans.insert.i259 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i260 = load i64, ptr %.phi.trans.insert.i259, align 8, !tbaa !180
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i261

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i261: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258, %bb.dc
  %i.sd = phi i64 [ %i.rz, %bb.dc ], [ %.pre.i260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258 ]
  %i.se = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store i64 %i.sd, ptr %i.sf, align 8, !tbaa !180
  store ptr %i.rw, ptr %4, align 8, !tbaa !179
  store i64 0, ptr %i.se, align 8, !tbaa !180
  store i8 0, ptr %i.rw, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.rs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.dg unwind label %bb.dd

bb.dd:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i261
  %i.sg = landingpad { ptr, i32 }
          cleanup
  %i.sh = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.rw
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i262: ; preds = %bb.dd
  %i.sj = load i64, ptr %i.rw, align 8, !tbaa !141
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i263: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.de:                                            ; preds = %bb.da
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @__cxa_free_exception(ptr %i.rs) #19
  br label %.body

bb.df:                                            ; preds = %bb.cz
  %i.sm = zext i32 %i.rp to i64
  %i.sn = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.rf, i64 noundef %i.sm)
          to label %.noexc269 unwind label %bb.du ; 2 uses

.noexc269:                                        ; preds = %bb.df
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  store ptr %i.so, ptr %i.ra, align 8, !tbaa !164
  store i32 %i.rn, ptr %i.sn, align 4, !tbaa !156
  br label %.noexc184

bb.dg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i261
  unreachable

.noexc184:                                        ; preds = %.noexc269, %.noexc266
  %.pre.i181 = phi ptr [ %i.so, %.noexc269 ], [ %i.rk, %.noexc266 ] ; 2 uses
  %.phi.trans.insert.i182 = getelementptr inbounds i8, ptr %.pre.i181, i64 -4
  %.pre2.i183 = load i32, ptr %.phi.trans.insert.i182, align 4, !tbaa !156
  br label %bb.dh

bb.dh:                                            ; preds = %.noexc184, %bb.cw
  %i.sp = phi i32 [ %.pre2.i183, %.noexc184 ], [ %i.re, %bb.cw ] ; 2 uses
  %i.sq = phi ptr [ %.pre.i181, %.noexc184 ], [ %i.rb, %bb.cw ] ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %i.sq, i64 -4
  %i.ss = zext i32 %i.sp to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.ss
  store i32 %i.qt, ptr %i.st, align 4, !tbaa !156
  %i.su = add i32 %i.sp, 1
  store i32 %i.su, ptr %i.sr, align 4, !tbaa !156
  %i.sv = load ptr, ptr %i.hb, align 8, !tbaa !168 ; 5 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i:  ; preds = %bb.dh
  %i.sx = getelementptr inbounds i8, ptr %i.sv, i64 -4 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !156 ; 3 uses
  %.not.i186 = icmp ult i32 %i.qt, %i.sy
  br i1 %.not.i186, label %bb.dt, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i: ; preds = %bb.dh
  %i.sz = add i32 %i.qt, 1                        ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.sz, 0
  call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i
  %i.ta = add i32 %i.qt, 1                        ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.ta, %i.sy
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.di

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.sv, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i ]
  %.ph490 = phi i32 [ %i.ta, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i ], [ %i.sz, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.sy, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.di:                                            ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.ta, ptr %i.sx, align 4, !tbaa !156
  br label %bb.dt

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.backedge, %thread-pre-split.i.i.preheader
  %i.tb = phi ptr [ %.ph, %thread-pre-split.i.i.preheader ], [ %.be, %thread-pre-split.i.i.backedge ] ; 6 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %bb.dj, label %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.td = getelementptr inbounds i8, ptr %i.tb, i64 -8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !156
  %i.tf = icmp ugt i32 %.ph490, %i.te
  br i1 %i.tf, label %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.thread.i.i, label %bb.ds

bb.dj:                                            ; preds = %thread-pre-split.i.i
  %i.tg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc281 unwind label %bb.dv ; 3 uses

.noexc281:                                        ; preds = %bb.dj
  store i32 2, ptr %i.tg, align 4, !tbaa !156
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  store i32 0, ptr %i.th, align 4, !tbaa !156
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  store ptr %i.ti, ptr %i.hb, align 8, !tbaa !168
  br label %thread-pre-split.i.i.backedge

thread-pre-split.i.i.backedge:                    ; preds = %.noexc281, %.noexc284
  %.be = phi ptr [ %i.uo, %.noexc284 ], [ %i.ti, %.noexc281 ]
  br label %thread-pre-split.i.i, !llvm.loop !443

_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.i.i
  %i.tj = getelementptr inbounds i8, ptr %i.tb, i64 -8 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !156 ; 3 uses
  %i.tl = mul i32 %i.tk, 3
  %i.tm = add i32 %i.tl, 1
  %i.tn = lshr i32 %i.tm, 1                       ; 3 uses
  %i.to = shl i32 %i.tn, 3
  %i.tp = add i32 %i.to, 8                        ; 2 uses
  %.not.i271 = icmp ugt i32 %i.tn, %i.tk
  br i1 %.not.i271, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.thread.i.i
  %i.tq = shl i32 %i.tk, 3
  %i.tr = add i32 %i.tq, 8
  %.not27.i280 = icmp ugt i32 %i.tp, %i.tr
  br i1 %.not27.i280, label %bb.dq, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.thread.i.i
  %i.ts = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ts, align 8, !tbaa !32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 24 ; 3 uses
  store ptr %i.tu, ptr %i.tt, align 8, !tbaa !177
  %i.tv = load ptr, ptr %2, align 8, !tbaa !179   ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i273

bb.dn:                                            ; preds = %bb.dm
  %i.ty = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !180 ; 3 uses
  %i.ua = icmp ult i64 %i.tz, 16
  call void @llvm.assume(i1 %i.ua)
  %i.ub = add nuw nsw i64 %i.tz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tu, ptr noundef nonnull align 8 dereferenceable(1) %i.tw, i64 %i.ub, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i273: ; preds = %bb.dm
  store ptr %i.tv, ptr %i.tt, align 8, !tbaa !179
  %i.uc = load i64, ptr %i.tw, align 8, !tbaa !141
  store i64 %i.uc, ptr %i.tu, align 8, !tbaa !141
  %.phi.trans.insert.i274 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i275 = load i64, ptr %.phi.trans.insert.i274, align 8, !tbaa !180
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i276

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i276: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i273, %bb.dn
  %i.ud = phi i64 [ %i.tz, %bb.dn ], [ %.pre.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i273 ]
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store i64 %i.ud, ptr %i.uf, align 8, !tbaa !180
  store ptr %i.tw, ptr %2, align 8, !tbaa !179
  store i64 0, ptr %i.ue, align 8, !tbaa !180
  store i8 0, ptr %i.tw, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.ts, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.dr unwind label %bb.do

bb.do:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i276
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %2, align 8, !tbaa !179   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.tw
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i277: ; preds = %bb.do
  %i.uj = load i64, ptr %i.tw, align 8, !tbaa !141
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i278: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

bb.dp:                                            ; preds = %bb.dl
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @__cxa_free_exception(ptr %i.ts) #19
  br label %.body

bb.dq:                                            ; preds = %bb.dk
  %i.um = zext i32 %i.tp to i64
  %i.un = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.tj, i64 noundef %i.um)
          to label %.noexc284 unwind label %bb.dv ; 2 uses

.noexc284:                                        ; preds = %bb.dq
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  store ptr %i.uo, ptr %i.hb, align 8, !tbaa !168
  store i32 %i.tn, ptr %i.un, align 4, !tbaa !156
  br label %thread-pre-split.i.i.backedge

bb.dr:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i276
  unreachable

bb.ds:                                            ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE8capacityEv.exit.i.i
  %i.up = getelementptr inbounds i8, ptr %i.tb, i64 -4
  store i32 %.ph490, ptr %i.up, align 4, !tbaa !156
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph490
  br i1 %.not1319.i.i, label %bb.dt, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ds
  %i.uq = zext i32 %.ph490 to i64
  %i.ur = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.us = getelementptr [8 x i8], ptr %i.tb, i64 %i.ur
  %i.ut = sub nsw i64 %i.uq, %i.ur
  %i.uu = shl nsw i64 %i.ut, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.us, i8 -1, i64 %i.uu, i1 false)
  %.pre.i188 = load ptr, ptr %i.hb, align 8, !tbaa !168
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.preheader.i.i, %bb.ds, %bb.di, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i
  %i.uv = phi ptr [ %.pre.i188, %.lr.ph.preheader.i.i ], [ %i.tb, %bb.ds ], [ %i.sv, %bb.di ], [ %i.sv, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i ]
  %i.uw = zext i32 %i.qt to i64
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.uw
  store i64 %.sroa.0290.0.insert.insert, ptr %i.ux, align 4
  br label %_ZNK8expr2var6is_varEP4expr.exit178.thread

bb.du:                                            ; preds = %bb.df, %bb.cx, %bb.cs
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %bb.dq, %bb.dj
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK8expr2var6is_varEP4expr.exit178.thread:       ; preds = %_ZNK8expr2var6is_varEP4expr.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i174, %bb.dt, %_ZNK8expr2var6is_varEP4expr.exit178, %bb.cr
  %i.va = getelementptr inbounds nuw i8, ptr %.044342, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.va, %i.jx
  br i1 %.not74, label %._crit_edge344.loopexit, label %bb.bd

_ZN2qe6nlqsat12solver_state13init_var2exprEv.exit: ; preds = %.noexc143, %_ZNK8expr2var3endEv.exit20.i, %._crit_edge.i
  %i.vb = load ptr, ptr %24, align 8, !tbaa !186  ; 4 uses
  %i.vc = invoke noundef i32 @_ZNK8expr2var6to_varEP4expr(ptr noundef nonnull align 8 dereferenceable(41) %i.gp, ptr noundef %i.vb)
          to label %bb.dw unwind label %bb.fe

bb.dw:                                            ; preds = %_ZN2qe6nlqsat12solver_state13init_var2exprEv.exit
  %i.vd = shl i32 %i.vc, 1
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.vd, ptr %i.ve, align 8, !tbaa !156
  %i.vf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nlsat6solver9get_atomsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go)
          to label %.preheader unwind label %bb.ff ; 3 uses

.preheader:                                       ; preds = %bb.dw
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !450 ; 2 uses
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !451 ; 2 uses
  %.not349 = icmp eq ptr %i.vh, %i.vi
  br i1 %.not349, label %._crit_edge348, label %.lr.ph347

._crit_edge348:                                   ; preds = %bb.fi, %.preheader
  %i.vj = load ptr, ptr %29, align 8, !tbaa !204  ; 3 uses
  %i.vk = load i32, ptr %i.ge, align 8, !tbaa !202 ; 2 uses
  %i.vl = zext i32 %i.vk to i64
  %.idx.i = shl nuw nsw i64 %i.vl, 3
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx.i
  %.not.i190 = icmp eq i32 %i.vk, 0
  br i1 %.not.i190, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %._crit_edge348, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.06.i.i192 = phi ptr [ %i.vs, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i ], [ %i.vj, %._crit_edge348 ] ; 2 uses
  %i.vn = load ptr, ptr %.06.i.i192, align 8, !tbaa !205 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i191
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 32 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !199
  %i.vq = add i32 %i.vp, -1                       ; 2 uses
  store i32 %i.vq, ptr %i.vo, align 8, !tbaa !199
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %bb.dy, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.vn) #19
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.vn)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i unwind label %bb.eb

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i: ; preds = %bb.dy, %bb.dx, %.lr.ph.i.i191
  %i.vs = getelementptr inbounds nuw i8, ptr %.06.i.i192, i64 8 ; 2 uses
  %i.vt = icmp ult ptr %i.vs, %i.vm
  br i1 %i.vt, label %.lr.ph.i.i191, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, !llvm.loop !11

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.pre.i193 = load ptr, ptr %29, align 8, !tbaa !204
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, %._crit_edge348
  %i.vu = phi ptr [ %.pre.i193, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i ], [ %i.vj, %._crit_edge348 ] ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.vu, %i.gd
  %i.vv = icmp eq ptr %i.vu, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i1.i, %i.vv
  br i1 %or.cond.i.i.i.i, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.vu)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vw = landingpad { ptr, i32 }
          catch ptr null
  %i.vx = extractvalue { ptr, i32 } %i.vw, 0
  call void @__clang_call_terminate(ptr %i.vx) #20
  unreachable

bb.eb:                                            ; preds = %bb.dy
  %i.vy = landingpad { ptr, i32 }
          catch ptr null
  %i.vz = extractvalue { ptr, i32 } %i.vy, 0
  call void @__clang_call_terminate(ptr %i.vz) #20
  unreachable

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %i.wa = load ptr, ptr %28, align 8, !tbaa !287  ; 4 uses
  %.not.i.i194.a = icmp eq ptr %i.wa, null
  br i1 %.not.i.i194.a, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit
  %i.wb = load ptr, ptr %i.gc, align 8, !tbaa !292, !nonnull !159, !align !160
  %i.wc = load i32, ptr %i.wa, align 4            ; 2 uses
  %i.wd = add i32 %i.wc, 1073741823
  %i.we = and i32 %i.wd, 1073741823               ; 2 uses
  %i.wf = and i32 %i.wc, -1073741824
  %i.wg = or disjoint i32 %i.we, %i.wf
  store i32 %i.wg, ptr %i.wa, align 4
  %i.wh = icmp eq i32 %i.we, 0
  br i1 %i.wh, label %bb.ed, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit

bb.ed:                                            ; preds = %bb.ec
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.wi, ptr noundef nonnull %i.wa)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.wj = landingpad { ptr, i32 }
          catch ptr null
  %i.wk = extractvalue { ptr, i32 } %i.wj, 0
  call void @__clang_call_terminate(ptr %i.wk) #20
  unreachable

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.wl = load ptr, ptr %27, align 8, !tbaa !183  ; 4 uses
  %.not.i.i195.a = icmp eq ptr %i.wl, null
  br i1 %.not.i.i195.a, label %_ZN3refI4goalED2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 32 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !199
  %i.wo = add i32 %i.wn, -1                       ; 2 uses
  store i32 %i.wo, ptr %i.wm, align 8, !tbaa !199
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.eg, label %_ZN3refI4goalED2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.wl) #19
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.wl)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #20
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.ws = load ptr, ptr %26, align 8, !tbaa !186  ; 3 uses
  %.not.i.i196 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i196, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197, label %bb.ei

bb.ei:                                            ; preds = %_ZN3refI4goalED2Ev.exit
  %i.wt = load ptr, ptr %i.em, align 8, !tbaa !187, !nonnull !159, !align !160
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !162
  %i.ww = add i32 %i.wv, -1                       ; 2 uses
  store i32 %i.ww, ptr %i.wu, align 4, !tbaa !162
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %bb.ej, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.wt, ptr noundef nonnull %i.ws)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.wy = landingpad { ptr, i32 }
          catch ptr null
  %i.wz = extractvalue { ptr, i32 } %i.wy, 0
  call void @__clang_call_terminate(ptr %i.wz) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit197:      ; preds = %_ZN3refI4goalED2Ev.exit, %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.xa = load ptr, ptr %25, align 8, !tbaa !186  ; 3 uses
  %.not.i.i198 = icmp eq ptr %i.xa, null
  br i1 %.not.i.i198, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit199, label %bb.el

bb.el:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit197
  %i.xb = load ptr, ptr %i.el, align 8, !tbaa !187, !nonnull !159, !align !160
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !162
  %i.xe = add i32 %i.xd, -1                       ; 2 uses
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !162
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %bb.em, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit199

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.xb, ptr noundef nonnull %i.xa)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit199 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xg = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6vectorI10ref_vectorI3app11ast_managerELb1EjE9push_backERKS3_:bb.a
_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.d, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.r = phi ptr [ %i.ai, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.d ] ; 4 uses
  %i.s = phi ptr [ %i.aj, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !156
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.i.i, %i.v
  br i1 %i.w, label %bb.e, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !162
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = icmp eq ptr %i.r, null
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !156 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !156
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.h:                                             ; preds = %bb.g, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !281 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !156
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !281
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.g
  %i.ai = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.aj = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.s, %bb.g ] ; 2 uses
  %i.ak = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.am
  store ptr %i.y, ptr %i.an, align 8, !tbaa !282
  %i.ao = add i32 %i.ak, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ap = icmp eq ptr %i.aj, null
  br i1 %i.ap, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !9

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #19
  resume { ptr, i32 } %i.aq

_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !278  ; 2 uses
  %.phi.trans.insert4 = getelementptr inbounds i8, ptr %.pre3, i64 -4
  %.pre5 = load i32, ptr %.phi.trans.insert4, align 4, !tbaa !156
  br label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit

_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit:  ; preds = %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit, %bb.d
  %i.ar = phi i32 [ %.pre5, %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit ], [ %i.h, %bb.d ]
  %i.as = phi ptr [ %.pre3, %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit.loopexit ], [ %i.i, %bb.d ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = add i32 %i.ar, 1
  store i32 %i.au, ptr %i.at, align 4, !tbaa !156
  ret ptr %0
}

declare void @_ZN18quantifier_hoister15pull_quantifierEbR7obj_refI4expr11ast_managerER10ref_vectorI3appS2_Ebb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4goalC1ER11ast_managerbb(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(952), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare noundef i32 @_ZNK8expr2var6to_varEP4expr(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe6nlqsat9set_levelEjRKNS_9max_levelE(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct._key_data, align 4          ; 5 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !142    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !143  ; 3 uses
  %i.d = icmp eq i32 %i.a, -1
  br i1 %i.d, label %_ZNK2qe9max_level3maxEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, -1
  br i1 %i.e, label %_ZNK2qe9max_level3maxEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %i.c)
  br label %_ZNK2qe9max_level3maxEv.exit

_ZNK2qe9max_level3maxEv.exit:                     ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ %.sroa.speculated.i.i, %bb.c ], [ %i.c, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !169
  br label %bb.d

bb.d:                                             ; preds = %_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit, %_ZNK2qe9max_level3maxEv.exit
  %i.h = phi ptr [ %i.v, %_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit ], [ %.pre, %_ZNK2qe9max_level3maxEv.exit ] ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread, label %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit

_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156
  %.not = icmp ugt i32 %i.k, %.0.i.i
  br i1 %.not, label %bb.g, label %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread

_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread: ; preds = %bb.d, %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit
  %i.l = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !291
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !167
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !169  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !156  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !156
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit

bb.f:                                             ; preds = %bb.e, %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit.thread
  tail call void @_ZN6vectorIPN5nlsat21scoped_literal_vectorELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !169 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !156
  br label %_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit

_ZN17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE9push_backEPS1_.exit: ; preds = %bb.e, %bb.f
  %i.u = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.l, ptr %i.y, align 8, !tbaa !270
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !156
  br label %bb.d, !llvm.loop !10

bb.g:                                             ; preds = %_ZNK17scoped_ptr_vectorIN5nlsat21scoped_literal_vectorEE4sizeEv.exit
  %i.aa = zext i32 %.0.i.i to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !273, !nonnull !159, !align !160
  %i.ae = and i32 %1, 2147483647
  tail call void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !156 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !156
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i5 = load ptr, ptr %i.af, align 8, !tbaa !167 ; 2 uses
  %.phi.trans.insert.i.i6 = getelementptr inbounds i8, ptr %.pre.i.i5, i64 -4
  %.pre2.i.i7 = load i32, ptr %.phi.trans.insert.i.i6, align 4, !tbaa !156
  br label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit: ; preds = %bb.h, %bb.i
  %i.an = phi i32 [ %.pre2.i.i7, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i5, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ap = shl i32 %1, 1
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = zext i32 %i.an to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !156
  %i.at = add i32 %i.an, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !156
  tail call void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %1)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %1, ptr %3, align 4, !tbaa !275
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i64, ptr %2, align 4
  store i64 %i.aw, ptr %i.av, align 4
  call void @_ZN14core_hashtableI17default_map_entryIjN2qe9max_levelEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nlsat6solver9get_atomsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN2qe6nlqsat9get_levelEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.qe::max_level", align 4    ; 7 uses
  %3 = alloca %class.svector.8, align 8           ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.58", align 1 ; 4 uses
  store i32 -1, ptr %2, align 4, !tbaa !142
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !143
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = lshr i32 %1, 1                           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132  ; 3 uses
  %i.f = add i32 %i.e, 2147483647
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !144  ; 3 uses
  %i.i = zext nneg i32 %i.g to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.i, 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i ; 2 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.h, i64 %i.k
  %.not30.i.i.i = icmp eq i32 %i.g, %i.e
  br i1 %.not30.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.a
  %.not2732.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2732.i.i.i, label %.loopexit, label %.lr.ph34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.d
  %.031.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.j, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !140
  switch i32 %i.n, label %bb.d [
    i32 2, label %bb.b
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = load i32, ptr %.031.i.i.i, align 4, !tbaa !139
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !275
  %i.s = icmp eq i32 %i.r, %i.c
  br i1 %i.s, label %_ZNK9table2mapI17default_map_entryIjN2qe9max_levelEE6u_hash4u_eqE4findERKjRS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

.lr.ph34.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.g
  %.133.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.h, %.preheader.i.i.i ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !140
  switch i32 %i.v, label %bb.g [
    i32 2, label %bb.e
    i32 0, label %.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph34.i.i.i
  %i.w = load i32, ptr %.133.i.i.i, align 4, !tbaa !139
  %i.x = icmp eq i32 %i.w, %i.c
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !275
  %i.aa = icmp eq i32 %i.z, %i.c
  br i1 %i.aa, label %_ZNK9table2mapI17default_map_entryIjN2qe9max_levelEE6u_hash4u_eqE4findERKjRS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph34.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 20 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not27.i.i.i, label %.loopexit, label %.lr.ph34.i.i.i, !llvm.loop !478

_ZNK9table2mapI17default_map_entryIjN2qe9max_levelEE6u_hash4u_eqE4findERKjRS2_.exit: ; preds = %bb.c, %bb.f
  %.026.i.i.i = phi ptr [ %.133.i.i.i, %bb.f ], [ %.031.i.i.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 12
  br label %bb.w

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.g, %.lr.ph34.i.i.i, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !164
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN5nlsat6solver4varsEN3sat7literalER7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.ae = load ptr, ptr %3, align 8, !tbaa !164   ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %._crit_edge.thread, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !156 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !168 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.split.us, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader: ; preds = %.lr.ph
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %.pre = load i32, ptr %i.ao, align 4, !tbaa !156
  br label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 -1, ptr %2, align 4, !tbaa !156
  store i32 -1, ptr %i.a, align 4, !tbaa !156
  br label %._crit_edge.thread

._crit_edge:                                      ; preds = %.thread71
  %i.ap = icmp eq i32 %.0.i.i.i6670, -1
  %i.aq = icmp eq i32 %.0.i.i4.i, -1
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %._crit_edge.thread, label %bb.r

bb.i:                                             ; preds = %bb.r, %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i:  ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader, %.thread71
  %.01036 = phi ptr [ %i.bc, %.thread71 ], [ %i.ae, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader ] ; 2 uses
  %i.at = phi i32 [ %.0.i.i.i6670, %.thread71 ], [ -1, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader ] ; 5 uses
  %i.au = phi i32 [ %.0.i.i4.i, %.thread71 ], [ -1, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.preheader ] ; 4 uses
  %i.av = load i32, ptr %.01036, align 4, !tbaa !156 ; 2 uses
  %.not.i = icmp ult i32 %i.av, %.pre
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aw ; 2 uses
  br i1 %.not.i, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont.thread

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont: ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i
  %.pr.then.val = load i32, ptr %i.ax, align 4, !tbaa !142 ; 3 uses
  %i.ay = icmp eq i32 %i.at, -1
  br i1 %i.ay, label %_ZN2qe9max_level5mergeERjj.exit.i.cont, label %bb.j

_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont.thread: ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i
  store i32 %i.at, ptr %2, align 4, !tbaa !156
  br label %.thread71

bb.j:                                             ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont
  %i.az = icmp eq i32 %.pr.then.val, -1
  br i1 %i.az, label %_ZN2qe9max_level5mergeERjj.exit.i.cont, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.at, i32 %.pr.then.val)
  br label %_ZN2qe9max_level5mergeERjj.exit.i.cont

_ZN2qe9max_level5mergeERjj.exit.i.cont:           ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont, %bb.j, %bb.k
  %.0.i.i.i.ph = phi i32 [ %i.at, %bb.j ], [ %.pr.then.val, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont ], [ %.sroa.speculated.i.i.i, %bb.k ] ; 4 uses
  store i32 %.0.i.i.i.ph, ptr %2, align 4, !tbaa !156
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.then.val = load i32, ptr %.sroa.gep, align 4, !tbaa !143 ; 3 uses
  %i.ba = icmp eq i32 %i.au, -1
  br i1 %i.ba, label %.thread71, label %bb.l

bb.l:                                             ; preds = %_ZN2qe9max_level5mergeERjj.exit.i.cont
  %i.bb = icmp eq i32 %.then.val, -1
  br i1 %i.bb, label %.thread71, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.speculated.i.i3.i = call i32 @llvm.umax.i32(i32 %i.au, i32 %.then.val)
  br label %.thread71

.thread71:                                        ; preds = %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont.thread, %bb.m, %bb.l, %_ZN2qe9max_level5mergeERjj.exit.i.cont
  %.0.i.i.i6670 = phi i32 [ %.0.i.i.i.ph, %bb.m ], [ %.0.i.i.i.ph, %_ZN2qe9max_level5mergeERjj.exit.i.cont ], [ %.0.i.i.i.ph, %bb.l ], [ %i.at, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont.thread ] ; 2 uses
  %.0.i.i4.i = phi i32 [ %.sroa.speculated.i.i3.i, %bb.m ], [ %.then.val, %_ZN2qe9max_level5mergeERjj.exit.i.cont ], [ %i.au, %bb.l ], [ %i.au, %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i.cont.thread ] ; 3 uses
  store i32 %.0.i.i4.i, ptr %i.a, align 4, !tbaa !156
  %i.bc = getelementptr inbounds nuw i8, ptr %.01036, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.ak
  br i1 %.not, label %._crit_edge, label %_ZNK6vectorIN2qe9max_levelELb0EjE4sizeEv.exit.i

._crit_edge.thread:                               ; preds = %bb.h, %_ZN6vectorIjLb0EjE3endEv.exit, %.lr.ph.split.us, %._crit_edge
  %i.bd = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %._crit_edge.thread
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bd, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2qe6nlqsat12solver_state10clause2fmlERKN5nlsat21scoped_literal_vectorE:bb.a
bb.at:                                            ; preds = %bb.y, %bb.z, %bb.aj, %bb.as
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.as ], [ %i.cf, %bb.z ], [ %.pn, %bb.aj ], [ %i.ce, %bb.y ]
  call void @_ZN10nlsat2goalD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.d
  %.pn18.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn.pn, %bb.at ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn18.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe6nlqsat13add_to_answerER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !186
  tail call void @_ZN17expr_safe_replaceclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !186    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !312
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.b
  %i.m = load i32, ptr %i.l, align 8, !tbaa !319
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 8
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !311
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.c, %bb.d
  %.sink13 = phi i64 [ 840, %bb.d ], [ 832, %bb.c ], [ 832, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ 832, %bb.a ], [ 832, %bb.b ]
  %.sink = phi ptr [ %i.w, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.b ]
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !184, !nonnull !159, !align !160
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink13
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !282
  tail call void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef %.sink, ptr noundef %i.z)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !186   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !162
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !156 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !156
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.h:                                             ; preds = %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !156
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.g, %bb.h
  %i.am = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.an = phi ptr [ %.pre.i.i, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ap
  store ptr %i.aa, ptr %i.aq, align 8, !tbaa !157
  %i.ar = add i32 %i.am, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !156
  ret void
}

declare void @_ZN10nlsat2goalC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

declare void @_Z8push_notRK7obj_refI4expr11ast_managerEj(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN10nlsat2goalclERN5nlsat6solverERK5u_mapIP4exprES8_N3sat7literalE(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN10nlsat2goalD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe6nlqsat12solver_state22add_assumption_literalERN5nlsat21scoped_literal_vectorEP4expr(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct._key_data, align 4          ; 5 uses
  %4 = alloca %struct._key_data.63, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noundef i32 @_ZN5nlsat6solver11mk_bool_varEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 5 uses
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = or disjoint i32 %i.c, 1
  %i.e = load ptr, ptr %1, align 8, !tbaa !273, !nonnull !159, !align !160
  %i.f = and i32 %i.b, 2147483647
  tail call void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !156
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !167 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !156
  br label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %.pre2.i.i, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  store i32 %i.d, ptr %i.s, align 4, !tbaa !156
  %i.t = add i32 %i.o, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !156
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167  ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !156  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !156
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.d, %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !167 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !156
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.ac = phi i32 [ %.pre2.i, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %i.c, ptr %i.ag, align 4, !tbaa !156
  %i.ah = add i32 %i.ac, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !156
  tail call void @_ZN5nlsat6solver7inc_refEj(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.b, ptr %4, align 8, !tbaa !289
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.aj, align 8, !tbaa !290
  call void @_ZN14core_hashtableI17default_map_entryIjP4exprEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %i.b, ptr %3, align 4, !tbaa !275
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i64 -1, ptr %i.al, align 4
  call void @_ZN14core_hashtableI17default_map_entryIjN2qe9max_levelEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6insertEO9_key_dataIjS2_E(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN17expr_safe_replaceclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2qe6nlqsat12extract_varsEjR7svectorIjjER8uint_set(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.58", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = zext i32 %1 to i64
  br label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit:       ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.lr.ph, %_ZN6vectorIjLb0EjE6appendERKS0_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIjLb0EjE6appendERKS0_.exit ] ; 5 uses
  %i.f = phi ptr [ %i.b, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.lr.ph ], [ %i.bt, %_ZN6vectorIjLb0EjE6appendERKS0_.exit ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !156
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit, %_ZN6vectorIjLb0EjE6appendERKS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit
  %i.k = icmp samesign ult i64 %indvars.iv, %i.e
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  tail call void @_ZN2qe6nlqsat10insert_setI8uint_set7svectorIjjEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_ZN6vectorIjLb0EjE6appendERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6vectorIjLb0EjE6appendERKS0_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.d, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.q = phi ptr [ %i.bk, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ], [ %i.o, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ], [ 0, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !156
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.i, %i.t
  br i1 %i.u, label %bb.e, label %_ZN6vectorIjLb0EjE6appendERKS0_.exit

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !164    ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !156  ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !156
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.ad, align 4, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !164
  br label %_ZN6vectorIjLb0EjE13expand_vectorEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = mul i32 %i.z, 3
  %i.ah = add i32 %i.ag, 1
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = shl i32 %i.ai, 2
  %i.ak = add i32 %i.aj, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.ai, %i.z
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = shl i32 %i.z, 2
  %i.am = add i32 %i.al, 8
  %.not27.i = icmp ugt i32 %i.ak, %i.am
  br i1 %.not27.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = tail call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !177
  %i.aq = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !180 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !179
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !141
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !141
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i8 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !180
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.ay = phi i64 [ %i.au, %bb.l ], [ %.pre.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !180
  store ptr %i.ar, ptr %4, align 8, !tbaa !179
  store i64 0, ptr %i.az, align 8, !tbaa !180
  store i8 0, ptr %i.ar, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.m
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !141
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @__cxa_free_exception(ptr %i.an) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bg, %bb.n ]
  resume { ptr, i32 } %.pn32.i

bb.p:                                             ; preds = %bb.i
  %i.bh = zext i32 %i.ak to i64
  %i.bi = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bh) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !164
  store i32 %i.ai, ptr %i.bi, align 4, !tbaa !156
  br label %_ZN6vectorIjLb0EjE13expand_vectorEv.exit

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIjLb0EjE13expand_vectorEv.exit:         ; preds = %bb.g, %bb.p
  %.pre.i.i = phi ptr [ %i.af, %bb.g ], [ %i.bj, %bb.p ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !156
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !164
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %_ZN6vectorIjLb0EjE13expand_vectorEv.exit, %bb.f
  %i.bk = phi ptr [ %.pre.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit ], [ %i.q, %bb.f ] ; 2 uses
  %i.bl = phi i32 [ %.pre2.i.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit ], [ %i.z, %bb.f ] ; 2 uses
  %i.bm = phi ptr [ %.pre.i.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit ], [ %i.w, %bb.f ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i32, ptr %i.v, align 4, !tbaa !156
end_hunk_3

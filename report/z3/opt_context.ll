Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_context?download=true
inline.NumInlined: 3730
inline.NumDeleted: 1509
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerE:bb.a
  %i.ey = zext i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.dd, ptr %i.ez, align 8, !tbaa !63
  %i.fa = add i32 %i.ev, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !52
  br i1 %i.dn, label %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_1clES2_.exit", label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !434
  br label %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_1clES2_.exit"

"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_1clES2_.exit": ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %bb.ab
  %i.fd = phi i32 [ %i.fc, %bb.ab ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.fd, i32 %.0306363)
  br label %.critedge123

.critedge:                                        ; preds = %bb.p
  br i1 %i.cm, label %bb.ac, label %.thread324

bb.ac:                                            ; preds = %.critedge
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !435
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i137 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i137, label %.thread324, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i.i:   ; preds = %bb.ac
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !145
  %i.fj = icmp eq i32 %i.fi, 5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp eq i32 %i.fl, 3
  %i.fn = select i1 %i.fj, i1 %i.fm, i1 false
  br i1 %i.fn, label %bb.ad, label %.thread324

bb.ad:                                            ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !434
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.ae, label %.thread324

bb.ae:                                            ; preds = %bb.ad
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !63 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !63 ; 6 uses
  %.not.i138 = icmp eq ptr %i.fs, %i.n
  br i1 %.not.i138, label %bb.af, label %.thread324

bb.af:                                            ; preds = %bb.ae
  %i.fv = invoke fastcc noundef zeroext i1 @"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.fu)
          to label %.noexc154 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc154:                                        ; preds = %bb.af
  br i1 %i.fv, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc154
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, 65535
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ah, label %.thread324

bb.ah:                                            ; preds = %bb.ag
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !435
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i139 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i139, label %.thread324, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.i140

_ZNK17arith_recognizers6is_addEPK4expr.exit.i140: ; preds = %bb.ah
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !145
  %i.gf = icmp eq i32 %i.ge, 5
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = icmp eq i32 %i.gh, 6
  %i.gj = select i1 %i.gf, i1 %i.gi, i1 false
  br i1 %i.gj, label %bb.ai, label %.thread324

bb.ai:                                            ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.i140
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !434 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %.idx.i.i141 = shl nuw nsw i64 %i.gn, 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i.i141
  %.not14.i.i142 = icmp eq i32 %i.gm, 0
  br i1 %.not14.i.i142, label %.critedge.i, label %.lr.ph.i.i143

bb.aj:                                            ; preds = %.noexc155
  %i.gp = getelementptr inbounds nuw i8, ptr %.01115.i.i144, i64 8 ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.gp, %i.go
  br i1 %.not.i.i145, label %.critedge.i, label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %bb.ai, %bb.aj
  %.01115.i.i144 = phi ptr [ %i.gp, %bb.aj ], [ %i.gk, %bb.ai ] ; 2 uses
  %i.gq = load ptr, ptr %.01115.i.i144, align 8, !tbaa !63
  %i.gr = invoke fastcc noundef zeroext i1 @"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_0clES2_"(ptr noundef nonnull readonly align 8 dereferenceable(48) %13, ptr noundef %i.gq)
          to label %.noexc155 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %.lr.ph.i.i143
  br i1 %i.gr, label %bb.aj, label %.thread324

.critedge.i:                                      ; preds = %bb.aj, %bb.ai, %.noexc154
  br i1 %.not.i.i.i.i6.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i146, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !70
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i146

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i146: ; preds = %bb.ak, %.critedge.i
  %i.gv = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 4 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i146
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !52 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !52
  %i.hb = icmp eq i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.am, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147

bb.am:                                            ; preds = %bb.al, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i146
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %.noexc156 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc156:                                        ; preds = %bb.am
  %.pre.i.i.i151 = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i.i152 = getelementptr inbounds i8, ptr %.pre.i.i.i151, i64 -4
  %.pre2.i.i.i153 = load i32, ptr %.phi.trans.insert.i.i.i152, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147: ; preds = %.noexc156, %bb.al
  %i.hc = phi i32 [ %.pre2.i.i.i153, %.noexc156 ], [ %i.gy, %bb.al ] ; 2 uses
  %i.hd = phi ptr [ %.pre.i.i.i151, %.noexc156 ], [ %i.gv, %bb.al ] ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hf = zext i32 %i.hc to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hf
  store ptr %i.fs, ptr %i.hg, align 8, !tbaa !63
  %i.hh = add i32 %i.hc, 1
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !52
  br i1 %i.fv, label %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_2clES2_.exit", label %bb.an

bb.an:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !434
  br label %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_2clES2_.exit"

"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_2clES2_.exit": ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147, %bb.an
  %i.hk = phi i32 [ %i.hj, %bb.an ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i147 ]
  %.sroa.speculated.i149 = call i32 @llvm.umin.i32(i32 %i.hk, i32 %.0306363)
  br label %.critedge123

.critedge123:                                     ; preds = %bb.o, %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_2clES2_.exit", %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_1clES2_.exit", %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %bb.n
  %.3 = phi i32 [ %.0306363, %bb.n ], [ %.sroa.speculated.i, %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_1clES2_.exit" ], [ %.sroa.speculated.i149, %"_ZZN3opt7context18is_min_max_of_sumsEP4exprR10ref_vectorIS1_11ast_managerEENK3$_2clES2_.exit" ], [ %.0306363, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %.0306363, %bb.o ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.062364, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hl, %i.br
  br i1 %.not, label %.critedge125, label %bb.n

.critedge125:                                     ; preds = %.critedge123
  %.old126 = icmp eq i32 %.3, -1
  br i1 %.old126, label %.thread324, label %bb.ao

bb.ao:                                            ; preds = %.critedge125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  %i.hn = ptrtoint ptr %i.hm to i64               ; 2 uses
  store i64 %i.hn, ptr %14, align 8, !tbaa !129
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 16 uses
  store ptr null, ptr %i.ho, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store i64 %i.hn, ptr %15, align 8, !tbaa !129
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  store ptr null, ptr %i.hp, align 8, !tbaa !51
  %.not97372 = icmp eq i32 %.3, 0
  br i1 %.not97372, label %._crit_edge377.thread, label %.lr.ph376

._crit_edge377.thread:                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread

.lr.ph376:                                        ; preds = %bb.ao
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = add nuw i32 %.3, 1
  %wide.trip.count = zext i32 %17 to i64
  br label %bb.ap

._crit_edge377:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ib = icmp eq ptr %.pre, null
  br i1 %i.ib, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158

bb.ap:                                            ; preds = %.lr.ph376, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.lr.ph376 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.ic = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 816
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !474
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46)
          to label %.noexc159 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.ap
  %i.if = invoke noundef ptr @_ZN11ast_manager18mk_fresh_func_declERK6symbolS2_jPKP4sortS4_b(ptr noundef nonnull align 8 dereferenceable(952) %i.ic, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, ptr noundef %i.ie, i1 noundef zeroext true)
          to label %.noexc160 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc160:                                        ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ig = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ic, ptr noundef %i.if, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit: ; preds = %.noexc160
  %i.ih = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  %i.ii = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1)
          to label %bb.aq unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit
  %i.ij = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0)
          to label %bb.ar unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.ik = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ih, i32 noundef 0, i32 noundef 4, ptr noundef %i.ig, ptr noundef %i.ii, ptr noundef %i.ij)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit:        ; preds = %bb.ar
  %.not.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !70
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.as, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.io = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 4 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !52 ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.io, i64 -8
  %i.it = load i32, ptr %i.is, align 4, !tbaa !52
  %i.iu = icmp eq i32 %i.ir, %i.it
  br i1 %i.iu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %.noexc163 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.au
  %.pre.i.i = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %.noexc163
  %i.iv = phi i32 [ %.pre2.i.i, %.noexc163 ], [ %i.ir, %bb.at ] ; 2 uses
  %i.iw = phi ptr [ %.pre.i.i, %.noexc163 ], [ %i.io, %bb.at ] ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iy = zext i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iy
  store ptr %i.ik, ptr %i.iz, align 8, !tbaa !63
  %i.ja = add i32 %i.iv, 1
  store i32 %i.ja, ptr %i.ix, align 4, !tbaa !52
  %i.jb = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 5 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit165

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit165: ; preds = %bb.av
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !52 ; 2 uses
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jg ; 2 uses
  %.not106365 = icmp eq i32 %i.je, 0
  br i1 %.not106365, label %._crit_edge, label %.lr.ph367

.lr.ph367:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit165
  %18 = trunc nuw i64 %indvars.iv to i32          ; 3 uses
  %19 = icmp sgt i32 %18, -1                      ; 2 uses
  br i1 %i.k, label %.lr.ph367.split.us, label %.lr.ph367.split

.lr.ph367.split.us:                               ; preds = %.lr.ph367, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us
  %.060366.us = phi ptr [ %i.ko, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us ], [ %i.jb, %.lr.ph367 ] ; 2 uses
  %i.ji = load ptr, ptr %.060366.us, align 8, !tbaa !63
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 8, !tbaa !131
  %i.jk = load i8, ptr %i.hw, align 4
  %i.jl = and i8 %i.jk, -4                        ; 2 uses
  store i8 %i.jl, ptr %i.hw, align 4
  store ptr null, ptr %i.hx, align 8, !tbaa !130
  store i32 1, ptr %i.hy, align 8, !tbaa !131
  %i.jm = load i8, ptr %i.hz, align 4
  %i.jn = and i8 %i.jm, -4
  store i8 %i.jn, ptr %i.hz, align 4
  store ptr null, ptr %i.ia, align 8, !tbaa !130
  %i.jo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !76 ; 2 uses
  br i1 %19, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph367.split.us
  invoke void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(728) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %indvars.iv)
          to label %_ZN8rationalC2Ej.exit.i.us unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %.lr.ph367.split.us
  store i32 %18, ptr %4, align 8, !tbaa !131
  store i8 %i.jl, ptr %i.hw, align 4
  br label %_ZN8rationalC2Ej.exit.i.us

_ZN8rationalC2Ej.exit.i.us:                       ; preds = %bb.ax, %bb.aw
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %i.hy)
          to label %.noexc168.us unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc168.us:                                     ; preds = %_ZN8rationalC2Ej.exit.i.us
  store i32 1, ptr %i.hy, align 8, !tbaa !131
  %i.jp = load i8, ptr %i.hz, align 4
  %i.jq = and i8 %i.jp, -2
  store i8 %i.jq, ptr %i.hz, align 4
  %i.jr = load ptr, ptr %i.hv, align 8, !tbaa !309 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.us, label %bb.ay, label %_ZNK10arith_util6pluginEv.exit.i.i.us

bb.ay:                                            ; preds = %.noexc168.us
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc.i.us unwind label %.split.us

.noexc.i.us:                                      ; preds = %bb.ay
  %.pre.i.i.i166.us = load ptr, ptr %i.hv, align 8, !tbaa !309
  br label %_ZNK10arith_util6pluginEv.exit.i.i.us

_ZNK10arith_util6pluginEv.exit.i.i.us:            ; preds = %.noexc.i.us, %.noexc168.us
  %i.js = phi ptr [ %.pre.i.i.i166.us, %.noexc.i.us ], [ %i.jr, %.noexc168.us ]
  %i.jt = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i.us unwind label %.split.us

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i.us: ; preds = %_ZNK10arith_util6pluginEv.exit.i.i.us
  %i.ju = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !76 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ju, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i.i.us unwind label %.split370.us

.noexc.i.i.us:                                    ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i.us
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %i.hy)
          to label %bb.az unwind label %.split370.us

bb.az:                                            ; preds = %.noexc.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.jv = load ptr, ptr %11, align 8, !tbaa !310, !nonnull !67, !align !68
  %i.jw = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jv, i32 noundef 5, i32 noundef 3, ptr noundef %i.ji, ptr noundef %i.jt)
          to label %_ZNK10arith_util5mk_geEP4exprS1_.exit.us unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK10arith_util5mk_geEP4exprS1_.exit.us:         ; preds = %bb.az
  %i.jx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jj, i32 noundef 0, i32 noundef 9, ptr noundef %i.ig, ptr noundef %i.jw)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit.us unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit.us:   ; preds = %_ZNK10arith_util5mk_geEP4exprS1_.exit.us
  %.not.i.i.i.i171.us = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i171.us, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i172.us, label %bb.ba

bb.ba:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit.us
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !70
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i172.us

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i172.us: ; preds = %bb.ba, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit.us
  %i.kb = load ptr, ptr %i.ho, align 8, !tbaa !51 ; 4 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i172.us
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !52 ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.kb, i64 -8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !52
  %i.kh = icmp eq i32 %i.ke, %i.kg
  br i1 %i.kh, label %bb.bc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us

bb.bc:                                            ; preds = %bb.bb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i172.us
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %.noexc176.us unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc176.us:                                     ; preds = %bb.bc
  %.pre.i.i173.us = load ptr, ptr %i.ho, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i174.us = getelementptr inbounds i8, ptr %.pre.i.i173.us, i64 -4
  %.pre2.i.i175.us = load i32, ptr %.phi.trans.insert.i.i174.us, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us: ; preds = %.noexc176.us, %bb.bb
  %i.ki = phi i32 [ %.pre2.i.i175.us, %.noexc176.us ], [ %i.ke, %bb.bb ] ; 2 uses
  %i.kj = phi ptr [ %.pre.i.i173.us, %.noexc176.us ], [ %i.kb, %bb.bb ] ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -4
  %i.kl = zext i32 %i.ki to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kl
  store ptr %i.jx, ptr %i.km, align 8, !tbaa !63
  %i.kn = add i32 %i.ki, 1
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %.060366.us, i64 8 ; 2 uses
  %.not106.us = icmp eq ptr %i.ko, %i.jh
  br i1 %.not106.us, label %._crit_edge, label %.lr.ph367.split.us

.split.us:                                        ; preds = %_ZNK10arith_util6pluginEv.exit.i.i.us, %bb.ay
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

.split370.us:                                     ; preds = %.noexc.i.i.us, %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i.us
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #26
  unreachable

._crit_edge:                                      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit177.us, %bb.av, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit165
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge377, label %bb.ap, !llvm.loop !681

.lr.ph367.split:                                  ; preds = %.lr.ph367, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200
  %.060366 = phi ptr [ %i.mb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200 ], [ %i.jb, %.lr.ph367 ] ; 2 uses
  %i.ks = load ptr, ptr %.060366, align 8, !tbaa !63
  %i.kt = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 0, ptr %3, align 8, !tbaa !131
  %i.ku = load i8, ptr %i.hq, align 4
  %i.kv = and i8 %i.ku, -4                        ; 2 uses
  store i8 %i.kv, ptr %i.hq, align 4
  store ptr null, ptr %i.hr, align 8, !tbaa !130
  store i32 1, ptr %i.hs, align 8, !tbaa !131
  %i.kw = load i8, ptr %i.ht, align 4
  %i.kx = and i8 %i.kw, -4
  store i8 %i.kx, ptr %i.ht, align 4
  store ptr null, ptr %i.hu, align 8, !tbaa !130
  %i.ky = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !76 ; 2 uses
  br i1 %19, label %bb.bd, label %bb.be

.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_ZN8rationalC2Ej.exit.i.us, %bb.az, %_ZNK10arith_util5mk_geEP4exprS1_.exit.us, %bb.bc, %bb.bl, %_ZNK10arith_util5mk_geEP4exprS1_.exit191, %bb.bi, %_ZN8rationalC2Ej.exit.i178, %bb.be, %bb.au, %bb.ar, %.noexc160, %.noexc159, %bb.ap, %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit, %bb.aq
  %lpad.loopexit.split-lp528 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %.lr.ph367.split
  store i32 %18, ptr %3, align 8, !tbaa !131
  store i8 %i.kv, ptr %i.hq, align 4
  br label %_ZN8rationalC2Ej.exit.i178

bb.be:                                            ; preds = %.lr.ph367.split
  invoke void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(728) %i.ky, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv)
          to label %_ZN8rationalC2Ej.exit.i178 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8rationalC2Ej.exit.i178:                       ; preds = %bb.be, %bb.bd
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
          to label %.noexc186 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc186:                                        ; preds = %_ZN8rationalC2Ej.exit.i178
  store i32 1, ptr %i.hs, align 8, !tbaa !131
  %i.kz = load i8, ptr %i.ht, align 4
  %i.la = and i8 %i.kz, -2
  store i8 %i.la, ptr %i.ht, align 4
  %i.lb = load ptr, ptr %i.hv, align 8, !tbaa !309 ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i179, label %bb.bf, label %_ZNK10arith_util6pluginEv.exit.i.i180

bb.bf:                                            ; preds = %.noexc186
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc.i183 unwind label %bb.bh

.noexc.i183:                                      ; preds = %bb.bf
  %.pre.i.i.i184 = load ptr, ptr %i.hv, align 8, !tbaa !309
  br label %_ZNK10arith_util6pluginEv.exit.i.i180

_ZNK10arith_util6pluginEv.exit.i.i180:            ; preds = %.noexc.i183, %.noexc186
  %i.lc = phi ptr [ %.pre.i.i.i184, %.noexc.i183 ], [ %i.lb, %.noexc186 ]
  %i.ld = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i181 unwind label %bb.bh

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i181: ; preds = %_ZNK10arith_util6pluginEv.exit.i.i180
  %i.le = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !76 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.le, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i.i182 unwind label %bb.bg

.noexc.i.i182:                                    ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i181
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.le, ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
          to label %bb.bi unwind label %bb.bg

bb.bg:                                            ; preds = %.noexc.i.i182, %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i181
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #26
  unreachable

bb.bh:                                            ; preds = %_ZNK10arith_util6pluginEv.exit.i.i180, %bb.bf
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

bb.bi:                                            ; preds = %.noexc.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.li = load ptr, ptr %11, align 8, !tbaa !310, !nonnull !67, !align !68
  %i.lj = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.li, i32 noundef 5, i32 noundef 3, ptr noundef %i.ks, ptr noundef %i.ld)
          to label %_ZNK10arith_util5mk_geEP4exprS1_.exit191 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK10arith_util5mk_geEP4exprS1_.exit191:         ; preds = %bb.bi
  %i.lk = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.kt, i32 noundef 0, i32 noundef 9, ptr noundef %i.lj, ptr noundef %i.ig)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit193 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit193:   ; preds = %_ZNK10arith_util5mk_geEP4exprS1_.exit191
  %.not.i.i.i.i194 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i194, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i195, label %bb.bj

bb.bj:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit193
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !70
  %i.ln = add i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i195

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i195: ; preds = %bb.bj, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit193
  %i.lo = load ptr, ptr %i.ho, align 8, !tbaa !51 ; 4 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i195
  %i.lq = getelementptr inbounds i8, ptr %i.lo, i64 -4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !52 ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lo, i64 -8
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !52
  %i.lu = icmp eq i32 %i.lr, %i.lt
  br i1 %i.lu, label %bb.bl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200

bb.bl:                                            ; preds = %bb.bk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i195
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %.noexc199 unwind label %.loopexit338.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc199:                                        ; preds = %bb.bl
  %.pre.i.i196 = load ptr, ptr %i.ho, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i197 = getelementptr inbounds i8, ptr %.pre.i.i196, i64 -4
  %.pre2.i.i198 = load i32, ptr %.phi.trans.insert.i.i197, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit200: ; preds = %bb.bk, %.noexc199
  %i.lv = phi i32 [ %.pre2.i.i198, %.noexc199 ], [ %i.lr, %bb.bk ] ; 2 uses
  %i.lw = phi ptr [ %.pre.i.i196, %.noexc199 ], [ %i.lo, %bb.bk ] ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -4
  %i.ly = zext i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.ly
  store ptr %i.lk, ptr %i.lz, align 8, !tbaa !63
  %i.ma = add i32 %i.lv, 1
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !52
  %i.mb = getelementptr inbounds nuw i8, ptr %.060366, i64 8 ; 2 uses
  %.not106 = icmp eq ptr %i.mb, %i.jh
  br i1 %.not106, label %._crit_edge, label %.lr.ph367.split

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158: ; preds = %._crit_edge377
  %i.mc = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !52 ; 2 uses
  %i.me = icmp eq i32 %i.md, 1
  br i1 %i.me, label %bb.bm, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread

bb.bm:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158
  %i.mf = load ptr, ptr %.pre, align 8, !tbaa !63 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = and i32 %i.mh, 65535
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %_ZNK10arith_util6mk_addEjPKP4expr.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread

_ZNK10arith_util6mk_addEjPKP4expr.exit.thread:    ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  store ptr %i.mf, ptr %16, align 8, !tbaa !128
  %i.ml = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !129
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread: ; preds = %._crit_edge377.thread, %._crit_edge377, %bb.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158
  %i.mm = phi ptr [ %.pre, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158 ], [ %.pre, %bb.bm ], [ null, %._crit_edge377 ], [ null, %._crit_edge377.thread ]
  %.0.i.i157329 = phi i32 [ %i.md, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158 ], [ 1, %bb.bm ], [ 0, %._crit_edge377 ], [ 0, %._crit_edge377.thread ]
  %i.mn = load ptr, ptr %11, align 8, !tbaa !310, !nonnull !67, !align !68
  %i.mo = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.mn, i32 noundef 5, i32 noundef 6, i32 noundef %.0.i.i157329, ptr noundef %i.mm)
          to label %_ZNK10arith_util6mk_addEjPKP4expr.exit unwind label %bb.bs ; 3 uses

_ZNK10arith_util6mk_addEjPKP4expr.exit:           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread
  %i.mp = load ptr, ptr %i.g, align 8, !tbaa !288, !nonnull !67, !align !68
  store ptr %i.mo, ptr %16, align 8, !tbaa !128
  %i.mq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !129
  %.not.i.i202 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i202, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10arith_util6mk_addEjPKP4expr.exit.thread, %_ZNK10arith_util6mk_addEjPKP4expr.exit
  %i.mr = phi ptr [ %i.ml, %_ZNK10arith_util6mk_addEjPKP4expr.exit.thread ], [ %i.mq, %_ZNK10arith_util6mk_addEjPKP4expr.exit ]
  %i.ms = phi ptr [ %i.mf, %_ZNK10arith_util6mk_addEjPKP4expr.exit.thread ], [ %i.mo, %_ZNK10arith_util6mk_addEjPKP4expr.exit ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !70
  %i.mv = add i32 %i.mu, 1
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !70
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10arith_util6mk_addEjPKP4expr.exit
  %i.mw = phi ptr [ null, %_ZNK10arith_util6mk_addEjPKP4expr.exit ], [ %i.ms, %_ZN11ast_manager7inc_refEP3ast.exit.i.i ] ; 5 uses
  %i.mx = phi ptr [ %i.mq, %_ZNK10arith_util6mk_addEjPKP4expr.exit ], [ %i.mr, %_ZN11ast_manager7inc_refEP3ast.exit.i.i ]
  %i.my = load i32, ptr %i.c, align 4, !tbaa !52  ; 2 uses
  br i1 %i.k, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr %i.mw, ptr %i.b, align 8, !tbaa !63
  %i.mz = invoke noundef ptr @_ZN3opt7context15mk_objective_fnEjNS0_11objective_tEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %i.my, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.not.i.i.i.i204 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i204, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i205, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !70
  %i.nc = add i32 %i.nb, 1
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i205

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i205: ; preds = %bb.bp, %bb.bo
  %i.nd = load ptr, ptr %i.ho, align 8, !tbaa !51 ; 4 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i205
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !52 ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.nd, i64 -8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !52
  %i.nj = icmp eq i32 %i.ng, %i.ni
  br i1 %i.nj, label %bb.br, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit210

bb.br:                                            ; preds = %bb.bq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i205
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit210.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit158.thread
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bt:                                            ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
end_hunk_0

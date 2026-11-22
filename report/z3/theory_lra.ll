Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_lra?download=true
inline.NumInlined: 6546
inline.NumDeleted: 2286
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3smt10theory_lra3imp16internalize_atomEP3appb:bb.a

bb.af:                                            ; preds = %.noexc43
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !693 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 -8
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !693
  %i.gb = icmp eq i32 %i.fy, %i.ga
  br i1 %i.gb, label %bb.ag, label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split

bb.ag:                                            ; preds = %bb.af, %.noexc43
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fr)
          to label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split unwind label %bb.ba

_ZNK17arith_recognizers5is_geEPK4expr.exit.thread: ; preds = %bb.y, %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit37.thread, %_ZNK17arith_recognizers5is_geEPK4expr.exit
  %i.gc = load ptr, ptr %0, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !705, !nonnull !564, !align !565 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 9552 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 9568
  %i.gi = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i64 noundef 16)
          to label %.noexc45 unwind label %bb.ba  ; 3 uses

.noexc45:                                         ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.thread
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV16push_back_vectorI10ptr_vectorI4exprEE, i64 16), ptr %i.gi, align 8, !tbaa !567
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gf, ptr %i.gj, align 8, !tbaa !744
  %i.gk = load ptr, ptr %i.gg, align 8, !tbaa !745 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %.noexc2.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc45
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !693 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 -8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !693
  %i.gq = icmp eq i32 %i.gn, %i.gp
  br i1 %i.gq, label %.noexc2.i, label %bb.ai

.noexc2.i:                                        ; preds = %bb.ah, %.noexc45
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.gg)
          to label %.noexc46 unwind label %bb.ba

.noexc46:                                         ; preds = %.noexc2.i
  %.pre.i.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !745 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !693
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc46, %bb.ah
  %i.gr = phi i32 [ %.pre2.i.i.i.i, %.noexc46 ], [ %i.gn, %bb.ah ] ; 2 uses
  %i.gs = phi ptr [ %.pre.i.i.i.i, %.noexc46 ], [ %i.gk, %bb.ah ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -4
  %i.gu = zext i32 %i.gr to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gu
  store ptr %i.gi, ptr %i.gv, align 8, !tbaa !747
  %i.gw = add i32 %i.gr, 1
  store i32 %i.gw, ptr %i.gt, align 4, !tbaa !693
  %i.gx = load ptr, ptr %i.gf, align 8, !tbaa !626 ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !693 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !693
  %i.hd = icmp eq i32 %i.ha, %i.hc
  br i1 %i.hd, label %bb.ak, label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split unwind label %bb.ba

bb.al:                                            ; preds = %.invoke134, %.invoke
  %i.he = phi i1 [ false, %.invoke134 ], [ true, %.invoke ]
  %.024 = phi i32 [ 0, %.invoke134 ], [ 1, %.invoke ]
  %.023 = phi i32 [ %i.cu, %.invoke134 ], [ %i.dv, %.invoke ] ; 4 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !703
  %i.hi = zext i32 %.023 to i64                   ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !748
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !757
  %i.hm = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.hl)
          to label %.noexc48 unwind label %bb.ba

.noexc48:                                         ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !738 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i: ; preds = %.noexc48
  %i.hq = load i32, ptr %i.ho, align 8, !tbaa !740
  %i.hr = icmp eq i32 %i.hq, 5
  br i1 %i.hr, label %_ZNK3smt10theory_lra3imp6is_intEi.exit, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread

_ZNK3smt10theory_lra3imp6is_intEi.exit:           ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !758
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.am, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread

bb.am:                                            ; preds = %_ZNK3smt10theory_lra3imp6is_intEi.exit
  %i.hv = load i8, ptr %i.f, align 4
  %i.hw = and i8 %i.hv, 1
  %i.hx = icmp eq i8 %i.hw, 0
  %i.hy = load i32, ptr %i.e, align 8
  %i.hz = icmp eq i32 %i.hy, 1
  %i.ia = select i1 %i.hx, i1 %i.hz, i1 false
  br i1 %i.ia, label %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.he, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  store i32 0, ptr %6, align 8, !tbaa !698, !alias.scope !1137
  %i.ig = load i8, ptr %i.ib, align 4, !alias.scope !1137
  %i.ih = and i8 %i.ig, -4
  store i8 %i.ih, ptr %i.ib, align 4, !alias.scope !1137
  store ptr null, ptr %i.ic, align 8, !tbaa !697, !alias.scope !1137
  store i32 1, ptr %i.id, align 8, !tbaa !698, !alias.scope !1137
  %i.ii = load i8, ptr %i.ie, align 4, !alias.scope !1137
  %i.ij = and i8 %i.ii, -4
  store i8 %i.ij, ptr %i.ie, align 4, !alias.scope !1137
  store ptr null, ptr %i.if, align 8, !tbaa !697, !alias.scope !1137
  %i.ik = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700, !noalias !1137 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE5floorERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i.invoke unwind label %.body

.noexc.i.invoke:                                  ; preds = %bb.ap, %bb.ao
  %i.il = phi ptr [ %i.ik, %bb.ao ], [ %i.iq, %bb.ap ]
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.id)
          to label %_Z5floorRK8rational.exit unwind label %.body

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  store i32 0, ptr %6, align 8, !tbaa !698, !alias.scope !1138
  %i.im = load i8, ptr %i.ib, align 4, !alias.scope !1138
  %i.in = and i8 %i.im, -4
  store i8 %i.in, ptr %i.ib, align 4, !alias.scope !1138
  store ptr null, ptr %i.ic, align 8, !tbaa !697, !alias.scope !1138
  store i32 1, ptr %i.id, align 8, !tbaa !698, !alias.scope !1138
  %i.io = load i8, ptr %i.ie, align 4, !alias.scope !1138
  %i.ip = and i8 %i.io, -4
  store i8 %i.ip, ptr %i.ie, align 4, !alias.scope !1138
  store ptr null, ptr %i.if, align 8, !tbaa !697, !alias.scope !1138
  %i.iq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700, !noalias !1138 ; 2 uses
  invoke void @_ZN11mpq_managerILb1EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i.invoke unwind label %.body

.body:                                            ; preds = %.noexc.i.invoke, %bb.ao, %bb.ap
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bc

_Z5floorRK8rational.exit:                         ; preds = %.noexc.i.invoke
  %i.is = load i8, ptr %i.ie, align 4             ; 2 uses
  %i.it = load i32, ptr %5, align 8, !tbaa !693
  %i.iu = load i32, ptr %6, align 8, !tbaa !693
  store i32 %i.iu, ptr %5, align 8, !tbaa !693
  store i32 %i.it, ptr %6, align 8, !tbaa !693
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.d, align 8, !tbaa !701
  %i.ix = load ptr, ptr %i.iv, align 8, !tbaa !701
  store ptr %i.ix, ptr %i.d, align 8, !tbaa !701
  store ptr %i.iw, ptr %i.iv, align 8, !tbaa !701
  %i.iy = load i8, ptr %i.a, align 4              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 4             ; 2 uses
  %i.jb = and i8 %i.iy, -4
  %i.jc = and i8 %i.ja, -4
  %i.jd = and i8 %i.ja, 3
  %i.je = or disjoint i8 %i.jd, %i.jb
  store i8 %i.je, ptr %i.a, align 4
  %i.jf = and i8 %i.iy, 3
  %i.jg = or disjoint i8 %i.jc, %i.jf
  store i8 %i.jg, ptr %i.iz, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ji = load i32, ptr %i.e, align 8, !tbaa !693
  store i32 1, ptr %i.e, align 8, !tbaa !693
  store i32 %i.ji, ptr %i.jh, align 8, !tbaa !693
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !701
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !701
  store ptr %i.jl, ptr %i.i, align 8, !tbaa !701
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !701
  %i.jm = load i8, ptr %i.f, align 4              ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.jo = and i8 %i.jm, -4
  %i.jp = and i8 %i.is, -4
  %7 = and i8 %i.is, 2
  %8 = or disjoint i8 %7, %i.jo
  store i8 %8, ptr %i.f, align 4
  %i.jq = and i8 %i.jm, 3
  %i.jr = or disjoint i8 %i.jp, %i.jq
  store i8 %i.jr, ptr %i.jn, align 4
  %i.js = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.js, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i52 unwind label %bb.aq

.noexc.i52:                                       ; preds = %_Z5floorRK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc.i52, %_Z5floorRK8rational.exit
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #27
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread

_ZNK3smt10theory_lra3imp6is_intEi.exit.thread:    ; preds = %.noexc48, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i, %_ZN8rationalD2Ev.exit, %bb.am, %_ZNK3smt10theory_lra3imp6is_intEi.exit
  %i.jv = invoke noundef ptr @_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rationalS6_(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %i.m, i32 noundef %.023, i32 noundef %.024, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
          to label %_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rational.exit unwind label %bb.ba ; 3 uses

_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rational.exit: ; preds = %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !759
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.hi ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !622 ; 4 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rational.exit
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 -4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !693 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.jz, i64 -8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !693
  %i.kf = icmp eq i32 %i.kc, %i.ke
  br i1 %i.kf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rational.exit
  invoke void @_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy)
          to label %.noexc57 unwind label %bb.ba

.noexc57:                                         ; preds = %bb.as
  %.pre.i54 = load ptr, ptr %i.jy, align 8, !tbaa !622 ; 2 uses
  %.phi.trans.insert.i55 = getelementptr inbounds i8, ptr %.pre.i54, i64 -4
  %.pre2.i56 = load i32, ptr %.phi.trans.insert.i55, align 4, !tbaa !693
  br label %bb.at

bb.at:                                            ; preds = %.noexc57, %bb.ar
  %i.kg = phi i32 [ %.pre2.i56, %.noexc57 ], [ %i.kc, %bb.ar ] ; 2 uses
  %i.kh = phi ptr [ %.pre.i54, %.noexc57 ], [ %i.jz, %bb.ar ] ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -4
  %i.kj = zext i32 %i.kg to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kj
  store ptr %i.jv, ptr %i.kk, align 8, !tbaa !760
  %i.kl = add i32 %i.kg, 1
  store i32 %i.kl, ptr %i.ki, align 4, !tbaa !693
  %i.km = load ptr, ptr %0, align 8, !tbaa !704, !nonnull !564, !align !565
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !705, !nonnull !564, !align !565 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !702
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.hi
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !693
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 9552 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 9568
  %i.kv = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ku, i64 noundef 24)
          to label %.noexc62 unwind label %bb.ba  ; 5 uses

.noexc62:                                         ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18vector_value_trailIjLb0EE, i64 16), ptr %i.kv, align 8, !tbaa !567
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %i.kp, ptr %i.kw, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store i32 %.023, ptr %.sroa.6.8..sroa_idx.i, align 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  store i32 %i.ks, ptr %.sroa.7.8..sroa_idx.i, align 4
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !745 ; 4 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %.noexc5.i, label %bb.au

bb.au:                                            ; preds = %.noexc62
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 -4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !693 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kx, i64 -8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !693
  %i.ld = icmp eq i32 %i.la, %i.lc
  br i1 %i.ld, label %.noexc5.i, label %bb.av

.noexc5.i:                                        ; preds = %bb.au, %.noexc62
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.kt)
          to label %.noexc63 unwind label %bb.ba

.noexc63:                                         ; preds = %.noexc5.i
  %.pre.i.i.i.i59 = load ptr, ptr %i.kt, align 8, !tbaa !745 ; 2 uses
  %.phi.trans.insert.i.i.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i.i.i59, i64 -4
  %.pre2.i.i.i.i61 = load i32, ptr %.phi.trans.insert.i.i.i.i60, align 4, !tbaa !693
  br label %bb.av

bb.av:                                            ; preds = %.noexc63, %bb.au
  %i.le = phi i32 [ %.pre2.i.i.i.i61, %.noexc63 ], [ %i.la, %bb.au ] ; 2 uses
  %i.lf = phi ptr [ %.pre.i.i.i.i59, %.noexc63 ], [ %i.kx, %bb.au ] ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -4
  %i.lh = zext i32 %i.le to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lh
  store ptr %i.kv, ptr %i.li, align 8, !tbaa !747
  %i.lj = add i32 %i.le, 1
  store i32 %i.lj, ptr %i.lg, align 4, !tbaa !693
  %i.lk = load ptr, ptr %i.kp, align 8, !tbaa !702
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.hi ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !693
  %i.ln = add i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !693
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !702 ; 4 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lr = getelementptr inbounds i8, ptr %i.lp, i64 -4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !693 ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 -8
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !693
  %i.lv = icmp eq i32 %i.ls, %i.lu
  br i1 %i.lv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
          to label %.noexc67 unwind label %bb.ba

.noexc67:                                         ; preds = %bb.ax
  %.pre.i64 = load ptr, ptr %i.lo, align 8, !tbaa !702 ; 2 uses
  %.phi.trans.insert.i65 = getelementptr inbounds i8, ptr %.pre.i64, i64 -4
  %.pre2.i66 = load i32, ptr %.phi.trans.insert.i65, align 4, !tbaa !693
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc67, %bb.aw
  %i.lw = phi i32 [ %.pre2.i66, %.noexc67 ], [ %i.ls, %bb.aw ] ; 2 uses
  %i.lx = phi ptr [ %.pre.i64, %.noexc67 ], [ %i.lp, %bb.aw ] ; 2 uses
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -4
  %i.lz = zext i32 %i.lw to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lz
  store i32 %.023, ptr %i.ma, align 4, !tbaa !693
  %i.mb = add i32 %i.lw, 1
  store i32 %i.mb, ptr %i.ly, align 4, !tbaa !693
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.m, ptr %3, align 8, !tbaa !728
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.jv, ptr %i.mc, align 8, !tbaa !729
  invoke void @_ZN14core_hashtableI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEEN9table2mapIS7_6u_hash4u_eqE15entry_hash_procENSB_13entry_eq_procEE6insertEO9_key_dataIjS6_E(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  invoke void @_ZN3smt10theory_lra3imp15mk_bound_axiomsERN6lp_api5boundIN3sat7literalEEE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.jv)
          to label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit unwind label %bb.ba

bb.ba:                                            ; preds = %.invoke134, %.invoke, %bb.az, %_ZNK3smt10theory_lra3imp6is_intEi.exit.thread, %bb.as, %bb.at, %.noexc5.i, %bb.ay, %bb.al, %bb.ak, %.noexc2.i, %_ZNK17arith_recognizers5is_geEPK4expr.exit.thread, %bb.aa, %.noexc, %bb.z, %bb.b, %bb.v, %bb.q, %bb.l, %bb.g, %bb.c, %bb.a, %bb.ad, %bb.ag, %bb.ae, %bb.ax
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split: ; preds = %bb.ak, %bb.ag
  %.pre.i.i.sink.in = phi ptr [ %i.fr, %bb.ag ], [ %i.gf, %bb.ak ]
  %.sink.ph = phi ptr [ %i.ft, %bb.ag ], [ %1, %bb.ak ]
  %.pre.i.i.sink = load ptr, ptr %.pre.i.i.sink.in, align 8, !tbaa !1139 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i.sink, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !693
  br label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split

_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split: ; preds = %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split, %bb.aj, %bb.af
  %.sink141 = phi ptr [ %i.fv, %bb.af ], [ %i.gx, %bb.aj ], [ %.pre.i.i.sink, %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split ] ; 2 uses
  %.sink140 = phi i32 [ %i.fy, %bb.af ], [ %i.ha, %bb.aj ], [ %.pre2.i.i, %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.ft, %bb.af ], [ %1, %bb.aj ], [ %.sink.ph, %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split.sink.split ]
  %i.me = getelementptr inbounds i8, ptr %.sink141, i64 -4
  %i.mf = zext i32 %.sink140 to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.sink141, i64 %i.mf
  store ptr %.sink, ptr %i.mg, align 8, !tbaa !761
  %i.mh = add i32 %.sink140, 1
  store i32 %i.mh, ptr %i.me, align 4, !tbaa !693
  br label %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit

_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit: ; preds = %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit.sink.split, %bb.az, %.noexc38, %bb.aa
  %i.mi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i69 unwind label %bb.bb

.noexc.i69:                                       ; preds = %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.mi, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit70 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc.i69, %_ZN3smt10theory_lra3imp18internalize_is_intEP3app.exit
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #27
  unreachable

end_hunk_0

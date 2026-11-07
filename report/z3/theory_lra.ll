Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_lra?download=true
inline.NumInlined: 6546
inline.NumDeleted: 2286
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3smt10theory_lra3imp18flush_bound_axiomsEv:bb.a
  %i.ic = load i32, ptr %i.hb, align 8, !tbaa !698
  %i.id = icmp slt i32 %i.ib, %i.ic
  br i1 %i.id, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZleRK8rationalS1_.exit.i, %.noexc159, %.noexc158, %bb.ak, %bb.aj
  %.1294 = phi i1 [ %.0293, %bb.aj ], [ true, %_ZleRK8rationalS1_.exit.i ], [ true, %.noexc158 ], [ true, %.noexc159 ], [ %.0293, %bb.ak ] ; 2 uses
  %.2.ph.i = phi ptr [ %.01727.i, %bb.aj ], [ %.01926.i, %_ZleRK8rationalS1_.exit.i ], [ %.01926.i, %.noexc158 ], [ %.01926.i, %.noexc159 ], [ %.01727.i, %bb.ak ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01926.i, i64 8 ; 2 uses
  %.not.i157 = icmp eq ptr %i.ie, %i.ew
  br i1 %.not.i157, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %bb.aj, !llvm.loop !1369

_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit: ; preds = %select.unfold.i, %_ZleRK8rationalS1_.exit.i, %.noexc159, %.noexc158, %bb.ai
  %.2295 = phi i1 [ false, %bb.ai ], [ true, %.noexc159 ], [ true, %.noexc158 ], [ true, %_ZleRK8rationalS1_.exit.i ], [ %.1294, %select.unfold.i ]
  %.017.lcssa.i = phi ptr [ %i.ew, %bb.ai ], [ %.01727.i, %.noexc159 ], [ %.01727.i, %.noexc158 ], [ %.01727.i, %_ZleRK8rationalS1_.exit.i ], [ %.2.ph.i, %select.unfold.i ] ; 2 uses
  %.not25.i160 = icmp eq ptr %.070359, %i.ew
  br i1 %.not25.i160, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit
  %i.if = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  br label %bb.ap

bb.ap:                                            ; preds = %select.unfold.i165, %.lr.ph.i161
  %.0290 = phi i1 [ false, %.lr.ph.i161 ], [ %.1291, %select.unfold.i165 ] ; 2 uses
  %.01727.i162 = phi ptr [ %i.ew, %.lr.ph.i161 ], [ %.2.ph.i166, %select.unfold.i165 ] ; 5 uses
  %.01926.i163 = phi ptr [ %.070359, %.lr.ph.i161 ], [ %i.jp, %select.unfold.i165 ] ; 5 uses
  %i.ii = load ptr, ptr %.01926.i163, align 8, !tbaa !760 ; 6 uses
  %i.ij = icmp eq ptr %i.gs, %i.ii
  br i1 %i.ij, label %select.unfold.i165, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !769
  %.not21.i164 = icmp eq i32 %i.il, 1
  br i1 %.not21.i164, label %bb.ar, label %select.unfold.i165

bb.ar:                                            ; preds = %bb.aq
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 3 uses
  %i.in = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.io = load i8, ptr %i.ig, align 4
  %i.ip = and i8 %i.io, 1
  %i.iq = icmp eq i8 %i.ip, 0
  %i.ir = load i32, ptr %i.if, align 8
  %i.is = icmp eq i32 %i.ir, 1
  %i.it = select i1 %i.iq, i1 %i.is, i1 false
  br i1 %i.it, label %bb.as, label %.split.i169

bb.as:                                            ; preds = %bb.ar
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 44
  %i.iw = load i8, ptr %i.iv, align 4
  %i.ix = and i8 %i.iw, 1
  %i.iy = icmp eq i8 %i.ix, 0
  %i.iz = load i32, ptr %i.iu, align 8
  %i.ja = icmp eq i32 %i.iz, 1
  %i.jb = select i1 %i.iy, i1 %i.ja, i1 false
  br i1 %i.jb, label %bb.at, label %.split.i169

bb.at:                                            ; preds = %bb.as
  %i.jc = load i8, ptr %i.ih, align 4
  %i.jd = and i8 %i.jc, 1
  %i.je = icmp eq i8 %i.jd, 0
  br i1 %i.je, label %bb.au, label %.split32.i170

bb.au:                                            ; preds = %bb.at
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ii, i64 28
  %i.jg = load i8, ptr %i.jf, align 4
  %i.jh = and i8 %i.jg, 1
  %i.ji = icmp eq i8 %i.jh, 0
  br i1 %i.ji, label %_ZleRK8rationalS1_.exit.i171, label %.split32.i170

.split32.i170:                                    ; preds = %bb.au, %bb.at
  %i.jj = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %.split32.i170
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174, label %select.unfold.i165

.split.i169:                                      ; preds = %bb.as, %bb.ar
  %i.jl = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %.split.i169
  br i1 %i.jl, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174, label %select.unfold.i165

_ZleRK8rationalS1_.exit.i171:                     ; preds = %bb.au
  %i.jm = load i32, ptr %i.gt, align 8, !tbaa !698
  %i.jn = load i32, ptr %i.im, align 8, !tbaa !698
  %i.jo = icmp slt i32 %i.jm, %i.jn
  br i1 %i.jo, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174, label %select.unfold.i165

select.unfold.i165:                               ; preds = %_ZleRK8rationalS1_.exit.i171, %.noexc173, %.noexc172, %bb.aq, %bb.ap
  %.1291 = phi i1 [ %.0290, %bb.ap ], [ true, %_ZleRK8rationalS1_.exit.i171 ], [ true, %.noexc172 ], [ true, %.noexc173 ], [ %.0290, %bb.aq ] ; 2 uses
  %.2.ph.i166 = phi ptr [ %.01727.i162, %bb.ap ], [ %.01926.i163, %_ZleRK8rationalS1_.exit.i171 ], [ %.01926.i163, %.noexc172 ], [ %.01926.i163, %.noexc173 ], [ %.01727.i162, %bb.aq ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.01926.i163, i64 8 ; 2 uses
  %.not.i167 = icmp eq ptr %i.jp, %i.ew
  br i1 %.not.i167, label %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174, label %bb.ap, !llvm.loop !1369

_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174: ; preds = %select.unfold.i165, %_ZleRK8rationalS1_.exit.i171, %.noexc173, %.noexc172, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit
  %.2292 = phi i1 [ false, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit ], [ true, %.noexc173 ], [ true, %.noexc172 ], [ true, %_ZleRK8rationalS1_.exit.i171 ], [ %.1291, %select.unfold.i165 ]
  %.017.lcssa.i168 = phi ptr [ %i.ew, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit ], [ %.01727.i162, %.noexc173 ], [ %.01727.i162, %.noexc172 ], [ %.01727.i162, %_ZleRK8rationalS1_.exit.i171 ], [ %.2.ph.i166, %select.unfold.i165 ] ; 2 uses
  %.not29.i = icmp eq ptr %.073358, %i.ew
  br i1 %.not29.i, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.js = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph.i175
  %.0287 = phi i1 [ false, %.lr.ph.i175 ], [ %.1288, %bb.bb ] ; 2 uses
  %.01930.i = phi ptr [ %.073358, %.lr.ph.i175 ], [ %i.la, %bb.bb ] ; 5 uses
  %i.jt = load ptr, ptr %.01930.i, align 8, !tbaa !760 ; 6 uses
  %i.ju = icmp eq ptr %i.gs, %i.jt
  br i1 %i.ju, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !769
  %.not22.i = icmp eq i32 %i.jw, 0
  br i1 %.not22.i, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 3 uses
  %i.jy = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.jz = load i8, ptr %i.jr, align 4
  %i.ka = and i8 %i.jz, 1
  %i.kb = icmp eq i8 %i.ka, 0
  %i.kc = load i32, ptr %i.jq, align 8
  %i.kd = icmp eq i32 %i.kc, 1
  %i.ke = select i1 %i.kb, i1 %i.kd, i1 false
  br i1 %i.ke, label %bb.ay, label %.split.i177

bb.ay:                                            ; preds = %bb.ax
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 44
  %i.kh = load i8, ptr %i.kg, align 4
  %i.ki = and i8 %i.kh, 1
  %i.kj = icmp eq i8 %i.ki, 0
  %i.kk = load i32, ptr %i.kf, align 8
  %i.kl = icmp eq i32 %i.kk, 1
  %i.km = select i1 %i.kj, i1 %i.kl, i1 false
  br i1 %i.km, label %bb.az, label %.split.i177

bb.az:                                            ; preds = %bb.ay
  %i.kn = load i8, ptr %i.js, align 4
  %i.ko = and i8 %i.kn, 1
  %i.kp = icmp eq i8 %i.ko, 0
  br i1 %i.kp, label %bb.ba, label %.split27.i

bb.ba:                                            ; preds = %bb.az
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  %i.kr = load i8, ptr %i.kq, align 4
  %i.ks = and i8 %i.kr, 1
  %i.kt = icmp eq i8 %i.ks, 0
  br i1 %i.kt, label %_ZltRK8rationalS1_.exit.i, label %.split27.i

.split27.i:                                       ; preds = %bb.ba, %bb.az
  %i.ku = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.jx)
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %.split27.i
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %bb.bb

.split.i177:                                      ; preds = %bb.ay, %bb.ax
  %i.kw = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.jx)
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %.split.i177
  br i1 %i.kw, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %bb.bb

_ZltRK8rationalS1_.exit.i:                        ; preds = %bb.ba
  %i.kx = load i32, ptr %i.gt, align 8, !tbaa !698
  %i.ky = load i32, ptr %i.jx, align 8, !tbaa !698
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZltRK8rationalS1_.exit.i, %.noexc179, %.noexc178, %bb.aw, %bb.av
  %.1288 = phi i1 [ %.0287, %bb.av ], [ true, %_ZltRK8rationalS1_.exit.i ], [ true, %.noexc178 ], [ true, %.noexc179 ], [ %.0287, %bb.aw ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.01930.i, i64 8 ; 2 uses
  %.not.i176 = icmp eq ptr %i.la, %i.ew
  br i1 %.not.i176, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit, label %bb.av, !llvm.loop !1370

_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit: ; preds = %bb.bb, %_ZltRK8rationalS1_.exit.i, %.noexc179, %.noexc178, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174
  %.2289 = phi i1 [ false, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174 ], [ true, %.noexc179 ], [ true, %.noexc178 ], [ true, %_ZltRK8rationalS1_.exit.i ], [ %.1288, %bb.bb ]
  %.3.i = phi ptr [ %i.ew, %_ZN3smt10theory_lra3imp8next_infEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit174 ], [ %.01930.i, %.noexc179 ], [ %.01930.i, %.noexc178 ], [ %.01930.i, %_ZltRK8rationalS1_.exit.i ], [ %i.ew, %bb.bb ] ; 2 uses
  %.not29.i180 = icmp eq ptr %.069360, %i.ew
  br i1 %.not29.i180, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %.lr.ph.i181
  %.0284 = phi i8 [ 0, %.lr.ph.i181 ], [ %.1285, %bb.bi ] ; 2 uses
  %.01930.i182 = phi ptr [ %.069360, %.lr.ph.i181 ], [ %i.ml, %bb.bi ] ; 5 uses
  %i.le = load ptr, ptr %.01930.i182, align 8, !tbaa !760 ; 6 uses
  %i.lf = icmp eq ptr %i.gs, %i.le
  br i1 %i.lf, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !769
  %.not22.i183 = icmp eq i32 %i.lh, 1
  br i1 %.not22.i183, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 3 uses
  %i.lj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !700 ; 2 uses
  %i.lk = load i8, ptr %i.lc, align 4
  %i.ll = and i8 %i.lk, 1
  %i.lm = icmp eq i8 %i.ll, 0
  %i.ln = load i32, ptr %i.lb, align 8
  %i.lo = icmp eq i32 %i.ln, 1
  %i.lp = select i1 %i.lm, i1 %i.lo, i1 false
  br i1 %i.lp, label %bb.bf, label %.split.i186

bb.bf:                                            ; preds = %bb.be
  %i.lq = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %i.ls = load i8, ptr %i.lr, align 4
  %i.lt = and i8 %i.ls, 1
  %i.lu = icmp eq i8 %i.lt, 0
  %i.lv = load i32, ptr %i.lq, align 8
  %i.lw = icmp eq i32 %i.lv, 1
  %i.lx = select i1 %i.lu, i1 %i.lw, i1 false
  br i1 %i.lx, label %bb.bg, label %.split.i186

bb.bg:                                            ; preds = %bb.bf
  %i.ly = load i8, ptr %i.ld, align 4
  %i.lz = and i8 %i.ly, 1
  %i.ma = icmp eq i8 %i.lz, 0
  br i1 %i.ma, label %bb.bh, label %.split27.i187

bb.bh:                                            ; preds = %bb.bg
  %i.mb = getelementptr inbounds nuw i8, ptr %i.le, i64 28
  %i.mc = load i8, ptr %i.mb, align 4
  %i.md = and i8 %i.mc, 1
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %_ZltRK8rationalS1_.exit.i188, label %.split27.i187

.split27.i187:                                    ; preds = %bb.bh, %bb.bg
  %i.mf = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.li)
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc189:                                        ; preds = %.split27.i187
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit, label %bb.bi

.split.i186:                                      ; preds = %bb.bf, %bb.be
  %i.mh = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.li)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %.split.i186
  br i1 %i.mh, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit, label %bb.bi

_ZltRK8rationalS1_.exit.i188:                     ; preds = %bb.bh
  %i.mi = load i32, ptr %i.gt, align 8, !tbaa !698
  %i.mj = load i32, ptr %i.li, align 8, !tbaa !698
  %i.mk = icmp slt i32 %i.mi, %i.mj
  br i1 %i.mk, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit, label %bb.bi

bb.bi:                                            ; preds = %_ZltRK8rationalS1_.exit.i188, %.noexc190, %.noexc189, %bb.bd, %bb.bc
  %.1285 = phi i8 [ %.0284, %bb.bc ], [ 1, %_ZltRK8rationalS1_.exit.i188 ], [ 1, %.noexc189 ], [ 1, %.noexc190 ], [ %.0284, %bb.bd ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.01930.i182, i64 8 ; 2 uses
  %.not.i184 = icmp eq ptr %i.ml, %i.ew
  br i1 %.not.i184, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit, label %bb.bc, !llvm.loop !1370

_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit: ; preds = %.noexc189, %.noexc190, %_ZltRK8rationalS1_.exit.i188, %bb.bi
  %.2286.ph = phi i8 [ %.1285, %bb.bi ], [ 1, %_ZltRK8rationalS1_.exit.i188 ], [ 1, %.noexc189 ], [ 1, %.noexc190 ]
  %.3.i185.ph = phi ptr [ %i.ew, %bb.bi ], [ %.01930.i182, %_ZltRK8rationalS1_.exit.i188 ], [ %.01930.i182, %.noexc189 ], [ %.01930.i182, %.noexc190 ]
  %6 = freeze i8 %.2286.ph
  %7 = trunc i8 %6 to i1
  br label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191

_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191: ; preds = %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit
  %.2286 = phi i1 [ false, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit ], [ %7, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit ]
  %.3.i185 = phi ptr [ %i.ew, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit ], [ %.3.i185.ph, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.017.lcssa.i, %i.ew        ; 2 uses
  %spec.select = select i1 %.not, ptr %.076357, ptr %.017.lcssa.i
  %.not101 = icmp eq ptr %.3.i, %i.ew             ; 2 uses
  %.174 = select i1 %.not101, ptr %.073358, ptr %.3.i
  %.not102 = icmp eq ptr %.017.lcssa.i168, %i.ew  ; 2 uses
  %.171 = select i1 %.not102, ptr %.070359, ptr %.017.lcssa.i168
  %.not103 = icmp eq ptr %.3.i185, %i.ew          ; 2 uses
  %.1 = select i1 %.not103, ptr %.069360, ptr %.3.i185
  %.278 = select i1 %.2295, ptr %spec.select, ptr %i.ew ; 3 uses
  %.272 = select i1 %.2292, ptr %.171, ptr %i.ew  ; 3 uses
  %.275 = select i1 %.2289, ptr %.174, ptr %i.ew  ; 3 uses
  %spec.select515 = select i1 %.2286, ptr %.1, ptr %i.ew ; 3 uses
  %i.mm = add i32 %i.fs, %i.ft
  %i.mn = shl i32 %i.mm, 2
  %i.mo = mul i32 %i.fr, 3
  %i.mp = icmp ugt i32 %i.mn, %i.mo
  br i1 %i.mp, label %bb.bj, label %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge

_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge: ; preds = %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191
  %.pre398 = add i32 %i.fr, -1
  %.pre400 = zext i32 %i.fr to i64
  br label %bb.bo

bb.bj:                                            ; preds = %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191
  %i.mq = shl i32 %i.fr, 1                        ; 14 uses
  %i.mr = zext i32 %i.mq to i64                   ; 3 uses
  %i.ms = mul nuw nsw i64 %i.mr, 24
  %i.mt = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ms)
          to label %.noexc269 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc269:                                        ; preds = %bb.bj
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc269
  %xtraiter = and i32 %i.mq, 6                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.mt, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i.prol = phi i32 [ %i.mv, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.mq, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, i8 0, i64 16, i1 false)
  %i.mv = add i32 %.057.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1371

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.mt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.mw, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i32 [ %i.mq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.mx = icmp ult i32 %i.mq, 8
  br i1 %i.mx, label %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i.i = phi i32 [ %i.ng, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.my = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i8 0, i64 16, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i8 0, i64 16, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i8 0, i64 16, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, i8 0, i64 16, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, i8 0, i64 16, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i8 0, i64 16, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ne, i8 0, i64 16, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i8 0, i64 16, i1 false)
  %i.ng = add i32 %.057.i.i.i.i.i.i, -8           ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 192
  %.not.i.i.i.i.i.i.7 = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1372

_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.noexc269
  %i.ni = add i32 %i.mq, -1                       ; 2 uses
  %i.nj = zext i32 %i.fr to i64
  %.idx.i.i264 = mul nuw nsw i64 %i.nj, 24
  %i.nk = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i264
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.mt, i64 %i.mr
  %.not38.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not38.i.i, label %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE10move_tableEPS6_jSC_j.exit.i, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i, %.noexc271
  %.02839.i.i = phi ptr [ %i.oc, %.noexc271 ], [ %i.fq, %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i ] ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !1387 ; 2 uses
  %i.no = icmp ult ptr %i.nn, inttoptr (i64 2 to ptr)
  br i1 %i.no, label %.noexc271, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph41.i.i
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = trunc i64 %i.np to i32
  %i.nr = and i32 %i.ni, %i.nq                    ; 3 uses
  %i.ns = zext i32 %i.nr to i64
  %.idx43.i.i = mul nuw nsw i64 %i.ns, 24
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.idx43.i.i ; 2 uses
  %.not2933.i.i = icmp eq i32 %i.nr, %i.mq
  br i1 %.not2933.i.i, label %.preheader.i.i266, label %.lr.ph.i.i265

.preheader.i.i266:                                ; preds = %bb.bl, %bb.bk
  %.not3035.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not3035.i.i, label %._crit_edge.i.i, label %.lr.ph37.i.i

.lr.ph.i.i265:                                    ; preds = %bb.bk, %bb.bl
  %.034.i.i = phi ptr [ %i.nx, %bb.bl ], [ %i.nt, %bb.bk ] ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1387
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %.noexc271.sink.split, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i265
  %i.nx = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 24 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.nx, %i.nl
  br i1 %.not29.i.i, label %.preheader.i.i266, label %.lr.ph.i.i265, !llvm.loop !1373

.lr.ph37.i.i:                                     ; preds = %.preheader.i.i266, %bb.bm
  %.136.i.i = phi ptr [ %i.ob, %bb.bm ], [ %i.mt, %.preheader.i.i266 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1387
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %.noexc271.sink.split, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph37.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 24 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.ob, %i.nt
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph37.i.i, !llvm.loop !1374

._crit_edge.i.i:                                  ; preds = %bb.bm, %.preheader.i.i266
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.23, i32 noundef 213, ptr noundef nonnull @.str.18)
          to label %.noexc270 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc270:                                        ; preds = %._crit_edge.i.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc271.sink.split:                             ; preds = %.lr.ph.i.i265, %.lr.ph37.i.i
  %.136.i.i.lcssa.sink = phi ptr [ %.136.i.i, %.lr.ph37.i.i ], [ %.034.i.i, %.lr.ph.i.i265 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.136.i.i.lcssa.sink, ptr noundef nonnull align 8 dereferenceable(24) %.02839.i.i, i64 24, i1 false)
  br label %.noexc271

.noexc271:                                        ; preds = %.noexc271.sink.split, %.noexc270, %.lr.ph41.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 24 ; 2 uses
  %.not.i.i267 = icmp eq ptr %i.oc, %i.nk
  br i1 %.not.i.i267, label %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE10move_tableEPS6_jSC_j.exit.i, label %.lr.ph41.i.i, !llvm.loop !1375

_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE10move_tableEPS6_jSC_j.exit.i: ; preds = %.noexc271, %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE11alloc_tableEj.exit.i
  %i.od = icmp eq ptr %i.fq, null
  br i1 %i.od, label %.noexc261, label %bb.bn

bb.bn:                                            ; preds = %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE10move_tableEPS6_jSC_j.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc261:                                        ; preds = %_ZN14core_hashtableI19ptr_addr_hash_entryIN6lp_api5boundIN3sat7literalEEEE8ptr_hashIS5_E6ptr_eqIS5_EE10move_tableEPS6_jSC_j.exit.i, %bb.bn
  store ptr %i.mt, ptr %5, align 8, !tbaa !1063
  store i32 %i.mq, ptr %i.e, align 8, !tbaa !1382
  store i32 0, ptr %i.g, align 8, !tbaa !1384
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge, %.noexc261
  %.pre-phi401 = phi i64 [ %.pre400, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mr, %.noexc261 ]
  %.pre-phi399 = phi i32 [ %.pre398, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.ni, %.noexc261 ]
  %i.oe = phi ptr [ %i.fi, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mt, %.noexc261 ] ; 17 uses
  %i.of = phi i32 [ %i.fj, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mq, %.noexc261 ] ; 16 uses
  %i.og = phi ptr [ %i.fk, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mt, %.noexc261 ] ; 13 uses
  %i.oh = phi i32 [ %i.fl, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mq, %.noexc261 ] ; 13 uses
  %i.oi = phi ptr [ %i.fm, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mt, %.noexc261 ] ; 10 uses
  %i.oj = phi i32 [ %i.fn, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mq, %.noexc261 ] ; 10 uses
  %i.ok = phi ptr [ %i.fo, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mt, %.noexc261 ] ; 7 uses
  %i.ol = phi i32 [ %i.fp, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mq, %.noexc261 ] ; 7 uses
  %i.om = phi ptr [ %i.fq, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mt, %.noexc261 ] ; 4 uses
  %i.on = phi i32 [ %i.fr, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ %i.mq, %.noexc261 ] ; 2 uses
  %i.oo = phi i32 [ %i.fs, %_ZN3smt10theory_lra3imp8next_supEPN6lp_api5boundIN3sat7literalEEENS2_10bound_kindEPS7_S9_Rb.exit191._crit_edge ], [ 0, %.noexc261 ] ; 7 uses
  %i.op = ptrtoint ptr %i.gs to i64
  %i.oq = trunc i64 %i.op to i32                  ; 3 uses
  %i.or = and i32 %.pre-phi399, %i.oq             ; 3 uses
  %i.os = zext i32 %i.or to i64
  %.idx.i = mul nuw nsw i64 %i.os, 24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 %.idx.i ; 2 uses
  %i.ou = getelementptr inbounds nuw [24 x i8], ptr %i.om, i64 %.pre-phi401
  %.not65.i = icmp eq i32 %i.or, %i.on
  br i1 %.not65.i, label %.preheader.i, label %.lr.ph.i256

.preheader.i:                                     ; preds = %bb.bv, %bb.bo
  %.044.lcssa.i = phi ptr [ null, %bb.bo ], [ %.1.i, %bb.bv ]
  %.not4768.i = icmp eq i32 %i.or, 0
  br i1 %.not4768.i, label %._crit_edge.i, label %.lr.ph71.i

.lr.ph.i256:                                      ; preds = %bb.bo, %bb.bv
  %.04467.i = phi ptr [ %.1.i, %bb.bv ], [ null, %bb.bo ] ; 3 uses
  %.04566.i = phi ptr [ %i.pi, %bb.bv ], [ %i.ot, %bb.bo ] ; 5 uses
end_hunk_0

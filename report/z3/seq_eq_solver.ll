Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_eq_solver?download=true
inline.NumInlined: 1672
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3smt10theory_seq21find_branch_candidateERjPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyERK10ref_vectorI4expr11ast_managerESF_:bb.a
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !290, !nonnull !40, !align !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !251
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !251
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ab, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ef, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  tail call void @__clang_call_terminate(ptr %i.el) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.ab, %bb.aa, %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit
  store ptr %.0.i.i143, ptr %5, align 8, !tbaa !285
  %i.em = invoke noundef zeroext i1 @_ZN3smt10theory_seq15assume_equalityEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef nonnull %i.g, ptr noundef %.0.i.i143)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  br i1 %i.em, label %bb.ae, label %.loopexit228

bb.ae:                                            ; preds = %bb.ad
  %i.en = load i32, ptr %1, align 4, !tbaa !245
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %1, align 4, !tbaa !245
  br label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit142

bb.af:                                            ; preds = %bb.z, %.noexc145, %bb.x, %.loopexit229
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit228:                                     ; preds = %.noexc140, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i137, %bb.ad
  %i.eq = phi ptr [ %i.bq, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i137 ], [ %.0.i.i143, %bb.ad ], [ %i.bq, %.noexc140 ] ; 2 uses
  %i.er = load i32, ptr %1, align 4, !tbaa !245
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %1, align 4, !tbaa !245
  %i.et = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.critedge269, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit113, !llvm.loop !522

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit113
  %i.ev = zext i32 %i.bu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ew
  %.not260 = icmp eq i32 %i.bu, 0
  br i1 %.not260, label %.critedge269, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.ey = load i32, ptr %i.o, align 8, !tbaa !266
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  br i1 %i.fp, label %.critedge269, label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit142

bb.ag:                                            ; preds = %.lr.ph, %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %.092262 = phi ptr [ %i.bs, %.lr.ph ], [ %i.fq, %_ZNK8seq_util3str7is_unitEPK4expr.exit ] ; 2 uses
  %.093261 = phi i1 [ true, %.lr.ph ], [ %i.fp, %_ZNK8seq_util3str7is_unitEPK4expr.exit ]
  %i.ez = load ptr, ptr %.092262, align 8, !tbaa !248 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, 65535
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ah, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !270
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str7is_unitEPK4expr.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !277
  %i.fj = icmp eq i32 %i.fi, %i.ey
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = select i1 %i.fj, i1 %i.fm, i1 false
  %i.fo = and i1 %.093261, %i.fn
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fp = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ %i.fo, %bb.ai ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.092262, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fq, %i.ex
  br i1 %.not, label %._crit_edge, label %bb.ag

.critedge269:                                     ; preds = %.loopexit228, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %._crit_edge
  %i.fr = phi ptr [ %i.bq, %._crit_edge ], [ %i.bq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %i.r, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit ], [ %i.eq, %.loopexit228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !303
  %i.fs = invoke i32 @_ZN3smt10theory_seq11mk_eq_emptyEP4exprb(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %.critedge269
  %i.ft = xor i32 %i.fs, 1
  %i.fu = load ptr, ptr %6, align 8, !tbaa !303   ; 4 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !245 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !245
  %i.ga = icmp eq i32 %i.fx, %i.fz
  br i1 %i.ga, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc150 unwind label %bb.an

.noexc150:                                        ; preds = %bb.al
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !303 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !245
  br label %bb.am

bb.am:                                            ; preds = %.noexc150, %bb.ak
  %i.gb = phi i32 [ %.pre2.i, %.noexc150 ], [ %i.fx, %bb.ak ] ; 2 uses
  %i.gc = phi ptr [ %.pre.i, %.noexc150 ], [ %i.fu, %bb.ak ] ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4
  %i.ge = zext i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ge
  store i32 %i.ft, ptr %i.gf, align 4, !tbaa !245
  %i.gg = add i32 %i.gb, 1
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !245
  %i.gh = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152: ; preds = %bb.am, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182
  %i.gj = phi ptr [ %i.ke, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182 ], [ %i.fr, %bb.am ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182 ], [ 0, %bb.am ] ; 5 uses
  %i.gk = phi ptr [ %i.kf, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182 ], [ %i.gh, %bb.am ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !245 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %indvars.iv, %i.gn
  br i1 %i.go, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182
  %i.gp = phi ptr [ %i.ke, %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182 ], [ %i.gj, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152 ] ; 2 uses
  %.pre296 = load ptr, ptr %6, align 8, !tbaa !303 ; 2 uses
  %i.gq = icmp eq ptr %.pre296, null
  br i1 %i.gq, label %._crit_edge268, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %bb.am, %.critedge
  %i.gr = phi ptr [ %.pre296, %.critedge ], [ %i.gc, %bb.am ] ; 3 uses
  %i.gs = phi ptr [ %i.gp, %.critedge ], [ %i.fr, %bb.am ] ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !245 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gw
  %.not95265 = icmp eq i32 %i.gu, 0
  br i1 %.not95265, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !39, !nonnull !40, !align !41 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8944
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !317
  br label %bb.bh

bb.an:                                            ; preds = %bb.al, %.critedge269
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ao:                                            ; preds = %bb.as, %bb.ar
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ap:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !247 ; 3 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !245
  %i.hi = add i32 %i.hh, -1
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157: ; preds = %bb.ap, %bb.aq
  %.0.i.i154 = phi i32 [ %i.hi, %bb.aq ], [ -1, %bb.ap ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv to i32
  %i.hl = xor i32 %i.hk, -1
  %i.hm = add i32 %i.gm, %i.hl                    ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %invariant.umin.i158 = call i32 @llvm.umin.i32(i32 %.0.i.i154, i32 %i.hm) ; 3 uses
  %.not.i159 = icmp eq i32 %invariant.umin.i158, 0
  br i1 %.not.i159, label %._crit_edge.i164, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157
  %wide.trip.count.i161 = zext i32 %invariant.umin.i158 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph.i160
  %indvars.iv.i162 = phi i64 [ 0, %.lr.ph.i160 ], [ %indvars.iv.next.i178, %bb.at ] ; 4 uses
  %i.hp = load ptr, ptr %i.i, align 8, !tbaa !283, !nonnull !40, !align !41
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.i162 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !248
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i162 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !248
  %i.hu = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hp, ptr noundef %i.hr, ptr noundef %i.ht)
          to label %.noexc180 unwind label %bb.ao

.noexc180:                                        ; preds = %bb.ar
  br i1 %i.hu, label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182, label %bb.as

bb.as:                                            ; preds = %.noexc180
  %i.hv = load ptr, ptr %i.i, align 8, !tbaa !283, !nonnull !40, !align !41
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !248
  %i.hx = load ptr, ptr %i.hs, align 8, !tbaa !248
  %i.hy = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hv, ptr noundef %i.hw, ptr noundef %i.hx)
          to label %.noexc181 unwind label %bb.ao

.noexc181:                                        ; preds = %bb.as
  br i1 %i.hy, label %bb.at, label %._crit_edge.loopexit.split.loop.exit.i163

bb.at:                                            ; preds = %.noexc181
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i162, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i161
  br i1 %exitcond.not.i179, label %._crit_edge.i164, label %bb.ar, !llvm.loop !8

._crit_edge.loopexit.split.loop.exit.i163:        ; preds = %.noexc181
  %i.hz = trunc nuw i64 %indvars.iv.i162 to i32
  br label %._crit_edge.i164

._crit_edge.i164:                                 ; preds = %bb.at, %._crit_edge.loopexit.split.loop.exit.i163, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157
  %.0.lcssa.i165 = phi i32 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit157 ], [ %i.hz, %._crit_edge.loopexit.split.loop.exit.i163 ], [ %invariant.umin.i158, %bb.at ] ; 4 uses
  %i.ia = icmp eq i32 %.0.lcssa.i165, %i.hm       ; 3 uses
  %.030.i166 = select i1 %i.ia, i32 %.0.i.i154, i32 %i.hm ; 2 uses
  %.029.i167 = select i1 %i.ia, ptr %i.hj, ptr %i.ho
  %i.ib = icmp eq i32 %.0.i.i154, %.0.lcssa.i165
  %i.ic = or i1 %i.ia, %i.ib
  %i.id = icmp ult i32 %.0.lcssa.i165, %.030.i166
  %or.cond.i168 = and i1 %i.ic, %i.id
  br i1 %or.cond.i168, label %.preheader.i170, label %.loopexit

.preheader.i170:                                  ; preds = %._crit_edge.i164
  %i.ie = load i32, ptr %i.o, align 8, !tbaa !266
  %i.if = zext i32 %.0.lcssa.i165 to i64
  br label %bb.au

bb.au:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172, %.preheader.i170
  %indvars.iv40.i171 = phi i64 [ %i.if, %.preheader.i170 ], [ %indvars.iv.next41.i173, %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172 ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.029.i167, i64 %indvars.iv40.i171
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !248 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = and i32 %i.ij, 65535
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.av, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172

bb.av:                                            ; preds = %bb.au
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !270
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i176, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.i177

_ZNK8seq_util3str7is_unitEPK4expr.exit.i177:      ; preds = %bb.av
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !277
  %i.ir = icmp eq i32 %i.iq, %i.ie
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = select i1 %i.ir, i1 %i.iu, i1 false
  br i1 %i.iv, label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172

_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172: ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.i177, %bb.av, %bb.au
  %indvars.iv.next41.i173 = add nuw nsw i64 %indvars.iv40.i171, 1 ; 2 uses
  %lftr.wideiv.i174 = trunc i64 %indvars.iv.next41.i173 to i32
  %exitcond43.not.i175 = icmp eq i32 %.030.i166, %lftr.wideiv.i174
  br i1 %exitcond43.not.i175, label %.loopexit, label %bb.au, !llvm.loop !9

.loopexit:                                        ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread.i172, %._crit_edge.i164
  %i.iw = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !248, !noalias !527
  %i.iy = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ix)
          to label %.noexc187 unwind label %bb.bf ; 0 uses

.noexc187:                                        ; preds = %.loopexit
  %7 = trunc i64 %indvars.iv to i32               ; 2 uses
  %cond = icmp eq i32 %7, 0
  br i1 %cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc187
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !248, !noalias !527
  br label %_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort.exit.i183

bb.ax:                                            ; preds = %.noexc187
  %8 = add i32 %7, 1
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !286, !noalias !527, !nonnull !40, !align !41
  %i.jb = load i32, ptr %i.o, align 8, !tbaa !266, !noalias !527
  %i.jc = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ja, i32 noundef %i.jb, i32 noundef 2, i32 noundef %8, ptr noundef nonnull %i.iw)
          to label %_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort.exit.i183 unwind label %bb.bf

_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort.exit.i183: ; preds = %bb.ax, %bb.aw
  %.0.i.i184 = phi ptr [ %i.jc, %bb.ax ], [ %i.iz, %bb.aw ] ; 5 uses
  %.not.i.i.i185 = icmp eq ptr %.0.i.i184, null
  br i1 %.not.i.i.i185, label %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit191, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i186

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i186:     ; preds = %_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort.exit.i183
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i.i184, i64 8 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !251, !noalias !527
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !251, !noalias !527
  br label %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit191

_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit191:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i186, %_ZNK8seq_util3str9mk_concatEjPKP4exprP4sort.exit.i183
  %.not.i.i193 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i193, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit196, label %bb.ay

bb.ay:                                            ; preds = %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit191
  %i.jg = load ptr, ptr %i.k, align 8, !tbaa !290, !nonnull !40, !align !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !251
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !251
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.az, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit196

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jg, ptr noundef nonnull %i.gj)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit196 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit196:      ; preds = %bb.az, %bb.ay, %_ZN3smt10theory_seq9mk_concatEjPKP4expr.exit191
  store ptr %.0.i.i184, ptr %5, align 8, !tbaa !285
  %i.jn = invoke i32 @_ZN3smt6theory5mk_eqEP4exprS2_b(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull %i.g, ptr noundef %.0.i.i184, i1 noundef zeroext false)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit196
  %i.jo = xor i32 %i.jn, 1
  %i.jp = load ptr, ptr %6, align 8, !tbaa !303   ; 4 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !245 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !245
  %i.jv = icmp eq i32 %i.js, %i.ju
  br i1 %i.jv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc200 unwind label %bb.bg

.noexc200:                                        ; preds = %bb.bd
  %.pre.i197 = load ptr, ptr %6, align 8, !tbaa !303 ; 2 uses
  %.phi.trans.insert.i198 = getelementptr inbounds i8, ptr %.pre.i197, i64 -4
  %.pre2.i199 = load i32, ptr %.phi.trans.insert.i198, align 4, !tbaa !245
  br label %bb.be

bb.be:                                            ; preds = %.noexc200, %bb.bc
  %i.jw = phi i32 [ %.pre2.i199, %.noexc200 ], [ %i.js, %bb.bc ] ; 2 uses
  %i.jx = phi ptr [ %.pre.i197, %.noexc200 ], [ %i.jp, %bb.bc ] ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.jz = zext i32 %i.jw to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jz
  store i32 %i.jo, ptr %i.ka, align 4, !tbaa !245
  %i.kb = add i32 %i.jw, 1
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !245
  br label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182

bb.bf:                                            ; preds = %bb.ax, %.loopexit
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bg:                                            ; preds = %bb.bd, %_ZN7obj_refI4expr11ast_managerED2Ev.exit196
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit182: ; preds = %.noexc180, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i177, %bb.be
  %i.ke = phi ptr [ %i.gj, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i177 ], [ %.0.i.i184, %bb.be ], [ %i.gj, %.noexc180 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.kf = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit152, !llvm.loop !525

bb.bh:                                            ; preds = %.lr.ph267, %bb.bl
  %.083266 = phi ptr [ %i.gr, %.lr.ph267 ], [ %i.lk, %bb.bl ] ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %.083266, align 4, !tbaa !245 ; 3 uses
  %i.kh = zext i32 %.sroa.05.0.copyload to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !318
  switch i8 %i.kj, label %bb.bl [
    i8 0, label %bb.bj
    i8 -1, label %.sink.split
  ]

bb.bi:                                            ; preds = %.noexc202, %bb.bj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.kl = lshr i32 %.sroa.05.0.copyload, 1
  %i.km = getelementptr inbounds nuw i8, ptr %i.gz, i64 8936
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !247
  %i.ko = zext nneg i32 %i.kl to i64              ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !248
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gz, i64 7544 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !380 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !292
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8
  invoke void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef %i.kq)
          to label %.noexc202 unwind label %bb.bi, !inline_history !3

.noexc202:                                        ; preds = %bb.bj
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !380 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !292
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(16) %i.kw)
          to label %bb.bk unwind label %bb.bi, !inline_history !3

bb.bk:                                            ; preds = %.noexc202
  %i.la = load ptr, ptr %i.gy, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.lb = trunc i32 %.sroa.05.0.copyload to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8968
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !528
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %i.ko
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = and i64 %i.lg, -201326593
  %i.li = select i1 %i.lb, i64 201326592, i64 67108864
  %i.lj = or disjoint i64 %i.lh, %i.li
  store i64 %i.lj, ptr %i.lf, align 8
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bh
  %i.lk = getelementptr inbounds nuw i8, ptr %.083266, i64 4 ; 2 uses
  %.not95 = icmp eq ptr %i.lk, %i.gx
  br i1 %.not95, label %._crit_edge268, label %bb.bh

._crit_edge268:                                   ; preds = %bb.bl, %.critedge, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.ll = phi ptr [ %i.gp, %.critedge ], [ %i.gs, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ], [ %i.gs, %bb.bl ]
  invoke void @_ZN3smt10theory_seq12set_conflictEPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %._crit_edge268
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.sink.split:                                      ; preds = %bb.bh, %bb.bk
  %.5.ph = phi i1 [ true, %bb.bk ], [ false, %bb.bh ]
  store i32 0, ptr %1, align 4, !tbaa !245
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %._crit_edge268
  %i.ln = phi ptr [ %i.ll, %._crit_edge268 ], [ %i.gs, %.sink.split ]
  %.5 = phi i1 [ true, %._crit_edge268 ], [ %.5.ph, %.sink.split ]
  %i.lo = load ptr, ptr %6, align 8, !tbaa !303   ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i204, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lp)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #21
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit142

bb.bq:                                            ; preds = %bb.ao, %bb.bf, %bb.bg, %bb.bm, %bb.bi, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.an ], [ %i.lm, %bb.bm ], [ %i.kk, %bb.bi ], [ %i.kd, %bb.bg ], [ %i.kc, %bb.bf ], [ %i.hd, %bb.ao ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bu

_ZNK3smt10theory_seq12can_be_equalEjPKP4exprjS4_.exit142: ; preds = %bb.o, %bb.ae, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %._crit_edge, %bb.n
  %i.ls = phi ptr [ %i.r, %bb.n ], [ %i.bq, %._crit_edge ], [ %i.ln, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ %.0.i.i143, %bb.ae ], [ %i.bq, %bb.o ] ; 3 uses
  %.7 = phi i1 [ true, %bb.n ], [ false, %._crit_edge ], [ %.5, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ true, %bb.ae ], [ false, %bb.o ]
end_hunk_0

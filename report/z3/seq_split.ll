inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK9seq_split16split_membershipEP4exprS1_jR6vectorI10split_pairLb1EjE:bb.a
  invoke void @_ZN12seq_rewriter13mk_derivativeEP4exprS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %11, ptr noundef nonnull align 8 dereferenceable(1800) %i.fm, ptr noundef %.2322, ptr noundef %.0132406)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.fn = load ptr, ptr %11, align 8, !tbaa !39   ; 4 uses
  %.not.i.i191 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i191, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load ptr, ptr %i.co, align 8, !tbaa !62, !nonnull !29, !align !30
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !56
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !56
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.at, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fo, ptr noundef nonnull %i.fn)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit192:      ; preds = %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.av

bb.av:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, %bb.x
  %.3323 = phi ptr [ %.1321, %bb.x ], [ %.2322, %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 ]
  %.1133 = phi ptr [ %.0132406, %bb.x ], [ %i.fn, %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 ]
  %.2 = phi i32 [ %i.eh, %bb.x ], [ %.1102, %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 ]
  %i.fv = load ptr, ptr %9, align 8, !tbaa !127   ; 3 uses
  %.not.i.i.i.i193 = icmp eq ptr %i.fv, %i.ck
  %i.fw = icmp eq ptr %i.fv, null
  %or.cond.i.i.i.i194 = or i1 %.not.i.i.i.i193, %i.fw
  br i1 %or.cond.i.i.i.i194, label %_ZN7zstringD2Ev.exit195, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fv)
          to label %_ZN7zstringD2Ev.exit195 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #22
  unreachable

_ZN7zstringD2Ev.exit195:                          ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !282 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

bb.ay:                                            ; preds = %bb.aq
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ao, %bb.z
  %.pn161 = phi { ptr, i32 } [ %i.gb, %bb.ay ], [ %.pn158.pn, %bb.ao ], [ %i.ej, %bb.z ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.em

.critedge:                                        ; preds = %bb.q, %bb.t, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.r, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i, %bb.p
  %.pr.pre = phi ptr [ %i.cp, %bb.p ], [ %.pr.pre.pre.pre, %bb.t ], [ %i.cp, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.cp, %bb.r ], [ %i.cp, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i ], [ %i.cp, %bb.q ] ; 3 uses
  %.4324 = phi ptr [ %.0320405, %bb.p ], [ %i.dx, %bb.t ], [ %.0320405, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %.0320405, %bb.r ], [ %.0320405, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i ], [ %.0320405, %bb.q ] ; 2 uses
  %.not = icmp eq i32 %.0101407, 0
  %i.gc = icmp eq ptr %.pr.pre, null              ; 2 uses
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %.preheader361

.preheader361:                                    ; preds = %.critedge
  br i1 %i.gc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader: ; preds = %.preheader361
  %i.gd = zext i32 %.0101407 to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader, %bb.be
  %i.ge = phi ptr [ %.pr.pre, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader ], [ %i.gv, %bb.be ] ; 8 uses
  %indvars.iv513 = phi i64 [ %i.gd, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader ], [ %indvars.iv.next514, %bb.be ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread.preheader ], [ %indvars.iv.next, %bb.be ] ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !111 ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv513, %i.gh
  br i1 %i.gi, label %bb.ba, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

bb.ba:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv513
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !80 ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv ; 2 uses
  %i.gm = load ptr, ptr %6, align 8, !tbaa !286, !nonnull !29, !align !30
  %.not.i.i200 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i200, label %_ZN11ast_manager7inc_refEP3ast.exit.i201, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !56
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !56
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i201

_ZN11ast_manager7inc_refEP3ast.exit.i201:         ; preds = %bb.bb, %bb.ba
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !80 ; 3 uses
  %.not.i3.i202 = icmp eq ptr %i.gq, null
  br i1 %.not.i3.i202, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i201
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !56
  %i.gt = add i32 %i.gs, -1                       ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !56
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gm, ptr noundef nonnull %i.gq)
          to label %._crit_edge541 unwind label %bb.bg

._crit_edge541:                                   ; preds = %bb.bd
  %.pre542 = load ptr, ptr %i.i, align 8, !tbaa !282
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge541, %bb.bc, %_ZN11ast_manager7inc_refEP3ast.exit.i201
  %i.gv = phi ptr [ %.pre542, %._crit_edge541 ], [ %i.ge, %bb.bc ], [ %i.ge, %_ZN11ast_manager7inc_refEP3ast.exit.i201 ] ; 2 uses
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !80
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread, !llvm.loop !319

bb.bf:                                            ; preds = %bb.bi
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.bg:                                            ; preds = %bb.bd
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit197.thread
  %i.gz = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gh
  %i.hb = icmp ugt i32 %i.gg, %i.gz
  br i1 %i.hb, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread641

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.hj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.hc, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hd = load ptr, ptr %.06.i.i, align 8, !tbaa !80 ; 3 uses
  %i.he = load ptr, ptr %6, align 8, !tbaa !286, !nonnull !29, !align !30
  %.not.i.i.i.i.i206 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i206, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !56
  %i.hh = add i32 %i.hg, -1                       ; 2 uses
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !56
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bi, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.he, ptr noundef nonnull %i.hd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bf

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.hk = icmp ult ptr %i.hj, %i.ha
  br i1 %i.hk, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !287

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i207 = load ptr, ptr %i.i, align 8, !tbaa !282 ; 2 uses
  %.not.i.i208 = icmp eq ptr %.pre.i207, null
  br i1 %.not.i.i208, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread641

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread641: ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.hl = phi ptr [ %.pre.i207, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ge, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -4
  store i32 %i.gz, ptr %i.hm, align 4, !tbaa !111
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %.critedge
  br i1 %i.gc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread641, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %.pr647 = phi ptr [ %i.hl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit.thread641 ], [ %.pr.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ]
  %i.hn = getelementptr inbounds i8, ptr %.pr647, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !111 ; 5 uses
  switch i32 %i.ho, label %.lr.ph.lr.ph [
    i32 0, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit213
    i32 1, label %.outer._crit_edge.thread
  ]

_ZN7obj_refI4expr11ast_managerED2Ev.exit213:      ; preds = %_ZN7zstringD2Ev.exit195, %bb.be, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, %_ZNK6vectorIP4exprLb1EjE5emptyEv.exit.thread, %.preheader361, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.hp = load ptr, ptr %1, align 8, !tbaa !55, !nonnull !29, !align !30 ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.hr, align 8, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !31
  br label %bb.ef

.outer._crit_edge.thread:                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.ht = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !80
  br label %._crit_edge471

.lr.ph.lr.ph:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hw = zext i32 %i.ho to i64                   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.critedge4
  %.096.ph463 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %spec.select170, %.critedge4 ] ; 5 uses
  %.098.ph462 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %spec.select, %.critedge4 ] ; 3 uses
  %.4.ph461 = phi i32 [ 1, %.lr.ph.lr.ph ], [ %.095.lcssa, %.critedge4 ]
  %.5325.ph460 = phi ptr [ %.4324, %.lr.ph.lr.ph ], [ %.7327, %.critedge4 ]
  %i.hx = zext i32 %.4.ph461 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread
  %indvars.iv518 = phi i64 [ %i.hx, %.lr.ph ], [ %indvars.iv.next519, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread ] ; 6 uses
  %.5325433 = phi ptr [ %.5325.ph460, %.lr.ph ], [ %.10343, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread ] ; 4 uses
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.hz = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv518
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !80 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !134
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = and i32 %i.if, 65535
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bk, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread

bb.bk:                                            ; preds = %bb.bj
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i217 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i.i217, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.i218

_ZNK8seq_util3str7is_unitEPK4expr.exit.i218:      ; preds = %bb.bk
  %i.im = load i32, ptr %i.il, align 8, !tbaa !73
  %i.in = icmp eq i32 %i.im, %i.id
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = icmp eq i32 %i.ip, 0
  %i.ir = select i1 %i.in, i1 %i.iq, i1 false
  br i1 %i.ir, label %bb.bl, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread

bb.bl:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.i218
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.it = load i32, ptr %i.is, align 8, !tbaa !126
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %bb.bm, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread

bb.bm:                                            ; preds = %bb.bl
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ix = invoke noundef zeroext i1 @_ZNK8seq_util13is_const_charEP4exprRj(ptr noundef nonnull align 8 dereferenceable(144) %i.hy, ptr noundef %i.iw, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br i1 %i.ix, label %.preheader360, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread

.preheader360:                                    ; preds = %bb.bn
  %i.iy = trunc nuw i64 %indvars.iv518 to i32     ; 6 uses
  %i.iz = icmp ugt i32 %i.ho, %i.iy
  br i1 %i.iz, label %.lr.ph443.preheader, label %.critedge4

.lr.ph443.preheader:                              ; preds = %.preheader360
  %i.ja = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv518
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !80 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = and i32 %i.je, 65535
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph777, label %.critedge4.loopexit

_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread: ; preds = %bb.bk, %bb.bj, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i218, %bb.bl, %bb.bn
  %.10343 = phi ptr [ %i.iw, %bb.bn ], [ %.5325433, %bb.bl ], [ %.5325433, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i218 ], [ %.5325433, %bb.bj ], [ %.5325433, %bb.bk ] ; 2 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next519, %i.hw
  br i1 %i.jh, label %bb.bj, label %.outer._crit_edge, !llvm.loop !320

bb.bo:                                            ; preds = %bb.bm
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph443:                                        ; preds = %bb.bs
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next524
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !80 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = and i32 %i.jn, 65535
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph777, label %.critedge4.loopexit, !llvm.loop !321

.lr.ph777:                                        ; preds = %.lr.ph443.preheader, %.lr.ph443
  %i.jq = phi ptr [ %i.jl, %.lr.ph443 ], [ %i.jc, %.lr.ph443.preheader ] ; 3 uses
  %.6326441776 = phi ptr [ %i.kh, %.lr.ph443 ], [ %i.iw, %.lr.ph443.preheader ] ; 3 uses
  %indvars.iv523779 = phi i64 [ %indvars.iv.next524, %.lr.ph443 ], [ %indvars.iv518, %.lr.ph443.preheader ] ; 5 uses
  %i.jr = load ptr, ptr %i.hv, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i223 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i223, label %.critedge4.loopexit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.i224

_ZNK8seq_util3str7is_unitEPK4expr.exit.i224:      ; preds = %.lr.ph777
  %.in = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jw = load i32, ptr %.in, align 8, !tbaa !134
  %i.jx = load i32, ptr %i.jv, align 8, !tbaa !73
  %i.jy = icmp eq i32 %i.jx, %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = select i1 %i.jy, i1 %i.kb, i1 false
  br i1 %i.kc, label %bb.bp, label %.critedge4.loopexit

bb.bp:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.i224
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !126
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.bq, label %.critedge4.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ki = invoke noundef zeroext i1 @_ZNK8seq_util13is_const_charEP4exprRj(ptr noundef nonnull align 8 dereferenceable(144) %i.jr, ptr noundef %i.kh, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %i.ki, label %bb.bs, label %.critedge4.loopexit

bb.bs:                                            ; preds = %bb.br
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523779, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next524, %i.hw
  br i1 %exitcond.not, label %.critedge4.thread, label %.lr.ph443, !llvm.loop !321

.critedge4.thread:                                ; preds = %bb.bs
  %i.kj = sub i32 %i.ho, %i.iy                    ; 2 uses
  %i.kk = icmp ugt i32 %i.kj, %.096.ph463
  %spec.select650 = select i1 %i.kk, i32 %i.iy, i32 %.098.ph462
  %spec.select170651 = call i32 @llvm.umax.i32(i32 %i.kj, i32 %.096.ph463)
  br label %.outer._crit_edge

bb.bt:                                            ; preds = %bb.bq
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.critedge4.loopexit:                              ; preds = %bb.br, %bb.bp, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i224, %.lr.ph443, %.lr.ph777, %.lr.ph443.preheader
  %indvars.iv523.lcssa = phi i64 [ %indvars.iv518, %.lr.ph443.preheader ], [ %indvars.iv523779, %bb.br ], [ %indvars.iv523779, %bb.bp ], [ %indvars.iv523779, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i224 ], [ %indvars.iv.next524, %.lr.ph443 ], [ %indvars.iv523779, %.lr.ph777 ]
  %.7327.ph = phi ptr [ %i.iw, %.lr.ph443.preheader ], [ %i.kh, %bb.br ], [ %.6326441776, %bb.bp ], [ %.6326441776, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i224 ], [ %i.kh, %.lr.ph443 ], [ %.6326441776, %.lr.ph777 ]
  %17 = trunc nuw i64 %indvars.iv523.lcssa to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader360
  %.095.lcssa = phi i32 [ %i.iy, %.preheader360 ], [ %17, %.critedge4.loopexit ] ; 3 uses
  %.7327 = phi ptr [ %i.iw, %.preheader360 ], [ %.7327.ph, %.critedge4.loopexit ] ; 2 uses
  %i.km = sub i32 %.095.lcssa, %i.iy              ; 2 uses
  %i.kn = icmp ugt i32 %i.km, %.096.ph463
  %spec.select = select i1 %i.kn, i32 %i.iy, i32 %.098.ph462 ; 2 uses
  %spec.select170 = call i32 @llvm.umax.i32(i32 %i.km, i32 %.096.ph463) ; 2 uses
  %i.ko = icmp ult i32 %.095.lcssa, %i.ho
  br i1 %i.ko, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !320

.outer._crit_edge:                                ; preds = %.critedge4, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread, %.critedge4.thread
  %.098.ph.lcssa382 = phi i32 [ %spec.select650, %.critedge4.thread ], [ %.098.ph462, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread ], [ %spec.select, %.critedge4 ] ; 3 uses
  %.096.ph.lcssa380 = phi i32 [ %spec.select170651, %.critedge4.thread ], [ %.096.ph463, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread ], [ %spec.select170, %.critedge4 ] ; 3 uses
  %.5325.lcssa = phi ptr [ %i.kh, %.critedge4.thread ], [ %.10343, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit219.thread ], [ %.7327, %.critedge4 ] ; 2 uses
  %i.kp = icmp eq i32 %.096.ph.lcssa380, 0        ; 3 uses
  %i.kq = select i1 %i.kp, i32 1, i32 %.098.ph.lcssa382 ; 4 uses
  %i.kr = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !80 ; 2 uses
  %i.kt = icmp ugt i32 %i.kq, 1
  br i1 %i.kt, label %.lr.ph470, label %._crit_edge471

.lr.ph470:                                        ; preds = %.outer._crit_edge
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.trip.count = zext i32 %i.kq to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph470, %bb.bv
  %indvars.iv521 = phi i64 [ 1, %.lr.ph470 ], [ %indvars.iv.next522, %bb.bv ] ; 2 uses
  %.094468 = phi ptr [ %i.ks, %.lr.ph470 ], [ %i.le, %bb.bv ]
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.kx = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv521
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %.094468, ptr %i.b, align 16, !tbaa !80
  store ptr %i.kz, ptr %i.kv, align 8, !tbaa !80
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !322, !nonnull !29, !align !30
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !134
  %i.le = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.lb, i32 noundef %i.ld, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count
  br i1 %exitcond524.not, label %._crit_edge471, label %bb.bu, !llvm.loop !323

bb.bw:                                            ; preds = %bb.bu
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

._crit_edge471:                                   ; preds = %bb.bv, %.outer._crit_edge.thread, %.outer._crit_edge
  %i.lg = phi i32 [ %i.kq, %.outer._crit_edge ], [ 1, %.outer._crit_edge.thread ], [ %i.kq, %bb.bv ]
  %i.lh = phi i1 [ %i.kp, %.outer._crit_edge ], [ true, %.outer._crit_edge.thread ], [ %i.kp, %bb.bv ]
  %.5325.lcssa660 = phi ptr [ %.5325.lcssa, %.outer._crit_edge ], [ %.4324, %.outer._crit_edge.thread ], [ %.5325.lcssa, %bb.bv ]
  %.096.ph.lcssa380659 = phi i32 [ %.096.ph.lcssa380, %.outer._crit_edge ], [ 0, %.outer._crit_edge.thread ], [ %.096.ph.lcssa380, %bb.bv ] ; 2 uses
  %.098.ph.lcssa382658 = phi i32 [ %.098.ph.lcssa382, %.outer._crit_edge ], [ 0, %.outer._crit_edge.thread ], [ %.098.ph.lcssa382, %bb.bv ]
  %.094.lcssa = phi ptr [ %i.ks, %.outer._crit_edge ], [ %i.hu, %.outer._crit_edge.thread ], [ %i.le, %bb.bv ] ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.lk = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %.094.lcssa)
          to label %bb.bx unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %._crit_edge471
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !322, !nonnull !29, !align !30 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !134
  %i.lp = invoke noundef ptr @_ZN11ast_manager12mk_func_declEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.lm, i32 noundef %i.lo, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.lk)
          to label %.noexc229 unwind label %.loopexit.split-lp

.noexc229:                                        ; preds = %bb.bx
  %i.lq = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.lm, ptr noundef %i.lp, i32 noundef 0, ptr noundef null)
          to label %_ZNK8seq_util3str8mk_emptyEP4sort.exit unwind label %.loopexit.split-lp ; 2 uses

_ZNK8seq_util3str8mk_emptyEP4sort.exit:           ; preds = %.noexc229
  %i.lr = load ptr, ptr %i.i, align 8, !tbaa !282 ; 4 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232: ; preds = %_ZNK8seq_util3str8mk_emptyEP4sort.exit
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !111
  %i.lv = add i32 %i.lg, %.096.ph.lcssa380659     ; 2 uses
  %i.lw = icmp ugt i32 %i.lu, %i.lv
  br i1 %i.lw, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232
  %i.lx = zext i32 %i.lv to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !80
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236
  %indvars.iv525 = phi i64 [ %i.lx, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph ], [ %indvars.iv.next526, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236 ]
  %i.mb = phi ptr [ %i.lr, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph ], [ %i.mo, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236 ] ; 2 uses
  %.092474 = phi ptr [ %i.lz, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234.lr.ph ], [ %i.mn, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236 ] ; 2 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 3 uses
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !111
  %i.me = zext i32 %i.md to i64
  %i.mf = icmp samesign ult i64 %indvars.iv.next526, %i.me
  br i1 %i.mf, label %bb.by, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread

bb.by:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234
  %i.mg = load ptr, ptr %i.li, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next526
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %.092474, ptr %i.a, align 16, !tbaa !80
  store ptr %i.mi, ptr %i.ma, align 8, !tbaa !80
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !322, !nonnull !29, !align !30
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !134
  %i.mn = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.mk, i32 noundef %i.mm, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236 unwind label %.loopexit ; 2 uses

_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236:    ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.mo = load ptr, ptr %i.i, align 8, !tbaa !282 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234

.loopexit:                                        ; preds = %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.loopexit.split-lp:                               ; preds = %._crit_edge471, %bb.bx, %.noexc229
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236, %_ZNK8seq_util3str8mk_emptyEP4sort.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232
  %.193 = phi ptr [ %i.lq, %_ZNK8seq_util3str8mk_emptyEP4sort.exit ], [ %i.lq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232 ], [ %.092474, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit234 ], [ %i.mn, %_ZNK8seq_util3str9mk_concatEP4exprS2_.exit236 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.mq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.mq, ptr %12, align 8, !tbaa !127
  %i.mr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  store i32 0, ptr %i.mr, align 8, !tbaa !130
  %i.ms = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  store i32 16, ptr %i.ms, align 4, !tbaa !131
  br i1 %i.lh, label %._crit_edge481.thread, label %.lr.ph480

._crit_edge481.thread:                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  br label %bb.cz

.lr.ph480:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit232.thread
  %i.mt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.trip.count531 = zext i32 %.096.ph.lcssa380659 to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph480, %_ZN7zstringD2Ev.exit248
  %indvars.iv528 = phi i64 [ 0, %.lr.ph480 ], [ %indvars.iv.next529, %_ZN7zstringD2Ev.exit248 ] ; 2 uses
  %.8328478 = phi ptr [ %.5325.lcssa660, %.lr.ph480 ], [ %.12351, %_ZN7zstringD2Ev.exit248 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.mw = load ptr, ptr %i.li, align 8, !tbaa !47, !nonnull !29, !align !30 ; 2 uses
  %i.mx = trunc nuw i64 %indvars.iv528 to i32
  %i.my = add i32 %.098.ph.lcssa382658, %i.mx
  %i.mz = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.na = zext i32 %i.my to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !80 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !134
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = and i32 %i.ng, 65535
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i238 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i238, label %bb.cc, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.i239

_ZNK8seq_util3str7is_unitEPK4expr.exit.i239:      ; preds = %bb.ca
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !73
  %i.no = icmp eq i32 %i.nn, %i.ne
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = icmp eq i32 %i.nq, 0
  %i.ns = select i1 %i.no, i1 %i.nr, i1 false
  br i1 %i.ns, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.i239
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !126
  %i.nv = icmp eq i32 %i.nu, 1
  br i1 %i.nv, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit240, label %bb.cc
end_hunk_0

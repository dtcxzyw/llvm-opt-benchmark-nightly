Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb2bv_rewriter?download=true
inline.NumInlined: 3208
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN14pb2bv_rewriter3imp16card2bv_rewriter8mk_le_geIL5lbool1EEE7obj_refI4expr11ast_managerERK8rational:bb.a
          cleanup
  br label %bb.db

.loopexit.split-lp:                               ; preds = %bb.au, %_ZN8rationalD2Ev.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i131
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bb:                                            ; preds = %bb.av
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.bc ], [ %i.fh, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.db

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 5 uses
  %i.fj = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %indvars.iv ; 6 uses
  %i.fl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !138 ; 2 uses
  %i.fm = load i8, ptr %i.f, align 4
  %i.fn = and i8 %i.fm, 1
  %i.fo = icmp eq i8 %i.fn, 0
  %i.fp = load i32, ptr %i.e, align 8
  %i.fq = icmp eq i32 %i.fp, 1
  %i.fr = select i1 %i.fo, i1 %i.fq, i1 false
  br i1 %i.fr, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fu = load i8, ptr %i.ft, align 4
  %i.fv = and i8 %i.fu, 1
  %i.fw = icmp eq i8 %i.fv, 0
  %i.fx = load i32, ptr %i.fs, align 8
  %i.fy = icmp eq i32 %i.fx, 1
  %i.fz = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %i.fz, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ga = load i8, ptr %i.a, align 4
  %i.gb = and i8 %i.ga, 1
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.ge = load i8, ptr %i.gd, align 4
  %i.gf = and i8 %i.ge, 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %.split, label %bb.bh

.split:                                           ; preds = %bb.bg
  %i.gh = load i32, ptr %3, align 8, !tbaa !135
  %i.gi = load i32, ptr %i.fk, align 8, !tbaa !135
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.bj, label %bb.bo

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gk = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %.noexc91 unwind label %bb.bn

.noexc91:                                         ; preds = %bb.bh
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.bj, label %bb.bo

bb.bi:                                            ; preds = %bb.be, %.lr.ph
  %i.gm = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %_ZgtRK8rationalS1_.exit unwind label %bb.bn

_ZgtRK8rationalS1_.exit:                          ; preds = %bb.bi
  br i1 %i.gm, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %.split, %.noexc91, %_ZgtRK8rationalS1_.exit
  %i.gn = load ptr, ptr %i.dv, align 8, !tbaa !216, !nonnull !114, !align !115
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !126
  %i.gq = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gn, i32 noundef 0, i32 noundef 8, ptr noundef %i.gp)
          to label %_ZN11ast_manager6mk_notEP4expr.exit94 unwind label %bb.bn ; 4 uses

_ZN11ast_manager6mk_notEP4expr.exit94:            ; preds = %bb.bj
  %.not.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit94
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !124
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !124
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.bk, %_ZN11ast_manager6mk_notEP4expr.exit94
  %i.gu = load ptr, ptr %i.eb, align 8, !tbaa !33 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !118 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gu, i64 -8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !118
  %i.ha = icmp eq i32 %i.gx, %i.gz
  br i1 %i.ha, label %bb.bm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bm:                                            ; preds = %bb.bl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %.noexc95 unwind label %bb.bn

.noexc95:                                         ; preds = %bb.bm
  %.pre.i.i = load ptr, ptr %i.eb, align 8, !tbaa !33
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.bn:                                            ; preds = %bb.bt, %bb.bm, %bb.bj, %bb.bi, %bb.bh, %bb.bp, %bb.bo
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bo:                                            ; preds = %.split, %.noexc91, %_ZgtRK8rationalS1_.exit
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !126
  %i.he = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %indvars.iv
  %i.hg = invoke noundef ptr @_ZNK7bv_util10mk_numeralERK8rationalj(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i32 noundef %i.ec)
          to label %bb.bp unwind label %bb.bn

bb.bp:                                            ; preds = %bb.bo
  %i.hh = invoke noundef ptr @_ZN14pb2bv_rewriter3imp16card2bv_rewriter6mk_iteEP4exprS3_S3_(ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef %i.hd, ptr noundef %i.hg, ptr noundef %i.eq)
          to label %bb.bq unwind label %bb.bn     ; 4 uses

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i.i.i96 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i96, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i97, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !124
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !124
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i97

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i97: ; preds = %bb.br, %bb.bq
  %i.hl = load ptr, ptr %i.ea, align 8, !tbaa !33 ; 4 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i97
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !118 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !118
  %i.hr = icmp eq i32 %i.ho, %i.hq
  br i1 %i.hr, label %bb.bt, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bt:                                            ; preds = %bb.bs, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i97
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %.noexc101 unwind label %bb.bn

.noexc101:                                        ; preds = %bb.bt
  %.pre.i.i98 = load ptr, ptr %i.ea, align 8, !tbaa !33
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %.noexc95, %.noexc101
  %.pre.i.i98.sink = phi ptr [ %.pre.i.i98, %.noexc101 ], [ %.pre.i.i, %.noexc95 ] ; 2 uses
  %.sink.ph = phi ptr [ %i.hh, %.noexc101 ], [ %i.gq, %.noexc95 ]
  %.phi.trans.insert.i.i99 = getelementptr inbounds i8, ptr %.pre.i.i98.sink, i64 -4
  %.pre2.i.i100 = load i32, ptr %.phi.trans.insert.i.i99, align 4, !tbaa !118
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.bs, %bb.bl
  %.sink270 = phi ptr [ %i.gu, %bb.bl ], [ %i.hl, %bb.bs ], [ %.pre.i.i98.sink, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink269 = phi i32 [ %i.gx, %bb.bl ], [ %i.ho, %bb.bs ], [ %.pre2.i.i100, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.gq, %bb.bl ], [ %i.hh, %bb.bs ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %i.hs = getelementptr inbounds i8, ptr %.sink270, i64 -4
  %i.ht = zext i32 %.sink269 to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sink270, i64 %i.ht
  store ptr %.sink, ptr %i.hu, align 8, !tbaa !126
  %i.hv = add i32 %.sink269, 1
  store i32 %i.hv, ptr %i.hs, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader182, label %.lr.ph, !llvm.loop !315

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.hw = phi ptr [ %i.ko, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ], [ %i.fb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.lr.ph ] ; 3 uses
  %.pr.pre201289 = phi ptr [ %.pr.pre199, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ], [ %i.fb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.lr.ph ]
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !118 ; 2 uses
  %i.hz = icmp ugt i32 %i.hy, 1
  br i1 %i.hz, label %.lr.ph286, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit116
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195288, 2 ; 2 uses
  %13 = or disjoint i64 %indvars.iv.next196, 1
  %i.ia = getelementptr inbounds i8, ptr %i.ja, i64 -4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !118 ; 2 uses
  %14 = zext i32 %i.ib to i64
  %i.ic = icmp samesign ult i64 %13, %14
  br i1 %i.ic, label %.lr.ph286, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108, !llvm.loop !316

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader
  %.pr.pre200.lcssa = phi ptr [ %.pr.pre201289, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader ], [ %i.ja, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106 ] ; 3 uses
  %.lcssa276 = phi ptr [ %i.hw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader ], [ %i.ja, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106 ] ; 3 uses
  %.lcssa = phi i32 [ %i.hy, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader ], [ %i.ib, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106 ] ; 3 uses
  %i.id = and i32 %.lcssa, 1
  %.not = icmp eq i32 %i.id, 0
  br i1 %.not, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i, label %bb.ce

.lr.ph286:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106
  %indvars.iv195288 = phi i64 [ %indvars.iv.next196, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106 ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader ] ; 4 uses
  %i.ie = phi ptr [ %i.ja, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106 ], [ %i.hw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv195288
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !126
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv195288
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ih = load ptr, ptr %16, align 8, !tbaa !126
  %i.ii = load ptr, ptr %8, align 8, !tbaa !131
  invoke void @_ZN14pb2bv_rewriter3imp16card2bv_rewriter8mk_le_geIL5lbool1EEE7obj_refI4expr11ast_managerER10ref_vectorIS5_S6_EPS5_SB_SB_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.ig, ptr noundef %i.ih, ptr noundef %i.ii)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %.lr.ph286
  %17 = lshr exact i64 %indvars.iv195288, 1
  %i.ij = load ptr, ptr %i.ea, align 8, !tbaa !33
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %17 ; 2 uses
  %i.il = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !126 ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.im, null
  br i1 %.not.i.i113, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !124
  %i.ip = add i32 %i.io, -1                       ; 2 uses
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !124
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.il, ptr noundef nonnull %i.im)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bw
  %i.ir = load ptr, ptr %12, align 8, !tbaa !131
  store ptr null, ptr %12, align 8, !tbaa !131
  store ptr %i.ir, ptr %i.ik, align 8, !tbaa !126
  %i.is = load ptr, ptr %12, align 8, !tbaa !131  ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.is, null
  br i1 %.not.i.i115, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit116, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.it = load ptr, ptr %i.fd, align 8, !tbaa !132, !nonnull !114, !align !115
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !124
  %i.iw = add i32 %i.iv, -1                       ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !124
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bz, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit116

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.it, ptr noundef nonnull %i.is)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit116 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit116:      ; preds = %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ja = load ptr, ptr %i.ea, align 8, !tbaa !33 ; 5 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106, !llvm.loop !316

bb.cb:                                            ; preds = %.lr.ph286
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bw
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.pn54.pn = phi { ptr, i32 } [ %i.jc, %bb.cb ], [ %i.jd, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.db

bb.ce:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108
  %i.je = add nsw i32 %.lcssa, -1
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.lcssa276, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !126 ; 3 uses
  %i.ji = lshr i32 %.lcssa, 1
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.lcssa276, i64 %i.jj ; 2 uses
  %i.jl = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %.not.i.i122 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i122, label %_ZN11ast_manager7inc_refEP3ast.exit.i123, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !124
  %i.jo = add i32 %i.jn, 1
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !124
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i123

_ZN11ast_manager7inc_refEP3ast.exit.i123:         ; preds = %bb.cf, %bb.ce
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !126 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.jp, null
  br i1 %.not.i3.i, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i123
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !124
  %i.js = add i32 %i.jr, -1                       ; 2 uses
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !124
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jl, ptr noundef nonnull %i.jp)
          to label %._crit_edge198 unwind label %bb.ci

._crit_edge198:                                   ; preds = %bb.ch
  %.pr.pre.pre = load ptr, ptr %i.ea, align 8, !tbaa !33
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cj:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i123, %bb.cg, %._crit_edge198
  %.pr.pre = phi ptr [ %.pr.pre.pre, %._crit_edge198 ], [ %.pr.pre200.lcssa, %bb.cg ], [ %.pr.pre200.lcssa, %_ZN11ast_manager7inc_refEP3ast.exit.i123 ] ; 3 uses
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !126
  %i.jv = icmp eq ptr %.pr.pre, null
  br i1 %i.jv, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108, %bb.cj
  %i.jw = phi ptr [ %.pr.pre, %bb.cj ], [ %.lcssa276, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108 ] ; 4 uses
  %.pr.pre203248 = phi ptr [ %.pr.pre, %bb.cj ], [ %.pr.pre200.lcssa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit108 ]
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !118 ; 3 uses
  %i.jz = add i32 %i.jy, 1                        ; 2 uses
  %i.ka = lshr i32 %i.jz, 1                       ; 3 uses
  %i.kb = zext i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.kb
  %i.kd = icmp ugt i32 %i.jy, %i.ka
  br i1 %i.kd, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ke = zext nneg i32 %i.ka to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ke
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.km, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.kf, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.kg = load ptr, ptr %.06.i.i, align 8, !tbaa !126 ; 3 uses
  %i.kh = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %.not.i.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !124
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !124
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, ptr noundef nonnull %i.kg)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.cl, %bb.ck, %.lr.ph.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.kn = icmp ult ptr %i.km, %i.kc
  br i1 %i.kn, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i128 = load ptr, ptr %i.ea, align 8, !tbaa !33 ; 3 uses
  %.not.i.i129 = icmp eq ptr %.pre.i128, null
  br i1 %.not.i.i129, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %.pr.pre199 = phi ptr [ %.pre.i128, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.pr.pre203248, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ]
  %i.ko = phi ptr [ %.pre.i128, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.jw, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -4
  store i32 %i.ka, ptr %i.kp, align 4, !tbaa !118
  %i.kq = icmp ugt i32 %i.jz, 3
  br i1 %i.kq, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit106.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.cj, %_ZN7obj_refI4expr11ast_managerED2Ev.exit116, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.lr.ph, %.preheader182
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.kr = load ptr, ptr %10, align 8, !tbaa !127, !noalias !320, !nonnull !114, !align !115
  %i.ks = load ptr, ptr %i.eb, align 8, !tbaa !33, !noalias !320 ; 3 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i131, label %bb.cm

bb.cm:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !118, !noalias !320
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i131

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i131: ; preds = %bb.cm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread
  %.0.i.i.i132 = phi i32 [ %i.kv, %bb.cm ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit104.thread ]
  %i.kw = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kr, i32 noundef %.0.i.i.i132, ptr noundef %i.ks)
          to label %.noexc135 unwind label %.loopexit.split-lp ; 3 uses

.noexc135:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i131
  %i.kx = load ptr, ptr %10, align 8, !tbaa !127, !noalias !320, !nonnull !114, !align !115
  store ptr %i.kw, ptr %0, align 8, !tbaa !131, !alias.scope !320
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !29, !alias.scope !320
  %.not.i.i.i133 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i133, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i134

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i134:     ; preds = %.noexc135
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !124, !noalias !320
end_hunk_0
begin_hunk_1_@_ZN14pb2bv_rewriter3imp16card2bv_rewriter8mk_le_geIL5lbool0EEE7obj_refI4expr11ast_managerERK8rational:bb.a
          cleanup
  br label %bb.dc

.loopexit.split-lp:                               ; preds = %bb.ao, %_ZN8rationalD2Ev.exit, %bb.ci, %bb.cj, %bb.cm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i140
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.av:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.aw ], [ %i.ex, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dc

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 5 uses
  %i.ez = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %indvars.iv ; 6 uses
  %i.fb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !138 ; 2 uses
  %i.fc = load i8, ptr %i.f, align 4
  %i.fd = and i8 %i.fc, 1
  %i.fe = icmp eq i8 %i.fd, 0
  %i.ff = load i32, ptr %i.e, align 8
  %i.fg = icmp eq i32 %i.ff, 1
  %i.fh = select i1 %i.fe, i1 %i.fg, i1 false
  br i1 %i.fh, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %.lr.ph
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fk = load i8, ptr %i.fj, align 4
  %i.fl = and i8 %i.fk, 1
  %i.fm = icmp eq i8 %i.fl, 0
  %i.fn = load i32, ptr %i.fi, align 8
  %i.fo = icmp eq i32 %i.fn, 1
  %i.fp = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %i.fp, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fq = load i8, ptr %i.a, align 4
  %i.fr = and i8 %i.fq, 1
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fu = load i8, ptr %i.ft, align 4
  %i.fv = and i8 %i.fu, 1
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %.split, label %bb.bb

.split:                                           ; preds = %bb.ba
  %i.fx = load i32, ptr %3, align 8, !tbaa !135
  %i.fy = load i32, ptr %i.fa, align 8, !tbaa !135
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.bd, label %bb.bi

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ga = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %.noexc83 unwind label %bb.bh

.noexc83:                                         ; preds = %bb.bb
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.bd, label %bb.bi

bb.bc:                                            ; preds = %bb.ay, %.lr.ph
  %i.gc = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_ZgtRK8rationalS1_.exit unwind label %bb.bh

_ZgtRK8rationalS1_.exit:                          ; preds = %bb.bc
  br i1 %i.gc, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %.split, %.noexc83, %_ZgtRK8rationalS1_.exit
  %i.gd = load ptr, ptr %i.dl, align 8, !tbaa !216, !nonnull !114, !align !115
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !126
  %i.gg = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gd, i32 noundef 0, i32 noundef 8, ptr noundef %i.gf)
          to label %_ZN11ast_manager6mk_notEP4expr.exit86 unwind label %bb.bh ; 4 uses

_ZN11ast_manager6mk_notEP4expr.exit86:            ; preds = %bb.bd
  %.not.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit86
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !124
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !124
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.be, %_ZN11ast_manager6mk_notEP4expr.exit86
  %i.gk = load ptr, ptr %i.dr, align 8, !tbaa !33 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !118 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 -8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !118
  %i.gq = icmp eq i32 %i.gn, %i.gp
  br i1 %i.gq, label %bb.bg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bg:                                            ; preds = %bb.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %.noexc87 unwind label %bb.bh

.noexc87:                                         ; preds = %bb.bg
  %.pre.i.i = load ptr, ptr %i.dr, align 8, !tbaa !33
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.bh:                                            ; preds = %bb.bn, %bb.bg, %bb.bd, %bb.bc, %bb.bb, %bb.bj, %bb.bi
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.bi:                                            ; preds = %.split, %.noexc83, %_ZgtRK8rationalS1_.exit
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !126
  %i.gu = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %indvars.iv
  %i.gw = invoke noundef ptr @_ZNK7bv_util10mk_numeralERK8rationalj(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i32 noundef %i.ds)
          to label %bb.bj unwind label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.gx = invoke noundef ptr @_ZN14pb2bv_rewriter3imp16card2bv_rewriter6mk_iteEP4exprS3_S3_(ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef %i.gt, ptr noundef %i.gw, ptr noundef %i.eg)
          to label %bb.bk unwind label %bb.bh     ; 4 uses

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i.i88 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !124
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !124
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89: ; preds = %bb.bl, %bb.bk
  %i.hb = load ptr, ptr %i.dq, align 8, !tbaa !33 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !118 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 -8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !118
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.bn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bn:                                            ; preds = %bb.bm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %.noexc93 unwind label %bb.bh

.noexc93:                                         ; preds = %bb.bn
  %.pre.i.i90 = load ptr, ptr %i.dq, align 8, !tbaa !33
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %.noexc87, %.noexc93
  %.pre.i.i90.sink = phi ptr [ %.pre.i.i90, %.noexc93 ], [ %.pre.i.i, %.noexc87 ] ; 2 uses
  %.sink.ph = phi ptr [ %i.gx, %.noexc93 ], [ %i.gg, %.noexc87 ]
  %.phi.trans.insert.i.i91 = getelementptr inbounds i8, ptr %.pre.i.i90.sink, i64 -4
  %.pre2.i.i92 = load i32, ptr %.phi.trans.insert.i.i91, align 4, !tbaa !118
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.bm, %bb.bf
  %.sink315 = phi ptr [ %i.gk, %bb.bf ], [ %i.hb, %bb.bm ], [ %.pre.i.i90.sink, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink314 = phi i32 [ %i.gn, %bb.bf ], [ %i.he, %bb.bm ], [ %.pre2.i.i92, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.gg, %bb.bf ], [ %i.gx, %bb.bm ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %i.hi = getelementptr inbounds i8, ptr %.sink315, i64 -4
  %i.hj = zext i32 %.sink314 to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sink315, i64 %i.hj
  store ptr %.sink, ptr %i.hk, align 8, !tbaa !126
  %i.hl = add i32 %.sink314, 1
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader192, label %.lr.ph, !llvm.loop !323

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.hm = phi ptr [ %i.kd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ], [ %i.er, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph ] ; 3 uses
  %.pr.pre224359 = phi ptr [ %.pr.pre222, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ], [ %i.er, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph ]
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !118 ; 2 uses
  %i.hp = icmp ugt i32 %i.ho, 1
  br i1 %i.hp, label %.lr.ph356, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit108
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218358, 2 ; 2 uses
  %13 = or disjoint i64 %indvars.iv.next219, 1
  %i.hq = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !118 ; 2 uses
  %14 = zext i32 %i.hr to i64
  %i.hs = icmp samesign ult i64 %13, %14
  br i1 %i.hs, label %.lr.ph356, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100, !llvm.loop !324

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader
  %.pr.pre223.lcssa = phi ptr [ %.pr.pre224359, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader ], [ %i.ip, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98 ] ; 3 uses
  %.lcssa330 = phi ptr [ %i.hm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader ], [ %i.ip, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98 ] ; 3 uses
  %.lcssa = phi i32 [ %i.ho, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader ], [ %i.hr, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98 ] ; 3 uses
  %i.ht = and i32 %.lcssa, 1
  %.not = icmp eq i32 %i.ht, 0
  br i1 %.not, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i, label %bb.by

.lr.ph356:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98
  %indvars.iv218358 = phi i64 [ %indvars.iv.next219, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98 ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader ] ; 4 uses
  %i.hu = phi ptr [ %i.ip, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98 ], [ %i.hm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv218358
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !126
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv218358
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hx = load ptr, ptr %16, align 8, !tbaa !126
  invoke void @_ZN14pb2bv_rewriter3imp16card2bv_rewriter8mk_le_geIL5lbool0EEE7obj_refI4expr11ast_managerER10ref_vectorIS5_S6_EPS5_SB_SB_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.hw, ptr noundef %i.hx, ptr noundef %i.en)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %.lr.ph356
  %17 = lshr exact i64 %indvars.iv218358, 1
  %i.hy = load ptr, ptr %i.dq, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %17 ; 2 uses
  %i.ia = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !126 ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i105, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !124
  %i.ie = add i32 %i.id, -1                       ; 2 uses
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !124
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ia, ptr noundef nonnull %i.ib)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bq
  %i.ig = load ptr, ptr %12, align 8, !tbaa !131
  store ptr null, ptr %12, align 8, !tbaa !131
  store ptr %i.ig, ptr %i.hz, align 8, !tbaa !126
  %i.ih = load ptr, ptr %12, align 8, !tbaa !131  ; 3 uses
  %.not.i.i107 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i107, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit108, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ii = load ptr, ptr %i.et, align 8, !tbaa !132, !nonnull !114, !align !115
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !124
  %i.il = add i32 %i.ik, -1                       ; 2 uses
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !124
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.bt, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit108

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ii, ptr noundef nonnull %i.ih)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit108 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit108:      ; preds = %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ip = load ptr, ptr %i.dq, align 8, !tbaa !33 ; 5 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98, !llvm.loop !324

bb.bv:                                            ; preds = %.lr.ph356
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bq
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.pn48.pn = phi { ptr, i32 } [ %i.ir, %bb.bv ], [ %i.is, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dc

bb.by:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100
  %i.it = add nsw i32 %.lcssa, -1
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.lcssa330, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !126 ; 3 uses
  %i.ix = lshr i32 %.lcssa, 1
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.lcssa330, i64 %i.iy ; 2 uses
  %i.ja = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %.not.i.i114 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i114, label %_ZN11ast_manager7inc_refEP3ast.exit.i115, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !124
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !124
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i115

_ZN11ast_manager7inc_refEP3ast.exit.i115:         ; preds = %bb.bz, %bb.by
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !126 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.je, null
  br i1 %.not.i3.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i115
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !124
  %i.jh = add i32 %i.jg, -1                       ; 2 uses
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !124
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ja, ptr noundef nonnull %i.je)
          to label %._crit_edge221 unwind label %bb.cc

._crit_edge221:                                   ; preds = %bb.cb
  %.pr.pre.pre = load ptr, ptr %i.dq, align 8, !tbaa !33
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cd:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i115, %bb.ca, %._crit_edge221
  %.pr.pre = phi ptr [ %.pr.pre.pre, %._crit_edge221 ], [ %.pr.pre223.lcssa, %bb.ca ], [ %.pr.pre223.lcssa, %_ZN11ast_manager7inc_refEP3ast.exit.i115 ] ; 3 uses
  store ptr %i.iw, ptr %i.iz, align 8, !tbaa !126
  %i.jk = icmp eq ptr %.pr.pre, null
  br i1 %i.jk, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100, %bb.cd
  %i.jl = phi ptr [ %.pr.pre, %bb.cd ], [ %.lcssa330, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100 ] ; 4 uses
  %.pr.pre226277 = phi ptr [ %.pr.pre, %bb.cd ], [ %.pr.pre223.lcssa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit100 ]
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !118 ; 3 uses
  %i.jo = add i32 %i.jn, 1                        ; 2 uses
  %i.jp = lshr i32 %i.jo, 1                       ; 4 uses
  %i.jq = zext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jq
  %i.js = icmp ugt i32 %i.jn, %i.jp
  br i1 %i.js, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.jt = zext nneg i32 %i.jp to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jt
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.kb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ju, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.jv = load ptr, ptr %.06.i.i, align 8, !tbaa !126 ; 3 uses
  %i.jw = load ptr, ptr %9, align 8, !tbaa !127, !nonnull !114, !align !115
  %.not.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !124
  %i.jz = add i32 %i.jy, -1                       ; 2 uses
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !124
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jw, ptr noundef nonnull %i.jv)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.cf, %bb.ce, %.lr.ph.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.kc = icmp ult ptr %i.kb, %i.jr
  br i1 %i.kc, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i120 = load ptr, ptr %i.dq, align 8, !tbaa !33 ; 3 uses
  %.not.i.i121 = icmp eq ptr %.pre.i120, null
  br i1 %.not.i.i121, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %.pr.pre222 = phi ptr [ %.pre.i120, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.pr.pre226277, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ]
  %i.kd = phi ptr [ %.pre.i120, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.jl, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -4
  store i32 %i.jp, ptr %i.ke, align 4, !tbaa !118
  %i.kf = icmp ugt i32 %i.jo, 3
  br i1 %i.kf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit98.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph
  %.lcssa347 = phi ptr [ %i.er, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph ], [ %i.kd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ]
  %.lcssa339 = phi i32 [ %i.ev, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit96.lr.ph ], [ %i.jp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit ]
  %i.kg = icmp eq i32 %.lcssa339, 0
  br i1 %i.kg, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %bb.cj

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.cd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN7obj_refI4expr11ast_managerED2Ev.exit108, %.preheader192, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.kh = load ptr, ptr %i.dl, align 8, !tbaa !216, !nonnull !114, !align !115
  %i.ki = load i32, ptr %3, align 8, !tbaa !135
  %i.kj = icmp eq i32 %i.ki, 0
  %.in.v.i = select i1 %i.kj, i64 832, i64 840
  %.in.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.in.v.i
  %i.kk = load ptr, ptr %.in.i, align 8, !tbaa !206 ; 4 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i.i123, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i124, label %bb.cg

bb.cg:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !124
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !124
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i124

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i124: ; preds = %bb.cg, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.ko = load ptr, ptr %i.dr, align 8, !tbaa !33 ; 4 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.ci, label %bb.ch

end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_rewriter?download=true
inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12seq_rewriter24rewrite_contains_patternEP4exprS1_R7obj_refIS0_11ast_managerE:bb.a
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !147
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !139 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %.critedge, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.k
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !148
  %i.ca = icmp eq i32 %i.bz, %i.az
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = select i1 %i.ca, i1 %i.cd, i1 false
  br i1 %i.ce, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %_ZNK8seq_util3str9is_stringEPK4expr.exit

_ZNK8seq_util3str9is_stringEPK4expr.exit:         ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.cf = load i32, ptr %i.by, align 8, !tbaa !148
  %i.cg = icmp eq i32 %i.cf, %i.az
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, 42
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %.critedge

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit, %_ZNK8seq_util3str9is_stringEPK4expr.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !86
  %i.co = icmp eq ptr %i.ay, null
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cp = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !88 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !88
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc95 unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !88
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.l, %.noexc95
  %i.cu = phi ptr [ %.pre.i.i, %.noexc95 ], [ %i.ay, %bb.l ] ; 3 uses
  %i.cv = phi i32 [ %.pre2.i.i, %.noexc95 ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  store ptr %i.bo, ptr %i.cy, align 8, !tbaa !27
  %i.cz = add i32 %i.cv, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !88
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 65535
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK8seq_util3str9is_stringEPK4expr.exit, %bb.i, %_ZNK8seq_util3str9is_concatEPK4expr.exit.i91, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %.lr.ph, %bb.j, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.de = load ptr, ptr %4, align 8, !tbaa !316   ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %._crit_edge, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit: ; preds = %.critedge
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !88 ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %.not305 = icmp eq i32 %i.dh, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph307

bb.n:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.045306, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.dk
  br i1 %.not, label %._crit_edge, label %.lr.ph307

.lr.ph307:                                        ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit, %bb.n
  %.045306 = phi ptr [ %i.dl, %bb.n ], [ %i.de, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit ] ; 2 uses
  %i.dm = invoke noundef zeroext i1 @_ZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef nonnull align 8 dereferenceable(16) %.045306, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.o unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.lr.ph307, %bb.h, %bb.d
  %lpad.loopexit.split-lp445 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp280

bb.o:                                             ; preds = %.lr.ph307
  br i1 %i.dm, label %bb.n, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

._crit_edge:                                      ; preds = %bb.n, %.critedge, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dn = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.do = ptrtoint ptr %i.dn to i64
  store i64 %i.do, ptr %5, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !76
  %i.dq = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ds = invoke noundef ptr @_ZN8seq_util3rex11mk_full_seqEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, ptr noundef %i.dq)
          to label %bb.q unwind label %bb.w       ; 14 uses

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32 ; 11 uses
  %.not.i.i96 = icmp eq ptr %i.ds, null           ; 5 uses
  br i1 %.not.i.i96, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !86
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !86
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %bb.q, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.eb = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.dy, i32 noundef %i.ea, i32 noundef 16, ptr noundef %i.y, ptr noundef nonnull %2)
          to label %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit unwind label %_ZN7obj_refI4expr11ast_managerED2Ev.exit195.thread ; 3 uses

_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit:         ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %.not.i.i.i.i98 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i98, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i99, label %bb.r

bb.r:                                             ; preds = %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !86
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !86
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i99

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i99: ; preds = %bb.r, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i99
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !88 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !88
  %i.el = icmp eq i32 %i.ei, %i.ek
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i99
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc103 unwind label %_ZN7obj_refI4expr11ast_managerED2Ev.exit195.thread

.noexc103:                                        ; preds = %bb.t
  %.pre.i.i100 = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i.i101 = getelementptr inbounds i8, ptr %.pre.i.i100, i64 -4
  %.pre2.i.i102 = load i32, ptr %.phi.trans.insert.i.i101, align 4, !tbaa !88
  br label %bb.u

bb.u:                                             ; preds = %.noexc103, %bb.s
  %i.em = phi i32 [ %.pre2.i.i102, %.noexc103 ], [ %i.ei, %bb.s ] ; 2 uses
  %i.en = phi ptr [ %.pre.i.i100, %.noexc103 ], [ %i.ef, %bb.s ] ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ep
  store ptr %i.eb, ptr %i.eq, align 8, !tbaa !27
  %i.er = add i32 %i.em, 1
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !88
  br i1 %.not.i.i96, label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i107

_ZN11ast_manager7inc_refEP3ast.exit.i.i107:       ; preds = %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !86
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !86
  br label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit:     ; preds = %bb.u, %_ZN11ast_manager7inc_refEP3ast.exit.i.i107
  %i.ev = load ptr, ptr %4, align 8, !tbaa !316   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.critedge269, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph: ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  br label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168
  %indvars.iv349 = phi i64 [ 0, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next350, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ] ; 3 uses
  %i.ey = phi ptr [ %i.ev, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %i.jq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ] ; 2 uses
  %.sroa.0218.0324 = phi ptr [ null, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %.sroa.0218.1.lcssa, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ] ; 10 uses
  %.sroa.0230.0323 = phi ptr [ %i.ds, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.lr.ph ], [ %i.gn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ] ; 4 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !88
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv349, %i.fb
  br i1 %i.fc, label %bb.x, label %.critedge269

.critedge269:                                     ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %.sroa.0230.0.lcssa = phi ptr [ %i.ds, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit ], [ %i.gn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ], [ %.sroa.0230.0323, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit ] ; 4 uses
  %.sroa.0218.0.lcssa = phi ptr [ null, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit ], [ %.sroa.0218.1.lcssa, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168 ], [ %.sroa.0218.0324, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit ] ; 4 uses
  %i.fd = load ptr, ptr %5, align 8, !tbaa !90, !noalias !724, !nonnull !31, !align !32
  %i.fe = load ptr, ptr %i.dp, align 8, !tbaa !76, !noalias !724 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %.critedge269
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !88, !noalias !724
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.v, %.critedge269
  %.0.i.i.i = phi i32 [ %i.fh, %bb.v ], [ 0, %.critedge269 ]
  %i.fi = invoke noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fd, i32 noundef %.0.i.i.i, ptr noundef %i.fe)
          to label %.noexc110 unwind label %bb.bj ; 3 uses

.noexc110:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i, label %_Z5mk_orRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc110
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !86, !noalias !724
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !86, !noalias !724
  br label %_Z5mk_orRK10ref_vectorI4expr11ast_managerE.exit

bb.w:                                             ; preds = %._crit_edge, %bb.p
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit201

bb.x:                                             ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %indvars.iv349
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !76 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %._crit_edge312, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.x
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !88 ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fu
  %.not68308 = icmp eq i32 %i.fs, 0
  br i1 %.not68308, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %.043310 = phi ptr [ %i.gk, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ %i.fp, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %.sroa.0230.1309 = phi ptr [ %i.gc, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ %.sroa.0230.0323, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 5 uses
  %i.fw = load ptr, ptr %.043310, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fw, ptr %i.b, align 8, !tbaa !27
  %i.fx = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.fy = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.fz = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fx, i32 noundef %i.fy, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %i.b)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.lr.ph311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ga = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gb = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.gc = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ga, i32 noundef %i.gb, i32 noundef 28, ptr noundef %.sroa.0230.1309, ptr noundef %i.fz)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit:        ; preds = %bb.y
  %.not.i115 = icmp eq ptr %i.gc, null
  br i1 %.not.i115, label %bb.z, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !86
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %.not.i4.i = icmp eq ptr %.sroa.0230.1309, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0230.1309, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !86
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !86
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ab, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0230.1309)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.aa, %bb.z, %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %.043310, i64 8 ; 2 uses
  %.not68 = icmp eq ptr %i.gk, %i.fv
  br i1 %.not68, label %._crit_edge312, label %.lr.ph311

._crit_edge312:                                   ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.x, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %.sroa.0230.1.lcssa = phi ptr [ %.sroa.0230.0323, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %.sroa.0230.0323, %bb.x ], [ %i.gc, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ] ; 6 uses
  %i.gl = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.gm = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.gn = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gl, i32 noundef %i.gm, i32 noundef 28, ptr noundef %.sroa.0230.1.lcssa, ptr noundef %i.ds)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 12 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit119:     ; preds = %._crit_edge312
  %.not.i120 = icmp eq ptr %i.gn, null
  br i1 %.not.i120, label %bb.ac, label %_ZN11ast_manager7inc_refEP3ast.exit.i121

_ZN11ast_manager7inc_refEP3ast.exit.i121:         ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit119
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !86
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !86
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i121, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit119
  %.not.i4.i122 = icmp eq ptr %.sroa.0230.1.lcssa, null
  br i1 %.not.i4.i122, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0230.1.lcssa, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !86
  %i.gt = add i32 %i.gs, -1                       ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !86
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ae, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0230.1.lcssa)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125:   ; preds = %bb.ad, %bb.ac, %bb.ae
  %.not.i126 = icmp eq ptr %.sroa.0218.0324, %i.ds
  br i1 %.not.i126, label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133, label %bb.af

bb.af:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125
  %.not.i.i127 = icmp eq ptr %.sroa.0218.0324, null
  br i1 %.not.i.i127, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0218.0324, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !86
  %i.gx = add i32 %i.gw, -1                       ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !86
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.ah, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0218.0324)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128: ; preds = %bb.ah, %bb.ag, %bb.af
  br i1 %.not.i.i96, label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i130

_ZN11ast_manager7inc_refEP3ast.exit.i.i130:       ; preds = %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128
  %i.gz = load i32, ptr %i.ex, align 4, !tbaa !86
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.ex, align 4, !tbaa !86
  br label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i130, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125
  %.sroa.0218.5 = phi ptr [ %.sroa.0218.0324, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit125 ], [ null, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i128 ], [ %i.ds, %_ZN11ast_manager7inc_refEP3ast.exit.i.i130 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %i.hb = load ptr, ptr %4, align 8, !tbaa !316   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %.critedge270, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135: ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156 ], [ %indvars.iv.next350, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133 ] ; 3 uses
  %i.hd = phi ptr [ %i.iq, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156 ], [ %i.hb, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133 ] ; 2 uses
  %.sroa.0218.1319 = phi ptr [ %i.ii, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156 ], [ %.sroa.0218.5, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133 ] ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !88
  %i.hg = zext i32 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv346, %i.hg
  br i1 %i.hh, label %bb.ai, label %.critedge270

bb.ai:                                            ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv346
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !76 ; 4 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %._crit_edge317, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138: ; preds = %bb.ai
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !88 ; 2 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = shl nuw nsw i64 %i.ho, 3
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hp
  %.not69313 = icmp eq i32 %i.hn, 0
  br i1 %.not69313, label %._crit_edge317, label %.lr.ph316

.lr.ph316:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148
  %.0315 = phi ptr [ %i.if, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148 ], [ %i.hk, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138 ] ; 2 uses
  %.sroa.0218.2314 = phi ptr [ %i.hx, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148 ], [ %.sroa.0218.1319, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138 ] ; 5 uses
  %i.hr = load ptr, ptr %.0315, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.hr, ptr %i.a, align 8, !tbaa !27
  %i.hs = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.ht = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.hu = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hs, i32 noundef %i.ht, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %i.a)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %.lr.ph316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hv = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.hw = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.hx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hv, i32 noundef %i.hw, i32 noundef 28, ptr noundef %.sroa.0218.2314, ptr noundef %i.hu)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit142 unwind label %.loopexit ; 4 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit142:     ; preds = %bb.aj
  %.not.i143 = icmp eq ptr %i.hx, null
  br i1 %.not.i143, label %bb.ak, label %_ZN11ast_manager7inc_refEP3ast.exit.i144

_ZN11ast_manager7inc_refEP3ast.exit.i144:         ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit142
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !86
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !86
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i144, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit142
  %.not.i4.i145 = icmp eq ptr %.sroa.0218.2314, null
  br i1 %.not.i4.i145, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0218.2314, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !86
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !86
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.am, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0218.2314)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148 unwind label %.loopexit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148:   ; preds = %bb.al, %bb.ak, %bb.am
  %i.if = getelementptr inbounds nuw i8, ptr %.0315, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.if, %i.hq
  br i1 %.not69, label %._crit_edge317, label %.lr.ph316

.loopexit:                                        ; preds = %.lr.ph316, %bb.aj, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap, %._crit_edge317
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph311, %bb.y, %bb.ab
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.as, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158, %.critedge270, %bb.ah, %bb.ae, %._crit_edge312
  %.sroa.0230.2.ph.ph.ph.ph = phi ptr [ %.sroa.0230.1.lcssa, %._crit_edge312 ], [ %i.gn, %bb.as ], [ %i.gn, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160 ], [ %i.gn, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158 ], [ %i.gn, %.critedge270 ], [ %i.gn, %bb.ah ], [ %.sroa.0230.1.lcssa, %bb.ae ]
  %.sroa.0218.3.ph.ph.ph.ph = phi ptr [ %.sroa.0218.0324, %._crit_edge312 ], [ %.sroa.0218.1.lcssa, %bb.as ], [ %.sroa.0218.1.lcssa, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160 ], [ %.sroa.0218.1.lcssa, %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158 ], [ %.sroa.0218.1.lcssa, %.critedge270 ], [ %.sroa.0218.0324, %bb.ah ], [ %.sroa.0218.0324, %bb.ae ]
  %lpad.loopexit276 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerED2Ev.exit195.thread: ; preds = %bb.t, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit198

._crit_edge317:                                   ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148, %bb.ai, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138
  %.sroa.0218.2.lcssa = phi ptr [ %.sroa.0218.1319, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit138 ], [ %.sroa.0218.1319, %bb.ai ], [ %i.hx, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit148 ] ; 5 uses
  %i.ig = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.ih = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.ii = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ig, i32 noundef %i.ih, i32 noundef 28, ptr noundef %.sroa.0218.2.lcssa, ptr noundef %i.ds)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit150 unwind label %.loopexit.split-lp.loopexit ; 4 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit150:     ; preds = %._crit_edge317
  %.not.i151 = icmp eq ptr %i.ii, null
  br i1 %.not.i151, label %bb.an, label %_ZN11ast_manager7inc_refEP3ast.exit.i152

_ZN11ast_manager7inc_refEP3ast.exit.i152:         ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit150
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !86
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !86
  br label %bb.an

bb.an:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i152, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit150
  %.not.i4.i153 = icmp eq ptr %.sroa.0218.2.lcssa, null
  br i1 %.not.i4.i153, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0218.2.lcssa, i64 8 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !86
  %i.io = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.io, ptr %i.im, align 4, !tbaa !86
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.ap, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0218.2.lcssa)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156 unwind label %.loopexit.split-lp.loopexit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156:   ; preds = %bb.ao, %bb.an, %bb.ap
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1
  %i.iq = load ptr, ptr %4, align 8, !tbaa !316   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.critedge270, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135, !llvm.loop !723

.critedge270:                                     ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133
  %.sroa.0218.1.lcssa = phi ptr [ %.sroa.0218.5, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit133 ], [ %i.ii, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit156 ], [ %.sroa.0218.1319, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit135 ] ; 7 uses
  %i.is = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.it = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.iu = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.iv = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.it, i32 noundef %i.iu, i32 noundef 16, ptr noundef %i.w, ptr noundef %i.gn)
          to label %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158:      ; preds = %.critedge270
  %i.iw = load ptr, ptr %i.dx, align 8, !tbaa !165, !nonnull !31, !align !32
  %i.ix = load i32, ptr %i.dz, align 8, !tbaa !74
  %i.iy = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.iw, i32 noundef %i.ix, i32 noundef 16, ptr noundef %i.y, ptr noundef %.sroa.0218.1.lcssa)
          to label %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160:      ; preds = %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit158
  %i.iz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.is, i32 noundef 0, i32 noundef 5, ptr noundef %i.iv, ptr noundef %i.iy)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %_ZN8seq_util3rex8mk_in_reEP4exprS2_.exit160
  %.not.i.i.i.i162 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i162, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163, label %bb.aq

bb.aq:                                            ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !86
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !86
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163: ; preds = %bb.aq, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.jd = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !88 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !88
  %i.jj = icmp eq i32 %i.jg, %i.ji
  br i1 %i.jj, label %bb.as, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168

bb.as:                                            ; preds = %bb.ar, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc167:                                        ; preds = %bb.as
  %.pre.i.i164 = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i.i165 = getelementptr inbounds i8, ptr %.pre.i.i164, i64 -4
  %.pre2.i.i166 = load i32, ptr %.phi.trans.insert.i.i165, align 4, !tbaa !88
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit168: ; preds = %bb.ar, %.noexc167
  %i.jk = phi i32 [ %.pre2.i.i166, %.noexc167 ], [ %i.jg, %bb.ar ] ; 2 uses
  %i.jl = phi ptr [ %.pre.i.i164, %.noexc167 ], [ %i.jd, %bb.ar ] ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -4
  %i.jn = zext i32 %i.jk to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jn
  store ptr %i.iz, ptr %i.jo, align 8, !tbaa !27
  %i.jp = add i32 %i.jk, 1
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !88
  %i.jq = load ptr, ptr %4, align 8, !tbaa !316   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %.critedge269, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit

_Z5mk_orRK10ref_vectorI4expr11ast_managerE.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc110
  %i.js = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.js, null
  br i1 %.not.i.i170, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_Z5mk_orRK10ref_vectorI4expr11ast_managerE.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !86
  %i.jx = add i32 %i.jw, -1                       ; 2 uses
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !86
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.au, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ju, ptr noundef nonnull %i.js)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.au, %bb.at, %_Z5mk_orRK10ref_vectorI4expr11ast_managerE.exit
  store ptr %i.fi, ptr %3, align 8, !tbaa !33
  %.not.i.i174 = icmp eq ptr %.sroa.0218.0.lcssa, null
  br i1 %.not.i.i174, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit176, label %bb.aw

bb.aw:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.lcssa, i64 8 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !86
  %i.kd = add i32 %i.kc, -1                       ; 2 uses
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !86
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.ax, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit176

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0218.0.lcssa)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit176 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit176:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.aw, %bb.ax
  %.not.i.i177 = icmp eq ptr %.sroa.0230.0.lcssa, null
  br i1 %.not.i.i177, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit179, label %bb.az

bb.az:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit176
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0230.0.lcssa, i64 8 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !86
  %i.kj = add i32 %i.ki, -1                       ; 2 uses
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !86
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.ba, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit179

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0230.0.lcssa)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit179 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit179:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit176, %bb.az, %bb.ba
  br i1 %.not.i.i96, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit182, label %bb.bc

bb.bc:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit179
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !86
  %i.kp = add i32 %i.ko, -1                       ; 2 uses
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !86
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.bd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit182

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %i.ds)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit182 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit182:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit179, %bb.bc, %bb.bd
  %i.kt = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 5 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit182
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 -4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !88 ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ky
  %.not.i184 = icmp eq i32 %i.kw, 0
  br i1 %.not.i184, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i192, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188
  %.06.i.i186 = phi ptr [ %i.lg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188 ], [ %i.kt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183 ] ; 2 uses
  %i.la = load ptr, ptr %.06.i.i186, align 8, !tbaa !27 ; 3 uses
  %i.lb = load ptr, ptr %5, align 8, !tbaa !90, !nonnull !31, !align !32
  %.not.i.i.i.i.i187 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i187, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i185
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !86
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !86
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.bg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lb, ptr noundef nonnull %i.la)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188 unwind label %bb.bi

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188: ; preds = %bb.bg, %bb.bf, %.lr.ph.i.i185
  %i.lg = getelementptr inbounds nuw i8, ptr %.06.i.i186, i64 8 ; 2 uses
  %i.lh = icmp ult ptr %i.lg, %i.kz
  br i1 %i.lh, label %.lr.ph.i.i185, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i189, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i189: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i188
  %.pre.i190 = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %.pre.i190, null
  br i1 %.not.i.i.i191, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i192

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i192: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i189, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183
  %i.li = phi ptr [ %.pre.i190, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i189 ], [ %i.kt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i183 ]
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lj)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i192
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #26
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #26
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit182, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i189, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

bb.bj:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bj
  %.sroa.0230.3 = phi ptr [ %.sroa.0230.0.lcssa, %bb.bj ], [ %i.gn, %.loopexit ], [ %i.gn, %.loopexit.split-lp.loopexit ], [ %.sroa.0230.1309, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0230.2.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ] ; 3 uses
  %.sroa.0218.4 = phi ptr [ %.sroa.0218.0.lcssa, %bb.bj ], [ %.sroa.0218.2314, %.loopexit ], [ %.sroa.0218.2.lcssa, %.loopexit.split-lp.loopexit ], [ %.sroa.0218.0324, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0218.3.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ] ; 3 uses
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.lo, %bb.bj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit271, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit274, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit276, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ] ; 3 uses
  %.not.i.i193 = icmp eq ptr %.sroa.0218.4, null
  br i1 %.not.i.i193, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit195, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0218.4, i64 8 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !86
  %i.lr = add i32 %i.lq, -1                       ; 2 uses
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !86
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bl, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit195

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %.sroa.0218.4)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit195 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit195:      ; preds = %bb.bl, %bb.bk, %.loopexit.split-lp
  %.not.i.i196 = icmp eq ptr %.sroa.0230.3, null
  br i1 %.not.i.i196, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit198, label %bb.bn

bb.bn:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit195
end_hunk_0

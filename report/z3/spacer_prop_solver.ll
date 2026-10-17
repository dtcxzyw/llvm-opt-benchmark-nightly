Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_prop_solver?download=true
inline.NumInlined: 725
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6spacer11prop_solver6maxsmtER10ref_vectorI4expr11ast_managerES5_RK6vectorIS4_Lb1EjE:bb.a

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bi = load ptr, ptr %0, align 8, !tbaa !125, !nonnull !54, !align !55 ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !206
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bk = ptrtoint ptr %i.bi to i64
  store i64 %i.bk, ptr %6, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !112
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(414) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117
  %i.bq = phi ptr [ %i.cd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117 ], [ null, %bb.l ] ; 3 uses
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !112 ; 7 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !113 ; 3 uses
  %i.bv = icmp ugt i32 %i.bu, %.0.i.i
  br i1 %i.bv, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !112 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.lr.ph.i.preheader.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !113 ; 2 uses
  %.not9.not.i = icmp eq i32 %i.bz, 0
  %wide.trip.count.i = zext i32 %i.bz to i64
  br i1 %.not9.not.i, label %.lr.ph.i.preheader.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86

.loopexit:                                        ; preds = %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

bb.m:                                             ; preds = %bb.z, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86: ; preds = %.lr.ph.split, %.loopexit176
  %.047192 = phi i32 [ %i.du, %.loopexit176 ], [ %.0.i.i, %.lr.ph.split ] ; 2 uses
  %i.cb = zext i32 %.047192 to i64                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !184 ; 5 uses
  br label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit176, label %.lr.ph.i, !llvm.loop !262

.lr.ph.i:                                         ; preds = %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86
  %indvars.iv.i87 = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86 ], [ %indvars.iv.next.i88, %bb.n ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i87
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !184
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit, label %bb.n

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit: ; preds = %.lr.ph.i
  %.not.i89 = icmp eq ptr %i.cd, null
  br i1 %.not.i89, label %bb.o, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !116
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !116
  br label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit
  %.not.i4.i = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !116
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !116
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bi, ptr noundef nonnull %i.bq)
          to label %._crit_edge unwind label %bb.m

._crit_edge:                                      ; preds = %bb.q
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !112
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.o
  %i.co = phi ptr [ %.pre, %._crit_edge ], [ %i.br, %bb.p ], [ %i.br, %bb.o ] ; 6 uses
  store ptr %i.cd, ptr %5, align 8, !tbaa !206
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !113
  %i.cs = add i32 %i.cr, -1
  %i.ct = zext i32 %i.cs to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i64 [ %i.ct, %bb.s ], [ 4294967295, %bb.r ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.0.i.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !184 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cb ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !195, !nonnull !54, !align !55
  %.not.i.i91 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i91, label %_ZN11ast_manager7inc_refEP3ast.exit.i92, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !116
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !116
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i92

_ZN11ast_manager7inc_refEP3ast.exit.i92:          ; preds = %bb.u, %bb.t
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !184 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.db, null
  br i1 %.not.i3.i, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i92
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !116
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !116
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.w, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.db)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.pre206 = load ptr, ptr %i.e, align 8, !tbaa !112, !nonnull !54, !noundef !54
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i92, %bb.v, %bb.x
  %i.dg = phi ptr [ %.pre206, %bb.x ], [ %i.co, %bb.v ], [ %i.co, %_ZN11ast_manager7inc_refEP3ast.exit.i92 ] ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !184
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !113
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !184 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dg, i64 -4
  store i32 %i.dj, ptr %i.dn, align 4, !tbaa !113
  %i.do = load ptr, ptr %1, align 8, !tbaa !195, !nonnull !54, !align !55
  %.not.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !116
  %i.dr = add i32 %i.dq, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !116
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.do, ptr noundef nonnull %i.dm)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit unwind label %bb.m

bb.aa:                                            ; preds = %bb.w
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit176:                                     ; preds = %bb.n
  %i.du = add nuw i32 %.047192, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.bu
  br i1 %exitcond.not, label %.lr.ph.i.preheader.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86, !llvm.loop !263

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph, %.lr.ph.split, %.loopexit176
  %i.dv = zext i32 %i.bu to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.dv
  %i.dx = zext i32 %.0.i.i to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.dx
  br label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102, %.lr.ph.i.preheader.i
  %.06.i.i100 = phi ptr [ %i.ef, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102 ], [ %i.dy, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dz = load ptr, ptr %.06.i.i100, align 8, !tbaa !184 ; 3 uses
  %i.ea = load ptr, ptr %1, align 8, !tbaa !195, !nonnull !54, !align !55
  %.not.i.i.i.i.i101 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i99
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !116
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !116
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ac, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ea, ptr noundef nonnull %i.dz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102 unwind label %.loopexit171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i99
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i100, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.dw
  br i1 %i.eg, label %.lr.ph.i.i99, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103, !llvm.loop !4

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102
  %.pr.pre.i = load ptr, ptr %i.e, align 8, !tbaa !112 ; 3 uses
  %i.eh = icmp eq ptr %.pr.pre.i, null
  br i1 %i.eh, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103
  %.not.not.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %thread-pre-split.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103
  %i.ei = getelementptr inbounds i8, ptr %.pr.pre.i, i64 -4 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !113 ; 2 uses
  %.not15.i.i = icmp ugt i32 %.0.i.i, %i.ej
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.ad

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph297 = phi ptr [ %.pr.pre.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.ej, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.ad:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %.0.i.i, ptr %i.ei, align 4, !tbaa !113
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %.noexc105
  %i.ek = phi ptr [ %.pr.pre.i.i, %.noexc105 ], [ %.ph297, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !113
  %i.eo = icmp ugt i32 %.0.i.i, %i.en
  br i1 %i.eo, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.ae

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc105 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !112
  br label %thread-pre-split.i.i, !llvm.loop !5

bb.ae:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 -4
  store i32 %.0.i.i, ptr %i.ep, align 4, !tbaa !113
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.0.i.i
  br i1 %.not1218.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ae
  %i.eq = zext i32 %.0.i.i to i64
  %i.er = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ek, i64 %i.er
  %i.et = sub nsw i64 %i.eq, %i.er
  %i.eu = shl nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.eu, i1 false), !tbaa !184
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

.loopexit171:                                     ; preds = %bb.ac
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit:                   ; preds = %bb.ai
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit.split-lp.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %bb.z, %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, %bb.y
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 216
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(414) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.af unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit ; 2 uses

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit
  switch i32 %i.ez, label %.thread [
    i32 -1, label %bb.ag
    i32 1, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fa = load ptr, ptr %i.bl, align 8, !tbaa !112 ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106:        ; preds = %bb.ag
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !113 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ff
  %.not.i107 = icmp eq i32 %i.fd, 0
  br i1 %.not.i107, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111
  %.06.i.i109 = phi ptr [ %i.fn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111 ], [ %i.fa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106 ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i109, align 8, !tbaa !184 ; 3 uses
  %i.fi = load ptr, ptr %6, align 8, !tbaa !195, !nonnull !54, !align !55
  %.not.i.i.i.i.i110 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i110, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i108
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !116
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !116
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ai, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fi, ptr noundef nonnull %i.fh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111 unwind label %.loopexit.split-lp172.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i108
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i109, i64 8 ; 2 uses
  %i.fo = icmp ult ptr %i.fn, %i.fg
  br i1 %i.fo, label %.lr.ph.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, !llvm.loop !4

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111
  %.pre.i113 = load ptr, ptr %i.bl, align 8, !tbaa !112 ; 2 uses
  %.not.i.i114 = icmp eq ptr %.pre.i113, null
  br i1 %.not.i.i114, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106
  %i.fp = phi ptr [ %.pre.i113, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112 ], [ %i.fa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106 ]
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  store i32 0, ptr %i.fq, align 4, !tbaa !113
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, %bb.ag
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(414) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit

bb.aj:                                            ; preds = %bb.af
  %i.fv = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !113
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120: ; preds = %bb.aj, %bb.ak
  %.0.i.i119 = phi i32 [ %i.fy, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.fz = icmp ult i32 %.0.i.i, %.0.i.i119
  br i1 %i.fz, label %.lr.ph195.preheader, label %.thread

.lr.ph195.preheader:                              ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120
  %i.ga = zext i32 %.0.i.i to i64
  br label %.lr.ph195

bb.al:                                            ; preds = %bb.ao
  %i.gb = landingpad { ptr, i32 }
end_hunk_0

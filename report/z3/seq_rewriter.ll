Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_rewriter?download=true
inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN12seq_rewriter14elim_conditionEP4exprR7obj_refIS0_11ast_managerE:bb.a

.thread350:                                       ; preds = %bb.cs
  %.pre405.pre = load ptr, ptr %5, align 8, !tbaa !191 ; 2 uses
  %i.nk = icmp eq ptr %.pre405.pre, null
  br i1 %i.nk, label %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.thread, label %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148

_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.sink.split: ; preds = %bb.cr, %bb.ch, %bb.ca
  %.sink537 = phi ptr [ %i.lu, %bb.ch ], [ %i.lg, %bb.ca ], [ %i.mz, %bb.cr ] ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %.sink537, i64 -4
  store i32 0, ptr %i.nl, align 4, !tbaa !88
  br label %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148

_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148:    ; preds = %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit, %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.sink.split, %bb.h, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %.thread350
  %i.nm = phi ptr [ %.pre405.pre, %.thread350 ], [ %i.aa, %bb.h ], [ %.sink537, %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.sink.split ], [ %i.aa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %.pr, %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit ]
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !88
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.thread, label %bb.cw

_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.thread: ; preds = %_ZN6vectorISt4pairIjjELb0EjE5resetEv.exit133, %bb.cr, %bb.ch, %bb.ca, %.thread350, %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148
  %i.nq = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 840
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !261 ; 5 uses
  %.not.i149 = icmp eq ptr %i.ns, null
  br i1 %.not.i149, label %bb.ct, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.thread
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !86
  %i.nv = add i32 %i.nu, 1
  store i32 %i.nv, ptr %i.nt, align 4, !tbaa !86
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148.thread
  %i.nw = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.nw, null
  br i1 %.not.i4.i, label %.critedge, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !86
  %i.ob = add i32 %i.oa, -1                       ; 2 uses
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !86
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.cv, label %.critedge

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ny, ptr noundef nonnull %i.nw)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %_ZNK6vectorISt4pairIjjELb0EjE5emptyEv.exit148
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.oe = load i32, ptr %i.od, align 4
  %i.of = and i32 %i.oe, 65535
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.cx, label %_Z17is_uninterp_constPK4expr.exit.thread

bb.cx:                                            ; preds = %bb.cw
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !149
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.cy, label %_Z17is_uninterp_constPK4expr.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !147
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !139 ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_Z17is_uninterp_constPK4expr.exit.thread356, label %_Z17is_uninterp_constPK4expr.exit

_Z17is_uninterp_constPK4expr.exit:                ; preds = %bb.cy
  %i.op = load i32, ptr %i.on, align 8, !tbaa !148
  %i.oq = icmp eq i32 %i.op, -1
  br i1 %i.oq, label %_Z17is_uninterp_constPK4expr.exit.thread356, label %_Z17is_uninterp_constPK4expr.exit.thread

_Z17is_uninterp_constPK4expr.exit.thread356:      ; preds = %bb.cy, %_Z17is_uninterp_constPK4expr.exit
  %i.or = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 832
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !260 ; 5 uses
  %.not.i151 = icmp eq ptr %i.ot, null
  br i1 %.not.i151, label %bb.cz, label %_ZN11ast_manager7inc_refEP3ast.exit.i152

_ZN11ast_manager7inc_refEP3ast.exit.i152:         ; preds = %_Z17is_uninterp_constPK4expr.exit.thread356
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !86
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.ou, align 4, !tbaa !86
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i152, %_Z17is_uninterp_constPK4expr.exit.thread356
  %i.ox = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i153 = icmp eq ptr %i.ox, null
  br i1 %.not.i4.i153, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !86
  %i.pc = add i32 %i.pb, -1                       ; 2 uses
  store i32 %i.pc, ptr %i.pa, align 4, !tbaa !86
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.db, label %.critedge

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.oz, ptr noundef nonnull %i.ox)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z17is_uninterp_constPK4expr.exit.thread:         ; preds = %bb.cw, %bb.cx, %_Z17is_uninterp_constPK4expr.exit
  %i.pe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN10ref_vectorI4expr11ast_managerE3setERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.thread350.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread350.thread:                                ; preds = %bb.cl, %_ZNK8seq_util10is_char_leEPK4exprRPS0_S4_.exit136.thread, %_ZNK11ast_manager6is_notEPK4expr.exit.i141, %bb.cj, %bb.ci, %bb.cq, %bb.cp, %bb.cn, %.noexc144, %_Z17is_uninterp_constPK4expr.exit.thread
  %.260374 = phi i1 [ true, %_Z17is_uninterp_constPK4expr.exit.thread ], [ false, %.noexc144 ], [ false, %bb.cn ], [ false, %bb.cp ], [ false, %bb.cq ], [ false, %bb.ci ], [ false, %bb.cj ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit.i141 ], [ false, %_ZNK8seq_util10is_char_leEPK4exprRPS0_S4_.exit136.thread ], [ false, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.pf = load ptr, ptr %6, align 8, !tbaa !191   ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i156, label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %.thread350.thread
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pg)
          to label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #26
  unreachable

_ZN6vectorISt4pairIjjELb0EjED2Ev.exit:            ; preds = %.thread350.thread, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.pj = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i157, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pk)
          to label %bb.dh unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  %i.pm = extractvalue { ptr, i32 } %i.pl, 0
  call void @__clang_call_terminate(ptr %i.pm) #26
  unreachable

bb.dg:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %.pn84.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.al, %bb.i ]
  call void @_ZN6vectorISt4pairIjjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6vectorISt4pairIjjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.er

bb.dh:                                            ; preds = %bb.de, %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.pn = load ptr, ptr %i.f, align 8, !tbaa !76  ; 5 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %._crit_edge.thread.thread500, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160

.thread502:                                       ; preds = %bb.c
  %i.pp = load ptr, ptr %i.f, align 8, !tbaa !76  ; 4 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %._crit_edge.thread.thread500.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160: ; preds = %bb.dh
  %i.pr = getelementptr inbounds i8, ptr %i.pn, i64 -4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !88 ; 2 uses
  %i.pt = zext i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pu
  %.not87391 = icmp eq i32 %i.ps, 0
  br i1 %.not87391, label %._crit_edge.thread.thread, label %.lr.ph394.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507: ; preds = %.thread502
  %i.pw = getelementptr inbounds i8, ptr %i.pp, i64 -4
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !88 ; 2 uses
  %i.py = zext i32 %i.px to i64
  %i.pz = shl nuw nsw i64 %i.py, 3
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pz
  %.not87391509 = icmp eq i32 %i.px, 0
  br i1 %.not87391509, label %._crit_edge.thread.thread500.thread, label %.lr.ph394.preheader

.lr.ph394.preheader:                              ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160
  %i.qb = phi ptr [ %i.qa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507 ], [ %i.pv, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160 ]
  %.3504510 = phi i1 [ false, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507 ], [ %.260374, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160 ]
  %i.qc = phi ptr [ %i.pp, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160.thread507 ], [ %i.pn, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160 ] ; 2 uses
  br label %.lr.ph394

.lr.ph394:                                        ; preds = %.lr.ph394.preheader, %.thread360
  %.0393 = phi ptr [ %i.rb, %.thread360 ], [ %i.qc, %.lr.ph394.preheader ] ; 2 uses
  %.053392 = phi ptr [ %.1367, %.thread360 ], [ null, %.lr.ph394.preheader ] ; 5 uses
  %i.qd = load ptr, ptr %.0393, align 8, !tbaa !27 ; 5 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qf = load i32, ptr %i.qe, align 4
  %i.qg = and i32 %i.qf, 65535
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.di, label %.thread360

bb.di:                                            ; preds = %.lr.ph394
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !147
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i162 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i162, label %.thread360, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i163

_ZNK11ast_manager5is_eqEPK4expr.exit.i163:        ; preds = %bb.di
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !148
  %i.qn = icmp eq i32 %i.qm, 0
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = icmp eq i32 %i.qp, 2
  %i.qr = select i1 %i.qn, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.dj, label %.thread360

bb.dj:                                            ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i163
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !149
  %i.qu = icmp eq i32 %i.qt, 2
  br i1 %i.qu, label %bb.dl, label %.thread360

bb.dk:                                            ; preds = %bb.a, %bb.ee, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %bb.eb, %bb.dx, %bb.b
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.dl:                                            ; preds = %bb.dj
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !27 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qd, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !27 ; 2 uses
  %i.ra = icmp ne ptr %i.qz, %1                   ; 2 uses
  %.not91377 = icmp ne ptr %i.qx, %1              ; 2 uses
  %.not91.not = select i1 %i.ra, i1 %.not91377, i1 false
  %spec.select376 = select i1 %.not91377, ptr %.053392, ptr %i.qz
  %spec.select100 = select i1 %i.ra, ptr %spec.select376, ptr %i.qx ; 2 uses
  br i1 %.not91.not, label %.thread360, label %._crit_edge

.thread360:                                       ; preds = %bb.dj, %_ZNK11ast_manager5is_eqEPK4expr.exit.i163, %.lr.ph394, %bb.di, %bb.dl
  %.1367 = phi ptr [ %spec.select100, %bb.dl ], [ %.053392, %bb.di ], [ %.053392, %.lr.ph394 ], [ %.053392, %_ZNK11ast_manager5is_eqEPK4expr.exit.i163 ], [ %.053392, %bb.dj ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0393, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.rb, %i.qb
  br i1 %.not87, label %._crit_edge, label %.lr.ph394

._crit_edge:                                      ; preds = %bb.dl, %.thread360
  %.2 = phi ptr [ %spec.select100, %bb.dl ], [ %.1367, %.thread360 ] ; 3 uses
  %.not92 = icmp eq ptr %.2, null
  br i1 %.not92, label %._crit_edge.thread, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.rc = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32 ; 2 uses
  store ptr %i.rc, ptr %7, align 8, !tbaa !34
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.re = ptrtoint ptr %i.rc to i64               ; 3 uses
  store i64 %i.re, ptr %i.rd, align 8, !tbaa !34
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.rf, align 8, !tbaa !76
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.re, ptr %i.rg, align 8, !tbaa !34
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rh, i8 0, i64 32, i1 false)
  store i64 %i.re, ptr %i.ri, align 8, !tbaa !34
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr null, ptr %i.rj, align 8, !tbaa !76
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr %i.rl, ptr %i.rk, align 8, !tbaa !320
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 1, ptr %i.rm, align 8, !tbaa !321
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ro, align 8, !tbaa !729
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rp, i8 0, i64 16, i1 false)
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull %1, ptr noundef nonnull %.2)
          to label %bb.dn unwind label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.rq = load ptr, ptr %2, align 8, !tbaa !33
  invoke void @_ZN17expr_safe_replaceclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef %i.rq, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit unwind label %bb.du

_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit: ; preds = %bb.dn
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rs = load i32, ptr %i.rr, align 4
  %i.rt = and i32 %i.rs, 65535
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.do, label %_Z17is_uninterp_constPK4expr.exit166.thread

bb.do:                                            ; preds = %_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !149
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.dp, label %_Z17is_uninterp_constPK4expr.exit166.thread

bb.dp:                                            ; preds = %bb.do
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !147
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !139 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %_Z17is_uninterp_constPK4expr.exit166.thread368, label %_Z17is_uninterp_constPK4expr.exit166

_Z17is_uninterp_constPK4expr.exit166:             ; preds = %bb.dp
  %i.sd = load i32, ptr %i.sb, align 8, !tbaa !148
  %i.se = icmp eq i32 %i.sd, -1
  br i1 %i.se, label %_Z17is_uninterp_constPK4expr.exit166.thread368, label %_Z17is_uninterp_constPK4expr.exit166.thread

_Z17is_uninterp_constPK4expr.exit166.thread:      ; preds = %_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit, %bb.do, %_Z17is_uninterp_constPK4expr.exit166
  %i.sf = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.sg = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.sf, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %.2)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_Z17is_uninterp_constPK4expr.exit166.thread
  %i.sh = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.si = load ptr, ptr %2, align 8, !tbaa !33
  %i.sj = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.sh, i32 noundef 0, i32 noundef 5, ptr noundef %i.sg, ptr noundef %i.si)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %bb.du ; 3 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %bb.dq
  %.not.i169 = icmp eq ptr %i.sj, null
  br i1 %.not.i169, label %bb.dr, label %_ZN11ast_manager7inc_refEP3ast.exit.i170

_ZN11ast_manager7inc_refEP3ast.exit.i170:         ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !86
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !86
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i170, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.sn = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i171 = icmp eq ptr %i.sn, null
  br i1 %.not.i4.i171, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit173, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !86
  %i.ss = add i32 %i.sr, -1                       ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !86
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.dt, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit173

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sp, ptr noundef nonnull %i.sn)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit173 unwind label %bb.du

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit173:   ; preds = %bb.dt, %bb.dr, %bb.ds
  store ptr %i.sj, ptr %2, align 8, !tbaa !33
  br label %_Z17is_uninterp_constPK4expr.exit166.thread368

bb.du:                                            ; preds = %bb.dt, %bb.dq, %_Z17is_uninterp_constPK4expr.exit166.thread, %bb.dn, %bb.dm
  %i.su = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.er

_Z17is_uninterp_constPK4expr.exit166.thread368:   ; preds = %bb.dp, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit173, %_Z17is_uninterp_constPK4expr.exit166
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %._crit_edge.thread.thread500.thread

._crit_edge.thread:                               ; preds = %._crit_edge
  br i1 %.3504510, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, label %._crit_edge.thread.thread500.thread

._crit_edge.thread.thread500:                     ; preds = %bb.dh
  br i1 %.260374, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %._crit_edge.thread.thread500.thread

._crit_edge.thread.thread:                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit160
  br i1 %.260374, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, label %._crit_edge.thread.thread500.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %._crit_edge.thread, %._crit_edge.thread.thread
  %i.sv = phi ptr [ %i.pn, %._crit_edge.thread.thread ], [ %i.qc, %._crit_edge.thread ] ; 3 uses
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.sx, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i [
    i32 0, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
    i32 1, label %bb.dy
  ]

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, %._crit_edge.thread.thread500
  %i.sy = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 832
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !260 ; 3 uses
  %.not.i174 = icmp eq ptr %i.ta, null
  br i1 %.not.i174, label %bb.dv, label %_ZN11ast_manager7inc_refEP3ast.exit.i175

_ZN11ast_manager7inc_refEP3ast.exit.i175:         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !86
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !86
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i175, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.te = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i176 = icmp eq ptr %i.te, null
  br i1 %.not.i4.i176, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit178, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !86
  %i.tj = add i32 %i.ti, -1                       ; 2 uses
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !86
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.dx, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit178

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.tg, ptr noundef nonnull %i.te)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit178 unwind label %bb.dk

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit178:   ; preds = %bb.dx, %bb.dv, %bb.dw
  store ptr %i.ta, ptr %2, align 8, !tbaa !33
  br label %._crit_edge.thread.thread500.thread

bb.dy:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.tl = load ptr, ptr %i.sv, align 8, !tbaa !27 ; 3 uses
  %.not.i179 = icmp eq ptr %i.tl, null
  br i1 %.not.i179, label %bb.dz, label %_ZN11ast_manager7inc_refEP3ast.exit.i180

_ZN11ast_manager7inc_refEP3ast.exit.i180:         ; preds = %bb.dy
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !86
  %i.to = add i32 %i.tn, 1
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !86
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i180, %bb.dy
  %i.tp = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i4.i181 = icmp eq ptr %i.tp, null
  br i1 %.not.i4.i181, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit183, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !86
  %i.tu = add i32 %i.tt, -1                       ; 2 uses
end_hunk_0

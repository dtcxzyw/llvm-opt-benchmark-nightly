Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ddnf?download=true
inline.NumInlined: 1282
inline.NumDeleted: 568
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7datalog4ddnf3imp12compile_exprEP4exprR7obj_refIS2_11ast_managerE:bb.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !387
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !387
  %i.bb = load ptr, ptr %2, align 8, !tbaa !385   ; 3 uses
  %.not.i4.i53 = icmp eq ptr %i.bb, null
  br i1 %.not.i4.i53, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !451, !nonnull !79, !align !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !387
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !387
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit54

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull %i.bb)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit54

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit54:    ; preds = %bb.k, %bb.l, %bb.m
  store ptr %1, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %1, ptr %4, align 8, !tbaa !317
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.bi, align 8, !tbaa !458
  call void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bu

bb.n:                                             ; preds = %.loopexit95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !332, !nonnull !79, !align !83
  store ptr null, ptr %5, align 8, !tbaa !461
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !287
  invoke void @_ZN7datalog4ddnf3imp11compile_varEP3varR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(3296) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %5, align 8, !tbaa !461   ; 5 uses
  %.not.i55 = icmp eq ptr %i.bm, null
  br i1 %.not.i55, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i56

_ZN11ast_manager7inc_refEP3ast.exit.i56:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !387
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !387
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i56, %bb.o
  %i.bq = load ptr, ptr %2, align 8, !tbaa !385   ; 3 uses
  %.not.i4.i57 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i57, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !451, !nonnull !79, !align !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !387
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !387
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %._crit_edge109 unwind label %bb.w

._crit_edge109:                                   ; preds = %bb.r
  %.pre = load ptr, ptr %5, align 8, !tbaa !461
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge109, %bb.q, %bb.p
  %i.bx = phi ptr [ %.pre, %._crit_edge109 ], [ %i.bm, %bb.q ], [ %i.bm, %bb.p ] ; 3 uses
  store ptr %i.bm, ptr %2, align 8, !tbaa !385
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZN7obj_refI3var11ast_managerED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !462, !nonnull !79, !align !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !387
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !387
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.u, label %_ZN7obj_refI3var11ast_managerED2Ev.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.by, ptr noundef nonnull %i.bx)
          to label %_ZN7obj_refI3var11ast_managerED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #23
  unreachable

_ZN7obj_refI3var11ast_managerED2Ev.exit:          ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.bu

bb.w:                                             ; preds = %bb.r, %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3var11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.bx

bb.x:                                             ; preds = %_Z9is_groundPK4expr.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !421
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !422 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_iffEPK4expr.exit.thread, label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.x
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !426
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 5
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.aa, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !426
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = icmp eq i32 %i.cu, 6
  %i.cw = select i1 %i.cs, i1 %i.cv, i1 false
  br i1 %i.cw, label %bb.aa, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

bb.y:                                             ; preds = %.loopexit95
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK11ast_manager6is_iffEPK4expr.exit.thread

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.cy = load i32, ptr %i.ck, align 8, !tbaa !426
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp eq i32 %i.db, 2
  %i.dd = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %i.dd, label %_ZNK11ast_manager6is_iffEPK4expr.exit, label %_ZNK11ast_manager6is_iffEPK4expr.exit.thread

_ZNK11ast_manager6is_iffEPK4expr.exit:            ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.de = load ptr, ptr %i.cg, align 8, !tbaa !332, !nonnull !79, !align !83
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !395
  %i.dh = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.de, ptr noundef %i.dg)
  br i1 %i.dh, label %bb.aa, label %_ZNK11ast_manager6is_iffEPK4expr.exit._ZNK11ast_manager6is_iffEPK4expr.exit.thread_crit_edge

_ZNK11ast_manager6is_iffEPK4expr.exit._ZNK11ast_manager6is_iffEPK4expr.exit.thread_crit_edge: ; preds = %_ZNK11ast_manager6is_iffEPK4expr.exit
  %.pre110 = load i32, ptr %i.at, align 4
  br label %_ZNK11ast_manager6is_iffEPK4expr.exit.thread

_ZNK11ast_manager6is_iffEPK4expr.exit.thread:     ; preds = %bb.x, %_ZNK11ast_manager6is_iffEPK4expr.exit._ZNK11ast_manager6is_iffEPK4expr.exit.thread_crit_edge, %bb.y, %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.di = phi i32 [ %.pre110, %_ZNK11ast_manager6is_iffEPK4expr.exit._ZNK11ast_manager6is_iffEPK4expr.exit.thread_crit_edge ], [ %i.au, %_ZNK11ast_manager5is_eqEPK4expr.exit.i ], [ %i.au, %bb.y ], [ %i.au, %bb.x ]
  %i.dj = phi ptr [ %i.cg, %_ZNK11ast_manager6is_iffEPK4expr.exit._ZNK11ast_manager6is_iffEPK4expr.exit.thread_crit_edge ], [ %i.cg, %_ZNK11ast_manager5is_eqEPK4expr.exit.i ], [ %i.cx, %bb.y ], [ %i.cg, %bb.x ] ; 6 uses
  %i.dk = and i32 %i.di, 65535
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %_ZNK11ast_manager10is_impliesEPK4expr.exit.thread

bb.z:                                             ; preds = %_ZNK11ast_manager6is_iffEPK4expr.exit.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !421
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !422 ; 5 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i60, label %_ZNK11ast_manager10is_impliesEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.z
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !426
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = icmp eq i32 %i.dt, 8
  %i.dv = select i1 %i.dr, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.aa, label %_ZNK11ast_manager10is_impliesEPK4expr.exit

_ZNK11ast_manager10is_impliesEPK4expr.exit:       ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.dw = load i32, ptr %i.dp, align 8, !tbaa !426
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = icmp eq i32 %i.dz, 9
  %i.eb = select i1 %i.dx, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.aa, label %_ZNK11ast_manager10is_impliesEPK4expr.exit.thread

bb.aa:                                            ; preds = %_ZNK11ast_manager10is_impliesEPK4expr.exit, %_ZNK11ast_manager6is_notEPK4expr.exit, %_ZNK11ast_manager6is_iffEPK4expr.exit, %_ZNK11ast_manager5is_orEPK4expr.exit, %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.ec = phi ptr [ %i.dj, %_ZNK11ast_manager10is_impliesEPK4expr.exit ], [ %i.dj, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.cg, %_ZNK11ast_manager6is_iffEPK4expr.exit ], [ %i.cg, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %i.cg, %_ZNK11ast_manager6is_andEPK4expr.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !332, !nonnull !79, !align !83 ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !385
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ef = ptrtoint ptr %i.ed to i64
  store i64 %i.ef, ptr %7, align 8, !tbaa !287
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store ptr null, ptr %i.eg, align 8, !tbaa !293
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !427
  %.not = icmp eq i32 %i.ei, 0
  br i1 %.not, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ah
  %.pre111 = load ptr, ptr %i.ec, align 8, !tbaa !332
  %i.ek = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !70
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.aa, %bb.ab
  %i.em = phi ptr [ %.pre111, %bb.ab ], [ %i.ed, %bb.aa ]
  %11 = phi ptr [ %i.fd, %bb.ab ], [ null, %bb.aa ]
  %.0.i.i = phi i32 [ %i.el, %bb.ab ], [ 0, %bb.aa ]
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.en = load ptr, ptr %.in, align 8, !tbaa !421
  %i.eo = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.em, ptr noundef %i.en, i32 noundef %.0.i.i, ptr noundef %11)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.ac:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !395
  invoke void @_ZN7datalog4ddnf3imp12compile_exprEP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(3296) %0, ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.er = load ptr, ptr %6, align 8, !tbaa !385   ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i62, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !387
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !387
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.ae, %bb.ad
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !293 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !70 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !70
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.ag
  %.pre.i.i = load ptr, ptr %i.eg, align 8, !tbaa !293 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !70
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc63, %bb.af
  %i.fc = phi i32 [ %.pre2.i.i, %.noexc63 ], [ %i.ey, %bb.af ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i.i, %.noexc63 ], [ %i.ev, %bb.af ] ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.er, ptr %i.fg, align 8, !tbaa !395
  %i.fh = add i32 %i.fc, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fi = load i32, ptr %i.eh, align 8, !tbaa !427
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %indvars.iv.next, %i.fj
  br i1 %i.fk, label %bb.ac, label %bb.ab, !llvm.loop !575

bb.ai:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i64 = icmp eq ptr %i.eo, null             ; 2 uses
  br i1 %.not.i64, label %bb.aj, label %_ZN11ast_manager7inc_refEP3ast.exit.i65

_ZN11ast_manager7inc_refEP3ast.exit.i65:          ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !387
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !387
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i65, %bb.ai
  %i.fo = load ptr, ptr %2, align 8, !tbaa !385   ; 3 uses
  %.not.i4.i66 = icmp eq ptr %i.fo, null
  br i1 %.not.i4.i66, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !451, !nonnull !79, !align !83
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !387
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !387
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fq, ptr noundef nonnull %i.fo)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.al
  store ptr %i.eo, ptr %2, align 8, !tbaa !385
  br i1 %.not.i64, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !387
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !387
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.an, %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !293 ; 4 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !70 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !70
  %i.gf = icmp eq i32 %i.gc, %i.ge
  br i1 %i.gf, label %bb.ap, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.ap:                                            ; preds = %bb.ao, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.ap
  %.pre.i.i.i = load ptr, ptr %i.fy, align 8, !tbaa !293 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !70
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc70, %bb.ao
  %i.gg = phi i32 [ %.pre2.i.i.i, %.noexc70 ], [ %i.gc, %bb.ao ] ; 2 uses
  %i.gh = phi ptr [ %.pre.i.i.i, %.noexc70 ], [ %i.fz, %bb.ao ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gj = zext i32 %i.gg to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gj
  store ptr %i.eo, ptr %i.gk, align 8, !tbaa !395
  %i.gl = add i32 %i.gg, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %1, ptr %3, align 8, !tbaa !317
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.eo, ptr %i.gm, align 8, !tbaa !458
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.gn = load ptr, ptr %i.eg, align 8, !tbaa !293 ; 5 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.aq
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !70 ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  %.not.i72 = icmp eq i32 %i.gq, 0
  br i1 %.not.i72, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ha, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.gu = load ptr, ptr %.06.i.i, align 8, !tbaa !395 ; 3 uses
  %i.gv = load ptr, ptr %7, align 8, !tbaa !398, !nonnull !79, !align !83
  %.not.i.i.i.i.i73 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i73, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !387
  %i.gy = add i32 %i.gx, -1                       ; 2 uses
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !387
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.as, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gv, ptr noundef nonnull %i.gu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.au

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.as, %bb.ar, %.lr.ph.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.hb = icmp ult ptr %i.ha, %i.gt
  br i1 %i.hb, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !4

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.eg, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i74, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.hc = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.gn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.at

bb.at:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #23
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0

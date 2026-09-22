Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/solver_pool?download=true
inline.NumInlined: 963
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN19elim_aux_assertionsclER11ast_managerP3appR7obj_refIS2_S0_E:.lr.ph.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !136
  %i.s = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef 0, i32 noundef 8, ptr noundef %i.r)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.m ; 3 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %bb.b
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !139
  br label %bb.c

bb.c:                                             ; preds = %_ZN11ast_manager6mk_notEP4expr.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.s, ptr %14, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store i64 %i.l, ptr %15, align 8, !tbaa !137
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 29 uses
  store ptr null, ptr %i.w, align 8, !tbaa !147
  %i.x = load ptr, ptr %13, align 8, !tbaa !188   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph:       ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit:             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157
  %i.ai = phi ptr [ %i.x, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %i.td, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157 ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !55 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.am = add i32 %i.ak, -1                       ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189 ; 10 uses
  %i.aq = load i32, ptr %i.z, align 4, !tbaa !190 ; 3 uses
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.as = add i32 %i.ar, -1
  %i.at = and i32 %i.as, %i.aq                    ; 3 uses
  %i.au = load ptr, ptr %9, align 8, !tbaa !185   ; 3 uses
  %i.av = zext i32 %i.at to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i ; 3 uses
  %i.ax = zext i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ax
  %.not34.i.i.i = icmp eq i32 %i.at, %i.ar
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g, %bb.d
  %.not2736.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not2736.i.i.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.g
  %.035.i.i.i = phi ptr [ %i.bg, %bb.g ], [ %i.aw, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %.035.i.i.i, align 8, !tbaa !192 ; 4 uses
  %i.ba = icmp ult ptr %i.az, inttoptr (i64 2 to ptr)
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !190
  %i.bd = icmp eq i32 %i.bc, %i.aq
  %i.be = icmp eq ptr %i.az, %2
  %or.cond.i.i.i = and i1 %i.be, %i.bd
  br i1 %or.cond.i.i.i, label %.loopexit350, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = icmp eq ptr %i.az, null
  br i1 %i.bf, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, %i.ay
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !249

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.au, %.preheader.i.i.i ] ; 3 uses
  %i.bh = load ptr, ptr %.137.i.i.i, align 8, !tbaa !192 ; 4 uses
  %i.bi = icmp ult ptr %i.bh, inttoptr (i64 2 to ptr)
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph38.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !190
  %i.bl = icmp eq i32 %i.bk, %i.aq
  %i.bm = icmp eq ptr %i.bh, %2
  %or.cond31.i.i.i = and i1 %i.bm, %i.bl
  br i1 %or.cond31.i.i.i, label %.loopexit350, label %bb.j

bb.i:                                             ; preds = %.lr.ph38.i.i.i
  %i.bn = icmp eq ptr %i.bh, null
  %i.bo = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.bo, %i.aw
  %or.cond43.i.i.i = select i1 %i.bn, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, label %.lr.ph38.i.i.i.backedge

bb.j:                                             ; preds = %bb.h
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.aw
  br i1 %.not27.old.i.i.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.j, %bb.i
  %.137.i.i.i.be = phi ptr [ %i.bo, %bb.i ], [ %.old.i.i.i, %bb.j ]
  br label %.lr.ph38.i.i.i, !llvm.loop !250

.loopexit350:                                     ; preds = %bb.e, %bb.h
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, !llvm.loop !251

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ev

bb.l:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.m:                                             ; preds = %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %bb.f, %bb.j, %bb.i, %.preheader.i.i.i
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !147 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %.not.i77 = icmp eq i32 %i.bv, 0
  br i1 %.not.i77, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bz = load ptr, ptr %.06.i.i, align 8, !tbaa !159 ; 3 uses
  %i.ca = load ptr, ptr %15, align 8, !tbaa !160, !nonnull !57, !align !141
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !139
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef nonnull %i.bz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp346

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.by
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !3

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i78 = load ptr, ptr %i.w, align 8, !tbaa !147 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i78, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ch = phi ptr [ %.pre.i78, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  store i32 0, ptr %i.ci, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !258 ; 2 uses
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %wide.trip.count = zext i32 %i.ck to i64
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %.048.lcssa = phi i1 [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ %.1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %i.cm = load ptr, ptr %13, align 8, !tbaa !188  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.critedge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81

_ZNK6vectorIP3appLb0EjE4sizeEv.exit81:            ; preds = %._crit_edge
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !55
  %i.cq = icmp ult i32 %i.ak, %i.cp
  br i1 %i.cq, label %bb.bw, label %.critedge

.loopexit345:                                     ; preds = %bb.by
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp346:                            ; preds = %bb.o
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %.048365 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !159 ; 17 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !136   ; 3 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !139
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.r, %bb.q
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !55 ; 5 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !55
  %i.df = icmp eq i32 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.dg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc263 unwind label %bb.ad ; 3 uses

.noexc263:                                        ; preds = %bb.t
  store i32 2, ptr %i.dg, align 4, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 0, ptr %i.dh, align 4, !tbaa !55
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.u:                                             ; preds = %bb.s
  %i.dj = mul i32 %i.dc, 3
  %i.dk = add i32 %i.dj, 1
  %i.dl = lshr i32 %i.dk, 1                       ; 3 uses
  %i.dm = shl i32 %i.dl, 3
  %i.dn = add i32 %i.dm, 8                        ; 2 uses
  %.not.i259 = icmp ugt i32 %i.dl, %i.dc
  br i1 %.not.i259, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = shl i32 %i.dc, 3
  %i.dp = add i32 %i.do, 8
  %.not27.i262 = icmp ugt i32 %i.dn, %i.dp
  br i1 %.not27.i262, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dq = call ptr @__cxa_allocate_exception(i64 40) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dq, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !68
  %i.dt = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !70 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.dz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !77
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !71
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !71
  %.phi.trans.insert.i260 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i261 = load i64, ptr %.phi.trans.insert.i260, align 8, !tbaa !70
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.y
  %i.eb = phi i64 [ %i.dx, %bb.y ], [ %.pre.i261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !70
  store ptr %i.du, ptr %6, align 8, !tbaa !77
  store i64 0, ptr %i.ec, align 8, !tbaa !70
  store i8 0, ptr %i.du, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.du
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.z
  %i.eh = load i64, ptr %i.du, align 8, !tbaa !71
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @__cxa_free_exception(ptr %i.dq) #23
  br label %.body

bb.ab:                                            ; preds = %bb.v
  %i.ek = zext i32 %i.dn to i64
  %i.el = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dd, i64 noundef %i.ek)
          to label %.noexc264 unwind label %bb.ad ; 2 uses

.noexc264:                                        ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.w, align 8, !tbaa !147
  store i32 %i.dl, ptr %i.el, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.ad:                                            ; preds = %bb.aq, %bb.ai, %bb.ab, %bb.t, %bb.bv, %bb.bq, %bb.bh, %bb.ba, %bb.bd, %bb.aw
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.p
  %i.eo = load ptr, ptr %14, align 8, !tbaa !167
  %i.ep = icmp eq ptr %i.cs, %i.eo
  br i1 %i.ep, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.eq = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 5 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i83, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !139
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84: ; preds = %bb.ag, %bb.af
  %i.eu = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !55 ; 5 uses
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 -8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !55
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.aj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.ai:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  %i.fb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc275 unwind label %bb.ad ; 3 uses

.noexc275:                                        ; preds = %bb.ai
  store i32 2, ptr %i.fb, align 4, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 0, ptr %i.fc, align 4, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.fe = mul i32 %i.ex, 3
  %i.ff = add i32 %i.fe, 1
  %i.fg = lshr i32 %i.ff, 1                       ; 3 uses
  %i.fh = shl i32 %i.fg, 3
  %i.fi = add i32 %i.fh, 8                        ; 2 uses
  %.not.i265 = icmp ugt i32 %i.fg, %i.ex
  br i1 %.not.i265, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@_ZN19elim_aux_assertionsclER11ast_managerP3appR7obj_refIS2_S0_E:.lr.ph.i.i.i.i.i.i.i
  br i1 %i.gl, label %bb.at, label %.thread322

bb.at:                                            ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !198
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !201 ; 5 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i91, label %.thread311, label %_ZNK11ast_manager11is_assertedEPK4expr.exit.i

_ZNK11ast_manager11is_assertedEPK4expr.exit.i:    ; preds = %bb.at
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !205
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = icmp eq i32 %i.gt, 14
  %i.gv = select i1 %i.gr, i1 %i.gu, i1 false
  br i1 %i.gv, label %bb.au, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.au:                                            ; preds = %_ZNK11ast_manager11is_assertedEPK4expr.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !258
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.av, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !159
  %i.hb = icmp eq ptr %i.ha, %i.ct
  br i1 %i.hb, label %bb.aw, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.hc = invoke noundef ptr @_ZN11ast_manager13mk_true_proofEv(ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.ax unwind label %bb.ad     ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i.i92 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i92, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !139
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93: ; preds = %bb.ay, %bb.ax
  %i.hg = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 -4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !55 ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !55
  %i.hm = icmp eq i32 %i.hj, %i.hl
  br i1 %i.hm, label %bb.ba, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.ba:                                            ; preds = %bb.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc97 unwind label %bb.ad

.noexc97:                                         ; preds = %bb.ba
  %.pre.i.i94 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i:  ; preds = %_ZNK11ast_manager11is_assertedEPK4expr.exit.i, %bb.au, %bb.av
  %i.hn = load i32, ptr %i.gp, align 8, !tbaa !205
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = icmp eq i32 %i.hq, 34
  %i.hs = select i1 %i.ho, i1 %i.hr, i1 false
  br i1 %i.hs, label %bb.bb, label %.thread311

bb.bb:                                            ; preds = %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !258
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.bc, label %.thread311

bb.bc:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !159
  %i.hy = icmp eq ptr %i.hx, %i.ct
  br i1 %i.hy, label %bb.bd, label %.thread311

bb.bd:                                            ; preds = %bb.bc
  %i.hz = invoke noundef ptr @_ZN11ast_manager13mk_true_proofEv(ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.be unwind label %bb.ad     ; 4 uses

bb.be:                                            ; preds = %bb.bd
  %.not.i.i.i.i101 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !139
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102: ; preds = %bb.bf, %bb.be
  %i.id = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !55 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.id, i64 -8
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !55
  %i.ij = icmp eq i32 %i.ig, %i.ii
  br i1 %i.ij, label %bb.bh, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bh:                                            ; preds = %bb.bg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc106 unwind label %bb.ad

.noexc106:                                        ; preds = %bb.bh
  %.pre.i.i103 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

.thread311:                                       ; preds = %bb.at, %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i, %bb.bb, %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !190 ; 3 uses
  %i.im = load i32, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.in = add i32 %i.im, -1
  %i.io = and i32 %i.in, %i.il                    ; 3 uses
  %i.ip = load ptr, ptr %9, align 8, !tbaa !185   ; 3 uses
  %i.iq = zext i32 %i.io to i64
  %.idx.i.i.i108 = shl nuw nsw i64 %i.iq, 4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx.i.i.i108 ; 3 uses
  %i.is = zext i32 %i.im to i64
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %i.is
  %.not34.i.i.i109 = icmp eq i32 %i.io, %i.im
  br i1 %.not34.i.i.i109, label %.preheader.i.i.i114, label %.lr.ph.i.i.i110

.preheader.i.i.i114:                              ; preds = %bb.bk, %.thread311
  %.not2736.i.i.i115 = icmp eq i32 %i.io, 0
  br i1 %.not2736.i.i.i115, label %.loopexit340, label %.lr.ph38.i.i.i116

.lr.ph.i.i.i110:                                  ; preds = %.thread311, %bb.bk
  %.035.i.i.i111 = phi ptr [ %i.jb, %bb.bk ], [ %i.ir, %.thread311 ] ; 3 uses
  %i.iu = load ptr, ptr %.035.i.i.i111, align 8, !tbaa !192 ; 4 uses
  %i.iv = icmp ult ptr %i.iu, inttoptr (i64 2 to ptr)
  br i1 %i.iv, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i110
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !190
  %i.iy = icmp eq i32 %i.ix, %i.il
  %i.iz = icmp eq ptr %i.iu, %i.cs
  %or.cond.i.i.i112 = and i1 %i.iz, %i.iy
  br i1 %or.cond.i.i.i112, label %.loopexit339, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i.i.i110
  %i.ja = icmp eq ptr %i.iu, null
  br i1 %i.ja, label %.loopexit340, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jb = getelementptr inbounds nuw i8, ptr %.035.i.i.i111, i64 16 ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %i.jb, %i.it
  br i1 %.not.i.i.i113, label %.preheader.i.i.i114, label %.lr.ph.i.i.i110, !llvm.loop !249

.lr.ph38.i.i.i116:                                ; preds = %.preheader.i.i.i114, %.lr.ph38.i.i.i116.backedge
  %.137.i.i.i117 = phi ptr [ %.137.i.i.i117.be, %.lr.ph38.i.i.i116.backedge ], [ %i.ip, %.preheader.i.i.i114 ] ; 4 uses
  %i.jc = load ptr, ptr %.137.i.i.i117, align 8, !tbaa !192 ; 4 uses
  %i.jd = icmp ult ptr %i.jc, inttoptr (i64 2 to ptr)
  br i1 %i.jd, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph38.i.i.i116
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !190
  %i.jg = icmp eq i32 %i.jf, %i.il
  %i.jh = icmp eq ptr %i.jc, %i.cs
  %or.cond31.i.i.i118 = and i1 %i.jh, %i.jg
  br i1 %or.cond31.i.i.i118, label %.loopexit339, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph38.i.i.i116
  %i.ji = icmp eq ptr %i.jc, null
  %i.jj = getelementptr inbounds nuw i8, ptr %.137.i.i.i117, i64 16 ; 2 uses
  %.not27.i.i.i125 = icmp eq ptr %i.jj, %i.ir
  %or.cond43.i.i.i126 = select i1 %i.ji, i1 true, i1 %.not27.i.i.i125
  br i1 %or.cond43.i.i.i126, label %.loopexit340, label %.lr.ph38.i.i.i116.backedge

bb.bn:                                            ; preds = %bb.bl
  %.old.i.i.i119 = getelementptr inbounds nuw i8, ptr %.137.i.i.i117, i64 16 ; 2 uses
  %.not27.old.i.i.i120 = icmp eq ptr %.old.i.i.i119, %i.ir
  br i1 %.not27.old.i.i.i120, label %.loopexit340, label %.lr.ph38.i.i.i116.backedge

.lr.ph38.i.i.i116.backedge:                       ; preds = %bb.bn, %bb.bm
  %.137.i.i.i117.be = phi ptr [ %i.jj, %bb.bm ], [ %.old.i.i.i119, %bb.bn ]
  br label %.lr.ph38.i.i.i116, !llvm.loop !250

.loopexit339:                                     ; preds = %bb.bi, %bb.bl
  %.026.i.i.i124 = phi ptr [ %.137.i.i.i117, %bb.bl ], [ %.035.i.i.i111, %bb.bi ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.026.i.i.i124, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !259 ; 5 uses
  %i.jm = icmp ne ptr %i.cs, %i.jl
  %19 = or i1 %.048365, %i.jm                     ; 2 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i128, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129, label %bb.bo

bb.bo:                                            ; preds = %.loopexit339
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !139
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129: ; preds = %bb.bo, %.loopexit339
  %i.jq = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !55 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !55
  %i.jw = icmp eq i32 %i.jt, %i.jv
  br i1 %i.jw, label %bb.bq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bq:                                            ; preds = %bb.bp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc133 unwind label %bb.ad

.noexc133:                                        ; preds = %bb.bq
  %.pre.i.i130 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

.loopexit340:                                     ; preds = %bb.bj, %bb.bn, %bb.bm, %.preheader.i.i.i114
  %i.jx = load ptr, ptr %13, align 8, !tbaa !188  ; 4 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.loopexit340
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !55 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.jx, i64 -8
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !55
  %i.kd = icmp eq i32 %i.ka, %i.kc
  br i1 %i.kd, label %bb.bs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bs:                                            ; preds = %bb.br, %.loopexit340
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc138 unwind label %bb.bt

.noexc138:                                        ; preds = %bb.bs
  %.pre.i135 = load ptr, ptr %13, align 8, !tbaa !188
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.bt:                                            ; preds = %bb.bs
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread322:                                       ; preds = %bb.as
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !139
  %i.kh = add i32 %i.kg, 1
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !139
  %i.ki = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread322
  %i.kk = getelementptr inbounds i8, ptr %i.ki, i64 -4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !55 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.ki, i64 -8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !55
  %i.ko = icmp eq i32 %i.kl, %i.kn
  br i1 %i.ko, label %bb.bv, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bv:                                            ; preds = %bb.bu, %.thread322
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc144 unwind label %bb.ad

.noexc144:                                        ; preds = %bb.bv
  %.pre.i.i141 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %.noexc275, %.noexc278, %.noexc263, %.noexc264, %.noexc97, %.noexc106, %.noexc133, %.noexc138, %.noexc144
  %.pre.i.i141.sink = phi ptr [ %.pre.i.i141, %.noexc144 ], [ %.pre.i135, %.noexc138 ], [ %.pre.i.i130, %.noexc133 ], [ %.pre.i.i103, %.noexc106 ], [ %.pre.i.i94, %.noexc97 ], [ %i.di, %.noexc263 ], [ %i.em, %.noexc264 ], [ %i.gh, %.noexc278 ], [ %i.fd, %.noexc275 ] ; 2 uses
  %.sink.ph = phi ptr [ %i.cs, %.noexc144 ], [ %i.cs, %.noexc138 ], [ %i.jl, %.noexc133 ], [ %i.hz, %.noexc106 ], [ %i.hc, %.noexc97 ], [ %i.cv, %.noexc263 ], [ %i.cv, %.noexc264 ], [ %i.eq, %.noexc278 ], [ %i.eq, %.noexc275 ]
  %.1.ph = phi i1 [ %.048365, %.noexc144 ], [ %.048365, %.noexc138 ], [ %19, %.noexc133 ], [ true, %.noexc106 ], [ true, %.noexc97 ], [ true, %.noexc263 ], [ true, %.noexc264 ], [ true, %.noexc278 ], [ true, %.noexc275 ]
  %.phi.trans.insert.i.i142 = getelementptr inbounds i8, ptr %.pre.i.i141.sink, i64 -4
  %.pre2.i.i143 = load i32, ptr %.phi.trans.insert.i.i142, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.bu, %bb.br, %bb.bp, %bb.bg, %bb.az, %bb.ah, %bb.s
  %.sink527 = phi ptr [ %i.jx, %bb.br ], [ %i.id, %bb.bg ], [ %i.hg, %bb.az ], [ %i.eu, %bb.ah ], [ %i.cz, %bb.s ], [ %i.jq, %bb.bp ], [ %i.ki, %bb.bu ], [ %.pre.i.i141.sink, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink526 = phi i32 [ %i.ka, %bb.br ], [ %i.ig, %bb.bg ], [ %i.hj, %bb.az ], [ %i.ex, %bb.ah ], [ %i.dc, %bb.s ], [ %i.jt, %bb.bp ], [ %i.kl, %bb.bu ], [ %.pre2.i.i143, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cs, %bb.br ], [ %i.hz, %bb.bg ], [ %i.hc, %bb.az ], [ %i.eq, %bb.ah ], [ %i.cv, %bb.s ], [ %i.jl, %bb.bp ], [ %i.cs, %bb.bu ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %.1 = phi i1 [ %.048365, %bb.br ], [ true, %bb.bg ], [ true, %bb.az ], [ true, %bb.ah ], [ true, %bb.s ], [ %19, %bb.bp ], [ %.048365, %bb.bu ], [ %.1.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %.sink527, i64 -4
  %i.kq = zext i32 %.sink526 to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.sink527, i64 %i.kq
  store ptr %.sink, ptr %i.kr, align 8, !tbaa !145
  %i.ks = add i32 %.sink526, 1
  store i32 %i.ks, ptr %i.kp, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !252

bb.bw:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81
  %i.kt = load ptr, ptr %i.w, align 8, !tbaa !147 ; 5 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146:        ; preds = %bb.bw
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 -4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !55 ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ky
  %.not.i147 = icmp eq i32 %i.kw, 0
  br i1 %.not.i147, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155, label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.06.i.i149 = phi ptr [ %i.lg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 ], [ %i.kt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ] ; 2 uses
  %i.la = load ptr, ptr %.06.i.i149, align 8, !tbaa !159 ; 3 uses
  %i.lb = load ptr, ptr %15, align 8, !tbaa !160, !nonnull !57, !align !141
  %.not.i.i.i.i.i150 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i148
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !139
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !139
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.by, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lb, ptr noundef nonnull %i.la)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 unwind label %.loopexit345

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151: ; preds = %bb.by, %bb.bx, %.lr.ph.i.i148
  %i.lg = getelementptr inbounds nuw i8, ptr %.06.i.i149, i64 8 ; 2 uses
  %i.lh = icmp ult ptr %i.lg, %i.kz
  br i1 %i.lh, label %.lr.ph.i.i148, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, !llvm.loop !3

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.pre.i153 = load ptr, ptr %i.w, align 8, !tbaa !147 ; 2 uses
  %.not.i.i154 = icmp eq ptr %.pre.i153, null
  br i1 %.not.i.i154, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146
  %i.li = phi ptr [ %.pre.i153, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152 ], [ %i.kt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ]
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -4
  store i32 0, ptr %i.lj, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157

.critedge:                                        ; preds = %._crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr null, ptr %16, align 8, !tbaa !136
  store ptr %1, ptr %i.ac, align 8, !tbaa !137
  br i1 %.048.lcssa, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.critedge
  %.not.i158 = icmp eq ptr %i.ap, null
  br i1 %.not.i158, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i159

_ZN11ast_manager7inc_refEP3ast.exit.i159:         ; preds = %bb.bz
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !139
  %i.lm = add i32 %i.ll, 1
  store i32 %i.lm, ptr %i.lk, align 8, !tbaa !139
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.bz, %_ZN11ast_manager7inc_refEP3ast.exit.i159
  store ptr %i.ap, ptr %16, align 8, !tbaa !136
  br label %bb.dm

.loopexit343:                                     ; preds = %_ZNK11ast_manager8has_factEPK3app.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ca:                                            ; preds = %.critedge
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = and i32 %i.lo, 65535
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.cb, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !198
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i162, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit

_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit: ; preds = %bb.cb
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !205
  %i.lw = icmp eq i32 %i.lv, 0
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = icmp eq i32 %i.ly, 36
  %i.ma = select i1 %i.lw, i1 %i.lz, i1 false
  br i1 %i.ma, label %bb.cc, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread

bb.cc:                                            ; preds = %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.ad, ptr %17, align 8, !tbaa !207
  store i32 0, ptr %i.ae, align 8, !tbaa !260
  store i32 16, ptr %i.af, align 4, !tbaa !261
  %i.mb = load ptr, ptr %i.w, align 8, !tbaa !147 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %.lr.ph369.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.cc
  %i.md = getelementptr inbounds i8, ptr %i.mb, i64 -4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !55
  %i.mf = add i32 %i.me, -1                       ; 2 uses
  %.not371 = icmp eq i32 %i.mf, 0
  br i1 %.not371, label %._crit_edge370.thread, label %.lr.ph369.preheader

.lr.ph369.preheader:                              ; preds = %bb.cc, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.0.i.i164505 = phi i32 [ %i.mf, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ -1, %bb.cc ]
  %wide.trip.count389 = zext i32 %.0.i.i164505 to i64
  br label %.lr.ph369

._crit_edge370:                                   ; preds = %bb.ch
  %i.mg = icmp eq i32 %i.og, 1
  br i1 %i.mg, label %bb.ci, label %._crit_edge370.thread

.lr.ph369:                                        ; preds = %.lr.ph369.preheader, %bb.ch
  %.pre.i172 = phi ptr [ %i.ad, %.lr.ph369.preheader ], [ %.pre.i172396, %bb.ch ] ; 2 uses
  %i.mh = phi i32 [ 16, %.lr.ph369.preheader ], [ %i.of, %bb.ch ] ; 4 uses
  %i.mi = phi i32 [ 0, %.lr.ph369.preheader ], [ %i.og, %bb.ch ] ; 3 uses
  %indvars.iv386 = phi i64 [ 0, %.lr.ph369.preheader ], [ %indvars.iv.next387, %bb.ch ] ; 2 uses
  %i.mj = load ptr, ptr %i.w, align 8, !tbaa !147
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv386
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !159 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !258
  %i.mo = add i32 %i.mn, -1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mq = zext i32 %i.mo to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !159
  %i.mt = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph369
  %.not.i165 = icmp ult i32 %i.mi, %i.mh
  br i1 %.not.i165, label %_ZN6bufferIP3appLb0ELj16EE9push_backERKS1_.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mv = shl i32 %i.mh, 1                        ; 3 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.mx)
          to label %.noexc173 unwind label %bb.cg ; 9 uses

.noexc173:                                        ; preds = %bb.ce
  %i.mz = load i32, ptr %i.ae, align 8, !tbaa !260 ; 4 uses
  %.not.i.i166 = icmp eq i32 %i.mz, 0
  %.pre.i.i167 = load ptr, ptr %17, align 8, !tbaa !207 ; 10 uses
  br i1 %.not.i.i166, label %._crit_edge.i.i, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.noexc173
  %.pre.i.i167543 = ptrtoaddr ptr %.pre.i.i167 to i64
  %i.na = ptrtoaddr ptr %i.my to i64
  %wide.trip.count.i.i = zext i32 %i.mz to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.mz, 4
  %i.nb = sub i64 %.pre.i.i167543, %i.na
  %diff.check = icmp ugt i64 %i.nb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i168
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i167, i64 %index ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.nd, align 8, !tbaa !189
  %wide.load544 = load <2 x ptr>, ptr %i.ne, align 8, !tbaa !189
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <2 x ptr> %wide.load, ptr %i.nc, align 8, !tbaa !189
  store <2 x ptr> %wide.load544, ptr %i.nf, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i168, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i168 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
end_hunk_1

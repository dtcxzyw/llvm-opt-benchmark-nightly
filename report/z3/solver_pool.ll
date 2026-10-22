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
  %i.ai = phi ptr [ %i.x, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %i.sz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157 ] ; 2 uses
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
  br i1 %or.cond.i.i.i, label %.loopexit361, label %bb.g

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
  br i1 %or.cond31.i.i.i, label %.loopexit361, label %bb.j

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

.loopexit361:                                     ; preds = %bb.e, %bb.h
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, !llvm.loop !251

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.en

bb.l:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.m:                                             ; preds = %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

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
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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

._crit_edge.loopexit:                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %19 = trunc nuw i8 %.1 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %.048.lcssa = phi i1 [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ %19, %._crit_edge.loopexit ]
  %i.cm = load ptr, ptr %13, align 8, !tbaa !188  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.critedge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81

_ZNK6vectorIP3appLb0EjE4sizeEv.exit81:            ; preds = %._crit_edge
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !55
  %i.cq = icmp ult i32 %i.ak, %i.cp
  br i1 %i.cq, label %bb.bu, label %.critedge

bb.p:                                             ; preds = %.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %.048375 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !159 ; 17 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !136   ; 3 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.q, label %bb.ad

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
          to label %.noexc263 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
          to label %.noexc264 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc264:                                        ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.w, align 8, !tbaa !147
  store i32 %i.dl, ptr %i.el, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.ad:                                            ; preds = %bb.p
  %i.en = load ptr, ptr %14, align 8, !tbaa !167
  %i.eo = icmp eq ptr %i.cs, %i.en
  br i1 %i.eo, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 5 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i83, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !139
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84: ; preds = %bb.af, %bb.ae
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !55 ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !55
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.ai, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  %i.fa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc275 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc275:                                        ; preds = %bb.ah
  store i32 2, ptr %i.fa, align 4, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 0, ptr %i.fb, align 4, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.ai:                                            ; preds = %bb.ag
  %i.fd = mul i32 %i.ew, 3
  %i.fe = add i32 %i.fd, 1
  %i.ff = lshr i32 %i.fe, 1                       ; 3 uses
  %i.fg = shl i32 %i.ff, 3
  %i.fh = add i32 %i.fg, 8                        ; 2 uses
  %.not.i265 = icmp ugt i32 %i.ff, %i.ew
  br i1 %.not.i265, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fi = shl i32 %i.ew, 3
  %i.fj = add i32 %i.fi, 8
  %.not27.i274 = icmp ugt i32 %i.fh, %i.fj
  br i1 %.not27.i274, label %bb.ap, label %bb.ak

end_hunk_0
begin_hunk_1_@_ZN19elim_aux_assertionsclER11ast_managerP3appR7obj_refIS2_S0_E:.lr.ph.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !198
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !201 ; 5 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i91, label %.thread311, label %_ZNK11ast_manager11is_assertedEPK4expr.exit.i

_ZNK11ast_manager11is_assertedEPK4expr.exit.i:    ; preds = %bb.as
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !205
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = icmp eq i32 %i.gs, 14
  %i.gu = select i1 %i.gq, i1 %i.gt, i1 false
  br i1 %i.gu, label %bb.at, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.at:                                            ; preds = %_ZNK11ast_manager11is_assertedEPK4expr.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !258
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.au, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.au:                                            ; preds = %bb.at
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !159
  %i.ha = icmp eq ptr %i.gz, %i.ct
  br i1 %i.ha, label %bb.av, label %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i

bb.av:                                            ; preds = %bb.au
  %i.hb = invoke noundef ptr @_ZN11ast_manager13mk_true_proofEv(ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.aw unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i.i92 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i92, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !139
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93: ; preds = %bb.ax, %bb.aw
  %i.hf = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !55 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hf, i64 -8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !55
  %i.hl = icmp eq i32 %i.hi, %i.hk
  br i1 %i.hl, label %bb.az, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.az:                                            ; preds = %bb.ay, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i93
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc97 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.az
  %.pre.i.i94 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i:  ; preds = %_ZNK11ast_manager11is_assertedEPK4expr.exit.i, %bb.at, %bb.au
  %i.hm = load i32, ptr %i.go, align 8, !tbaa !205
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = icmp eq i32 %i.hp, 34
  %i.hr = select i1 %i.hn, i1 %i.hq, i1 false
  br i1 %i.hr, label %bb.ba, label %.thread311

bb.ba:                                            ; preds = %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !258
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.bb, label %.thread311

bb.bb:                                            ; preds = %bb.ba
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !159
  %i.hx = icmp eq ptr %i.hw, %i.ct
  br i1 %i.hx, label %bb.bc, label %.thread311

bb.bc:                                            ; preds = %bb.bb
  %i.hy = invoke noundef ptr @_ZN11ast_manager13mk_true_proofEv(ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.bd unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i.i.i101 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !139
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102: ; preds = %bb.be, %bb.bd
  %i.ic = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !55 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 -8
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !55
  %i.ii = icmp eq i32 %i.if, %i.ih
  br i1 %i.ii, label %bb.bg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bg:                                            ; preds = %bb.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i102
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc106 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.bg
  %.pre.i.i103 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

.thread311:                                       ; preds = %bb.as, %_ZNK11ast_manager13is_hypothesisEPK4expr.exit.i, %bb.ba, %bb.bb
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !190 ; 3 uses
  %i.il = load i32, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.im = add i32 %i.il, -1
  %i.in = and i32 %i.im, %i.ik                    ; 3 uses
  %i.io = load ptr, ptr %9, align 8, !tbaa !185   ; 3 uses
  %i.ip = zext i32 %i.in to i64
  %.idx.i.i.i108 = shl nuw nsw i64 %i.ip, 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i.i.i108 ; 3 uses
  %i.ir = zext i32 %i.il to i64
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ir
  %.not34.i.i.i109 = icmp eq i32 %i.in, %i.il
  br i1 %.not34.i.i.i109, label %.preheader.i.i.i114, label %.lr.ph.i.i.i110

.preheader.i.i.i114:                              ; preds = %bb.bj, %.thread311
  %.not2736.i.i.i115 = icmp eq i32 %i.in, 0
  br i1 %.not2736.i.i.i115, label %.loopexit340, label %.lr.ph38.i.i.i116

.lr.ph.i.i.i110:                                  ; preds = %.thread311, %bb.bj
  %.035.i.i.i111 = phi ptr [ %i.ja, %bb.bj ], [ %i.iq, %.thread311 ] ; 3 uses
  %i.it = load ptr, ptr %.035.i.i.i111, align 8, !tbaa !192 ; 4 uses
  %i.iu = icmp ult ptr %i.it, inttoptr (i64 2 to ptr)
  br i1 %i.iu, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i110
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !190
  %i.ix = icmp eq i32 %i.iw, %i.ik
  %i.iy = icmp eq ptr %i.it, %i.cs
  %or.cond.i.i.i112 = and i1 %i.iy, %i.ix
  br i1 %or.cond.i.i.i112, label %.loopexit339, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i.i.i110
  %i.iz = icmp eq ptr %i.it, null
  br i1 %i.iz, label %.loopexit340, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %.035.i.i.i111, i64 16 ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %i.ja, %i.is
  br i1 %.not.i.i.i113, label %.preheader.i.i.i114, label %.lr.ph.i.i.i110, !llvm.loop !249

.lr.ph38.i.i.i116:                                ; preds = %.preheader.i.i.i114, %.lr.ph38.i.i.i116.backedge
  %.137.i.i.i117 = phi ptr [ %.137.i.i.i117.be, %.lr.ph38.i.i.i116.backedge ], [ %i.io, %.preheader.i.i.i114 ] ; 4 uses
  %i.jb = load ptr, ptr %.137.i.i.i117, align 8, !tbaa !192 ; 4 uses
  %i.jc = icmp ult ptr %i.jb, inttoptr (i64 2 to ptr)
  br i1 %i.jc, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph38.i.i.i116
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !190
  %i.jf = icmp eq i32 %i.je, %i.ik
  %i.jg = icmp eq ptr %i.jb, %i.cs
  %or.cond31.i.i.i118 = and i1 %i.jg, %i.jf
  br i1 %or.cond31.i.i.i118, label %.loopexit339, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph38.i.i.i116
  %i.jh = icmp eq ptr %i.jb, null
  %i.ji = getelementptr inbounds nuw i8, ptr %.137.i.i.i117, i64 16 ; 2 uses
  %.not27.i.i.i125 = icmp eq ptr %i.ji, %i.iq
  %or.cond43.i.i.i126 = select i1 %i.jh, i1 true, i1 %.not27.i.i.i125
  br i1 %or.cond43.i.i.i126, label %.loopexit340, label %.lr.ph38.i.i.i116.backedge

bb.bm:                                            ; preds = %bb.bk
  %.old.i.i.i119 = getelementptr inbounds nuw i8, ptr %.137.i.i.i117, i64 16 ; 2 uses
  %.not27.old.i.i.i120 = icmp eq ptr %.old.i.i.i119, %i.iq
  br i1 %.not27.old.i.i.i120, label %.loopexit340, label %.lr.ph38.i.i.i116.backedge

.lr.ph38.i.i.i116.backedge:                       ; preds = %bb.bm, %bb.bl
  %.137.i.i.i117.be = phi ptr [ %i.ji, %bb.bl ], [ %.old.i.i.i119, %bb.bm ]
  br label %.lr.ph38.i.i.i116, !llvm.loop !250

.loopexit339:                                     ; preds = %bb.bh, %bb.bk
  %.026.i.i.i124 = phi ptr [ %.137.i.i.i117, %bb.bk ], [ %.035.i.i.i111, %bb.bh ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.026.i.i.i124, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !259 ; 5 uses
  %i.jl = icmp ne ptr %i.cs, %i.jk
  %20 = zext i1 %i.jl to i8
  %21 = or i8 %.048375, %20                       ; 2 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i128, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129, label %bb.bn

bb.bn:                                            ; preds = %.loopexit339
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !139
  %i.jo = add i32 %i.jn, 1
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !139
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129: ; preds = %bb.bn, %.loopexit339
  %i.jp = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !55 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !55
  %i.jv = icmp eq i32 %i.js, %i.ju
  br i1 %i.jv, label %bb.bp, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bp:                                            ; preds = %bb.bo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i129
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc133 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.bp
  %.pre.i.i130 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

.loopexit340:                                     ; preds = %bb.bi, %bb.bm, %bb.bl, %.preheader.i.i.i114
  %i.jw = load ptr, ptr %13, align 8, !tbaa !188  ; 4 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.loopexit340
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 -4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !55 ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jw, i64 -8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !55
  %i.kc = icmp eq i32 %i.jz, %i.kb
  br i1 %i.kc, label %bb.br, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.br:                                            ; preds = %bb.bq, %.loopexit340
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc138 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %bb.br
  %.pre.i135 = load ptr, ptr %13, align 8, !tbaa !188
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

.thread322:                                       ; preds = %bb.ar
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !139
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !139
  %i.kg = load ptr, ptr %i.w, align 8, !tbaa !147 ; 4 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.thread322
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 -4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !55 ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 -8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !55
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %bb.bt, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bt:                                            ; preds = %bb.bs, %.thread322
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc144 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %bb.bt
  %.pre.i.i141 = load ptr, ptr %i.w, align 8, !tbaa !147
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %.noexc275, %.noexc278, %.noexc263, %.noexc264, %.noexc97, %.noexc106, %.noexc133, %.noexc138, %.noexc144
  %.pre.i.i141.sink = phi ptr [ %.pre.i.i141, %.noexc144 ], [ %.pre.i135, %.noexc138 ], [ %.pre.i.i130, %.noexc133 ], [ %.pre.i.i103, %.noexc106 ], [ %.pre.i.i94, %.noexc97 ], [ %i.di, %.noexc263 ], [ %i.em, %.noexc264 ], [ %i.gg, %.noexc278 ], [ %i.fc, %.noexc275 ] ; 2 uses
  %.sink.ph = phi ptr [ %i.cs, %.noexc144 ], [ %i.cs, %.noexc138 ], [ %i.jk, %.noexc133 ], [ %i.hy, %.noexc106 ], [ %i.hb, %.noexc97 ], [ %i.cv, %.noexc263 ], [ %i.cv, %.noexc264 ], [ %i.ep, %.noexc278 ], [ %i.ep, %.noexc275 ]
  %.1.ph = phi i8 [ %.048375, %.noexc144 ], [ %.048375, %.noexc138 ], [ %21, %.noexc133 ], [ 1, %.noexc106 ], [ 1, %.noexc97 ], [ 1, %.noexc263 ], [ 1, %.noexc264 ], [ 1, %.noexc278 ], [ 1, %.noexc275 ]
  %.phi.trans.insert.i.i142 = getelementptr inbounds i8, ptr %.pre.i.i141.sink, i64 -4
  %.pre2.i.i143 = load i32, ptr %.phi.trans.insert.i.i142, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.bs, %bb.bq, %bb.bo, %bb.bf, %bb.ay, %bb.ag, %bb.s
  %.sink549 = phi ptr [ %i.jw, %bb.bq ], [ %i.ic, %bb.bf ], [ %i.hf, %bb.ay ], [ %i.et, %bb.ag ], [ %i.cz, %bb.s ], [ %i.jp, %bb.bo ], [ %i.kg, %bb.bs ], [ %.pre.i.i141.sink, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink548 = phi i32 [ %i.jz, %bb.bq ], [ %i.if, %bb.bf ], [ %i.hi, %bb.ay ], [ %i.ew, %bb.ag ], [ %i.dc, %bb.s ], [ %i.js, %bb.bo ], [ %i.kj, %bb.bs ], [ %.pre2.i.i143, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cs, %bb.bq ], [ %i.hy, %bb.bf ], [ %i.hb, %bb.ay ], [ %i.ep, %bb.ag ], [ %i.cv, %bb.s ], [ %i.jk, %bb.bo ], [ %i.cs, %bb.bs ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %.1 = phi i8 [ %.048375, %bb.bq ], [ 1, %bb.bf ], [ 1, %bb.ay ], [ 1, %bb.ag ], [ 1, %bb.s ], [ %21, %bb.bo ], [ %.048375, %bb.bs ], [ %.1.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.sink549, i64 -4
  %i.ko = zext i32 %.sink548 to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sink549, i64 %i.ko
  store ptr %.sink, ptr %i.kp, align 8, !tbaa !145
  %i.kq = add i32 %.sink548, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.p, !llvm.loop !252

bb.bu:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81
  %i.kr = load ptr, ptr %i.w, align 8, !tbaa !147 ; 5 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146:        ; preds = %bb.bu
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 -4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !55 ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kw
  %.not.i147 = icmp eq i32 %i.ku, 0
  br i1 %.not.i147, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155, label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.06.i.i149 = phi ptr [ %i.le, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 ], [ %i.kr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ] ; 2 uses
  %i.ky = load ptr, ptr %.06.i.i149, align 8, !tbaa !159 ; 3 uses
  %i.kz = load ptr, ptr %15, align 8, !tbaa !160, !nonnull !57, !align !141
  %.not.i.i.i.i.i150 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i148
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !139
  %i.lc = add i32 %i.lb, -1                       ; 2 uses
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !139
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.bw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kz, ptr noundef nonnull %i.ky)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 unwind label %.loopexit.split-lp351.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151: ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i148
  %i.le = getelementptr inbounds nuw i8, ptr %.06.i.i149, i64 8 ; 2 uses
  %i.lf = icmp ult ptr %i.le, %i.kx
  br i1 %i.lf, label %.lr.ph.i.i148, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, !llvm.loop !3

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.pre.i153 = load ptr, ptr %i.w, align 8, !tbaa !147 ; 2 uses
  %.not.i.i154 = icmp eq ptr %.pre.i153, null
  br i1 %.not.i.i154, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146
  %i.lg = phi ptr [ %.pre.i153, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152 ], [ %i.kr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ]
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -4
  store i32 0, ptr %i.lh, align 4, !tbaa !55
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit157

.critedge:                                        ; preds = %._crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr null, ptr %16, align 8, !tbaa !136
  store ptr %1, ptr %i.ac, align 8, !tbaa !137
  br i1 %.048.lcssa, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.critedge
  %.not.i158 = icmp eq ptr %i.ap, null
  br i1 %.not.i158, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i159

_ZN11ast_manager7inc_refEP3ast.exit.i159:         ; preds = %bb.bx
  %i.li = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !139
  %i.lk = add i32 %i.lj, 1
  store i32 %i.lk, ptr %i.li, align 8, !tbaa !139
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.bx, %_ZN11ast_manager7inc_refEP3ast.exit.i159
  store ptr %i.ap, ptr %16, align 8, !tbaa !136
  br label %bb.dh

bb.by:                                            ; preds = %.critedge
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = and i32 %i.lm, 65535
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.bz, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread

bb.bz:                                            ; preds = %bb.by
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !198
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i162, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit

_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit: ; preds = %bb.bz
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !205
  %i.lu = icmp eq i32 %i.lt, 0
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lw = load i32, ptr %i.lv, align 4
  %i.lx = icmp eq i32 %i.lw, 36
  %i.ly = select i1 %i.lu, i1 %i.lx, i1 false
  br i1 %i.ly, label %bb.ca, label %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit.thread

bb.ca:                                            ; preds = %_ZNK11ast_manager18is_unit_resolutionEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.ad, ptr %17, align 8, !tbaa !207
  store i32 0, ptr %i.ae, align 8, !tbaa !260
  store i32 16, ptr %i.af, align 4, !tbaa !261
  %i.lz = load ptr, ptr %i.w, align 8, !tbaa !147 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %.lr.ph379.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.ca
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 -4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !55
  %i.md = add i32 %i.mc, -1                       ; 2 uses
  %.not381 = icmp eq i32 %i.md, 0
  br i1 %.not381, label %._crit_edge380.thread, label %.lr.ph379.preheader

.lr.ph379.preheader:                              ; preds = %bb.ca, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.0.i.i164527 = phi i32 [ %i.md, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ -1, %bb.ca ]
  %wide.trip.count411 = zext i32 %.0.i.i164527 to i64
  br label %.lr.ph379

._crit_edge380:                                   ; preds = %bb.ce
  %i.me = icmp eq i32 %i.od, 1
  br i1 %i.me, label %bb.cf, label %._crit_edge380.thread

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %bb.ce
  %.pre.i172 = phi ptr [ %i.ad, %.lr.ph379.preheader ], [ %.pre.i172418, %bb.ce ] ; 2 uses
  %i.mf = phi i32 [ 16, %.lr.ph379.preheader ], [ %i.oc, %bb.ce ] ; 4 uses
  %i.mg = phi i32 [ 0, %.lr.ph379.preheader ], [ %i.od, %bb.ce ] ; 3 uses
  %indvars.iv408 = phi i64 [ 0, %.lr.ph379.preheader ], [ %indvars.iv.next409, %bb.ce ] ; 2 uses
  %i.mh = load ptr, ptr %i.w, align 8, !tbaa !147
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv408
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !159 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !258
  %i.mm = add i32 %i.ml, -1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.mo = zext i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mo
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !159
  %i.mr = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph379
  %.not.i165 = icmp ult i32 %i.mg, %i.mf
  br i1 %.not.i165, label %_ZN6bufferIP3appLb0ELj16EE9push_backERKS1_.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mt = shl i32 %i.mf, 1                        ; 3 uses
  %i.mu = zext i32 %i.mt to i64
  %i.mv = shl nuw nsw i64 %i.mu, 3
  %i.mw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.mv)
          to label %.noexc173 unwind label %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc173:                                        ; preds = %bb.cc
  %i.mx = load i32, ptr %i.ae, align 8, !tbaa !260 ; 4 uses
  %.not.i.i166 = icmp eq i32 %i.mx, 0
  %.pre.i.i167 = load ptr, ptr %17, align 8, !tbaa !207 ; 10 uses
  br i1 %.not.i.i166, label %._crit_edge.i.i, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.noexc173
  %.pre.i.i167576 = ptrtoaddr ptr %.pre.i.i167 to i64
  %i.my = ptrtoaddr ptr %i.mw to i64
  %wide.trip.count.i.i = zext i32 %i.mx to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.mx, 4
  %i.mz = sub i64 %.pre.i.i167576, %i.my
  %diff.check = icmp ugt i64 %i.mz, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i168
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %index ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i167, i64 %index ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %wide.load = load <2 x ptr>, ptr %i.nb, align 8, !tbaa !189
  %wide.load577 = load <2 x ptr>, ptr %i.nc, align 8, !tbaa !189
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <2 x ptr> %wide.load, ptr %i.na, align 8, !tbaa !189
  store <2 x ptr> %wide.load577, ptr %i.nd, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i168, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i168 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i.i.prol
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i167, i64 %indvars.iv.i.i.prol
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !189
end_hunk_1

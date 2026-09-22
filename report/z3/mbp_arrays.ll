Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mbp_arrays?download=true
inline.NumInlined: 2024
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3mbp20array_select_reducer6reduceER7obj_refI4expr11ast_managerE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i ; 3 uses
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.p
  %.not34.i.i.i = icmp eq i32 %i.l, %i.j
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.b
  %.not2736.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2736.i.i.i, label %.loopexit149, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.e
  %.035.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.o, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %.035.i.i.i, align 8, !tbaa !275 ; 4 uses
  %i.s = icmp ult ptr %i.r, inttoptr (i64 2 to ptr)
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !276
  %i.v = icmp eq i32 %i.u, %i.h
  %i.w = icmp eq ptr %i.r, %i.a
  %or.cond.i.i.i = and i1 %i.w, %i.v
  br i1 %or.cond.i.i.i, label %.loopexit148, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %i.r, null
  br i1 %i.x, label %.loopexit149, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !394

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.m, %.preheader.i.i.i ] ; 4 uses
  %i.z = load ptr, ptr %.137.i.i.i, align 8, !tbaa !275 ; 4 uses
  %i.aa = icmp ult ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !276
  %i.ad = icmp eq i32 %i.ac, %i.h
  %i.ae = icmp eq ptr %i.z, %i.a
  %or.cond31.i.i.i = and i1 %i.ae, %i.ad
  br i1 %or.cond31.i.i.i, label %.loopexit148, label %bb.h

bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.af = icmp eq ptr %i.z, null
  %i.ag = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ag, %i.o
  %or.cond43.i.i.i = select i1 %i.af, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %.loopexit149, label %.lr.ph38.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.o
  br i1 %.not27.old.i.i.i, label %.loopexit149, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.h, %bb.g
  %.137.i.i.i.be = phi ptr [ %i.ag, %bb.g ], [ %.old.i.i.i, %bb.h ]
  br label %.lr.ph38.i.i.i, !llvm.loop !395

.loopexit148:                                     ; preds = %bb.c, %bb.f
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.f ], [ %.035.i.i.i, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !397 ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %.loopexit148
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %.loopexit148
  %.not.i4.i = icmp eq ptr %i.a, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81, !nonnull !68, !align !69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !71
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !71
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.an, ptr noundef nonnull %i.a)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.i, %bb.j, %bb.k
  store ptr %i.ai, ptr %1, align 8, !tbaa !78
  br label %bb.bu

.loopexit149:                                     ; preds = %bb.d, %bb.h, %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !55
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph unwind label %bb.n

_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph:       ; preds = %.loopexit149
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !55  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !72 ; 2 uses
  %i.as = zext i32 %.pre2.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.as
  store ptr %i.a, ptr %i.at, align 8, !tbaa !74
  %i.au = add i32 %.pre2.i, 1
  store i32 %i.au, ptr %.phi.trans.insert.i, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.av = load ptr, ptr %0, align 8, !tbaa !277, !nonnull !68, !align !69
  %i.aw = ptrtoint ptr %i.av to i64
  store i64 %i.aw, ptr %6, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit:             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph, %bb.bh
  %i.be = phi ptr [ %.pre.i, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %i.jt, %bb.bh ] ; 2 uses
  %.0136175 = phi ptr [ null, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %.3, %bb.bh ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72 ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.bi = add i32 %i.bg, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 5 uses
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !72 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  %.not.i47 = icmp eq i32 %i.bp, 0
  br i1 %.not.i47, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bt = load ptr, ptr %.06.i.i, align 8, !tbaa !79 ; 3 uses
  %i.bu = load ptr, ptr %6, align 8, !tbaa !75, !nonnull !68, !align !69
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !71
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !71
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bu, ptr noundef nonnull %i.bt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit147

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.bs
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i48 = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i48, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cb = phi ptr [ %.pre.i48, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  store i32 0, ptr %i.cc, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !188 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %.idx = shl nuw nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx
  %.not169 = icmp eq i32 %i.cf, 0
  br i1 %.not169, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ar
  %7 = trunc nuw i8 %.130 to i1
  %i.ci = trunc nuw i8 %.1 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %.029.lcssa = phi i1 [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ %7, %._crit_edge.loopexit ]
  %.028.lcssa = phi i1 [ false, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ %i.ci, %._crit_edge.loopexit ]
  %i.cj = load ptr, ptr %5, align 8, !tbaa !55    ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread_crit_edge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51

._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread_crit_edge: ; preds = %._crit_edge
  %.pre = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !72
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread

_ZNK6vectorIP3appLb0EjE4sizeEv.exit51:            ; preds = %._crit_edge
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72 ; 2 uses
  %i.cn = icmp ugt i32 %i.cm, %i.bg
  br i1 %i.cn, label %bb.bh, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread, !llvm.loop !396

bb.n:                                             ; preds = %.loopexit149
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit147:                                     ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread, %bb.ax, %bb.bb, %bb.bf, %bb.bg, %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %bb.ar
  %.0173 = phi ptr [ %i.hd, %bb.ar ], [ %i.cd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 2 uses
  %.028172 = phi i8 [ %.1, %bb.ar ], [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %.029170 = phi i8 [ %.130, %bb.ar ], [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %i.cp = load ptr, ptr %.0173, align 8, !tbaa !79 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 65535
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !71
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !71
  %i.cx = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !72 ; 5 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !72
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.q, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.de = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc123 unwind label %bb.z  ; 3 uses

.noexc123:                                        ; preds = %bb.p
  store i32 2, ptr %i.de, align 4, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 0, ptr %i.df, align 4, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.dg, ptr %i.ax, align 8, !tbaa !35
  br label %.noexc52

bb.q:                                             ; preds = %bb.o
  %i.dh = mul i32 %i.da, 3
  %i.di = add i32 %i.dh, 1
  %i.dj = lshr i32 %i.di, 1                       ; 3 uses
  %i.dk = shl i32 %i.dj, 3
  %i.dl = add i32 %i.dk, 8                        ; 2 uses
  %.not.i120 = icmp ugt i32 %i.dj, %i.da
  br i1 %.not.i120, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = shl i32 %i.da, 3
  %i.dn = add i32 %i.dm, 8
  %.not27.i = icmp ugt i32 %i.dl, %i.dn
  br i1 %.not27.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.do = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.do, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 3 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !252
  %i.dr = load ptr, ptr %2, align 8, !tbaa !254   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !255 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dq, ptr noundef nonnull align 8 dereferenceable(1) %i.ds, i64 %i.dx, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !254
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !256
  store i64 %i.dy, ptr %i.dq, align 8, !tbaa !256
  %.phi.trans.insert.i121 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i122 = load i64, ptr %.phi.trans.insert.i121, align 8, !tbaa !255
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.u
  %i.dz = phi i64 [ %i.dv, %bb.u ], [ %.pre.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !255
  store ptr %i.ds, ptr %2, align 8, !tbaa !254
  store i64 0, ptr %i.ea, align 8, !tbaa !255
  store i8 0, ptr %i.ds, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.y unwind label %bb.v

bb.v:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %2, align 8, !tbaa !254   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ds
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.v
  %i.ef = load i64, ptr %i.ds, align 8, !tbaa !256
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @__cxa_free_exception(ptr %i.do) #22
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.ei = zext i32 %i.dl to i64
  %i.ej = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.db, i64 noundef %i.ei)
          to label %.noexc124 unwind label %bb.z  ; 2 uses

.noexc124:                                        ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.ax, align 8, !tbaa !35
  store i32 %i.dj, ptr %i.ej, align 4, !tbaa !72
  br label %.noexc52

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc52:                                         ; preds = %.noexc124, %.noexc123
  %.pre.i.i = phi ptr [ %i.ek, %.noexc124 ], [ %i.dg, %.noexc123 ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.o, %.noexc52
  %i.el = phi i32 [ %.pre2.i.i, %.noexc52 ], [ %i.da, %bb.o ] ; 2 uses
  %i.em = phi ptr [ %.pre.i.i, %.noexc52 ], [ %i.cx, %bb.o ] ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  store ptr %i.cp, ptr %i.ep, align 8, !tbaa !79
  %i.eq = add i32 %i.el, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !72
  br label %bb.ar

bb.z:                                             ; preds = %bb.x, %bb.p, %bb.am, %bb.aj
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %.lr.ph
  %i.es = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !276 ; 3 uses
  %i.eu = load i32, ptr %i.i, align 8, !tbaa !156 ; 3 uses
  %i.ev = add i32 %i.eu, -1
  %i.ew = and i32 %i.ev, %i.et                    ; 3 uses
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !161 ; 3 uses
  %i.ey = zext i32 %i.ew to i64
  %.idx.i.i.i53 = shl nuw nsw i64 %i.ey, 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx.i.i.i53 ; 3 uses
  %i.fa = zext i32 %i.eu to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fa
  %.not34.i.i.i54 = icmp eq i32 %i.ew, %i.eu
  br i1 %.not34.i.i.i54, label %.preheader.i.i.i59, label %.lr.ph.i.i.i55

.preheader.i.i.i59:                               ; preds = %bb.ad, %bb.aa
  %.not2736.i.i.i60 = icmp eq i32 %i.ew, 0
  br i1 %.not2736.i.i.i60, label %.loopexit144, label %.lr.ph38.i.i.i61

.lr.ph.i.i.i55:                                   ; preds = %bb.aa, %bb.ad
  %.035.i.i.i56 = phi ptr [ %i.fj, %bb.ad ], [ %i.ez, %bb.aa ] ; 3 uses
  %i.fc = load ptr, ptr %.035.i.i.i56, align 8, !tbaa !275 ; 4 uses
  %i.fd = icmp ult ptr %i.fc, inttoptr (i64 2 to ptr)
  br i1 %i.fd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i55
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !276
  %i.fg = icmp eq i32 %i.ff, %i.et
  %i.fh = icmp eq ptr %i.fc, %i.cp
  %or.cond.i.i.i57 = and i1 %i.fh, %i.fg
  br i1 %or.cond.i.i.i57, label %.loopexit, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i55
  %i.fi = icmp eq ptr %i.fc, null
  br i1 %i.fi, label %.loopexit144, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fj = getelementptr inbounds nuw i8, ptr %.035.i.i.i56, i64 16 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.fj, %i.fb
  br i1 %.not.i.i.i58, label %.preheader.i.i.i59, label %.lr.ph.i.i.i55, !llvm.loop !394

.lr.ph38.i.i.i61:                                 ; preds = %.preheader.i.i.i59, %.lr.ph38.i.i.i61.backedge
  %.137.i.i.i62 = phi ptr [ %.137.i.i.i62.be, %.lr.ph38.i.i.i61.backedge ], [ %i.ex, %.preheader.i.i.i59 ] ; 4 uses
  %i.fk = load ptr, ptr %.137.i.i.i62, align 8, !tbaa !275 ; 4 uses
  %i.fl = icmp ult ptr %i.fk, inttoptr (i64 2 to ptr)
  br i1 %i.fl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph38.i.i.i61
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !276
  %i.fo = icmp eq i32 %i.fn, %i.et
  %i.fp = icmp eq ptr %i.fk, %i.cp
  %or.cond31.i.i.i63 = and i1 %i.fp, %i.fo
  br i1 %or.cond31.i.i.i63, label %.loopexit, label %bb.ag

bb.af:                                            ; preds = %.lr.ph38.i.i.i61
  %i.fq = icmp eq ptr %i.fk, null
  %i.fr = getelementptr inbounds nuw i8, ptr %.137.i.i.i62, i64 16 ; 2 uses
  %.not27.i.i.i70 = icmp eq ptr %i.fr, %i.ez
  %or.cond43.i.i.i71 = select i1 %i.fq, i1 true, i1 %.not27.i.i.i70
  br i1 %or.cond43.i.i.i71, label %.loopexit144, label %.lr.ph38.i.i.i61.backedge

bb.ag:                                            ; preds = %bb.ae
  %.old.i.i.i64 = getelementptr inbounds nuw i8, ptr %.137.i.i.i62, i64 16 ; 2 uses
  %.not27.old.i.i.i65 = icmp eq ptr %.old.i.i.i64, %i.ez
  br i1 %.not27.old.i.i.i65, label %.loopexit144, label %.lr.ph38.i.i.i61.backedge

.lr.ph38.i.i.i61.backedge:                        ; preds = %bb.ag, %bb.af
  %.137.i.i.i62.be = phi ptr [ %i.fr, %bb.af ], [ %.old.i.i.i64, %bb.ag ]
  br label %.lr.ph38.i.i.i61, !llvm.loop !395

.loopexit:                                        ; preds = %bb.ab, %bb.ae
  %.026.i.i.i69 = phi ptr [ %.137.i.i.i62, %bb.ae ], [ %.035.i.i.i56, %bb.ab ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.026.i.i.i69, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !397 ; 5 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i73, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i74, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !71
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !71
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i74

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i74: ; preds = %bb.ah, %.loopexit
  %i.fx = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i74
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !72 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !72
  %i.gd = icmp eq i32 %i.ga, %i.gc
  br i1 %i.gd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i74
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc78 unwind label %bb.z

.noexc78:                                         ; preds = %bb.aj
  %.pre.i.i75 = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i76 = getelementptr inbounds i8, ptr %.pre.i.i75, i64 -4
  %.pre2.i.i77 = load i32, ptr %.phi.trans.insert.i.i76, align 4, !tbaa !72
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc78, %bb.ai
  %i.ge = phi i32 [ %.pre2.i.i77, %.noexc78 ], [ %i.ga, %bb.ai ] ; 2 uses
  %i.gf = phi ptr [ %.pre.i.i75, %.noexc78 ], [ %i.fx, %bb.ai ] ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gh = zext i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gh
  store ptr %i.ft, ptr %i.gi, align 8, !tbaa !79
  %i.gj = add i32 %i.ge, 1
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !72
  %i.gk = icmp ne ptr %i.cp, %i.ft
  %8 = zext i1 %i.gk to i8
  %9 = or i8 %.029170, %8
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8                         ; 3 uses
  %i.gl = trunc nuw i8 %.028172 to i1
  br i1 %i.gl, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gm = load i8, ptr %i.ay, align 8, !tbaa !167, !range !398, !noundef !68
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef %i.ft)
          to label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit unwind label %bb.z

_ZN3mbp20array_select_reducer10has_storesEP4expr.exit: ; preds = %bb.am
  br i1 %i.go, label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread, label %bb.ar

_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread: ; preds = %bb.al, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit
  br label %bb.ar

.loopexit144:                                     ; preds = %bb.ac, %bb.af, %bb.ag, %.preheader.i.i.i59
  %i.gp = load ptr, ptr %5, align 8, !tbaa !55    ; 4 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit144
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !72 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !72
  %i.gv = icmp eq i32 %i.gs, %i.gu
  br i1 %i.gv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %.loopexit144
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc85 unwind label %bb.aq

.noexc85:                                         ; preds = %bb.ao
  %.pre.i82 = load ptr, ptr %5, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i83 = getelementptr inbounds i8, ptr %.pre.i82, i64 -4
  %.pre2.i84 = load i32, ptr %.phi.trans.insert.i83, align 4, !tbaa !72
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc85, %bb.an
  %i.gw = phi i32 [ %.pre2.i84, %.noexc85 ], [ %i.gs, %bb.an ] ; 2 uses
  %i.gx = phi ptr [ %.pre.i82, %.noexc85 ], [ %i.gp, %bb.an ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -4
  %i.gz = zext i32 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gz
  store ptr %i.cp, ptr %i.ha, align 8, !tbaa !74
  %i.hb = add i32 %i.gw, 1
  store i32 %i.hb, ptr %i.gy, align 4, !tbaa !72
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.ap, %bb.ak
  %.130 = phi i8 [ %11, %bb.ak ], [ %.029170, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.029170, %bb.ap ], [ %11, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit ], [ %11, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.ak ], [ %.028172, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.028172, %bb.ap ], [ 0, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit ], [ 1, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit.thread ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0173, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hd, %i.ch
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread:     ; preds = %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread_crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51
  %i.he = phi i32 [ %.pre, %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread_crit_edge ], [ %i.cm, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51 ]
  %i.hf = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.hg = add i32 %i.he, -1
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !72
  br i1 %.029.lcssa, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread
  %i.hh = load ptr, ptr %0, align 8, !tbaa !277, !nonnull !68, !align !69
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !258
  %i.hk = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !72
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i88 = phi i32 [ %i.hn, %bb.at ], [ 0, %bb.as ]
  %i.ho = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hh, ptr noundef %i.hj, i32 noundef %.0.i.i88, ptr noundef %i.hk)
          to label %bb.au unwind label %.loopexit.split-lp ; 4 uses

bb.au:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i.i.i.i89 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i89, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i90, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !71
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !71
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i90

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i90: ; preds = %bb.av, %bb.au
  %i.hs = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 4 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i90
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !72 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 -8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !72
  %i.hy = icmp eq i32 %i.hv, %i.hx
  br i1 %i.hy, label %bb.ax, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit95

bb.ax:                                            ; preds = %bb.aw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i90
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.ax
  %.pre.i.i91 = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i92 = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4
  %.pre2.i.i93 = load i32, ptr %.phi.trans.insert.i.i92, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit95

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit95: ; preds = %bb.aw, %.noexc94
  %i.hz = phi i32 [ %.pre2.i.i93, %.noexc94 ], [ %i.hv, %bb.aw ] ; 2 uses
  %i.ia = phi ptr [ %.pre.i.i91, %.noexc94 ], [ %i.hs, %bb.aw ] ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.ic = zext i32 %i.hz to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ic
  store ptr %i.ho, ptr %i.id, align 8, !tbaa !79
  %i.ie = add i32 %i.hz, 1
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !72
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit95
  %.1137 = phi ptr [ %i.ho, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit95 ], [ %i.bl, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51.thread ] ; 13 uses
  %i.if = load i32, ptr %i.bb, align 8, !tbaa !109
  %i.ig = getelementptr inbounds nuw i8, ptr %.1137, i64 4 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = and i32 %i.ih, 65535
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.az, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ik = getelementptr inbounds nuw i8, ptr %.1137, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !258
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i96, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread, label %_ZNK17array_recognizers9is_selectEP4expr.exit

_ZNK17array_recognizers9is_selectEP4expr.exit:    ; preds = %bb.az
  %i.io = load i32, ptr %i.in, align 8, !tbaa !148
  %i.ip = icmp eq i32 %i.io, %i.if
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = icmp eq i32 %i.ir, 1
  %i.it = select i1 %i.ip, i1 %i.is, i1 false
  br i1 %i.it, label %bb.ba, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

bb.ba:                                            ; preds = %_ZNK17array_recognizers9is_selectEP4expr.exit
  %i.iu = load i8, ptr %i.ay, align 8, !tbaa !167, !range !398, !noundef !68
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %.1137, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !79
  %i.iy = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef %i.ix)
          to label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99 unwind label %.loopexit.split-lp

_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99: ; preds = %bb.bb
  br i1 %i.iy, label %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread: ; preds = %bb.ba, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99
  %i.iz = invoke noundef ptr @_ZN3mbp20array_select_reducer11reduce_coreEP3app(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull %.1137)
          to label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit unwind label %.loopexit.split-lp

_ZNK17array_recognizers9is_selectEP4expr.exit.thread: ; preds = %bb.az, %bb.ay, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99, %_ZNK17array_recognizers9is_selectEP4expr.exit
  %i.ja = load i8, ptr %i.ay, align 8, !tbaa !167, !range !398, !noundef !68
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK17array_recognizers9is_selectEP4expr.exit.thread
  br i1 %.028.lcssa, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jc = load i32, ptr %i.bb, align 8, !tbaa !109
  %i.jd = load i32, ptr %i.ig, align 4
  %i.je = and i32 %i.jd, 65535
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.be, label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit

bb.be:                                            ; preds = %bb.bd
  %i.jg = getelementptr inbounds nuw i8, ptr %.1137, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !258
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i100, label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit, label %_ZNK17array_recognizers8is_storeEP4expr.exit.i

_ZNK17array_recognizers8is_storeEP4expr.exit.i:   ; preds = %bb.be
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !148
  %i.jl = icmp eq i32 %i.jk, %i.jc
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = select i1 %i.jl, i1 %i.jo, i1 false
  br i1 %i.jp, label %bb.bf, label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit

bb.bf:                                            ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.1137, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !79
  %i.js = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef %i.jr)
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bf
  br i1 %i.js, label %bb.bg, label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit

bb.bg:                                            ; preds = %.noexc101, %bb.bc
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull %.1137, i1 noundef zeroext true)
          to label %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit unwind label %.loopexit.split-lp

_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit: ; preds = %.noexc101, %_ZNK17array_recognizers8is_storeEP4expr.exit.i, %bb.be, %bb.bd, %_ZNK17array_recognizers9is_selectEP4expr.exit.thread, %bb.bg, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread
  %.2 = phi ptr [ %i.iz, %_ZN3mbp20array_select_reducer10has_storesEP4expr.exit99.thread ], [ %.1137, %bb.bg ], [ %.1137, %_ZNK17array_recognizers9is_selectEP4expr.exit.thread ], [ %.1137, %bb.bd ], [ %.1137, %bb.be ], [ %.1137, %_ZNK17array_recognizers8is_storeEP4expr.exit.i ], [ %.1137, %.noexc101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.bl, ptr %4, align 8, !tbaa !160
  store ptr %.2, ptr %i.bd, align 8, !tbaa !397
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit unwind label %.loopexit.split-lp

_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit:      ; preds = %_ZN3mbp20array_select_reducer11mark_storesEP3appb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pre189 = load ptr, ptr %5, align 8, !tbaa !55
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51
  %i.jt = phi ptr [ %i.cj, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51 ], [ %.pre189, %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit ] ; 2 uses
  %.3 = phi ptr [ %.0136175, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit51 ], [ %.2, %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit ] ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread:      ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit, %bb.bh
  %.0136.lcssa.ph = phi ptr [ %.0136175, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit ], [ %.3, %bb.bh ] ; 3 uses
  %.not.i104 = icmp eq ptr %.0136.lcssa.ph, null
  br i1 %.not.i104, label %bb.bi, label %_ZN11ast_manager7inc_refEP3ast.exit.i105

_ZN11ast_manager7inc_refEP3ast.exit.i105:         ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread
  %i.jv = getelementptr inbounds nuw i8, ptr %.0136.lcssa.ph, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !71
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !71
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i105, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread
  %i.jy = load ptr, ptr %1, align 8, !tbaa !78    ; 3 uses
  %.not.i4.i106 = icmp eq ptr %i.jy, null
  br i1 %.not.i4.i106, label %bb.bl, label %bb.bj

end_hunk_0

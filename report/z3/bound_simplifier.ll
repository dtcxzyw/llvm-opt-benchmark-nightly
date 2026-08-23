Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bound_simplifier?download=true
inline.NumInlined: 2023
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16bound_simplifier6reduceEv:bb.a
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.7.0204, 32
  %.sroa.7.8.insert.mask = and i64 %.sroa.7.0204, -4294967296
  %.sroa.7.8.insert.insert = or disjoint i64 %.sroa.7.8.insert.mask, %.sroa.7.12.extract.shift
  br label %_ZN25dependent_expr_simplifier8iteratorppEv.exit116

bb.bh:                                            ; preds = %.noexc115
  %i.kj = add i64 %.sroa.7.0204, 1
  %.sroa.7.8.insert.ext129 = and i64 %i.kj, 4294967295
  %.sroa.7.8.insert.mask130 = and i64 %.sroa.7.0204, -4294967296
  %.sroa.7.8.insert.insert131 = or disjoint i64 %.sroa.7.8.insert.ext129, %.sroa.7.8.insert.mask130
  br label %_ZN25dependent_expr_simplifier8iteratorppEv.exit116

_ZN25dependent_expr_simplifier8iteratorppEv.exit116: ; preds = %bb.bg, %bb.bh
  %.sroa.7.1 = phi i64 [ %.sroa.7.8.insert.insert, %bb.bg ], [ %.sroa.7.8.insert.insert131, %bb.bh ] ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.1 to i32 ; 2 uses
  %.not173 = icmp eq i32 %i.fi, %.sroa.7.8.extract.trunc
  br i1 %.not173, label %._crit_edge208, label %.lr.ph207

bb.bi:                                            ; preds = %._crit_edge208
  call void @_ZN12rewriter_tplIN16bound_simplifier6rw_cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.kk = load ptr, ptr %3, align 8, !tbaa !51    ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i117, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !62, !nonnull !33, !align !34
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !53
  %i.ko = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !53
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.bk, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kl, ptr noundef nonnull %i.kk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ks = load ptr, ptr %2, align 8, !tbaa !196   ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i118, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.kt = load ptr, ptr %i.k, align 8, !tbaa !287, !nonnull !33, !align !34
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !53
  %i.kw = add i32 %i.kv, -1                       ; 2 uses
  store i32 %i.kw, ptr %i.ku, align 4, !tbaa !53
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.bn, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kt, ptr noundef nonnull %i.ks)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #17
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.la = add nuw nsw i32 %.036210, 1
  %i.lb = icmp samesign ult i32 %.036210, 4
  %i.lc = select i1 %i.lb, i1 %.1.lcssa, i1 false
  br i1 %i.lc, label %bb.b, label %.critedge, !llvm.loop !288

bb.bp:                                            ; preds = %._crit_edge208
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit177, %.loopexit.split-lp178, %bb.ae, %bb.bc, %bb.bp
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.bp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp178 ], [ %i.fp, %bb.ae ], [ %.pn, %bb.bc ], [ %lpad.loopexit179, %.loopexit177 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit174, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN12rewriter_tplIN16bound_simplifier6rw_cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %4) #16
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp, %bb.ad
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %.loopexit.split-lp ], [ %i.fo, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.br

.critedge:                                        ; preds = %_ZN16bound_simplifier5resetEv.exit, %._crit_edge, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  ret void

bb.br:                                            ; preds = %bb.bq, %bb.q
  %.pn48 = phi { ptr, i32 } [ %i.cz, %bb.q ], [ %.pn42.pn.pn.pn.pn, %bb.bq ]
  resume { ptr, i32 } %.pn48
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16bound_simplifier5resetEv(ptr noundef nonnull align 8 dereferenceable(3156) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  tail call void @_ZN16bound_propagator5resetEv(ptr noundef nonnull align 8 dereferenceable(280) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  store i32 0, ptr %i.d, align 4, !tbaa !72
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  store i32 0, ptr %i.g, align 4, !tbaa !72
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !159  ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !72   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %.not.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i2, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.j, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i, align 8, !tbaa !25 ; 3 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !63, !nonnull !33, !align !34
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !53
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.r, ptr noundef nonnull %i.q)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.p
  br i1 %i.x, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !161

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !159 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.y = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.j, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  store i32 0, ptr %i.z, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16bound_simplifier12insert_boundERK14dependent_expr(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca i8, align 1                       ; 3 uses
  %2 = alloca %class.rational, align 8            ; 23 uses
  %3 = alloca %class.rational, align 8            ; 11 uses
  %i.j = alloca ptr, align 8                      ; 11 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193
  %.not = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %.not6 = icmp eq ptr %i.p, null
  %or.cond = select i1 %.not, i1 %.not6, i1 false
  br i1 %or.cond, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -4
  store i8 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.y, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 0, ptr %3, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -4
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 1, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -4
  store i8 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.ah, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !188 ; 15 uses
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 65535
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.c
  %i.at = load i32, ptr %i.as, align 8, !tbaa !19
  %i.au = icmp eq i32 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !87
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 65535
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i7, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.f
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !19
  %i.bq = icmp eq i32 %i.bp, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.g, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.g:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  store ptr %i.bf, ptr %i.j, align 8, !tbaa !25
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !25
  br label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.h:                                             ; preds = %.invoke32, %.invoke, %bb.ak, %bb.ai, %bb.ad, %bb.ab, %bb.v, %bb.t, %bb.o, %bb.m, %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, %bb.ag, %bb.z, %bb.x, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bv

_ZNK10arith_util10is_numeralEPK4expr.exit.thread: ; preds = %bb.f, %bb.e, %bb.g, %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bw = phi ptr [ %i.bf, %bb.f ], [ %i.bf, %bb.e ], [ %i.bd, %bb.g ], [ %i.bf, %_ZNK10arith_util10is_numeralEPK4expr.exit ] ; 2 uses
  %i.bx = phi ptr [ %i.bd, %bb.f ], [ %i.bd, %bb.e ], [ %i.bf, %bb.g ], [ %i.bd, %_ZNK10arith_util10is_numeralEPK4expr.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.by = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br i1 %i.by, label %bb.j, label %bb.an

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN16bound_simplifier12assert_lowerEP4exprRK8rationalb(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %.invoke unwind label %bb.h

bb.k:                                             ; preds = %bb.d, %_ZNK11ast_manager5is_eqEPK4expr.exit.i, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i9, label %bb.r, label %_ZNK17arith_recognizers5is_leEPK4expr.exit.i

_ZNK17arith_recognizers5is_leEPK4expr.exit.i:     ; preds = %bb.k
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !19
  %i.cf = icmp eq i32 %i.ce, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, 2
  %i.cj = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !87
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !25 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.cr = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br i1 %i.cr, label %.invoke32, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.cs = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.p unwind label %bb.h

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br i1 %i.cs, label %.invoke, label %bb.an

bb.q:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.x

bb.r:                                             ; preds = %bb.l, %_ZNK17arith_recognizers5is_leEPK4expr.exit.i, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i13, label %bb.x, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i:     ; preds = %bb.r
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !19
  %i.cz = icmp eq i32 %i.cy, 5
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp eq i32 %i.db, 3
  %i.dd = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %i.dd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !87
  %i.dg = icmp eq i32 %i.df, 2
  br i1 %i.dg, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25 ; 3 uses
  store ptr %i.di, ptr %i.j, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25 ; 3 uses
  store ptr %i.dk, ptr %i.k, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.dl = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.u unwind label %bb.h

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br i1 %i.dl, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.dm = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.w unwind label %bb.h

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br i1 %i.dm, label %.invoke32, label %bb.an

bb.x:                                             ; preds = %bb.q, %bb.s, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i, %bb.r
  %i.dn = phi ptr [ %i.bz, %bb.s ], [ %i.bz, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i ], [ %i.ct, %bb.q ], [ %i.bz, %bb.r ] ; 6 uses
  %i.do = load ptr, ptr %i.ak, align 8, !tbaa !35, !nonnull !33, !align !34
  %i.dp = invoke noundef zeroext i1 @_ZNK11ast_manager6is_notEPK4exprRPS0_(ptr noundef nonnull align 8 dereferenceable(952) %i.do, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %bb.x
  br i1 %i.dp, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.dr = invoke noundef zeroext i1 @_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dn, ptr noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.aa unwind label %bb.h

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dr, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.dt = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.ac unwind label %bb.h

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  br i1 %i.dt, label %.invoke, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.dv = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.du, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ae unwind label %bb.h

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br i1 %i.dv, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %.invoke32

bb.ag:                                            ; preds = %bb.aa
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.dy = invoke noundef zeroext i1 @_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dn, ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ah unwind label %bb.h

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dy, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ea = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.aj unwind label %bb.h

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  br i1 %i.ea, label %.invoke32, label %bb.ak

.invoke32:                                        ; preds = %bb.aj, %bb.w, %bb.n, %bb.af
  %i.ec = phi ptr [ %i.di, %bb.w ], [ %i.dw, %bb.af ], [ %i.cq, %bb.n ], [ %i.eb, %bb.aj ]
  %i.ed = phi i1 [ false, %bb.w ], [ true, %bb.af ], [ false, %bb.n ], [ true, %bb.aj ]
  invoke void @_ZN16bound_simplifier12assert_lowerEP4exprRK8rationalb(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %i.ed)
          to label %bb.an unwind label %bb.h

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ee = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.al unwind label %bb.h

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %.invoke

.invoke:                                          ; preds = %bb.ac, %bb.u, %bb.p, %bb.j, %bb.am
  %i.eg = phi ptr [ %i.ef, %bb.am ], [ %i.dk, %bb.u ], [ %i.co, %bb.p ], [ %i.bw, %bb.j ], [ %i.du, %bb.ac ]
  %i.eh = phi i1 [ true, %bb.am ], [ false, %bb.u ], [ false, %bb.p ], [ false, %bb.j ], [ true, %bb.ac ]
  invoke void @_ZN16bound_simplifier12assert_upperEP4exprRK8rationalb(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %i.eh)
          to label %bb.an unwind label %bb.h

bb.an:                                            ; preds = %.invoke32, %.invoke, %bb.i, %bb.ah, %bb.y, %bb.al, %bb.ae, %bb.w, %bb.p
  %.0 = phi i1 [ false, %bb.i ], [ true, %.invoke32 ], [ false, %bb.p ], [ true, %.invoke ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.ae ], [ false, %bb.ah ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.ei = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.ao

.noexc.i:                                         ; preds = %bb.an
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i, %bb.an
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #17
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.el = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i20 unwind label %bb.ap

.noexc.i20:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZN8rationalD2Ev.exit21 unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc.i20, %_ZN8rationalD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #17
  unreachable

_ZN8rationalD2Ev.exit21:                          ; preds = %.noexc.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN8rationalD2Ev.exit21
  %.1 = phi i1 [ %.0, %_ZN8rationalD2Ev.exit21 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0

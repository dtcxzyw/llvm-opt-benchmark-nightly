Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_array_eq_rewrite?download=true
inline.NumInlined: 335
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7datalog19mk_array_eq_rewrite16instantiate_ruleERKNS_4ruleERNS_8rule_setE:bb.a
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store ptr %i.ap, ptr %i.bd, align 8, !tbaa !90
  %i.be = add i32 %i.ba, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !265

bb.h:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

._crit_edge326:                                   ; preds = %bb.q
  %.pre379 = load ptr, ptr %i.af, align 8, !tbaa !79 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8
  %.fr7.i.i = freeze ptr %i.bg                    ; 4 uses
  %i.bh = icmp eq ptr %.fr7.i.i, null
  %i.bi = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.bj = icmp eq ptr %.pre379, null              ; 3 uses
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.r, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %._crit_edge326
  %i.bk = getelementptr inbounds i8, ptr %.pre379, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !77 ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i459 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i459, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !77
  %i.bo = zext i32 %i.bn to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i460, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bm
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !266

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i460 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i460, %i.bo
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i460
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp eq i64 %indvars.iv.i.i460, %i.br
  br i1 %i.bs, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !266

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !266

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i460, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i460, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.bt = trunc nuw i64 %indvars.iv.i.lcssa.i to i32 ; 2 uses
  br i1 %i.bj, label %.loopexit320, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

bb.i:                                             ; preds = %.lr.ph325, %bb.q
  %indvars.iv372 = phi i64 [ %i.aj, %.lr.ph325 ], [ %indvars.iv.next373, %bb.q ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv372
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !276
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -8
  %i.by = inttoptr i64 %i.bx to ptr               ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 65535
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.j
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !283
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, 2
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.k:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !96
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !90 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !90
  %i.cu = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.cr)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !279 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.m
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !284
  %i.cz = load i32, ptr %i.cw, align 8, !tbaa !283
  %i.da = icmp eq i32 %i.cz, %i.cy
  br i1 %i.da, label %_ZNK17array_recognizers8is_arrayEP4sort.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

_ZNK17array_recognizers8is_arrayEP4sort.exit:     ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !285
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.n:                                             ; preds = %_ZNK17array_recognizers8is_arrayEP4sort.exit
  invoke void @_ZN15obj_equiv_classI4expr11ast_managerE5mergeEPS0_S3_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.cr, ptr noundef %i.ct)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132: ; preds = %bb.m, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i, %bb.j, %bb.i, %_ZNK11ast_manager5is_eqEPK4expr.exit.i, %bb.k, %_ZNK17array_recognizers8is_arrayEP4sort.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !89
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !89
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !77 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !77
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.p, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc136:                                        ; preds = %bb.p
  %.pre.i.i133 = load ptr, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert.i.i134 = getelementptr inbounds i8, ptr %.pre.i.i133, i64 -4
  %.pre2.i.i135 = load i32, ptr %.phi.trans.insert.i.i134, align 4, !tbaa !77
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137: ; preds = %bb.o, %.noexc136
  %i.do = phi i32 [ %.pre2.i.i135, %.noexc136 ], [ %i.dk, %bb.o ] ; 2 uses
  %i.dp = phi ptr [ %.pre.i.i133, %.noexc136 ], [ %i.dh, %bb.o ] ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.dr = zext i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  store ptr %i.by, ptr %i.ds, align 8, !tbaa !90
  %i.dt = add i32 %i.do, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137, %bb.n
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next373 to i32
  %exitcond375.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond375.not, label %._crit_edge326, label %bb.i, !llvm.loop !267

bb.r:                                             ; preds = %._crit_edge326
  br i1 %i.bj, label %._crit_edge355, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, %bb.r
  %.sroa.2.0.i443 = phi i32 [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.r ]
  %i.du = getelementptr inbounds i8, ptr %.pre379, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !77
  br label %.loopexit320

.loopexit320:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i439 = phi i32 [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %.sroa.2.0.i443, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ] ; 2 uses
  %i.dw = phi ptr [ null, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %.pre379, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ]
  %.sroa.2.0.i146 = phi i32 [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %i.dv, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ] ; 2 uses
  %.not315351 = icmp eq i32 %.sroa.2.0.i439, %.sroa.2.0.i146
  br i1 %.not315351, label %._crit_edge355, label %.lr.ph354

.lr.ph354:                                        ; preds = %.loopexit320
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %.lr.ph332

._crit_edge355:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerEC2ERS1_.exit, %bb.r, %.loopexit320
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !286
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.as

.lr.ph332:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.lr.ph354
  %i.dy = phi ptr [ %.fr7.i.i, %.lr.ph354 ], [ %.fr364, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 3 uses
  %i.dz = phi ptr [ %i.dw, %.lr.ph354 ], [ %i.fy, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 3 uses
  %.sroa.6305.0352 = phi i32 [ %.sroa.2.0.i439, %.lr.ph354 ], [ %.sroa.6305.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 9 uses
  %.sroa.8.8.insert.ext = zext i32 %.sroa.6305.0352 to i64 ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.8.8.insert.ext
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !90 ; 2 uses
  %i.ec = icmp eq ptr %i.dy, null
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ee = load ptr, ptr %i.dx, align 8
  br i1 %i.ec, label %.lr.ph332.split.us, label %bb.s

.lr.ph332.split.us:                               ; preds = %.lr.ph332
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.8.8.insert.ext
  %13 = load ptr, ptr %12, align 8, !tbaa !90     ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 1
  %spec.select = select i1 %17, ptr %i.eb, ptr %13
  br label %.lr.ph342.preheader

bb.s:                                             ; preds = %.lr.ph332, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %.sroa.6285.8.extract.trunc330 = phi i32 [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.6305.0352, %.lr.ph332 ] ; 2 uses
  %.sroa.6285.0329 = phi i64 [ %.sroa.6285.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.8.8.insert.ext, %.lr.ph332 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.6285.0329
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !90 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 65535
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, label %.lr.ph342.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %bb.s
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !77
  %.not.i.i164 = icmp ugt i32 %i.el, %.sroa.6285.8.extract.trunc330
  br i1 %.not.i.i164, label %bb.t, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.t:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.sroa.6285.0329
  %i.en = load i32, ptr %i.em, align 4, !tbaa !77
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %bb.t
  %.0.i.i = phi i32 [ %i.en, %bb.t ], [ %.sroa.6285.8.extract.trunc330, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ] ; 3 uses
  %.sroa.6285.8.insert.ext = zext i32 %.0.i.i to i64
  %.not361 = icmp eq i32 %.sroa.6305.0352, %.0.i.i
  br i1 %.not361, label %.lr.ph342.preheader, label %bb.s

.lr.ph342.preheader:                              ; preds = %bb.s, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, %.lr.ph332.split.us
  %.us-phi = phi ptr [ %spec.select, %.lr.ph332.split.us ], [ %i.eg, %bb.s ], [ %i.eb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 2 uses
  %.pre380 = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %.lr.ph342

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190
  %i.eo = phi ptr [ %i.fa, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %i.dy, %.lr.ph342.preheader ]
  %i.ep = phi ptr [ %i.fb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.pre380, %.lr.ph342.preheader ] ; 2 uses
  %.sroa.6274.8.extract.trunc340 = phi i32 [ %.0.i.i189, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.6305.0352, %.lr.ph342.preheader ] ; 3 uses
  %.sroa.6274.0339 = phi i64 [ %.sroa.6274.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.8.8.insert.ext, %.lr.ph342.preheader ] ; 2 uses
  %i.eq = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.6274.0339
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !90
  %i.et = icmp eq ptr %i.ep, null
  br i1 %i.et, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.lr.ph342, %bb.aa
  %i.eu = phi ptr [ %i.fw, %bb.aa ], [ %i.ep, %.lr.ph342 ] ; 3 uses
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %bb.aa ], [ 0, %.lr.ph342 ] ; 4 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !77
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv376, %i.ex
  br i1 %i.ey, label %bb.v, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.aa, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ez = phi ptr [ null, %bb.aa ], [ %i.eu, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  %.pre383.a = load ptr, ptr %6, align 8, !tbaa !97
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph342
  %i.fa = phi ptr [ %.pre383.a, %.critedge.loopexit ], [ %i.eo, %.lr.ph342 ] ; 3 uses
  %i.fb = phi ptr [ %i.ez, %.critedge.loopexit ], [ null, %.lr.ph342 ]
  %i.fc = icmp eq ptr %i.fa, null
  br i1 %i.fc, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187

_ZNK16basic_union_find12get_num_varsEv.exit.i.i187: ; preds = %.critedge
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !77
  %.not.i.i188 = icmp ugt i32 %i.fe, %.sroa.6274.8.extract.trunc340
  br i1 %.not.i.i188, label %bb.u, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

bb.u:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187
  %i.ff = load ptr, ptr %i.dx, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.sroa.6274.0339
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !77
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190: ; preds = %.critedge, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187, %bb.u
  %.0.i.i189 = phi i32 [ %i.fh, %bb.u ], [ %.sroa.6274.8.extract.trunc340, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187 ], [ %.sroa.6274.8.extract.trunc340, %.critedge ] ; 3 uses
  %.sroa.6274.8.insert.ext = zext i32 %.0.i.i189 to i64
  %.not362 = icmp eq i32 %.sroa.6305.0352, %.0.i.i189
  br i1 %.not362, label %.lr.ph347, label %.lr.ph342

bb.v:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv376
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.fk = invoke noundef ptr @_ZN7datalog19mk_array_eq_rewrite7replaceEP4exprS2_S2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.fj, ptr noundef %.us-phi, ptr noundef %i.es)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv376 ; 2 uses
  %i.fn = load ptr, ptr %5, align 8, !tbaa !98, !nonnull !69, !align !70
  %.not.i.i195 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i195, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !89
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !89
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.x, %bb.w
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !90 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fr, null
  br i1 %.not.i3.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !89
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !89
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fn, ptr noundef nonnull %i.fr)
          to label %._crit_edge381 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge381:                                   ; preds = %bb.z
  %.pre382 = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge381, %bb.y, %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fw = phi ptr [ %.pre382, %._crit_edge381 ], [ %i.fl, %bb.y ], [ %i.fl, %_ZN11ast_manager7inc_refEP3ast.exit.i ] ; 2 uses
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !90
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.critedge.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !268

._crit_edge348:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213
  %i.fy = load ptr, ptr %i.af, align 8, !tbaa !79 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader: ; preds = %._crit_edge348
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !77 ; 4 uses
  %i.gc = icmp eq ptr %.fr364, null
  %i.gd = getelementptr inbounds i8, ptr %.fr364, i64 -4
  %i.ge = add i32 %.sroa.6305.0352, 1             ; 3 uses
  br i1 %i.gc, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader
  %.not.i199463 = icmp eq i32 %i.ge, %i.gb
  br i1 %.not.i199463, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !77
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge348
  %i.gg = icmp eq ptr %.fr364, null
  %i.gh = getelementptr inbounds i8, ptr %.fr364, i64 -4
  br i1 %i.gg, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %indvars.iv.next.i467 = add nuw nsw i64 %.sroa.8.8.insert.ext, 1 ; 2 uses
  %indvars.i468 = trunc i64 %indvars.iv.next.i467 to i32 ; 2 uses
  %.not.us.i469 = icmp eq i32 %indvars.i468, 0
  br i1 %.not.us.i469, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !77
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %indvars.iv.next.i.us = add i32 %.sroa.6305.0352, 1
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i470, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, !llvm.loop !269

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %indvars.i471 = phi i32 [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i468, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 4 uses
  %indvars.iv.next.i470 = phi i64 [ %indvars.iv.next.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.iv.next.i467, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 2 uses
  %.not.i.us.i = icmp ugt i32 %i.gi, %indvars.i471
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.gj = and i64 %indvars.iv.next.i470, 4294967295
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.fr364, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !77
  %i.gm = icmp eq i32 %i.gl, %indvars.i471
  br i1 %i.gm, label %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !269

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i
  %i.gn = add i32 %i.go, 1                        ; 2 uses
  %.not.i199 = icmp eq i32 %i.gn, %i.gb
  br i1 %.not.i199, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200, !llvm.loop !269

_ZNK16basic_union_find12get_num_varsEv.exit.i.i200: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198
  %i.go = phi i32 [ %i.gn, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198 ], [ %i.ge, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader ] ; 6 uses
  %.not.i.i201 = icmp ult i32 %i.go, %i.gf
  br i1 %.not.i.i201, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.fr364, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !77
  %i.gs = icmp eq i32 %i.gr, %i.go
  br i1 %i.gs, label %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198, !llvm.loop !269

_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, !llvm.loop !269

_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, !llvm.loop !269

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453, %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452, %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us
  %.sroa.6305.1 = phi i32 [ %i.ge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader ], [ %indvars.iv.next.i.us, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us ], [ %i.go, %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge ], [ %indvars.i471, %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge ], [ %indvars.i471, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452 ], [ %i.gb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453 ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %i.gb, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198 ], [ %i.go, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200 ] ; 2 uses
  %.not315 = icmp eq i32 %.sroa.6305.1, %.sroa.2.0.i146
  br i1 %.not315, label %._crit_edge355, label %.lr.ph332

.lr.ph347:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213
  %.sroa.6.8.extract.trunc346 = phi i32 [ %.0.i.i212, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213 ], [ %.sroa.6305.0352, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ] ; 3 uses
  %.sroa.6.0345 = phi i64 [ %.sroa.6.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213 ], [ %.sroa.8.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ] ; 2 uses
  %i.gt = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.sroa.6.0345
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !90
  %i.gw = load ptr, ptr %i.g, align 8, !tbaa !78, !nonnull !69, !align !70
  %i.gx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gw, i32 noundef 0, i32 noundef 2, ptr noundef %i.gv, ptr noundef %.us-phi)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %.lr.ph347
  %.not.i.i.i.i203 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i203, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204, label %bb.ab

bb.ab:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !89
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !89
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204: ; preds = %bb.ab, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.hb = load ptr, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !77 ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 -8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !77
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.an

bb.ad:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204
  %i.hi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc256 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc256:                                        ; preds = %bb.ad
  store i32 2, ptr %i.hi, align 4, !tbaa !77
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i32 0, ptr %i.hj, align 4, !tbaa !77
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  store ptr %i.hk, ptr %i.j, align 8, !tbaa !79
  br label %.noexc208

bb.ae:                                            ; preds = %bb.ac
  %i.hl = mul i32 %i.he, 3
  %i.hm = add i32 %i.hl, 1
  %i.hn = lshr i32 %i.hm, 1                       ; 3 uses
  %i.ho = shl i32 %i.hn, 3
  %i.hp = add i32 %i.ho, 8                        ; 2 uses
  %.not.i254 = icmp ugt i32 %i.hn, %i.he
  br i1 %.not.i254, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hq = shl i32 %i.he, 3
  %i.hr = add i32 %i.hq, 8
  %.not27.i = icmp ugt i32 %i.hp, %i.hr
  br i1 %.not27.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hs = call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hs, align 8, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 3 uses
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !100
  %i.hv = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !104 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !103
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !105
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !105
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i255 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !104
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ai
  %i.id = phi i64 [ %i.hz, %bb.ai ], [ %.pre.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %i.id, ptr %i.if, align 8, !tbaa !104
  store ptr %i.hw, ptr %3, align 8, !tbaa !103
  store i64 0, ptr %i.ie, align 8, !tbaa !104
  store i8 0, ptr %i.hw, align 8, !tbaa !105
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hw
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aj
  %i.ij = load i64, ptr %i.hw, align 8, !tbaa !105
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body257

bb.ak:                                            ; preds = %bb.ag
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @__cxa_free_exception(ptr %i.hs) #15
  br label %.body257

bb.al:                                            ; preds = %bb.af
  %i.im = zext i32 %i.hp to i64
  %i.in = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hf, i64 noundef %i.im)
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc259:                                        ; preds = %bb.al
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  store ptr %i.io, ptr %i.j, align 8, !tbaa !79
  store i32 %i.hn, ptr %i.in, align 4, !tbaa !77
  br label %.noexc208

bb.am:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc208:                                        ; preds = %.noexc259, %.noexc256
  %.pre.i.i205 = phi ptr [ %i.io, %.noexc259 ], [ %i.hk, %.noexc256 ] ; 2 uses
  %.phi.trans.insert.i.i206 = getelementptr inbounds i8, ptr %.pre.i.i205, i64 -4
  %.pre2.i.i207 = load i32, ptr %.phi.trans.insert.i.i206, align 4, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %.noexc208, %bb.ac
  %i.ip = phi i32 [ %.pre2.i.i207, %.noexc208 ], [ %i.he, %bb.ac ] ; 2 uses
  %i.iq = phi ptr [ %.pre.i.i205, %.noexc208 ], [ %i.hb, %bb.ac ] ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -4
  %i.is = zext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.is
  store ptr %i.gx, ptr %i.it, align 8, !tbaa !90
  %i.iu = add i32 %i.ip, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !77
  %i.iv = load ptr, ptr %6, align 8, !tbaa !97
  %.fr364 = freeze ptr %i.iv                      ; 9 uses
  %i.iw = icmp eq ptr %.fr364, null
  br i1 %i.iw, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210

_ZNK16basic_union_find12get_num_varsEv.exit.i.i210: ; preds = %bb.an
  %i.ix = getelementptr inbounds i8, ptr %.fr364, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !77
  %.not.i.i211 = icmp ugt i32 %i.iy, %.sroa.6.8.extract.trunc346
  br i1 %.not.i.i211, label %bb.ao, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213

bb.ao:                                            ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210
  %i.iz = load ptr, ptr %i.dx, align 8, !tbaa !97
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.sroa.6.0345
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !77
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213: ; preds = %bb.an, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210, %bb.ao
  %.0.i.i212 = phi i32 [ %i.jb, %bb.ao ], [ %.sroa.6.8.extract.trunc346, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210 ], [ %.sroa.6.8.extract.trunc346, %bb.an ] ; 3 uses
  %.sroa.6.8.insert.ext = zext i32 %.0.i.i212 to i64
  %.not363 = icmp eq i32 %.sroa.6305.0352, %.0.i.i212
  br i1 %.not363, label %._crit_edge348, label %.lr.ph347

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.v, %bb.al, %bb.ad, %.lr.ph347, %bb.l, %bb.n, %bb.p
  %lpad.loopexit.split-lp478 = landingpad { ptr, i32 }
          cleanup
  br label %.body257

bb.ap:                                            ; preds = %._crit_edge355
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.jc = load ptr, ptr %i.g, align 8, !tbaa !78, !nonnull !69, !align !70
  invoke void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(952) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !78, !nonnull !69, !align !70 ; 3 uses
  %i.je = ptrtoint ptr %i.jd to i64
  store i64 %i.je, ptr %9, align 8, !tbaa !71
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store ptr null, ptr %i.jf, align 8, !tbaa !79
  %i.jg = load ptr, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %._crit_edge359.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.aq
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -4
end_hunk_0

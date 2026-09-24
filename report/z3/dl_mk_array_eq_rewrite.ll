Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_array_eq_rewrite?download=true
inline.NumInlined: 335
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7datalog19mk_array_eq_rewrite16instantiate_ruleERKNS_4ruleERNS_8rule_setE:bb.a

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.au = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !77
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.az = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ak, %bb.e ] ; 3 uses
  %i.ba = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.av, %bb.e ] ; 2 uses
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
  br label %bb.bv

._crit_edge322:                                   ; preds = %bb.r
  %.pre374 = load ptr, ptr %i.af, align 8, !tbaa !79 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8
  %.fr7.i.i = freeze ptr %i.bg                    ; 4 uses
  %i.bh = icmp eq ptr %.fr7.i.i, null
  %i.bi = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.bj = icmp eq ptr %.pre374, null              ; 3 uses
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.s, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %._crit_edge322
  %i.bk = getelementptr inbounds i8, ptr %.pre374, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !77 ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i456 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i456, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !77
  %i.bo = zext i32 %i.bn to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i457, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bm
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !266

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i457 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i457, %i.bo
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i457
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp eq i64 %indvars.iv.i.i457, %i.br
  br i1 %i.bs, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !266

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !266

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i457, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i457, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.bt = trunc nuw i64 %indvars.iv.i.lcssa.i to i32 ; 2 uses
  br i1 %i.bj, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

bb.i:                                             ; preds = %.lr.ph321, %bb.r
  %indvars.iv367 = phi i64 [ %i.aj, %.lr.ph321 ], [ %indvars.iv.next368, %bb.r ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv367
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
          to label %bb.m unwind label %bb.o

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
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n, %bb.l
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body257

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132: ; preds = %bb.m, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i, %bb.j, %bb.i, %_ZNK11ast_manager5is_eqEPK4expr.exit.i, %bb.k, %_ZNK17array_recognizers8is_arrayEP4sort.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !89
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !89
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !77 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !77
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.q, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc136 unwind label %bb.o

.noexc136:                                        ; preds = %bb.q
  %.pre.i.i133 = load ptr, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert.i.i134 = getelementptr inbounds i8, ptr %.pre.i.i133, i64 -4
  %.pre2.i.i135 = load i32, ptr %.phi.trans.insert.i.i134, align 4, !tbaa !77
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137: ; preds = %bb.p, %.noexc136
  %i.dp = phi i32 [ %.pre2.i.i135, %.noexc136 ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i.i133, %.noexc136 ], [ %i.di, %bb.p ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds
  store ptr %i.by, ptr %i.dt, align 8, !tbaa !90
  %i.du = add i32 %i.dp, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !77
  br label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137, %bb.n
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next368 to i32
  %exitcond370.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond370.not, label %._crit_edge322, label %bb.i, !llvm.loop !267

bb.s:                                             ; preds = %._crit_edge322
  br i1 %i.bj, label %._crit_edge351, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, %bb.s
  %.sroa.2.0.i440 = phi i32 [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.s ]
  %i.dv = getelementptr inbounds i8, ptr %.pre374, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i432 = phi i32 [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %.sroa.2.0.i440, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ] ; 2 uses
  %12 = phi ptr [ null, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %.pre374, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ]
  %.sroa.2.0.i146 = phi i32 [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ %i.dw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ] ; 2 uses
  %.not315347 = icmp eq i32 %.sroa.2.0.i432, %.sroa.2.0.i146
  br i1 %.not315347, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.loopexit
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %.lr.ph328

._crit_edge351:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerEC2ERS1_.exit, %bb.s, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !286
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str, i1 noundef zeroext true)
          to label %bb.au unwind label %bb.ax

.lr.ph328:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.lr.ph350
  %i.dy = phi ptr [ %.fr7.i.i, %.lr.ph350 ], [ %.fr360, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 3 uses
  %i.dz = phi ptr [ %12, %.lr.ph350 ], [ %i.ga, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 2 uses
  %.sroa.6305.0348 = phi i32 [ %.sroa.2.0.i432, %.lr.ph350 ], [ %.sroa.6305.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 9 uses
  %.sroa.8.8.insert.ext = zext i32 %.sroa.6305.0348 to i64 ; 5 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.8.8.insert.ext
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !90
  %i.ec = icmp eq ptr %i.dy, null
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ee = load ptr, ptr %i.dx, align 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph328, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %.sroa.6285.8.extract.trunc326 = phi i32 [ %.sroa.6305.0348, %.lr.ph328 ], [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 3 uses
  %.sroa.6285.0325 = phi i64 [ %.sroa.8.8.insert.ext, %.lr.ph328 ], [ %.sroa.6285.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.6285.0325
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !90 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 65535
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.u, label %.lr.ph338.preheader

bb.u:                                             ; preds = %bb.t
  br i1 %i.ec, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %bb.u
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !77
  %.not.i.i164 = icmp ugt i32 %i.el, %.sroa.6285.8.extract.trunc326
  br i1 %.not.i.i164, label %bb.v, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.v:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.sroa.6285.0325
  %i.en = load i32, ptr %i.em, align 4, !tbaa !77
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.u, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %bb.v
  %.0.i.i = phi i32 [ %i.en, %bb.v ], [ %.sroa.6285.8.extract.trunc326, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.sroa.6285.8.extract.trunc326, %bb.u ] ; 3 uses
  %.sroa.6285.8.insert.ext = zext i32 %.0.i.i to i64
  %.not357 = icmp eq i32 %.sroa.6305.0348, %.0.i.i
  br i1 %.not357, label %.lr.ph338.preheader, label %bb.t

.lr.ph338.preheader:                              ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, %bb.t
  %.2105.ph = phi ptr [ %i.eg, %bb.t ], [ %i.eb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 2 uses
  %.pre375.a = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.preheader, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190
  %i.eo = phi ptr [ %i.fa, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %i.dy, %.lr.ph338.preheader ]
  %i.ep = phi ptr [ %i.fb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.pre375.a, %.lr.ph338.preheader ] ; 2 uses
  %.sroa.6274.8.extract.trunc336 = phi i32 [ %.0.i.i189, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.6305.0348, %.lr.ph338.preheader ] ; 3 uses
  %.sroa.6274.0335 = phi i64 [ %.sroa.6274.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.8.8.insert.ext, %.lr.ph338.preheader ] ; 2 uses
  %i.eq = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.6274.0335
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !90
  %i.et = icmp eq ptr %i.ep, null
  br i1 %i.et, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.lr.ph338, %bb.ac
  %i.eu = phi ptr [ %i.fw, %bb.ac ], [ %i.ep, %.lr.ph338 ] ; 3 uses
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %bb.ac ], [ 0, %.lr.ph338 ] ; 4 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !77
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv371, %i.ex
  br i1 %i.ey, label %bb.x, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.ac, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ez = phi ptr [ null, %bb.ac ], [ %i.eu, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  %.pre378.a = load ptr, ptr %6, align 8, !tbaa !97
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph338
  %i.fa = phi ptr [ %.pre378.a, %.critedge.loopexit ], [ %i.eo, %.lr.ph338 ] ; 3 uses
  %i.fb = phi ptr [ %i.ez, %.critedge.loopexit ], [ null, %.lr.ph338 ]
  %i.fc = icmp eq ptr %i.fa, null
  br i1 %i.fc, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187

_ZNK16basic_union_find12get_num_varsEv.exit.i.i187: ; preds = %.critedge
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !77
  %.not.i.i188 = icmp ugt i32 %i.fe, %.sroa.6274.8.extract.trunc336
  br i1 %.not.i.i188, label %bb.w, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

bb.w:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187
  %i.ff = load ptr, ptr %i.dx, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.sroa.6274.0335
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !77
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190: ; preds = %.critedge, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187, %bb.w
  %.0.i.i189 = phi i32 [ %i.fh, %bb.w ], [ %.sroa.6274.8.extract.trunc336, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187 ], [ %.sroa.6274.8.extract.trunc336, %.critedge ] ; 3 uses
  %.sroa.6274.8.insert.ext = zext i32 %.0.i.i189 to i64
  %.not358 = icmp eq i32 %.sroa.6305.0348, %.0.i.i189
  br i1 %.not358, label %.lr.ph343, label %.lr.ph338

bb.x:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv371
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.fk = invoke noundef ptr @_ZN7datalog19mk_array_eq_rewrite7replaceEP4exprS2_S2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.fj, ptr noundef %.2105.ph, ptr noundef %i.es)
          to label %bb.y unwind label %bb.ad      ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv371 ; 2 uses
  %i.fn = load ptr, ptr %5, align 8, !tbaa !98, !nonnull !69, !align !70
  %.not.i.i195 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i195, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !89
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !89
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.z, %bb.y
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !90 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fr, null
  br i1 %.not.i3.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !89
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !89
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fn, ptr noundef nonnull %i.fr)
          to label %._crit_edge376 unwind label %bb.ae

._crit_edge376:                                   ; preds = %bb.ab
  %.pre377 = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge376, %bb.aa, %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fw = phi ptr [ %.pre377, %._crit_edge376 ], [ %i.fl, %bb.aa ], [ %i.fl, %_ZN11ast_manager7inc_refEP3ast.exit.i ] ; 2 uses
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !90
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.critedge.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !268

bb.ad:                                            ; preds = %bb.x
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body257

bb.ae:                                            ; preds = %bb.ab
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body257

._crit_edge344:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213
  %i.ga = load ptr, ptr %i.af, align 8, !tbaa !79 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader: ; preds = %._crit_edge344
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !77 ; 4 uses
  %i.ge = icmp eq ptr %.fr360, null
  %i.gf = getelementptr inbounds i8, ptr %.fr360, i64 -4
  %i.gg = add i32 %.sroa.6305.0348, 1             ; 3 uses
  br i1 %i.ge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader
  %.not.i199460 = icmp eq i32 %i.gg, %i.gd
  br i1 %.not.i199460, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !77
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge344
  %i.gi = icmp eq ptr %.fr360, null
  %i.gj = getelementptr inbounds i8, ptr %.fr360, i64 -4
  br i1 %i.gi, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %indvars.iv.next.i464 = add nuw nsw i64 %.sroa.8.8.insert.ext, 1 ; 2 uses
  %indvars.i465 = trunc i64 %indvars.iv.next.i464 to i32 ; 2 uses
  %.not.us.i466 = icmp eq i32 %indvars.i465, 0
  br i1 %.not.us.i466, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !77
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %indvars.iv.next.i.us = add i32 %.sroa.6305.0348, 1
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i467, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, !llvm.loop !269

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %indvars.i468 = phi i32 [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i465, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 4 uses
  %indvars.iv.next.i467 = phi i64 [ %indvars.iv.next.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.iv.next.i464, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 2 uses
  %.not.i.us.i = icmp ugt i32 %i.gk, %indvars.i468
end_hunk_0

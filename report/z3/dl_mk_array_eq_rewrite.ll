inline.NumInlined: 335
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7datalog19mk_array_eq_rewrite16instantiate_ruleERKNS_4ruleERNS_8rule_setE:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !249

bb.h:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

._crit_edge322:                                   ; preds = %bb.r
  %.pre374 = load ptr, ptr %i.af, align 8, !tbaa !231 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8
  %.fr7.i.i = freeze ptr %i.bg                    ; 4 uses
  %i.bh = icmp eq ptr %.fr7.i.i, null
  %i.bi = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.bj = icmp eq ptr %.pre374, null              ; 3 uses
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.s, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %._crit_edge322
  %i.bk = getelementptr inbounds i8, ptr %.pre374, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !227 ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i456 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i456, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !227
  %i.bo = zext i32 %i.bn to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i457, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bm
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !251

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i457 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i457, %i.bo
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i457
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !227
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp eq i64 %indvars.iv.i.i457, %i.br
  br i1 %i.bs, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !251

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !251

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i457, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.bm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i457, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.bt = trunc nuw i64 %indvars.iv.i.lcssa.i to i32 ; 2 uses
  br i1 %i.bj, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

bb.i:                                             ; preds = %.lr.ph321, %bb.r
  %indvars.iv367 = phi i64 [ %i.aj, %.lr.ph321 ], [ %indvars.iv.next368, %bb.r ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv367
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !245
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !252
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !256 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.j
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !259
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, 2
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.k:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !263
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !248 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !248
  %i.cu = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.cr)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !256 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.m
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !264
  %i.cz = load i32, ptr %i.cw, align 8, !tbaa !259
  %i.da = icmp eq i32 %i.cz, %i.cy
  br i1 %i.da, label %_ZNK17array_recognizers8is_arrayEP4sort.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132

_ZNK17array_recognizers8is_arrayEP4sort.exit:     ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !265
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
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !246
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !246
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !231 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !227 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !227
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.q, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i132
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc136 unwind label %bb.o

.noexc136:                                        ; preds = %bb.q
  %.pre.i.i133 = load ptr, ptr %i.j, align 8, !tbaa !231 ; 2 uses
  %.phi.trans.insert.i.i134 = getelementptr inbounds i8, ptr %.pre.i.i133, i64 -4
  %.pre2.i.i135 = load i32, ptr %.phi.trans.insert.i.i134, align 4, !tbaa !227
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137: ; preds = %bb.p, %.noexc136
  %i.dp = phi i32 [ %.pre2.i.i135, %.noexc136 ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i.i133, %.noexc136 ], [ %i.di, %bb.p ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds
  store ptr %i.by, ptr %i.dt, align 8, !tbaa !248
  %i.du = add i32 %i.dp, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !227
  br label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit137, %bb.n
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next368 to i32
  %exitcond370.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond370.not, label %._crit_edge322, label %bb.i, !llvm.loop !266

bb.s:                                             ; preds = %._crit_edge322
  br i1 %i.bj, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, %bb.s
  %.sroa.2.0.i440 = phi i32 [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.s ]
  %i.dv = getelementptr inbounds i8, ptr %.pre374, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !227
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i435 = phi i32 [ %.sroa.2.0.i440, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ %i.bt, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.s ] ; 2 uses
  %i.dx = phi ptr [ %.pre374, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ null, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ null, %bb.s ]
  %.sroa.2.0.i146 = phi i32 [ %i.dw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.s ] ; 2 uses
  %.not315347 = icmp eq i32 %.sroa.2.0.i435, %.sroa.2.0.i146
  br i1 %.not315347, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.loopexit
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %.lr.ph328

._crit_edge351:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerEC2ERS1_.exit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !267
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str, i1 noundef zeroext true)
          to label %bb.au unwind label %bb.ax

.lr.ph328:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.lr.ph350
  %i.dz = phi ptr [ %.fr7.i.i, %.lr.ph350 ], [ %.fr360, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 3 uses
  %i.ea = phi ptr [ %i.dx, %.lr.ph350 ], [ %i.gb, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 2 uses
  %.sroa.6305.0348 = phi i32 [ %.sroa.2.0.i435, %.lr.ph350 ], [ %.sroa.6305.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 9 uses
  %.sroa.8.8.insert.ext = zext i32 %.sroa.6305.0348 to i64 ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.sroa.8.8.insert.ext
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !248
  %i.ed = icmp eq ptr %i.dz, null
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ef = load ptr, ptr %i.dy, align 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph328, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %.sroa.6285.8.extract.trunc326 = phi i32 [ %.sroa.6305.0348, %.lr.ph328 ], [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 3 uses
  %.sroa.6285.0325 = phi i64 [ %.sroa.8.8.insert.ext, %.lr.ph328 ], [ %.sroa.6285.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.sroa.6285.0325
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !248 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = and i32 %i.ej, 65535
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %bb.u, label %.lr.ph338.preheader

bb.u:                                             ; preds = %bb.t
  br i1 %i.ed, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %bb.u
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !227
  %.not.i.i164 = icmp ugt i32 %i.em, %.sroa.6285.8.extract.trunc326
  br i1 %.not.i.i164, label %bb.v, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.v:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.sroa.6285.0325
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !227
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.u, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %bb.v
  %.0.i.i = phi i32 [ %i.eo, %bb.v ], [ %.sroa.6285.8.extract.trunc326, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.sroa.6285.8.extract.trunc326, %bb.u ] ; 3 uses
  %.sroa.6285.8.insert.ext = zext i32 %.0.i.i to i64
  %.not357 = icmp eq i32 %.sroa.6305.0348, %.0.i.i
  br i1 %.not357, label %.lr.ph338.preheader, label %bb.t

.lr.ph338.preheader:                              ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, %bb.t
  %.2105.ph = phi ptr [ %i.eh, %bb.t ], [ %i.ec, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ] ; 2 uses
  %.pre375 = load ptr, ptr %i.j, align 8, !tbaa !231
  br label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.preheader, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190
  %i.ep = phi ptr [ %i.fb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %i.dz, %.lr.ph338.preheader ]
  %i.eq = phi ptr [ %i.fc, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.pre375, %.lr.ph338.preheader ] ; 2 uses
  %.sroa.6274.8.extract.trunc336 = phi i32 [ %.0.i.i189, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.6305.0348, %.lr.ph338.preheader ] ; 3 uses
  %.sroa.6274.0335 = phi i64 [ %.sroa.6274.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ], [ %.sroa.8.8.insert.ext, %.lr.ph338.preheader ] ; 2 uses
  %i.er = load ptr, ptr %i.af, align 8, !tbaa !231
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.6274.0335
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !248
  %i.eu = icmp eq ptr %i.eq, null
  br i1 %i.eu, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.lr.ph338, %bb.ac
  %i.ev = phi ptr [ %i.fx, %bb.ac ], [ %i.eq, %.lr.ph338 ] ; 3 uses
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %bb.ac ], [ 0, %.lr.ph338 ] ; 4 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !227
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv371, %i.ey
  br i1 %i.ez, label %bb.x, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.ac, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.fa = phi ptr [ null, %bb.ac ], [ %i.ev, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  %.pre378 = load ptr, ptr %6, align 8, !tbaa !268
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph338
  %i.fb = phi ptr [ %.pre378, %.critedge.loopexit ], [ %i.ep, %.lr.ph338 ] ; 3 uses
  %i.fc = phi ptr [ %i.fa, %.critedge.loopexit ], [ null, %.lr.ph338 ]
  %i.fd = icmp eq ptr %i.fb, null
  br i1 %i.fd, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187

_ZNK16basic_union_find12get_num_varsEv.exit.i.i187: ; preds = %.critedge
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !227
  %.not.i.i188 = icmp ugt i32 %i.ff, %.sroa.6274.8.extract.trunc336
  br i1 %.not.i.i188, label %bb.w, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

bb.w:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187
  %i.fg = load ptr, ptr %i.dy, align 8, !tbaa !268
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.sroa.6274.0335
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !227
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190: ; preds = %.critedge, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187, %bb.w
  %.0.i.i189 = phi i32 [ %i.fi, %bb.w ], [ %.sroa.6274.8.extract.trunc336, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i187 ], [ %.sroa.6274.8.extract.trunc336, %.critedge ] ; 3 uses
  %.sroa.6274.8.insert.ext = zext i32 %.0.i.i189 to i64
  %.not358 = icmp eq i32 %.sroa.6305.0348, %.0.i.i189
  br i1 %.not358, label %.lr.ph343, label %.lr.ph338

bb.x:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv371
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !248
  %i.fl = invoke noundef ptr @_ZN7datalog19mk_array_eq_rewrite7replaceEP4exprS2_S2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %i.fk, ptr noundef %.2105.ph, ptr noundef %i.et)
          to label %bb.y unwind label %bb.ad      ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !231 ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv371 ; 2 uses
  %i.fo = load ptr, ptr %5, align 8, !tbaa !269, !nonnull !213, !align !214
  %.not.i.i195 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i195, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !246
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !246
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.z, %bb.y
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !248 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fs, null
  br i1 %.not.i3.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !246
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !246
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fo, ptr noundef nonnull %i.fs)
          to label %._crit_edge376 unwind label %bb.ae

._crit_edge376:                                   ; preds = %bb.ab
  %.pre377 = load ptr, ptr %i.j, align 8, !tbaa !231
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge376, %bb.aa, %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fx = phi ptr [ %.pre377, %._crit_edge376 ], [ %i.fm, %bb.aa ], [ %i.fm, %_ZN11ast_manager7inc_refEP3ast.exit.i ] ; 2 uses
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !248
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %.critedge.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !270

bb.ad:                                            ; preds = %bb.x
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body257

bb.ae:                                            ; preds = %bb.ab
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body257

._crit_edge344:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213
  %i.gb = load ptr, ptr %i.af, align 8, !tbaa !231 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader: ; preds = %._crit_edge344
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 -4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !227 ; 4 uses
  %i.gf = icmp eq ptr %.fr360, null
  %i.gg = getelementptr inbounds i8, ptr %.fr360, i64 -4
  br i1 %i.gf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader.split.us, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader
  %indvars.iv.next375462 = add nuw nsw i64 %.sroa.8.8.insert.ext, 1 ; 2 uses
  %indvars463 = trunc i64 %indvars.iv.next375462 to i32 ; 2 uses
  %.not.i199460 = icmp eq i32 %i.ge, %indvars463
  br i1 %.not.i199460, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !227
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader.split.us: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader
  %12 = add i32 %.sroa.6305.0348, 1
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

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
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !227
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %indvars.iv.next.i.us = add i32 %.sroa.6305.0348, 1
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i467, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, !llvm.loop !271

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %indvars.i468 = phi i32 [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i465, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 4 uses
  %indvars.iv.next.i467 = phi i64 [ %indvars.iv.next.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.iv.next.i464, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.preheader ] ; 2 uses
  %.not.i.us.i = icmp ugt i32 %i.gk, %indvars.i468
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.gl = and i64 %indvars.iv.next.i467, 4294967295
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.fr360, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !227
  %i.go = icmp eq i32 %i.gn, %indvars.i468
  br i1 %i.go, label %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !271

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv.next375465, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next375 to i32 ; 2 uses
  %.not.i199 = icmp eq i32 %i.ge, %indvars
  br i1 %.not.i199, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200, !llvm.loop !271

_ZNK16basic_union_find12get_num_varsEv.exit.i.i200: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198
  %i.gp = phi i32 [ %indvars, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198 ], [ %indvars463, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader ] ; 4 uses
  %indvars.iv.next375465 = phi i64 [ %indvars.iv.next375, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198 ], [ %indvars.iv.next375462, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200.preheader ] ; 2 uses
  %.not.i.i201 = icmp ugt i32 %i.gh, %i.gp
  br i1 %.not.i.i201, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200
  %13 = and i64 %indvars.iv.next375465, 4294967295
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.fr360, i64 %13
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !227
  %i.gs = icmp eq i32 %i.gr, %i.gp
  br i1 %i.gs, label %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198, !llvm.loop !271

_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, !llvm.loop !271

_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, !llvm.loop !271

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453, %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452, %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader.split.us, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us
  %.sroa.6305.1 = phi i32 [ %i.gp, %_ZNK16basic_union_find7is_rootEj.exit.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit454_crit_edge ], [ %indvars.iv.next.i.us, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader.split.us ], [ %12, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader.split.us ], [ %indvars.i468, %_ZNK16basic_union_find7is_rootEj.exit.us.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit_crit_edge ], [ %indvars.i468, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader452 ], [ %i.ge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198.preheader453 ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %i.ge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i198 ], [ %i.gp, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i200 ] ; 2 uses
  %.not315 = icmp eq i32 %.sroa.6305.1, %.sroa.2.0.i146
  br i1 %.not315, label %._crit_edge351, label %.lr.ph328

.lr.ph343:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213
  %.sroa.6.8.extract.trunc342 = phi i32 [ %.0.i.i212, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213 ], [ %.sroa.6305.0348, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ] ; 3 uses
  %.sroa.6.0341 = phi i64 [ %.sroa.6.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213 ], [ %.sroa.8.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit190 ] ; 2 uses
  %i.gt = load ptr, ptr %i.af, align 8, !tbaa !231
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.sroa.6.0341
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !248
  %i.gw = load ptr, ptr %i.g, align 8, !tbaa !230, !nonnull !213, !align !214
  %i.gx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gw, i32 noundef 0, i32 noundef 2, ptr noundef %i.gv, ptr noundef %.2105.ph)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.at ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %.lr.ph343
  %.not.i.i.i.i203 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i203, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204, label %bb.af

bb.af:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !246
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !246
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204: ; preds = %bb.af, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.hb = load ptr, ptr %i.j, align 8, !tbaa !231 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !227 ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 -8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !227
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.ar

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i204
  %i.hi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc256 unwind label %bb.at ; 3 uses

.noexc256:                                        ; preds = %bb.ah
  store i32 2, ptr %i.hi, align 4, !tbaa !227
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i32 0, ptr %i.hj, align 4, !tbaa !227
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  store ptr %i.hk, ptr %i.j, align 8, !tbaa !231
  br label %.noexc208

bb.ai:                                            ; preds = %bb.ag
  %i.hl = mul i32 %i.he, 3
  %i.hm = add i32 %i.hl, 1
  %i.hn = lshr i32 %i.hm, 1                       ; 3 uses
  %i.ho = shl i32 %i.hn, 3
  %i.hp = add i32 %i.ho, 8                        ; 2 uses
  %.not.i254 = icmp ugt i32 %i.hn, %i.he
  br i1 %.not.i254, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hq = shl i32 %i.he, 3
  %i.hr = add i32 %i.hq, 8
  %.not27.i = icmp ugt i32 %i.hp, %i.hr
  br i1 %.not27.i, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hs = call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hs, align 8, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 3 uses
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !272
  %i.hv = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !277 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !274
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !278
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !278
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i255 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !277
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.am
  %i.id = phi i64 [ %i.hz, %bb.am ], [ %.pre.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %i.id, ptr %i.if, align 8, !tbaa !277
  store ptr %i.hw, ptr %3, align 8, !tbaa !274
  store i64 0, ptr %i.ie, align 8, !tbaa !277
  store i8 0, ptr %i.hw, align 8, !tbaa !278
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.aq unwind label %bb.an

bb.an:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hw
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.an
  %i.ij = load i64, ptr %i.hw, align 8, !tbaa !278
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body257

bb.ao:                                            ; preds = %bb.ak
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @__cxa_free_exception(ptr %i.hs) #15
  br label %.body257

bb.ap:                                            ; preds = %bb.aj
  %i.im = zext i32 %i.hp to i64
  %i.in = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hf, i64 noundef %i.im)
          to label %.noexc259 unwind label %bb.at ; 2 uses

.noexc259:                                        ; preds = %bb.ap
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  store ptr %i.io, ptr %i.j, align 8, !tbaa !231
  store i32 %i.hn, ptr %i.in, align 4, !tbaa !227
  br label %.noexc208

bb.aq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc208:                                        ; preds = %.noexc259, %.noexc256
  %.pre.i.i205 = phi ptr [ %i.io, %.noexc259 ], [ %i.hk, %.noexc256 ] ; 2 uses
  %.phi.trans.insert.i.i206 = getelementptr inbounds i8, ptr %.pre.i.i205, i64 -4
  %.pre2.i.i207 = load i32, ptr %.phi.trans.insert.i.i206, align 4, !tbaa !227
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc208, %bb.ag
  %i.ip = phi i32 [ %.pre2.i.i207, %.noexc208 ], [ %i.he, %bb.ag ] ; 2 uses
  %i.iq = phi ptr [ %.pre.i.i205, %.noexc208 ], [ %i.hb, %bb.ag ] ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -4
  %i.is = zext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.is
  store ptr %i.gx, ptr %i.it, align 8, !tbaa !248
  %i.iu = add i32 %i.ip, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !227
  %i.iv = load ptr, ptr %6, align 8, !tbaa !268
  %.fr360 = freeze ptr %i.iv                      ; 9 uses
  %i.iw = icmp eq ptr %.fr360, null
  br i1 %i.iw, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210

_ZNK16basic_union_find12get_num_varsEv.exit.i.i210: ; preds = %bb.ar
  %i.ix = getelementptr inbounds i8, ptr %.fr360, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !227
  %.not.i.i211 = icmp ugt i32 %i.iy, %.sroa.6.8.extract.trunc342
  br i1 %.not.i.i211, label %bb.as, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213

bb.as:                                            ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210
  %i.iz = load ptr, ptr %i.dy, align 8, !tbaa !268
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.sroa.6.0341
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !227
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit213: ; preds = %bb.ar, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210, %bb.as
  %.0.i.i212 = phi i32 [ %i.jb, %bb.as ], [ %.sroa.6.8.extract.trunc342, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i210 ], [ %.sroa.6.8.extract.trunc342, %bb.ar ] ; 3 uses
  %.sroa.6.8.insert.ext = zext i32 %.0.i.i212 to i64
  %.not359 = icmp eq i32 %.sroa.6305.0348, %.0.i.i212
  br i1 %.not359, label %._crit_edge344, label %.lr.ph343

bb.at:                                            ; preds = %bb.ap, %bb.ah, %.lr.ph343
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body257

bb.au:                                            ; preds = %._crit_edge351
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !230, !nonnull !213, !align !214
  invoke void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(952) %i.jd, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
end_hunk_0

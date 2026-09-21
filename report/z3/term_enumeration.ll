Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/term_enumeration?download=true
inline.NumInlined: 1274
inline.NumDeleted: 708
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9term_enum20bottom_up_enumerator9find_nextEv:bb.a
  %.not.i.i22 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i22, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK9term_enum20bottom_up_enumerator12sort_matchesEP4expr.exit.thread
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !95, !nonnull !80, !align !81
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !97
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !97
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef nonnull %i.ba)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZNK9term_enum20bottom_up_enumerator12sort_matchesEP4expr.exit.thread, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !127 ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !99 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %.not.i23 = icmp eq i32 %i.bl, 0
  br i1 %.not.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bi, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bp = load ptr, ptr %.06.i.i, align 8, !tbaa !128 ; 3 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !129, !nonnull !80, !align !81
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !97
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bq, ptr noundef nonnull %i.bp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.q

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bo
  br i1 %i.bw, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.bx = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bi, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.by)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %i.az, label %.preheader, label %.thread

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn

_ZNK17scoped_ptr_vectorIN9term_enum10productionEE4sizeEv.exit.thread: ; preds = %.preheader, %_ZNK17scoped_ptr_vectorIN9term_enum10productionEE4sizeEv.exit
  store i32 1, ptr %i.b, align 8, !tbaa !126
  store i32 1, ptr %i.c, align 8, !tbaa !123
  store i32 0, ptr %i.d, align 8, !tbaa !125
  store i32 0, ptr %i.e, align 4, !tbaa !209
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !166
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9term_enum9term_bank20get_by_cost_and_sortEjP4sort(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef 1, ptr noundef %i.cd)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !127 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK17scoped_ptr_vectorIN9term_enum10productionEE4sizeEv.exit.thread
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !99
  br label %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit

_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit: ; preds = %_ZNK17scoped_ptr_vectorIN9term_enum10productionEE4sizeEv.exit.thread, %bb.s
  %.0.i.i25 = phi i32 [ %i.ci, %bb.s ], [ 0, %_ZNK17scoped_ptr_vectorIN9term_enum10productionEE4sizeEv.exit.thread ]
  store i32 %.0.i.i25, ptr %i.h, align 8, !tbaa !210
  store i8 0, ptr %i.j, align 4, !tbaa !211
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !167 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i26, label %_ZN8uint_set5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  store i32 0, ptr %i.ck, align 4, !tbaa !99
  br label %_ZN8uint_set5resetEv.exit

_ZN8uint_set5resetEv.exit:                        ; preds = %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit, %bb.t
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !137 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !137
  %.not.i.i27 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i27, label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.outer.backedge, label %bb.u

_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.outer.backedge: ; preds = %_ZN8uint_set5resetEv.exit, %bb.u
  br label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.outer, !llvm.loop !302

bb.u:                                             ; preds = %_ZN8uint_set5resetEv.exit
  call void @_ZNKSt14default_deleteIN9term_enum17children_iteratorEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.cl)
  br label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.outer.backedge

bb.v:                                             ; preds = %_ZN8reslimit11is_canceledEv.exit.thread38
  %i.cm = call noundef ptr @_ZN9term_enum20bottom_up_enumerator19enumerate_operatorsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.c, align 8, !tbaa !123
  %i.co = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.co, ptr %i.c, align 8, !tbaa !123
  store i32 0, ptr %i.d, align 8, !tbaa !125
  store i32 0, ptr %i.e, align 4, !tbaa !209
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !166
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9term_enum9term_bank20get_by_cost_and_sortEjP4sort(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %i.co, ptr noundef %i.cp)
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !127 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit30, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !99
  br label %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit30

_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit30: ; preds = %bb.w, %bb.x
  %.0.i.i29 = phi i32 [ %i.cu, %bb.x ], [ 0, %bb.w ]
  store i32 %.0.i.i29, ptr %i.h, align 8, !tbaa !210
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !137 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !137
  %.not.i.i31 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i31, label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit32, label %bb.y

bb.y:                                             ; preds = %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit30
  call void @_ZNKSt14default_deleteIN9term_enum17children_iteratorEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.cv)
  br label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit32

_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit32: ; preds = %_ZNK9term_enum20bottom_up_enumerator13get_bank_sizeEv.exit30, %bb.y
  %i.cw = load i8, ptr %i.j, align 4, !tbaa !211, !range !93, !noundef !80
  %i.cx = trunc nuw i8 %i.cw to i1
  %.pre = load ptr, ptr %i.k, align 8
  %.fr131 = freeze ptr %.pre                      ; 6 uses
  br i1 %i.cx, label %_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit32
  %i.cy = load i32, ptr %i.c, align 8, !tbaa !123 ; 3 uses
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !130 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  %i.db = getelementptr inbounds i8, ptr %.fr131, i64 -4
  br i1 %i.da, label %.thread.sink.split, label %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph

_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph: ; preds = %bb.z
  %i.dc = icmp eq ptr %.fr131, null
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !99 ; 3 uses
  %i.df = icmp ult i32 %i.cy, %i.de               ; 2 uses
  br i1 %i.dc, label %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.us.split, label %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.split

_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.us.split: ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph
  br i1 %i.df, label %.lr.ph128.preheader, label %.thread.sink.split

.lr.ph128.preheader:                              ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.us.split
  %i.dg = zext i32 %i.cy to i64
  %wide.trip.count152 = zext i32 %i.de to i64
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.loopexit.i.us
  %indvars.iv149 = phi i64 [ %i.dg, %.lr.ph128.preheader ], [ %indvars.iv.next150, %.loopexit.i.us ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv149
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !213 ; 3 uses
  %.not.i33.us = icmp eq ptr %i.di, null
  br i1 %.not.i33.us, label %.loopexit.i.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !216 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !217 ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %.idx.i.i.i.us = shl nuw nsw i64 %i.dm, 4
  %i.dn = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.us ; 2 uses
  %.not1.i.i.i.i.i.us = icmp eq i32 %i.dl, 0
  br i1 %.not1.i.i.i.i.i.us, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.aa, %bb.ab
  %.sroa.0.0.i.i.i.us = phi ptr [ %i.dq, %bb.ab ], [ %i.dj, %bb.aa ] ; 3 uses
  %i.do = load ptr, ptr %.sroa.0.0.i.i.i.us, align 8, !tbaa !220
  %i.dp = icmp ult ptr %i.do, inttoptr (i64 2 to ptr)
  br i1 %i.dp, label %bb.ab, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.us
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i35.us = icmp eq ptr %i.dq, %i.dn
  br i1 %.not.i.i.i.i.i35.us, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !8

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %bb.ab, %bb.aa
  %.sroa.0.1.i.i.i.us = phi ptr [ %i.dj, %bb.aa ], [ %i.dn, %bb.ab ], [ %.sroa.0.0.i.i.i.us, %.lr.ph.i.i.i.i.i.us ]
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dm
  %.not2934.i.us = icmp eq ptr %.sroa.0.1.i.i.i.us, %i.dr
  br i1 %.not2934.i.us, label %.loopexit.i.us, label %_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread

.loopexit.i.us:                                   ; preds = %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us, %.lr.ph128
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.thread.sink.split, label %.lr.ph128

_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.split: ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph
  br i1 %i.df, label %.lr.ph.preheader, label %.thread.sink.split

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.split
  %i.ds = zext i32 %i.cy to i64
  %wide.trip.count = zext i32 %i.de to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.i
  %indvars.iv = phi i64 [ %i.ds, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !213 ; 3 uses
  %.not.i33 = icmp eq ptr %i.du, null
  br i1 %.not.i33, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !216 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !217 ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.dy, 4
  %i.dz = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.ad
  %.sroa.0.0.i.i.i = phi ptr [ %i.ec, %bb.ad ], [ %i.dv, %bb.ac ] ; 3 uses
  %i.ea = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !220
  %i.eb = icmp ult ptr %i.ea, inttoptr (i64 2 to ptr)
  br i1 %i.eb, label %bb.ad, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ec, %i.dz
  br i1 %.not.i.i.i.i.i35, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i, %bb.ac
  %.sroa.0.1.i.i.i = phi ptr [ %i.dv, %bb.ac ], [ %i.dz, %bb.ad ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dy ; 2 uses
  %.not2934.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.ed
  br i1 %.not2934.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i
  %i.ee = load i32, ptr %i.db, align 4, !tbaa !99
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i, %.lr.ph.i
  %.sroa.023.035.i = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i ], [ %.sroa.023.2.i, %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i ] ; 2 uses
  %i.ef = load ptr, ptr %.sroa.023.035.i, align 8, !tbaa !221
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !222 ; 2 uses
  %i.eh = lshr i32 %i.eg, 5
  %i.ei = xor i32 %i.eh, 67108864                 ; 2 uses
  %i.ej = icmp ult i32 %i.ei, %i.ee
  br i1 %i.ej, label %_ZNK8uint_set8containsEj.exit.i, label %_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread

_ZNK8uint_set8containsEj.exit.i:                  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.fr131, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !99
  %i.en = and i32 %i.eg, 31
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = and i32 %i.em, %i.eo
  %.not30.i = icmp eq i32 %i.ep, 0
  br i1 %.not30.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK8uint_set8containsEj.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.023.035.i, i64 16 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.eq, %i.dz
  br i1 %.not1.i.i.i, label %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %bb.af
  %.sroa.023.1.i = phi ptr [ %i.et, %bb.af ], [ %i.eq, %bb.ae ] ; 3 uses
  %i.er = load ptr, ptr %.sroa.023.1.i, align 8, !tbaa !220
  %i.es = icmp ult ptr %i.er, inttoptr (i64 2 to ptr)
  br i1 %i.es, label %bb.af, label %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i, i64 16 ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.et, %i.dz
  br i1 %.not.i.i.i34, label %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i: ; preds = %bb.af, %.lr.ph.i.i.i, %bb.ae
  %.sroa.023.2.i = phi ptr [ %i.eq, %bb.ae ], [ %i.et, %bb.af ], [ %.sroa.023.1.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.023.2.i, %i.ed
  br i1 %.not29.i, label %.loopexit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

.loopexit.i:                                      ; preds = %_ZN14core_hashtableIN7obj_mapI4sort10ptr_vectorI4exprEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit.i, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %.lr.ph

_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread: ; preds = %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE5beginEv.exit.i.us, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit32
  %i.eu = icmp eq ptr %.fr131, null
  br i1 %i.eu, label %_ZNK8uint_set8containsEj.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK8uint_set8containsEj.exit.i, %_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread
  %.in198 = load ptr, ptr %i.g, align 8, !tbaa !166
  %i.ev = load i32, ptr %.in198, align 4, !tbaa !222 ; 2 uses
  %.in = lshr i32 %i.ev, 5
  %i.ew = xor i32 %.in, 67108864                  ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.fr131, i64 -4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !99
  %i.ez = icmp ult i32 %i.ew, %i.ey
  br i1 %i.ez, label %_ZNK8uint_set8containsEj.exit, label %_ZNK8uint_set8containsEj.exit.thread

_ZNK8uint_set8containsEj.exit:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.fa = zext nneg i32 %i.ew to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.fr131, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !99
  %i.fd = and i32 %i.ev, 31
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = and i32 %i.fc, %i.fe
  %.not43 = icmp eq i32 %i.ff, 0
  br i1 %.not43, label %_ZNK8uint_set8containsEj.exit.thread, label %_ZN8uint_set5resetEv.exit37

_ZN8uint_set5resetEv.exit37:                      ; preds = %_ZNK8uint_set8containsEj.exit
  store i32 0, ptr %i.ex, align 4, !tbaa !99
  br label %_ZNK8uint_set8containsEj.exit.thread

_ZNK8uint_set8containsEj.exit.thread:             ; preds = %_ZN9term_enum9term_bank13is_productiveEjRK8uint_set.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK8uint_set8containsEj.exit, %_ZN8uint_set5resetEv.exit37
  store i8 0, ptr %i.j, align 4, !tbaa !211
  br label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.backedge

_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit.backedge: ; preds = %_ZNK8uint_set8containsEj.exit.thread, %_ZN8reslimit11is_canceledEv.exit.thread38
  br label %_ZNSt10unique_ptrIN9term_enum17children_iteratorESt14default_deleteIS1_EE5resetEPS1_.exit, !llvm.loop !302

.thread.sink.split:                               ; preds = %bb.z, %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.split, %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit.i.lr.ph.split.us.split, %_ZN8reslimit11is_canceledEv.exit, %bb.b, %.loopexit.i, %.loopexit.i.us
  store i32 2, ptr %i.b, align 8, !tbaa !126
  br label %.thread

.thread:                                          ; preds = %bb.v, %_ZN8reslimit11is_canceledEv.exit.thread38, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %.thread.sink.split
  %.5 = phi ptr [ null, %.thread.sink.split ], [ %.2, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ null, %_ZN8reslimit11is_canceledEv.exit.thread38 ], [ %i.cm, %bb.v ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9term_enum20bottom_up_enumerator8add_termERK7obj_refI4expr11ast_managerEj(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 13 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !196, !nonnull !80, !align !81
  store ptr null, ptr %3, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %1, align 8, !tbaa !92
  invoke void @_ZN11th_rewriterclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !92     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !133  ; 3 uses
  %i.m = add i32 %i.l, -1
  %i.n = and i32 %i.m, %i.j                       ; 3 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !132  ; 3 uses
  %i.p = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.r = zext i32 %i.l to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %.not34.i.i = icmp eq i32 %i.n, %i.l
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.e, %bb.b
  %.not2736.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2736.i.i, label %.loopexit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %.035.i.i = phi ptr [ %i.z, %bb.e ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.035.i.i, align 8, !tbaa !135 ; 4 uses
  %.not.i = icmp ult ptr %i.t, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !174
  %i.w = icmp eq i32 %i.v, %i.j
  %i.x = icmp eq ptr %i.t, %i.h
  %or.cond.i.i = and i1 %i.x, %i.w
  br i1 %or.cond.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = icmp eq ptr %i.t, null
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !304

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.o, %.preheader.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.137.i.i, align 8, !tbaa !135 ; 4 uses
  %i.ab = icmp ult ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !174
  %i.ae = icmp eq i32 %i.ad, %i.j
  %i.af = icmp eq ptr %i.aa, %i.h
  %or.cond31.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond31.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.h

bb.g:                                             ; preds = %.lr.ph38.i.i
  %i.ag = icmp eq ptr %i.aa, null
  %i.ah = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ah, %i.q
  %or.cond43.i.i = select i1 %i.ag, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %.loopexit, label %.lr.ph38.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.q
  br i1 %.not27.old.i.i, label %.loopexit, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.h, %bb.g
  %.137.i.i.be = phi ptr [ %i.ah, %bb.g ], [ %.old.i.i, %bb.h ]
  br label %.lr.ph38.i.i, !llvm.loop !305

bb.i:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n, %bb.m, %bb.k, %.loopexit, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %bb.d, %bb.h, %bb.g, %.preheader.i.i
  %i.aj = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %.loopexit
  %i.ak = icmp ugt i32 %i.aj, 9
  br i1 %i.ak, label %bb.k, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_Z12verbose_lockv()
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.o unwind label %bb.i       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.p
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.i

bb.q:                                             ; preds = %bb.l
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.r unwind label %bb.i       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.r
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.s unwind label %bb.i

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.au = load ptr, ptr %3, align 8, !tbaa !92
end_hunk_0
begin_hunk_1_@_ZN6vectorIjLb0EjE13expand_vectorEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9term_enum17children_iteratorC2ER11ast_managerRKNS_10productionERKNS_9term_bankEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.vector.46, align 8           ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i8 0, ptr %i.a, align 4, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !229
  br label %bb.b

_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !229
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.l = add i32 %4, -1
  br label %bb.d

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  store i8 1, ptr %i.a, align 4, !tbaa !227
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

bb.c:                                             ; preds = %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !229  ; 8 uses
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.d, label %._crit_edge, !llvm.loop !329

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  invoke void @_ZNK9term_enum9term_bank11get_by_sortEP4sortj(ptr dead_on_unwind nonnull writable sret(%class.vector.46) align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.r, i32 noundef %i.l)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !170  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99
  br label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit

_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit: ; preds = %bb.f, %.noexc
  %i.z = phi i32 [ %.pre2.i, %.noexc ], [ %i.v, %bb.f ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %.noexc ], [ %i.s, %bb.f ] ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %5, align 8, !tbaa !173
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !173
  %i.af = add i32 %i.z, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !99
  %i.ah = add i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !173 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit

_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit:  ; preds = %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !99
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorISt4pairIP4exprjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread: ; preds = %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit, %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit
  store i8 1, ptr %i.a, align 4, !tbaa !227
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !167 ; 3 uses
  %i.ar = icmp eq ptr %.pre, null
  br i1 %i.ar, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %._crit_edge
  %.not.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %._crit_edge
  %i.as = getelementptr inbounds i8, ptr %.pre, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !99 ; 2 uses
  %.not16.i = icmp ugt i32 %i.m, %i.at
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.k

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.ph = phi i32 [ %i.at, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  store i32 %i.m, ptr %i.as, align 4, !tbaa !99
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %.noexc20
  %i.au = phi ptr [ %.pr.pre.i, %.noexc20 ], [ %.ph, %thread-pre-split.i.preheader ] ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !99
  %i.ay = icmp ugt i32 %i.m, %i.ax
  br i1 %i.ay, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %bb.l

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %i.c, align 8, !tbaa !167
  br label %thread-pre-split.i, !llvm.loop !330

bb.l:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 -4
  store i32 %i.m, ptr %i.az, align 4, !tbaa !99
  %.not1319.i = icmp eq i32 %.0.i17.i.ph, %i.m
  br i1 %.not1319.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.ba = zext i32 %i.m to i64
  %i.bb = zext i32 %.0.i17.i.ph to i64            ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.au, i64 %i.bb
  %i.bd = sub nsw i64 %i.ba, %i.bb
  %i.be = shl nsw i64 %i.bd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %i.be, i1 false), !tbaa !99
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.k, %bb.l, %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, %bb.b
  ret void

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn16 = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn, %bb.j ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  call void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #22
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK9term_enum9term_bank11get_by_sortEP4sortj(ptr dead_on_unwind noalias writable sret(%class.vector.46) align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !173
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread
  %i.c = phi ptr [ null, %bb.a ], [ %i.by, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread ] ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit

_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213  ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !174  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !217  ; 3 uses
  %i.o = add i32 %i.n, -1
  %i.p = and i32 %i.o, %i.l                       ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !216  ; 4 uses
  %i.r = zext i32 %i.p to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.r, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 4 uses
  %i.t = zext i32 %i.n to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.p, %i.n          ; 2 uses
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %bb.c
  %.not2736.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not2736.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.f
  %.035.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %.035.i.i.i, align 8, !tbaa !220 ; 4 uses
  %.not.i = icmp ult ptr %i.v, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, %i.l
  %i.z = icmp eq ptr %i.v, %2
  %or.cond.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp eq ptr %i.v, null
  br i1 %i.aa, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.q, %.preheader.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.137.i.i.i, align 8, !tbaa !220 ; 4 uses
  %i.ad = icmp ult ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !174
  %i.ag = icmp eq i32 %i.af, %i.l
  %i.ah = icmp eq ptr %i.ac, %2
  %or.cond31.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph38.i.i.i
  %i.ai = icmp eq ptr %i.ac, null
  %i.aj = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.aj, %i.s
  %or.cond43.i.i.i = select i1 %i.ai, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i.backedge

bb.i:                                             ; preds = %bb.g
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.s
  br i1 %.not27.old.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.i, %bb.h
  %.137.i.i.i.be = phi ptr [ %i.aj, %bb.h ], [ %.old.i.i.i, %bb.i ]
  br label %.lr.ph38.i.i.i, !llvm.loop !11

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit: ; preds = %bb.d, %bb.g
  br i1 %.not34.i.i.i, label %.lr.ph38.i.i.i28.preheader, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, %bb.l
  %.035.i.i.i23 = phi ptr [ %i.aq, %bb.l ], [ %i.s, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.035.i.i.i23, align 8, !tbaa !220 ; 4 uses
  %i.al = icmp ult ptr %i.ak, inttoptr (i64 2 to ptr)
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !174
  %i.ao = icmp eq i32 %i.an, %i.l
  %i.ap = icmp eq ptr %i.ak, %2
  %or.cond.i.i.i24 = and i1 %i.ap, %i.ao
  br i1 %or.cond.i.i.i24, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i22
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.035.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.aq, %i.u
  br i1 %.not.i.i.i25, label %.lr.ph38.i.i.i28.preheader, label %.lr.ph.i.i.i22, !llvm.loop !10

.lr.ph38.i.i.i28.preheader:                       ; preds = %bb.l, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit
  br label %.lr.ph38.i.i.i28

.lr.ph38.i.i.i28:                                 ; preds = %.lr.ph38.i.i.i28.preheader, %.lr.ph38.backedge.i.i.i31
  %.137.i.i.i29 = phi ptr [ %.pn.i, %.lr.ph38.backedge.i.i.i31 ], [ %i.q, %.lr.ph38.i.i.i28.preheader ] ; 3 uses
  %i.ar = load ptr, ptr %.137.i.i.i29, align 8, !tbaa !220 ; 4 uses
  %i.as = icmp ult ptr %i.ar, inttoptr (i64 2 to ptr)
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph38.i.i.i28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !174
  %i.av = icmp eq i32 %i.au, %i.l
  %i.aw = icmp eq ptr %i.ar, %2
  %or.cond31.i.i.i30 = and i1 %i.aw, %i.av
  br i1 %or.cond31.i.i.i30, label %.loopexit, label %.lr.ph38.backedge.i.i.i31

bb.n:                                             ; preds = %.lr.ph38.i.i.i28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  br label %.lr.ph38.backedge.i.i.i31

.lr.ph38.backedge.i.i.i31:                        ; preds = %bb.m, %bb.n
  %.pn.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i29, i64 16
  br label %.lr.ph38.i.i.i28, !llvm.loop !11

.loopexit:                                        ; preds = %bb.j, %bb.m
  %.026.i.i.i32 = phi ptr [ %.137.i.i.i29, %bb.m ], [ %.035.i.i.i23, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.026.i.i.i32, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %.loopexit
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !99 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %.not1742 = icmp eq i32 %i.bb, 0
  br i1 %.not1742, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %i.bf = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %i.bg = phi ptr [ %i.bs, %bb.q ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %.043 = phi ptr [ %i.bw, %bb.q ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %i.bh = load ptr, ptr %.043, align 8, !tbaa !128
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !99 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !99
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.lr.ph
  invoke void @_ZN6vectorISt4pairIP4exprjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.p
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !173 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o
  %i.bo = phi i32 [ %.pre2.i, %.noexc ], [ %i.bk, %bb.o ]
  %i.bp = phi ptr [ %.pre.i, %.noexc ], [ %i.bg, %bb.o ]
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  store ptr %i.bh, ptr %i.br, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bf, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bs = load ptr, ptr %0, align 8, !tbaa !173   ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !99
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.bw, %i.be
  br i1 %.not17, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorISt4pairIP4exprjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %i.bx

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread: ; preds = %bb.e, %bb.i, %bb.h, %bb.q, %.loopexit, %_ZN6vectorIP4exprLb0EjE3endEv.exit, %.preheader.i.i.i
  %i.by = phi ptr [ %i.c, %bb.i ], [ %i.c, %.loopexit ], [ %i.bs, %bb.q ], [ %i.c, %_ZN6vectorIP4exprLb0EjE3endEv.exit ], [ %i.c, %.preheader.i.i.i ], [ %i.c, %bb.h ], [ %i.c, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp ult i32 %3, %indvars
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !331

.critedge:                                        ; preds = %bb.b, %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !170
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !150
  %i.r = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !153
  %i.y = load i64, ptr %i.s, align 8, !tbaa !155
  store i64 %i.y, ptr %i.q, align 8, !tbaa !155
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !154
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !154
  store ptr %i.s, ptr %1, align 8, !tbaa !153
  store i64 0, ptr %i.aa, align 8, !tbaa !154
  store i8 0, ptr %i.s, align 8, !tbaa !155
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !155
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__cxa_free_exception(ptr %i.o) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 6 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !170   ; 11 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIP6vectorISt4pairIP4exprjELb1EjEjS6_ES1_IT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !99 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !99
  %i.ap = getelementptr i8, ptr %i.aj, i64 8      ; 6 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aq, 3          ; 3 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %.idx.i.i.i ; 2 uses
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aw = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i
  %scevgep = getelementptr i8, ptr %i.aw, i64 8
  %bound0 = icmp ult ptr %i.ap, %i.ar
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ak, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.ba ; 3 uses
  %i.bb = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !173, !alias.scope !337
  %wide.load52 = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !173, !alias.scope !337
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !173, !alias.scope !338, !noalias !337
  store <2 x ptr> %wide.load52, ptr %i.bc, align 8, !tbaa !173, !alias.scope !338, !noalias !337
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !173, !alias.scope !337
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !173, !alias.scope !337
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.preheader54:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.be = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !173
  store ptr %i.be, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !173
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !173
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bh = icmp eq ptr %i.bf, %i.ar
  br i1 %i.bh, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !336

_ZSt20uninitialized_move_nIP6vectorISt4pairIP4exprjELb1EjEjS6_ES1_IT_T1_ES7_T0_S8_.exit: ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE7destroyEv.exit

_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit
end_hunk_1

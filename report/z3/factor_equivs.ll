inline.NumInlined: 371
inline.NumDeleted: 210
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17expr_safe_replaceD2Ev:bb.a
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not.i5 = icmp eq i32 %i.be, 0
  br i1 %.not.i5, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9
  %.06.i.i7 = phi ptr [ %i.bo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9 ], [ %i.bb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4 ] ; 2 uses
  %i.bi = load ptr, ptr %.06.i.i7, align 8, !tbaa !19 ; 3 uses
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !8, !nonnull !12, !align !13
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i8, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !21
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bj, ptr noundef nonnull %i.bi)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9 unwind label %bb.p

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9: ; preds = %bb.n, %bb.m, %.lr.ph.i.i6
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i7, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.bh
  br i1 %i.bp, label %.lr.ph.i.i6, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, !llvm.loop !23

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i9
  %.pre.i11 = load ptr, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.pre.i11, null
  br i1 %.not.i.i.i12, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4
  %i.bq = phi ptr [ %.pre.i11, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10 ], [ %i.bb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i4 ]
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.br)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14 unwind label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i10, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !18 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %.not.i16 = icmp eq i32 %i.cb, 0
  br i1 %.not.i16, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20
  %.06.i.i18 = phi ptr [ %i.cl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20 ], [ %i.by, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15 ] ; 2 uses
  %i.cf = load ptr, ptr %.06.i.i18, align 8, !tbaa !19 ; 3 uses
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !8, !nonnull !12, !align !13
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i19, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !21
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !21
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cg, ptr noundef nonnull %i.cf)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20 unwind label %bb.t

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20: ; preds = %bb.r, %bb.q, %.lr.ph.i.i17
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i18, i64 8 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.ce
  br i1 %i.cm, label %.lr.ph.i.i17, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, !llvm.loop !23

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20
  %.pre.i22 = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.pre.i22, null
  br i1 %.not.i.i.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15
  %i.cn = phi ptr [ %.pre.i22, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21 ], [ %i.by, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25 unwind label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  tail call void @__clang_call_terminate(ptr %i.cq) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13equiv_to_exprR15obj_equiv_classI4expr11ast_managerER10ref_vectorIS0_S1_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.34", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !nonnull !12, !align !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %.fr7.i.i = freeze ptr %i.d                     ; 3 uses
  %i.e = icmp eq ptr %.fr7.i.i, null
  %i.f = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.g = icmp eq ptr %i.c, null                   ; 2 uses
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %.not.i.i121 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i121, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.k = load i32, ptr %i.f, align 4, !tbaa !18
  %i.l = zext i32 %i.k to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i122, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !65

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i122 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i122, %i.l
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i122
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = zext i32 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv.i.i122, %i.o
  br i1 %i.p, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !65

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !65

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i122, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i122, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.q = trunc nuw i64 %indvars.iv.i.lcssa.i to i32
  br label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit: ; preds = %bb.a, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i = phi i32 [ %i.q, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.g, label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i34 = phi i32 [ %i.s, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit ] ; 2 uses
  %.not7786 = icmp eq i32 %.sroa.2.0.i, %.sroa.2.0.i34
  br i1 %.not7786, label %._crit_edge88, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.lr.ph.i

._crit_edge88:                                    ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit
  %.sroa.573.087 = phi i32 [ %.sroa.2.0.i, %.lr.ph.i.lr.ph ], [ %.sroa.573.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 6 uses
  %.sroa.565.8.insert.ext = zext i32 %.sroa.573.087 to i64 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %.lr.ph.i
  %.sroa.5.8.extract.trunc38.i = phi i32 [ %.sroa.573.087, %.lr.ph.i ], [ %.0.i.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.037.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.01636.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.5.035.i = phi i64 [ %.sroa.565.8.insert.ext, %.lr.ph.i ], [ %.sroa.5.8.insert.ext.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.5.035.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = tail call noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef %i.x)
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_Z13get_num_exprsP4expr(ptr noundef %i.x) ; 2 uses
  %.not.i = icmp eq ptr %.037.i, null
  %i.aa = icmp ugt i32 %.01636.i, %i.z
  %or.cond.i41 = select i1 %.not.i, i1 true, i1 %i.aa ; 2 uses
  %spec.select.i = select i1 %or.cond.i41, i32 %i.z, i32 %.01636.i
  %spec.select18.i = select i1 %or.cond.i41, ptr %i.x, ptr %.037.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117.i = phi i32 [ %.01636.i, %bb.b ], [ %spec.select.i, %bb.c ]
  %.1.i = phi ptr [ %.037.i, %bb.b ], [ %spec.select18.i, %bb.c ] ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42: ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %.not.i.i.i43 = icmp ugt i32 %i.ae, %.sroa.5.8.extract.trunc38.i
  br i1 %.not.i.i.i43, label %bb.e, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

bb.e:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.5.035.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i: ; preds = %bb.e, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42, %bb.d
  %.0.i.i.i = phi i32 [ %i.ah, %bb.e ], [ %.sroa.5.8.extract.trunc38.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i42 ], [ %.sroa.5.8.extract.trunc38.i, %bb.d ] ; 3 uses
  %.sroa.5.8.insert.ext.i = zext i32 %.0.i.i.i to i64
  %.not78 = icmp eq i32 %.0.i.i.i, %.sroa.573.087
  br i1 %.not78, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge
  %i.ak = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.al = icmp eq ptr %i.db, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader: ; preds = %._crit_edge
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.ap = icmp eq ptr %i.db, null
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.sroa.565.8.insert.ext, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 6 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0
  %brmerge = or i1 %.not.us.i, %i.al
  br i1 %brmerge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !18
  %.not.i.us.i = icmp ugt i32 %i.aq, %indvars.i
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.ar = and i64 %indvars.iv.next.i, 4294967295
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = icmp eq i32 %i.at, %indvars.i
  br i1 %i.au, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !66

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader, %_ZNK16basic_union_find7is_rootEj.exit.i
  %4 = phi i32 [ %5, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %.sroa.573.087, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52.preheader ]
  %5 = add i32 %4, 1                              ; 8 uses
  %.not.i53 = icmp eq i32 %5, %i.an
  %brmerge116 = or i1 %.not.i53, %i.ap
  br i1 %brmerge116, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !18
  %.not.i.i54 = icmp ult i32 %5, %i.av
  br i1 %.not.i.i54, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %6 = zext i32 %5 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %6
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = icmp eq i32 %i.ax, %5
  br i1 %i.ay, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52, !llvm.loop !66

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %.sroa.573.1 = phi i32 [ %indvars.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %indvars.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i ], [ %indvars.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %5, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i52 ], [ %5, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %5, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ] ; 2 uses
  %.not77 = icmp eq i32 %.sroa.573.1, %.sroa.2.0.i34
  br i1 %.not77, label %._crit_edge88, label %.lr.ph.i

.lr.ph:                                           ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.az = phi ptr [ %i.db, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.ab, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ]
  %.sroa.5.8.extract.trunc85 = phi i32 [ %.0.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.573.087, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 3 uses
  %.sroa.5.084 = phi i64 [ %.sroa.5.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %.sroa.565.8.insert.ext, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit.i ] ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.5.084
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %.1.i, %i.bc
  br i1 %.not, label %bb.t, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bd = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 2, ptr noundef %.1.i, ptr noundef %i.bc) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !21
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.g, %bb.f
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !14  ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18 ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bo = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.bo, align 4, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.u, align 8, !tbaa !14
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.j:                                             ; preds = %bb.h
  %i.br = mul i32 %i.bk, 3
  %i.bs = add i32 %i.br, 1
  %i.bt = lshr i32 %i.bs, 1                       ; 3 uses
  %i.bu = shl i32 %i.bt, 3
  %i.bv = add i32 %i.bu, 8                        ; 2 uses
  %.not.i57 = icmp ugt i32 %i.bt, %i.bk
  br i1 %.not.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = shl i32 %i.bk, 3
  %i.bx = add i32 %i.bw, 8
  %.not27.i = icmp ugt i32 %i.bv, %i.bx
  br i1 %.not27.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.by = tail call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.by, align 8, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !72
  %i.cb = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !76 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !74
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !77
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !77
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.n
  %i.cj = phi i64 [ %i.cf, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !76
  store ptr %i.cc, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.ck, align 8, !tbaa !76
  store i8 0, ptr %i.cc, align 8, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.s unwind label %bb.o

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cc
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.o
  %i.cp = load i64, ptr %i.cc, align 8, !tbaa !77
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @__cxa_free_exception(ptr %i.by) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cr, %bb.p ]
  resume { ptr, i32 } %.pn32.i

bb.r:                                             ; preds = %bb.k
  %i.cs = zext i32 %i.bv to i64
  %i.ct = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cs) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.u, align 8, !tbaa !14
  store i32 %i.bt, ptr %i.ct, align 4, !tbaa !18
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.s:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit:    ; preds = %bb.i, %bb.r
  %.pre.i.i = phi ptr [ %i.bq, %bb.i ], [ %i.cu, %bb.r ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !18
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.h, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit
  %i.cv = phi i32 [ %.pre2.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bk, %bb.h ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bh, %bb.h ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  store ptr %i.bd, ptr %i.cz, align 8, !tbaa !19
  %i.da = add i32 %i.cv, 1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !18
  %.pre = load ptr, ptr %0, align 8, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %.lr.ph
  %i.db = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.az, %.lr.ph ] ; 9 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55

_ZNK16basic_union_find12get_num_varsEv.exit.i.i55: ; preds = %bb.t
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18
  %.not.i.i56 = icmp ugt i32 %i.de, %.sroa.5.8.extract.trunc85
  br i1 %.not.i.i56, label %bb.u, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.u:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.5.084
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %bb.t, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55, %bb.u
  %.0.i.i = phi i32 [ %i.dh, %bb.u ], [ %.sroa.5.8.extract.trunc85, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i55 ], [ %.sroa.5.8.extract.trunc85, %bb.t ] ; 3 uses
  %.sroa.5.8.insert.ext = zext i32 %.0.i.i to i64
  %.not89 = icmp eq i32 %.sroa.573.087, %.0.i.i
  br i1 %.not89, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z18equiv_to_expr_fullR15obj_equiv_classI4expr11ast_managerER10ref_vectorIS0_S1_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %.fr7.i.i = freeze ptr %i.d                     ; 6 uses
  %i.e = icmp eq ptr %.fr7.i.i, null
  %i.f = getelementptr inbounds i8, ptr %.fr7.i.i, i64 -4
  %i.g = icmp eq ptr %i.c, null                   ; 2 uses
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %.not.i.i157 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i157, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %i.k = load i32, ptr %i.f, align 4, !tbaa !18
  %i.l = zext i32 %i.k to i64
  br label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, !llvm.loop !65

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %indvars.iv.i.i158 = phi i64 [ %indvars.iv.next.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ 0, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i.preheader ] ; 6 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i158, %i.l
  br i1 %.not.i.i.i, label %_ZNK16basic_union_find7is_rootEj.exit.i.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i

_ZNK16basic_union_find7is_rootEj.exit.i.i:        ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.fr7.i.i, i64 %indvars.iv.i.i158
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = zext i32 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv.i.i158, %i.o
  br i1 %i.p, label %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !65

_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.i
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i, !llvm.loop !65

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i
  %indvars.iv.i.lcssa.i = phi i64 [ %indvars.iv.i.i158, %_ZNK16basic_union_find7is_rootEj.exit.i.i._ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i_crit_edge ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.preheader.i ], [ %i.j, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i ], [ %indvars.iv.i.i158, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.i ]
  %i.q = trunc nuw i64 %indvars.iv.i.lcssa.i to i32
  br label %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit: ; preds = %bb.a, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i
  %.sroa.2.0.i = phi i32 [ %i.q, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorC2ERKS2_j.exit.loopexit1.i ], [ 0, %bb.a ] ; 2 uses
  br i1 %i.g, label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit: ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %.sroa.2.0.i26 = phi i32 [ %i.s, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ 0, %_ZN15obj_equiv_classI4expr11ast_managerE5beginEv.exit ] ; 2 uses
  %.not108 = icmp eq i32 %.sroa.2.0.i, %.sroa.2.0.i26
  br i1 %.not108, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.lr.ph106.preheader

._crit_edge112:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit
  %.0.lcssa = phi i1 [ false, %_ZN15obj_equiv_classI4expr11ast_managerE3endEv.exit ], [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  ret i1 %.0.lcssa

.lr.ph106.preheader:                              ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, %.lr.ph111
  %i.v = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.dp, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %i.w = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.ax, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %i.x = phi ptr [ %.fr7.i.i, %.lr.ph111 ], [ %i.ay, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %.0110 = phi i1 [ false, %.lr.ph111 ], [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ]
  %.sroa.585.0109 = phi i32 [ %.sroa.2.0.i, %.lr.ph111 ], [ %.sroa.585.1, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit ] ; 6 uses
  %.sroa.4.8.insert.ext = zext i32 %.sroa.585.0109 to i64
  br label %.lr.ph106

._crit_edge107:                                   ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.y = icmp eq ptr %.pre, null
  br i1 %i.y, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader: ; preds = %._crit_edge107
  %i.z = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 2 uses
  %i.aa = icmp eq ptr %i.dp, null                 ; 2 uses
  %indvars.iv.next.i.peel = add nuw nsw i64 %.sroa.4.8.insert.ext, 1 ; 3 uses
  %indvars.i.peel = trunc i64 %indvars.iv.next.i.peel to i32 ; 6 uses
  %.not.us.i.peel = icmp eq i32 %indvars.i.peel, 0 ; 3 uses
  %brmerge.peel = select i1 %.not.us.i.peel, i1 true, i1 %i.aa
  %.mux.peel = select i1 %.not.us.i.peel, ptr %i.dq, ptr null
  %.mux144.peel = select i1 %.not.us.i.peel, ptr %i.dr, ptr null
  br i1 %brmerge.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !18
  %.not.i.us.i.peel = icmp ugt i32 %i.ab, %indvars.i.peel
  br i1 %.not.i.us.i.peel, label %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i.peel:  ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel
  %i.ac = and i64 %indvars.iv.next.i.peel, 4294967295
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = icmp eq i32 %i.ae, %indvars.i.peel
  br i1 %i.af, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader: ; preds = %._crit_edge107
  %i.ag = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.dq, i64 -4 ; 2 uses
  %i.aj = icmp eq ptr %i.dq, null                 ; 2 uses
  %3 = add i32 %.sroa.585.0109, 1                 ; 8 uses
  %.not.i40.peel = icmp eq i32 %3, %i.ah          ; 3 uses
  %brmerge146.peel = select i1 %.not.i40.peel, i1 true, i1 %i.aj
  %.lcssa142.mux.peel = select i1 %.not.i40.peel, ptr %i.dq, ptr null
  %.mux147.peel = select i1 %.not.i40.peel, ptr %i.dr, ptr null
  br i1 %brmerge146.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel

_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !18
  %.not.i.i41.peel = icmp ult i32 %3, %i.ak
  br i1 %.not.i.i41.peel, label %_ZNK16basic_union_find7is_rootEj.exit.i.peel, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i.peel:     ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel
  %4 = zext i32 %3 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18
  %i.an = icmp eq i32 %i.am, %3
  br i1 %i.an, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %indvars.iv.next.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 6 uses
  %.not.us.i = icmp eq i32 %indvars.i, 0          ; 3 uses
  %brmerge = select i1 %.not.us.i, i1 true, i1 %i.aa
  br i1 %brmerge, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !18
  %.not.i.us.i = icmp ugt i32 %i.ao, %indvars.i
  br i1 %.not.i.us.i, label %_ZNK16basic_union_find7is_rootEj.exit.us.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.us.i:       ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i
  %i.ap = and i64 %indvars.iv.next.i, 4294967295
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %i.as = icmp eq i32 %i.ar, %indvars.i
  br i1 %i.as, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i, !llvm.loop !78

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39: ; preds = %_ZNK16basic_union_find7is_rootEj.exit.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i
  %5 = phi i32 [ %6, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %3, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ]
  %6 = add nuw i32 %5, 1                          ; 8 uses
  %.not.i40 = icmp eq i32 %6, %i.ah               ; 3 uses
  %brmerge146 = select i1 %.not.i40, i1 true, i1 %i.aj
  br i1 %brmerge146, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !18
  %.not.i.i41 = icmp ult i32 %6, %i.at
  br i1 %.not.i.i41, label %_ZNK16basic_union_find7is_rootEj.exit.i, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZNK16basic_union_find7is_rootEj.exit.i:          ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %7 = zext i32 %6 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %7
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = icmp eq i32 %i.av, %6
  br i1 %i.aw, label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39, !llvm.loop !80

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i
  %.mux.le = select i1 %.not.us.i, ptr %i.dp, ptr null
  %.mux144.le = select i1 %.not.us.i, ptr %i.dp, ptr null
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39
  %.lcssa142.mux.le = select i1 %.not.i40, ptr %i.dq, ptr null
  %.mux147.le = select i1 %.not.i40, ptr %i.dq, ptr null
  br label %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191
  %i.ax = phi ptr [ %i.dp, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.mux.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %i.dp, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %i.dp, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %i.dp, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %.mux.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %.lcssa142.mux.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %i.dq, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %i.dq, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %i.dq, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.lcssa142.mux.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ], [ %i.dq, %_ZNK16basic_union_find7is_rootEj.exit.i ]
  %i.ay = phi ptr [ %i.dp, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %.mux144.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %i.dp, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %i.dp, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %i.dp, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %.mux144.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %.mux147.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %i.dq, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %i.dq, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %i.dq, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.mux147.le, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ], [ %i.dq, %_ZNK16basic_union_find7is_rootEj.exit.i ]
  %.sroa.585.1 = phi i32 [ %indvars.i, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit.loopexit.split.loop.exit191 ], [ %indvars.i.peel, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.us.i.preheader ], [ %indvars.i.peel, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i.peel ], [ %indvars.i.peel, %_ZNK16basic_union_find7is_rootEj.exit.us.i.peel ], [ %indvars.i, %_ZNK16basic_union_find7is_rootEj.exit.us.i ], [ %indvars.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.us.i ], [ %3, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i39.preheader ], [ %3, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i.peel ], [ %3, %_ZNK16basic_union_find7is_rootEj.exit.i.peel ], [ %6, %_ZNK16basic_union_find7is_rootEj.exit.i ], [ %6, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %6, %_ZN15obj_equiv_classI4expr11ast_managerE14equiv_iteratorppEv.exit.loopexit162.loopexit.split.loop.exit182 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.585.1, %.sroa.2.0.i26
  br i1 %.not, label %._crit_edge112, label %.lr.ph106.preheader

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52
  %i.az = phi ptr [ %i.dp, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.v, %.lr.ph106.preheader ]
  %i.ba = phi ptr [ %i.dq, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.w, %.lr.ph106.preheader ]
  %i.bb = phi ptr [ %i.dr, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %i.x, %.lr.ph106.preheader ] ; 3 uses
  %.sroa.669.8.extract.trunc104 = phi i32 [ %.0.i.i51, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %.sroa.585.0109, %.lr.ph106.preheader ] ; 9 uses
  %.1103 = phi i1 [ %.2.lcssa, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52 ], [ %.0110, %.lr.ph106.preheader ]
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42

_ZNK16basic_union_find12get_num_varsEv.exit.i.i42: ; preds = %.lr.ph106
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %.not.i.i43 = icmp ugt i32 %i.be, %.sroa.669.8.extract.trunc104
  br i1 %.not.i.i43, label %bb.b, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

bb.b:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.bg = zext i32 %.sroa.669.8.extract.trunc104 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit: ; preds = %.lr.ph106, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42, %bb.b
  %.0.i.i = phi i32 [ %i.bi, %bb.b ], [ %.sroa.669.8.extract.trunc104, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i42 ], [ %.sroa.669.8.extract.trunc104, %.lr.ph106 ] ; 2 uses
  %.not8998 = icmp eq i32 %.0.i.i, %.sroa.585.0109
  br i1 %.not8998, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.bj = zext i32 %.sroa.669.8.extract.trunc104 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48
  %.sroa.6.099 = phi i32 [ %.0.i.i, %.lr.ph ], [ %.0.i.i47, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 4 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !19
  %i.bn = zext i32 %.sroa.6.099 to i64            ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bq = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 2, ptr noundef %i.bm, ptr noundef %i.bp) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !21
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !21
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.d, %bb.c
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !14  ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18 ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !18
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cb = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.cb, align 4, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 0, ptr %i.cc, align 4, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.u, align 8, !tbaa !14
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ce = mul i32 %i.bx, 3
  %i.cf = add i32 %i.ce, 1
  %i.cg = lshr i32 %i.cf, 1                       ; 3 uses
  %i.ch = shl i32 %i.cg, 3
  %i.ci = add i32 %i.ch, 8                        ; 2 uses
  %.not.i53 = icmp ugt i32 %i.cg, %i.bx
  br i1 %.not.i53, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.cj = shl i32 %i.bx, 3
  %i.ck = add i32 %i.cj, 8
  %.not27.i = icmp ugt i32 %i.ci, %i.ck
  br i1 %.not27.i, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cn = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #19
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.j ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.cm, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.cn, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 42
  store i8 0, ptr %i.cp, align 1, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cl, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !74
  store i64 42, ptr %i.cr, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 42, ptr %i.cs, align 8, !tbaa !76
  store ptr %i.cm, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.co, align 8, !tbaa !76
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cm
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.i
  %i.cw = load i64, ptr %i.cm, align 8, !tbaa !77
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  tail call void @__cxa_free_exception(ptr %i.cl) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cy, %bb.j ]
  resume { ptr, i32 } %.pn32.i

bb.l:                                             ; preds = %bb.h
  %i.cz = zext i32 %i.ci to i64
  %i.da = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.by, i64 noundef %i.cz) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.u, align 8, !tbaa !14
  store i32 %i.cg, ptr %i.da, align 4, !tbaa !18
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit:    ; preds = %bb.f, %bb.l
  %.pre.i.i = phi ptr [ %i.cd, %bb.f ], [ %i.db, %bb.l ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !18
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.e, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit
  %i.dc = phi i32 [ %.pre2.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bx, %bb.e ] ; 2 uses
  %i.dd = phi ptr [ %.pre.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.bu, %bb.e ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.df = zext i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.bq, ptr %i.dg, align 8, !tbaa !19
  %i.dh = add i32 %i.dc, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !18
  %i.di = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i45

_ZNK16basic_union_find12get_num_varsEv.exit.i.i45: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  %.not.i.i46 = icmp ult i32 %.sroa.6.099, %i.dl
  br i1 %.not.i.i46, label %bb.n, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48

bb.n:                                             ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i45
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.bn
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  br label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48

_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i45, %bb.n
  %.0.i.i47 = phi i32 [ %i.do, %bb.n ], [ %.sroa.6.099, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i45 ], [ %.sroa.6.099, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %.not89 = icmp eq i32 %.0.i.i47, %.sroa.585.0109
  br i1 %.not89, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge:                                      ; preds = %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit
  %i.dp = phi ptr [ %i.az, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.di, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 16 uses
  %i.dq = phi ptr [ %i.ba, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.di, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 17 uses
  %i.dr = phi ptr [ %i.bb, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ %i.di, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 5 uses
  %.2.lcssa = phi i1 [ %.1103, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit ], [ true, %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit48 ] ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN15obj_equiv_classI4expr11ast_managerE8iteratorppEv.exit52, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i49

_ZNK16basic_union_find12get_num_varsEv.exit.i.i49: ; preds = %._crit_edge
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
end_hunk_0

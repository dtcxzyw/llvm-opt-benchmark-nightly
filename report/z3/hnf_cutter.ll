Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/hnf_cutter?download=true
inline.NumInlined: 1425
inline.NumDeleted: 666
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2lp14general_matrixC2ERKS0_:bb.a
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !63 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN6vectorIS_I8rationalLb1EjELb1EjE9copy_coreERKS2_.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc16
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = zext i32 %i.cq to i64
  br label %_ZN6vectorIS_I8rationalLb1EjELb1EjE9copy_coreERKS2_.exit.i

_ZN6vectorIS_I8rationalLb1EjELb1EjE9copy_coreERKS2_.exit.i: ; preds = %bb.p, %.noexc16
  %.0.i.i.i.i = phi i64 [ %i.cr, %bb.p ], [ 0, %.noexc16 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0.i.i.i.i
  %i.ct = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6vectorI8rationalLb1EjEPS2_ET0_T_S7_S6_(ptr noundef %i.cn, ptr noundef %i.cs, ptr noundef nonnull %i.cm)
          to label %_ZN6vectorIS_I8rationalLb1EjELb1EjEC2ERKS2_.exit unwind label %bb.r ; 0 uses

_ZN6vectorIS_I8rationalLb1EjELb1EjEC2ERKS2_.exit: ; preds = %_ZN2lp18permutation_matrixI8rationalS1_EC2ERKS2_.exit15, %_ZN6vectorIS_I8rationalLb1EjELb1EjE9copy_coreERKS2_.exit.i
  ret void

bb.q:                                             ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i.i.i8
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZN6vectorIS_I8rationalLb1EjELb1EjE9copy_coreERKS2_.exit.i, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE8capacityEv.exit.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2lp18permutation_matrixI8rationalS1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.an) #21
  br label %.body

.body:                                            ; preds = %bb.q, %bb.o, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.r ], [ %i.cu, %bb.q ], [ %i.cb, %bb.o ]
  tail call void @_ZN2lp18permutation_matrixI8rationalS1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8hnf_calc32to_lower_triangle_non_fractionalINS_14general_matrixEEEjRT_RbRK8rational(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %.fr62.i18 = freeze ptr %i.b                    ; 2 uses
  %i.c = icmp eq ptr %.fr62.i18, null
  br i1 %i.c, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread, label %_ZNK2lp14general_matrix9row_countEv.exit.lr.ph

_ZNK2lp14general_matrix9row_countEv.exit.lr.ph:   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK2lp14general_matrix9row_countEv.exit

_ZNK2lp14general_matrix9row_countEv.exit:         ; preds = %_ZNK2lp14general_matrix9row_countEv.exit.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK2lp14general_matrix9row_countEv.exit.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 8 uses
  %.fr62.i20 = phi ptr [ %.fr62.i18, %_ZNK2lp14general_matrix9row_countEv.exit.lr.ph ], [ %.fr62.i, %bb.f ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.fr62.i20, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  %i.j = trunc nuw i64 %indvars.iv to i32         ; 7 uses
  br i1 %i.i, label %.preheader.lr.ph.split.i, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread

.preheader.lr.ph.split.i:                         ; preds = %_ZNK2lp14general_matrix9row_countEv.exit
  %i.k = load ptr, ptr %0, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %.fr62.i20, align 8, !tbaa !49 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv, %i.q
  br i1 %i.r, label %.preheader.us55.i, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread

.preheader.us55.i:                                ; preds = %.preheader.lr.ph.split.split.i, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i ], [ %indvars.iv, %.preheader.lr.ph.split.split.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !50
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.fr62.i20, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.us.i, %.preheader.us55.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.us.i ], [ %indvars.iv, %.preheader.us55.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !50
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.us.i, label %.split.i

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.us.i: ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i, label %bb.b

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i: ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.us.i
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next33, %i.h
  br i1 %exitcond69.not.i, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread, label %.preheader.us55.i, !llvm.loop !343

.split.i:                                         ; preds = %bb.b
  %i.ad = trunc nuw i64 %indvars.iv.i to i32
  %.not.i = icmp eq i64 %indvars.iv32, %indvars.iv
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.ae = trunc nuw i64 %indvars.iv32 to i32
  tail call void @_ZN2lp18permutation_matrixI8rationalS1_E20transpose_from_rightEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ae, i32 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i
  %.not29.i = icmp eq i64 %indvars.iv, %indvars.iv.i
  br i1 %.not29.i, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2lp18permutation_matrixI8rationalS1_E19transpose_from_leftEjj(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ad, i32 noundef %i.j)
  br label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit

_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit: ; preds = %bb.e, %bb.d
  tail call void @_ZN2lp8hnf_calc27pivot_column_non_fractionalINS_14general_matrixEEEvRT_jRbRK8rational(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.af = load i8, ptr %1, align 1, !tbaa !111, !range !129, !noundef !25
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !63
  %.fr62.i = freeze ptr %i.ah                     ; 2 uses
  %i.ai = icmp eq ptr %.fr62.i, null
  br i1 %i.ai, label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread.loopexit38.split.loop.exit, label %_ZNK2lp14general_matrix9row_countEv.exit, !llvm.loop !344

_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread.loopexit38.split.loop.exit: ; preds = %bb.f
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread

_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread: ; preds = %.preheader.lr.ph.split.i, %.preheader.lr.ph.split.split.i, %_ZNK2lp14general_matrix9row_countEv.exit, %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i, %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread.loopexit38.split.loop.exit, %bb.a
  %.012 = phi i32 [ %i.j, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i._ZNK2lp14general_matrix12column_countEv.exit..critedge_crit_edge.split_crit_edge.us.i ], [ 0, %bb.a ], [ %indvars.le, %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit.thread.loopexit38.split.loop.exit ], [ %i.j, %.preheader.lr.ph.split.i ], [ %i.j, %_ZNK2lp14general_matrix9row_countEv.exit ], [ %i.j, %.preheader.lr.ph.split.split.i ], [ 0, %_ZN2lp8hnf_calc32prepare_pivot_for_lower_triangleINS_14general_matrixEEEbRT_j.exit ]
  ret i32 %.012
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8hnf_calc33gcd_of_row_starting_from_diagonalINS_14general_matrixEEE8rationalRKT_j(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 16 uses
  %4 = alloca %class.rational, align 8            ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  store i32 0, ptr %0, align 8, !tbaa !31, !alias.scope !353
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.b = load i8, ptr %i.a, align 4, !alias.scope !353
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4, !alias.scope !353
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !30, !alias.scope !353
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !31, !alias.scope !353
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = load i8, ptr %i.f, align 4, !alias.scope !353
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4, !alias.scope !353
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.i, align 8, !tbaa !30, !alias.scope !353
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33, !noalias !353 ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 4), align 4, !noalias !353
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @_ZN8rational6m_zeroE, align 8, !tbaa !31, !noalias !353
  store i32 %i.n, ptr %0, align 8, !tbaa !31, !alias.scope !353
  store i8 %i.c, ptr %i.a, align 4, !alias.scope !353
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 20), align 4, !noalias !353
  %i.p = and i8 %i.o, 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16), align 8, !tbaa !31, !noalias !353
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31, !alias.scope !353
  %i.s = load i8, ptr %i.f, align 4, !alias.scope !353
  %i.t = and i8 %i.s, -2
  store i8 %i.t, ptr %i.f, align 4, !alias.scope !353
  br label %_ZN2lp12zero_of_typeI8rationalEET_v.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16))
  br label %_ZN2lp12zero_of_typeI8rationalEET_v.exit

_ZN2lp12zero_of_typeI8rationalEET_v.exit:         ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.v = zext i32 %2 to i64                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !63  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge42, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i: ; preds = %_ZN2lp12zero_of_typeI8rationalEET_v.exit, %bb.p
  %i.ae = phi ptr [ %i.dd, %bb.p ], [ %i.ac, %_ZN2lp12zero_of_typeI8rationalEET_v.exit ] ; 4 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next, %bb.p ], [ %i.v, %_ZN2lp12zero_of_typeI8rationalEET_v.exit ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph, label %bb.f

bb.f:                                             ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph, label %_ZNK2lp14general_matrix12column_countEv.exit

_ZNK2lp14general_matrix12column_countEv.exit:     ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !50
  %5 = zext i32 %i.al to i64
  %i.am = icmp samesign ult i64 %indvars.iv83, %5
  %i.an = load i32, ptr %0, align 8
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph: ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i, %bb.f, %_ZNK2lp14general_matrix12column_countEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30

bb.g:                                             ; preds = %_ZNK2lp14general_matrix12column_countEv.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.v
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ax
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv83
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !49
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bd ; 6 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  store i32 0, ptr %3, align 8, !tbaa !31, !alias.scope !354
  %i.bh = load i8, ptr %i.x, align 4, !alias.scope !354
  %i.bi = and i8 %i.bh, -4                        ; 2 uses
  store i8 %i.bi, ptr %i.x, align 4, !alias.scope !354
  store ptr null, ptr %i.y, align 8, !tbaa !30, !alias.scope !354
  store i32 1, ptr %i.z, align 8, !tbaa !31, !alias.scope !354
  %i.bj = load i8, ptr %i.aa, align 4, !alias.scope !354
  %i.bk = and i8 %i.bj, -4
  store i8 %i.bk, ptr %i.aa, align 4, !alias.scope !354
  store ptr null, ptr %i.ab, align 8, !tbaa !30, !alias.scope !354
  %i.bl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33, !noalias !354 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bn = load i8, ptr %i.bm, align 4, !noalias !354
  %i.bo = and i8 %i.bn, 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = load i32, ptr %i.be, align 8, !tbaa !31, !noalias !354
  store i32 %i.bq, ptr %3, align 8, !tbaa !31, !alias.scope !354
  store i8 %i.bi, ptr %i.x, align 4, !alias.scope !354
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i28

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i28 unwind label %bb.o

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i28: ; preds = %bb.j, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bt = load i8, ptr %i.bs, align 4, !noalias !354
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i28
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !31, !noalias !354
  store i32 %i.bw, ptr %i.z, align 8, !tbaa !31, !alias.scope !354
  %i.bx = load i8, ptr %i.aa, align 4, !alias.scope !354
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.aa, align 4, !alias.scope !354
  br label %_ZN8rationalC2ERKS_.exit.i

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i28
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.o

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.l, %bb.k
  %i.bz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33, !noalias !354
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_Z3absRK8rational.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #21
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.cb = load i32, ptr %0, align 8, !tbaa !50
  %i.cc = load i32, ptr %3, align 8, !tbaa !50
  store i32 %i.cc, ptr %0, align 8, !tbaa !50
  store i32 %i.cb, ptr %3, align 8, !tbaa !50
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !107
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !107
  store ptr %i.cd, ptr %i.y, align 8, !tbaa !107
  %i.cf = load i8, ptr %i.a, align 4              ; 2 uses
  %i.cg = load i8, ptr %i.x, align 4              ; 2 uses
  %i.ch = and i8 %i.cf, -4
  %i.ci = and i8 %i.cg, -4
  %i.cj = and i8 %i.cg, 3
  %i.ck = or disjoint i8 %i.cj, %i.ch
  store i8 %i.ck, ptr %i.a, align 4
  %i.cl = and i8 %i.cf, 3
  %i.cm = or disjoint i8 %i.ci, %i.cl
  store i8 %i.cm, ptr %i.x, align 4
  %i.cn = load i32, ptr %i.e, align 8, !tbaa !50
  %i.co = load i32, ptr %i.z, align 8, !tbaa !50
  store i32 %i.co, ptr %i.e, align 8, !tbaa !50
  store i32 %i.cn, ptr %i.z, align 8, !tbaa !50
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !107
  store ptr %i.cq, ptr %i.i, align 8, !tbaa !107
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !107
  %i.cr = load i8, ptr %i.f, align 4              ; 2 uses
  %i.cs = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.ct = and i8 %i.cr, -4
  %i.cu = and i8 %i.cs, -4
  %i.cv = and i8 %i.cs, 3
  %i.cw = or disjoint i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.f, align 4
  %i.cx = and i8 %i.cr, 3
  %i.cy = or disjoint i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.aa, align 4
  %i.cz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_Z3absRK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i, %_Z3absRK8rational.exit
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.j
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.o ], [ %i.ca, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.v

bb.p:                                             ; preds = %_ZN8rationalD2Ev.exit, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv83, 1
  %i.dd = load ptr, ptr %i.u, align 8, !tbaa !63  ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.critedge42, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i, !llvm.loop !349

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30: ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph, %.critedge
  %i.df = phi ptr [ %i.ae, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph ], [ %i.fi, %.critedge ] ; 4 uses
  %indvars.iv57 = phi i64 [ %indvars.iv83, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30.lr.ph ], [ %indvars.iv.next58, %.critedge ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.critedge42, label %bb.q

bb.q:                                             ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !49 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.critedge42, label %_ZNK2lp14general_matrix12column_countEv.exit31

_ZNK2lp14general_matrix12column_countEv.exit31:   ; preds = %bb.q
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !50
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv57, %i.dn
  br i1 %i.do, label %bb.r, label %.critedge42

bb.r:                                             ; preds = %_ZNK2lp14general_matrix12column_countEv.exit31
  %i.dp = load ptr, ptr %1, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.v
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !50
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ds
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv57
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !50
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !49
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !31
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  store i32 0, ptr %4, align 8, !tbaa !31, !alias.scope !355
  %i.ec = load i8, ptr %i.ap, align 4, !alias.scope !355
  %i.ed = and i8 %i.ec, -4
  store i8 %i.ed, ptr %i.ap, align 4, !alias.scope !355
  store ptr null, ptr %i.aq, align 8, !tbaa !30, !alias.scope !355
  store i32 1, ptr %i.ar, align 8, !tbaa !31, !alias.scope !355
  %i.ee = load i8, ptr %i.as, align 4, !alias.scope !355
  %i.ef = and i8 %i.ee, -4
  store i8 %i.ef, ptr %i.as, align 4, !alias.scope !355
  store ptr null, ptr %i.at, align 8, !tbaa !30, !alias.scope !355
  %i.eg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33, !noalias !355 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i34 unwind label %.body35

.noexc.i34:                                       ; preds = %bb.s
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %bb.t unwind label %.body35

.body35:                                          ; preds = %.noexc.i34, %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.v

bb.t:                                             ; preds = %.noexc.i34
  %i.ei = load i8, ptr %i.as, align 4, !alias.scope !355 ; 2 uses
  %i.ej = load i32, ptr %0, align 8, !tbaa !50
  %i.ek = load i32, ptr %4, align 8, !tbaa !50
  store i32 %i.ek, ptr %0, align 8, !tbaa !50
  store i32 %i.ej, ptr %4, align 8, !tbaa !50
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.em = load ptr, ptr %i.aq, align 8, !tbaa !107
  store ptr %i.em, ptr %i.d, align 8, !tbaa !107
  store ptr %i.el, ptr %i.aq, align 8, !tbaa !107
  %i.en = load i8, ptr %i.a, align 4              ; 2 uses
  %i.eo = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.ep = and i8 %i.en, -4
  %i.eq = and i8 %i.eo, -4
  %i.er = and i8 %i.eo, 3
  %i.es = or disjoint i8 %i.er, %i.ep
  store i8 %i.es, ptr %i.a, align 4
  %i.et = and i8 %i.en, 3
  %i.eu = or disjoint i8 %i.eq, %i.et
  store i8 %i.eu, ptr %i.ap, align 4
  %i.ev = load i32, ptr %i.e, align 8, !tbaa !50
  store i32 1, ptr %i.e, align 8, !tbaa !50
  store i32 %i.ev, ptr %i.ar, align 8, !tbaa !50
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.ex = load ptr, ptr %i.at, align 8, !tbaa !107
  store ptr %i.ex, ptr %i.i, align 8, !tbaa !107
  store ptr %i.ew, ptr %i.at, align 8, !tbaa !107
  %i.ey = load i8, ptr %i.f, align 4              ; 2 uses
  %i.ez = and i8 %i.ei, 2
  %i.fa = and i8 %i.ey, -4
  %i.fb = or disjoint i8 %i.fa, %i.ez
  %i.fc = and i8 %i.ei, -4
  store i8 %i.fb, ptr %i.f, align 4
  %i.fd = and i8 %i.ey, 3
  %i.fe = or disjoint i8 %i.fd, %i.fc
  store i8 %i.fe, ptr %i.as, align 4
  %i.ff = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i37 unwind label %bb.u

.noexc.i37:                                       ; preds = %bb.t
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN8rationalD2Ev.exit38 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i37, %bb.t
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #22
  unreachable

_ZN8rationalD2Ev.exit38:                          ; preds = %.noexc.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !63
  br label %.critedge

.critedge:                                        ; preds = %_ZN8rationalD2Ev.exit38, %bb.r
  %i.fi = phi ptr [ %.pre, %_ZN8rationalD2Ev.exit38 ], [ %i.df, %bb.r ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.critedge42, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30, !llvm.loop !352

bb.v:                                             ; preds = %.body35, %.body
  %.pn25.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.eh, %.body35 ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  resume { ptr, i32 } %.pn25.pn

.critedge42:                                      ; preds = %bb.p, %_ZNK2lp14general_matrix12column_countEv.exit31, %.critedge, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i30, %bb.q, %_ZN2lp12zero_of_typeI8rationalEET_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp8hnf_calc27pivot_column_non_fractionalINS_14general_matrixEEEvRT_jRbRK8rational(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 12 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %6 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %1, -1
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  br label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph

_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph: ; preds = %bb.b, %bb.a
  %i.aa = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.ab = add i32 %1, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not50 = icmp eq ptr %i.aa, null
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = zext i32 %i.ab to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.critedge73, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph, %.critedge53
  %indvars.iv78104 = phi i64 [ %indvars.iv.next79, %.critedge53 ], [ %i.am, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph ] ; 4 uses
  %i.aq = phi ptr [ %i.bj, %.critedge53 ], [ %i.f, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph ] ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge73, label %_ZNK2lp14general_matrix12column_countEv.exit

_ZNK2lp14general_matrix12column_countEv.exit:     ; preds = %.lr.ph
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !50
  %7 = zext i32 %i.au to i64
  %i.av = icmp samesign ult i64 %indvars.iv78104, %7
  br i1 %i.av, label %_ZNK2lp14general_matrix9row_countEv.exit.preheader, label %.critedge73

_ZNK2lp14general_matrix9row_countEv.exit.preheader: ; preds = %_ZNK2lp14general_matrix12column_countEv.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv78104
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !50
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bf
  br label %_ZNK2lp14general_matrix9row_countEv.exit

bb.c:                                             ; preds = %.split86, %.split, %_ZgeRK8rationalS1_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge73, label %_ZNK2lp14general_matrix9row_countEv.exit, !llvm.loop !356

_ZNK2lp14general_matrix9row_countEv.exit:         ; preds = %_ZNK2lp14general_matrix9row_countEv.exit.preheader, %bb.c
  %i.bj = phi ptr [ %i.aq, %_ZNK2lp14general_matrix9row_countEv.exit.preheader ], [ %i.bh, %bb.c ] ; 4 uses
  %indvars.iv = phi i64 [ %i.am, %_ZNK2lp14general_matrix9row_countEv.exit.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv, %i.bm
  br i1 %i.bn, label %bb.d, label %.critedge53

bb.d:                                             ; preds = %_ZNK2lp14general_matrix9row_countEv.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !50
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv78104
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bx ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bz = load ptr, ptr %0, align 8, !tbaa !66
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.c
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !50
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !49
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cj
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZmiRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.cl = load i32, ptr %i.by, align 4, !tbaa !50
  %i.cm = load i32, ptr %4, align 8, !tbaa !50
  store i32 %i.cm, ptr %i.by, align 4, !tbaa !50
  store i32 %i.cl, ptr %4, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !107
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !107
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !107
  store ptr %i.co, ptr %i.ac, align 8, !tbaa !107
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 5 uses
  %i.cr = load i8, ptr %i.cq, align 4             ; 2 uses
  %i.cs = and i8 %i.cr, 2
  %i.ct = load i8, ptr %i.ad, align 4
  %i.cu = and i8 %i.ct, 2
  %i.cv = and i8 %i.cr, -3
  %i.cw = or disjoint i8 %i.cu, %i.cv
  store i8 %i.cw, ptr %i.cq, align 4
  %i.cx = load i8, ptr %i.ad, align 4             ; 2 uses
  %i.cy = and i8 %i.cx, -3
  %i.cz = or disjoint i8 %i.cy, %i.cs
  store i8 %i.cz, ptr %i.ad, align 4
  %i.da = load i8, ptr %i.cq, align 4             ; 2 uses
  %i.db = and i8 %i.da, 1
  %i.dc = and i8 %i.cx, 1
  %i.dd = and i8 %i.da, -2
  %i.de = or disjoint i8 %i.dd, %i.dc
  store i8 %i.de, ptr %i.cq, align 4
  %i.df = load i8, ptr %i.ad, align 4
  %i.dg = and i8 %i.df, -2
  %i.dh = or disjoint i8 %i.dg, %i.db
  store i8 %i.dh, ptr %i.ad, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !50
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !50
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !50
  store i32 %i.dj, ptr %i.ae, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !107
  %i.dn = load ptr, ptr %i.af, align 8, !tbaa !107
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !107
  store ptr %i.dm, ptr %i.af, align 8, !tbaa !107
  %i.do = getelementptr inbounds nuw i8, ptr %i.by, i64 20 ; 5 uses
  %i.dp = load i8, ptr %i.do, align 4             ; 2 uses
  %i.dq = and i8 %i.dp, 2
  %i.dr = load i8, ptr %i.ag, align 4
  %i.ds = and i8 %i.dr, 2
  %i.dt = and i8 %i.dp, -3
  %i.du = or disjoint i8 %i.ds, %i.dt
  store i8 %i.du, ptr %i.do, align 4
  %i.dv = load i8, ptr %i.ag, align 4             ; 2 uses
  %i.dw = and i8 %i.dv, -3
  %i.dx = or disjoint i8 %i.dw, %i.dq
  store i8 %i.dx, ptr %i.ag, align 4
  %i.dy = load i8, ptr %i.do, align 4             ; 2 uses
  %i.dz = and i8 %i.dy, 1
  %i.ea = and i8 %i.dv, 1
  %i.eb = and i8 %i.dy, -2
  %i.ec = or disjoint i8 %i.eb, %i.ea
  store i8 %i.ec, ptr %i.do, align 4
  %i.ed = load i8, ptr %i.ag, align 4
  %i.ee = and i8 %i.ed, -2
  %i.ef = or disjoint i8 %i.ee, %i.dz
  store i8 %i.ef, ptr %i.ag, align 4
  %i.eg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.ej = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i62 unwind label %bb.h

.noexc.i62:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN8rationalD2Ev.exit63 unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i62, %_ZN8rationalD2Ev.exit
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #22
  unreachable

_ZN8rationalD2Ev.exit63:                          ; preds = %.noexc.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.em = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.em, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i64 unwind label %bb.i

.noexc.i64:                                       ; preds = %_ZN8rationalD2Ev.exit63
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_ZN8rationalD2Ev.exit65 unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i64, %_ZN8rationalD2Ev.exit63
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #22
  unreachable

_ZN8rationalD2Ev.exit65:                          ; preds = %.noexc.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.not50, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN8rationalD2Ev.exit65
  %i.ep = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33
  call void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.er, %bb.l ], [ %i.eq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.j, %_ZN8rationalD2Ev.exit65
  %i.es = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  %i.et = load i8, ptr %i.do, align 4
  %i.eu = and i8 %i.et, 1
  %i.ev = icmp eq i8 %i.eu, 0
  %i.ew = load i32, ptr %i.di, align 8
  %i.ex = icmp eq i32 %i.ew, 1
  %i.ey = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %i.ey, label %bb.o, label %.split

bb.o:                                             ; preds = %bb.n
  %i.ez = load i8, ptr %i.ak, align 4
  %i.fa = and i8 %i.ez, 1
  %i.fb = icmp eq i8 %i.fa, 0
  %i.fc = load i32, ptr %i.aj, align 8
  %i.fd = icmp eq i32 %i.fc, 1
  %i.fe = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %i.fe, label %bb.p, label %.split

bb.p:                                             ; preds = %bb.o
  %i.ff = load i8, ptr %i.cq, align 4
  %i.fg = and i8 %i.ff, 1
  %i.fh = icmp eq i8 %i.fg, 0
  br i1 %i.fh, label %bb.q, label %.split86

bb.q:                                             ; preds = %bb.p
  %i.fi = load i8, ptr %i.al, align 4
  %i.fj = and i8 %i.fi, 1
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %_ZgeRK8rationalS1_.exit, label %.split86

.split86:                                         ; preds = %bb.q, %bb.p
  %i.fl = call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.c, label %bb.r

.split:                                           ; preds = %bb.o, %bb.n
  %i.fn = call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %i.fn, label %bb.c, label %bb.r

_ZgeRK8rationalS1_.exit:                          ; preds = %bb.q
  %i.fo = load i32, ptr %i.by, align 8, !tbaa !31
  %i.fp = load i32, ptr %3, align 8, !tbaa !31
  %i.fq = icmp slt i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.c, label %bb.r

bb.r:                                             ; preds = %.split86, %.split, %_ZgeRK8rationalS1_.exit
  store i8 1, ptr %2, align 1, !tbaa !111
  br label %.critedge73

.critedge53:                                      ; preds = %_ZNK2lp14general_matrix9row_countEv.exit
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78104, 1
  %i.fr = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !50
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.critedge73, label %.lr.ph, !llvm.loop !357

.critedge73:                                      ; preds = %.lr.ph, %.critedge53, %_ZNK2lp14general_matrix12column_countEv.exit, %bb.c, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE5emptyEv.exit.i.lr.ph, %bb.r
  ret void
}

declare void @_ZN2lp18permutation_matrixI8rationalS1_E20transpose_from_rightEjj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2lp18permutation_matrixI8rationalS1_E19transpose_from_leftEjj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZmiRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store i32 1, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 8 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !30
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !31
  store i32 %i.o, ptr %3, align 8, !tbaa !31
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !31
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %.pre = load i8, ptr %i.f, align 4
  %.pre9 = load i32, ptr %i.e, align 8
  %i.x = and i8 %.pre, 1
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %i.u, %bb.d ], [ %.pre9, %bb.e ]
  %i.aa = phi i1 [ true, %bb.d ], [ %i.y, %bb.e ]
  %i.ab = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 3 uses
  %i.ac = icmp eq i32 %i.z, 1
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = load i32, ptr %i.ae, align 8
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !31
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.f, align 4
  br label %_ZN8rationalmIERKS_.exit

bb.h:                                             ; preds = %bb.f, %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationalmIERKS_.exit unwind label %bb.n

_ZN8rationalmIERKS_.exit:                         ; preds = %.noexc3, %bb.h
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4                        ; 2 uses
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -4
  store i8 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !30
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  %i.ay = load i8, ptr %i.a, align 4
  %i.az = and i8 %i.ay, 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8rationalmIERKS_.exit
  %i.bb = load i32, ptr %3, align 8, !tbaa !31
  store i32 %i.bb, ptr %0, align 8, !tbaa !31
  store i8 %i.aq, ptr %i.ao, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5

bb.j:                                             ; preds = %_ZN8rationalmIERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5 unwind label %bb.n

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5:  ; preds = %bb.j, %bb.i
  %i.bc = load i8, ptr %i.f, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !31
  store i32 %i.bf, ptr %i.as, align 8, !tbaa !31
  %i.bg = load i8, ptr %i.at, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.at, align 4
  br label %_ZN8rationalC2ERKS_.exit8

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalC2ERKS_.exit8 unwind label %bb.n

_ZN8rationalC2ERKS_.exit8:                        ; preds = %bb.k, %bb.l
  %i.bi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !33 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %_ZN8rationalC2ERKS_.exit8
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i, %_ZN8rationalC2ERKS_.exit8
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.h, %.noexc, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN2lp10hnf_cutter10create_cutERNS1_8lar_termER8rationalPNS1_11explanationERbE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !360
  %i.a = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = getelementptr i8, ptr %.val.val, i64 40
  %.val.val.val = load ptr, ptr %i.b, align 8, !tbaa !139 ; 2 uses
  %i.c = load ptr, ptr %.val.val.val, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_0

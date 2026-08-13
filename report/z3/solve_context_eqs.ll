inline.NumInlined: 688
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6vectorIN3euf12dependent_eqELb1EjE6shrinkEj:bb.a
  tail call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN3euf12dependent_eqD2Ev.exit:                   ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i, %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.09, i64 48 ; 2 uses
  %.not7 = icmp eq ptr %i.ae, %i.e
  br i1 %.not7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !199

._crit_edge.loopexit:                             ; preds = %_ZN3euf12dependent_eqD2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !88
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6vectorIN3euf12dependent_eqELb1EjE3endEv.exit
  %i.af = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZN6vectorIN3euf12dependent_eqELb1EjE3endEv.exit ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  store i32 %1, ptr %i.ag, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIjLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIjLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14dependent_exprD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151, !nonnull !27, !align !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN11ast_manager7dec_refEP3ast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !135
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !135
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN11ast_manager7dec_refEP3ast.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef nonnull %i.c)
          to label %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge unwind label %bb.h

._ZN11ast_manager7dec_refEP3ast.exit_crit_edge:   ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !151
  br label %_ZN11ast_manager7dec_refEP3ast.exit

_ZN11ast_manager7dec_refEP3ast.exit:              ; preds = %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge, %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %._ZN11ast_manager7dec_refEP3ast.exit_crit_edge ], [ %i.a, %bb.b ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 4 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager7dec_refEP3ast.exit
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, 1073741823
  %i.m = and i32 %i.l, 1073741823                 ; 2 uses
  %i.n = and i32 %i.k, -1073741824
  %i.o = or disjoint i32 %i.m, %i.n
  store i32 %i.o, ptr %i.j, align 4
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.e, label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull %i.j)
          to label %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit unwind label %bb.h

_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit: ; preds = %bb.d, %_ZN11ast_manager7dec_refEP3ast.exit, %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !151, !nonnull !27, !align !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !150  ; 3 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_ZN11ast_manager7dec_refEP3ast.exit5, label %bb.f

bb.f:                                             ; preds = %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !135
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !135
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN11ast_manager7dec_refEP3ast.exit5

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.r, ptr noundef nonnull %i.t)
          to label %_ZN11ast_manager7dec_refEP3ast.exit5 unwind label %bb.h

_ZN11ast_manager7dec_refEP3ast.exit5:             ; preds = %bb.f, %_ZN11ast_manager7dec_refEPN18dependency_managerINS_22expr_dependency_configEE10dependencyE.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjE(ptr noundef nonnull align 8 dereferenceable(152) initializes((128, 132)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %i.g, i1 false)
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !132 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %.pre2.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store ptr %3, ptr %i.u, align 8, !tbaa !66
  %i.v = add i32 %i.q, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !40
  tail call void @_Z11mark_occursR10ptr_vectorI4exprEPS0_R8obj_markIS0_10bit_vector14default_t2uintIS0_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.w = load ptr, ptr %4, align 8, !tbaa !138    ; 9 uses
  %i.x = zext i32 %2 to i64                       ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  %.028 = phi i32 [ %2, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %.sroa.046.0.copyload, %bb.f ] ; 8 uses
  %.not = icmp eq i32 %.028, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext i32 %.028 to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %.sroa.046.0.copyload = load i32, ptr %i.aa, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.448.0.copyload = load i32, ptr %.sroa.448.0..sroa_idx, align 8
  %.not36 = icmp eq i32 %.sroa.448.0.copyload, %.sroa.3.0.copyload
  br i1 %.not36, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = icmp eq ptr %i.w, null                  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.g
  br i1 %i.ab, label %.critedge39, label %_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us

_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us: ; preds = %.split.us.preheader
  %5 = load i32, ptr %i.ac, align 4, !tbaa !40    ; 2 uses
  %.not97100.not = icmp eq i32 %5, 0
  br i1 %.not97100.not, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us, %.critedge.us
  %.034.us101 = phi i32 [ %i.ax, %.critedge.us ], [ 0, %_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us ] ; 5 uses
  %i.ad = icmp eq i32 %.034.us101, 0
  br i1 %i.ad, label %.critedge.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %.034.us101 to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.ae
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0.copyload.us = load ptr, ptr %.sroa.4.0..sroa_idx.us, align 8
  %i.ag = load i32, ptr %.sroa.4.0.copyload.us, align 4, !tbaa !38 ; 3 uses
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !16
  %i.ai = icmp ult i32 %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.us, label %.critedge.us

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.us: ; preds = %bb.i
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ak = lshr i32 %i.ag, 5
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40
  %i.ao = and i32 %i.ag, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = and i32 %i.an, %i.ap
  %.not53.us = icmp eq i32 %i.aq, 0
  %.not91 = icmp eq i32 %.028, %.034.us101
  %or.cond = or i1 %.not53.us, %.not91
  br i1 %or.cond, label %.critedge.us, label %.lr.ph.i42.us

.lr.ph.i42.us:                                    ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.us, %.lr.ph.i42.us
  %.01.i43.us = phi i32 [ %.sroa.0.0.copyload.i44.us, %.lr.ph.i42.us ], [ %.034.us101, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.us ]
  %i.ar = zext i32 %.01.i43.us to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.ar
  %.sroa.0.0.copyload.i44.us = load i32, ptr %i.as, align 8 ; 4 uses
  %i.at = icmp ne i32 %.028, %.sroa.0.0.copyload.i44.us
  %i.au = icmp ne i32 %.sroa.0.0.copyload.i44.us, 0
  %i.av = and i1 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i42.us, label %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45.us", !llvm.loop !200

"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45.us": ; preds = %.lr.ph.i42.us
  %i.aw = icmp eq i32 %.028, %.sroa.0.0.copyload.i44.us
  br i1 %i.aw, label %.critedge.us, label %.critedge39

.critedge.us:                                     ; preds = %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45.us", %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.us, %bb.i, %bb.h
  %i.ax = add nuw i32 %.034.us101, 1              ; 2 uses
  %.not97 = icmp ult i32 %i.ax, %5
  br i1 %.not97, label %bb.h, label %.critedge39, !llvm.loop !201

.split:                                           ; preds = %bb.g
  br i1 %i.ab, label %.critedge39, label %.split.split

.split.split:                                     ; preds = %.split
  %i.ay = load i32, ptr %i.ac, align 4, !tbaa !40 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.critedge39, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.split
  %i.ba = zext i32 %.028 to i64
  %wide.trip.count = zext i32 %i.ay to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 8 uses
  %i.bb = icmp eq i64 %indvars.iv, %i.x
  br i1 %i.bb, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bd = load i32, ptr %.sroa.4.0.copyload, align 4, !tbaa !38 ; 3 uses
  %i.be = load i32, ptr %i.h, align 8, !tbaa !16
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, label %.critedge

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit: ; preds = %bb.j
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bh = lshr i32 %i.bd, 5
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40
  %i.bl = and i32 %i.bd, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = and i32 %i.bk, %i.bm
  %.not53 = icmp eq i32 %i.bn, 0
  br i1 %.not53, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %.lr.ph.i
  %.01.i = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %2, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ]
  %i.bo = zext i32 %.01.i to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.bo
  %.sroa.0.0.copyload.i = load i32, ptr %i.bp, align 8 ; 3 uses
  %i.bq = zext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.br = icmp ne i64 %indvars.iv, %i.bq
  %i.bs = icmp ne i32 %.sroa.0.0.copyload.i, 0
  %i.bt = and i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.i, label %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit.loopexit", !llvm.loop !200

"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit.loopexit": ; preds = %.lr.ph.i
  %i.bu = icmp eq i64 %indvars.iv, %i.bq
  br i1 %i.bu, label %.critedge, label %bb.k

bb.k:                                             ; preds = %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit.loopexit"
  %i.bv = icmp ne i64 %indvars.iv, %i.ba
  %i.bw = icmp ne i64 %indvars.iv, 0
  %i.bx = and i1 %i.bv, %i.bw
  %i.by = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bx, label %.lr.ph.i42, label %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45"

.lr.ph.i42:                                       ; preds = %bb.k, %.lr.ph.i42
  %.01.i43 = phi i32 [ %.sroa.0.0.copyload.i44, %.lr.ph.i42 ], [ %i.by, %bb.k ]
  %i.bz = zext i32 %.01.i43 to i64
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.bz
  %.sroa.0.0.copyload.i44 = load i32, ptr %i.ca, align 8 ; 4 uses
  %i.cb = icmp ne i32 %.028, %.sroa.0.0.copyload.i44
  %i.cc = icmp ne i32 %.sroa.0.0.copyload.i44, 0
  %i.cd = and i1 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph.i42, label %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45", !llvm.loop !200

"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45": ; preds = %.lr.ph.i42, %bb.k
  %.0.lcssa.i41 = phi i32 [ %i.by, %bb.k ], [ %.sroa.0.0.copyload.i44, %.lr.ph.i42 ]
  %i.ce = icmp eq i32 %.028, %.0.lcssa.i41
  br i1 %i.ce, label %.critedge, label %.critedge39

.critedge:                                        ; preds = %bb.j, %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit.loopexit", %.lr.ph, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45"
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge39, label %.lr.ph, !llvm.loop !201

.critedge39:                                      ; preds = %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45", %.critedge, %.critedge.us, %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45.us", %_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us, %.split.us.preheader, %.split, %.split.split
  %.us-phi = phi i1 [ true, %.split.split ], [ false, %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45.us" ], [ true, %.split ], [ true, %.split.us.preheader ], [ true, %_ZNK6vectorISt5tupleIJbjP4exprjEELb0EjE4sizeEv.exit.us ], [ true, %.critedge.us ], [ true, %.critedge ], [ false, %"_ZZN3euf17solve_context_eqs11is_safe_varEP4exprjS2_RK7svectorISt5tupleIJbjS2_jEEjEENK3$_0clEjj.exit45" ]
  ret i1 %.us-phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIN3euf12dependent_eqELb1EjE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorIN3euf12dependent_eqELb1EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  br label %_ZN6vectorIN3euf12dependent_eqELb1EjE4backEv.exit

_ZN6vectorIN3euf12dependent_eqELb1EjE4backEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ 4294967295, %bb.a ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %.0.i.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIN3euf12dependent_eqELb1EjE4backEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137, !nonnull !27, !align !28
  %i.l = load i32, ptr %i.i, align 4              ; 2 uses
  %i.m = add i32 %i.l, 1073741823
  %i.n = and i32 %i.m, 1073741823                 ; 2 uses
  %i.o = and i32 %i.l, -1073741824
  %i.p = or disjoint i32 %i.n, %i.o
  store i32 %i.p, ptr %i.i, align 4
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %bb.d, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull %i.i)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #19
  unreachable

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i: ; preds = %bb.d, %bb.c, %_ZN6vectorIN3euf12dependent_eqELb1EjE4backEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131  ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZN3euf12dependent_eqD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !134, !nonnull !27, !align !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !135
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !135
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZN3euf12dependent_eqD2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.x, ptr noundef nonnull %i.v)
          to label %_ZN3euf12dependent_eqD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN3euf12dependent_eqD2Ev.exit:                   ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_ED2Ev.exit.i, %bb.f, %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !88
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorISt5tupleIJbjP4exprjEELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !138    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorISt5tupleIJbjP4exprjEELb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorISt5tupleIJbjP4exprjEELb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorISt5tupleIJbjP4exprjEELb0EjE7destroyEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !202 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  br label %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.lr.ph: ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  store ptr %1, ptr %i.m, align 8, !tbaa !205
  %i.n = add i32 %i.i, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit

_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit: ; preds = %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.lr.ph, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7dec_refERKP4expr.exit
  %i.p = phi ptr [ %i.j, %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.lr.ph ], [ %i.dq, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7dec_refERKP4expr.exit ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit.thread, label %_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE4backEv.exit

_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE4backEv.exit: ; preds = %_ZNK6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE5emptyEv.exit
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !205  ; 4 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !40
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp slt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.y, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE4backEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = add i32 %i.ab, 1073741823
  %i.ad = and i32 %i.ac, 1073741823               ; 2 uses
  %i.ae = and i32 %i.ab, -1073741824
  %i.af = or disjoint i32 %i.ad, %i.ae
  store i32 %i.af, ptr %i.aa, align 4
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %bb.g, label %bb.t

bb.d:                                             ; preds = %_ZN6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE4backEv.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !206, !nonnull !27, !align !28
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !66  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7dec_refERKP4expr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !135
end_hunk_0

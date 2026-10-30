Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/expr_functors?download=true
inline.NumInlined: 110
inline.NumDeleted: 68
begin_hunk_0_@_ZN10check_pred5visitEP4expr:bb.a
  store ptr %i.ay, ptr %i.bw, align 8, !tbaa !17
  %i.bx = add i32 %i.bs, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !15
  br label %thread-pre-split.backedgethread-pre-split

bb.aa:                                            ; preds = %bb.f
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @.str.1)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %thread-pre-split.backedgethread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph._crit_edge: ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %.lcssa = phi ptr [ %i.s, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.pr58, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ]
  %i.by = getelementptr inbounds i8, ptr %.lcssa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.by)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph._crit_edge
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #15
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %thread-pre-split.backedge, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIP4exprLb0EjE7destroyEv.exit:           ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12contains_appclEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN12contains_appclEP4expr.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12contains_appclEP4expr.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 6 uses
  %i.g = tail call noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %i.f)
  br i1 %i.g, label %_ZN12contains_appclEP4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !9
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %.pre2.i.i.i.i, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  store ptr %i.f, ptr %i.v, align 8, !tbaa !17
  %i.w = add i32 %i.r, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !15
  tail call void @_ZN10check_pred5visitEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.a, ptr noundef %i.f)
  br label %_ZN12contains_appclEP4expr.exit

_ZN12contains_appclEP4expr.exit:                  ; preds = %bb.b, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.x = tail call noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %i.f) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.x, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !74

._crit_edge:                                      ; preds = %_ZN12contains_appclEP4expr.exit, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.x, %_ZN12contains_appclEP4expr.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8map_proc11reconstructEP3app(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4
  store i32 0, ptr %i.e, align 4, !tbaa !15
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  br i1 %spec.select, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %.critedge

bb.c:                                             ; preds = %.lr.ph, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ] ; 2 uses
  %.016 = phi i1 [ false, %.lr.ph ], [ %spec.select, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !38
  call void @_ZNK8expr_map3getEP4exprRS1_RP3app(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !15
  %2 = icmp eq ptr %.pre.i, null
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.d, %bb.e
  %i.t = phi i32 [ %.pre2.i, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %3 = phi i1 [ %2, %bb.e ], [ false, %bb.d ]
  %i.u = phi ptr [ %.pre.i, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store ptr %i.l, ptr %i.x, align 8, !tbaa !17
  %i.y = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.y, ptr %i.v, align 4, !tbaa !15
  %.not = icmp ne ptr %i.k, %i.l
  %spec.select = select i1 %.not, i1 true, i1 %.016 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !30
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge, !llvm.loop !75

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !21, !align !22
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %spec.select22 = select i1 %3, i32 0, i32 %i.y
  %i.af = call noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ac, ptr noundef %i.ae, i32 noundef %spec.select22, ptr noundef nonnull %i.u)
  call void @_ZN8expr_map6insertEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef null)
  br label %bb.f

.critedge:                                        ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN8expr_map6insertEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8map_proc8get_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK8expr_map3getEP4exprRS1_RP3app(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.d
}

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN8expr_map6insertEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8map_proc5visitEP10quantifier(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.obj_ref.34, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !21, !align !22 ; 3 uses
  store ptr null, ptr %2, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZNK8expr_map3getEP4exprRS1_RP3app(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.i = invoke noundef ptr @_ZN11ast_manager17update_quantifierEP10quantifierP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %1, ptr noundef %i.h)
          to label %bb.c unwind label %bb.i       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.i, ptr %2, align 8, !tbaa !49
  invoke void @_ZN8expr_map6insertEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull %1, ptr noundef %i.i, ptr noundef null)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !9
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.i)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #15
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.i:                                             ; preds = %bb.a, %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.s
}

declare noundef ptr @_ZN11ast_manager17update_quantifierEP10quantifierP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78, !nonnull !21, !align !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !9
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable
}

declare void @_ZNK8expr_map3getEP4exprRS1_RP3app(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 3 uses
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
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0

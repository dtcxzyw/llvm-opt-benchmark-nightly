Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/macro_manager?download=true
inline.NumInlined: 2032
inline.NumDeleted: 711
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEED2Ev:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !124
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !124
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !3

_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP10quantifierLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP10quantifierLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #16
  unreachable

_ZN6vectorIP10quantifierLb0EjED2Ev.exit:          ; preds = %bb.a, %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI10quantifier19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableIN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableIN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZN14core_hashtableIN7obj_mapI9func_declPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE13obj_map_entryE8obj_hashINS8_8key_dataEE10default_eqISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_mapI9func_declP3appED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableIN7obj_mapI9func_declP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableIN7obj_mapI9func_declP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZN14core_hashtableIN7obj_mapI9func_declP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_mapI9func_declP10quantifierED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableIN7obj_mapI9func_declP10quantifierE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableIN7obj_mapI9func_declP10quantifierE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZN14core_hashtableIN7obj_mapI9func_declP10quantifierE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10macro_utilD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN15mk_extract_procD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !361  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7obj_mapI4exprjED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN7obj_mapI4exprjED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #16
  unreachable

_ZN7obj_mapI4exprjED2Ev.exit.i.i:                 ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN11bv_rewriterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7obj_mapI4exprjED2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136, !nonnull !121, !align !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !124
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !124
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN11bv_rewriterD2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.h)
          to label %_ZN11bv_rewriterD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #16
  unreachable

_ZN11bv_rewriterD2Ev.exit:                        ; preds = %_ZN7obj_mapI4exprjED2Ev.exit.i.i, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !361  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN7obj_mapI4exprjED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11bv_rewriterD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN7obj_mapI4exprjED2Ev.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

_ZN7obj_mapI4exprjED2Ev.exit.i:                   ; preds = %bb.g, %_ZN11bv_rewriterD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !362
  invoke void @_Z7deallocI8seq_utilEvPT_(ptr noundef %i.w)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN7obj_mapI4exprjED2Ev.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #16
  unreachable

_ZN13poly_rewriterI19arith_rewriter_coreED2Ev.exit: ; preds = %_ZN7obj_mapI4exprjED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13macro_manager10push_scopeEv(ptr noundef nonnull align 8 dereferenceable(568) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !117  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !117
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN13macro_manager5scopeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !117
  br label %_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit

_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %1 = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store i64 0, ptr %i.l, align 4, !tbaa !117
  %i.m = add i32 %i.i, 1
  store i32 %i.m, ptr %1, align 4, !tbaa !117
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  br label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit, %bb.d
  %.0.i.i3 = phi i32 [ %i.s, %bb.d ], [ 0, %_ZN6vectorIN13macro_manager5scopeELb0EjE4backEv.exit ]
  store i32 %.0.i.i3, ptr %i.n, align 4, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !117
  br label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit5

_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit5: ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.e
  %.0.i.i4 = phi i32 [ %i.x, %bb.e ], [ 0, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.0.i.i4, ptr %i.y, align 4, !tbaa !139
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13macro_manager9pop_scopeEj(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIN13macro_manager5scopeELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117
  br label %_ZNK6vectorIN13macro_manager5scopeELb0EjE4sizeEv.exit

_ZNK6vectorIN13macro_manager5scopeELb0EjE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = sub i32 %.0.i, %1                        ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !138
  tail call void @_ZN13macro_manager13restore_declsEj(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !139  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN13macro_manager17restore_forbiddenEj.exit, label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZNK6vectorIN13macro_manager5scopeELb0EjE4sizeEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !117  ; 3 uses
  %i.s = icmp ult i32 %i.l, %i.r
  br i1 %i.s, label %.lr.ph.i, label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.u = zext i32 %i.l to i64
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !70 ; 3 uses
  %i.v = icmp eq ptr %.pre.i, null
  br i1 %i.v, label %_ZN13macro_manager17restore_forbiddenEj.exit, label %._crit_edge.i._ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i_crit_edge

._crit_edge.i._ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i_crit_edge: ; preds = %._crit_edge.i
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !117
  br label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i

_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i:      ; preds = %._crit_edge.i._ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i_crit_edge, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.w = phi i32 [ %.pre, %._crit_edge.i._ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i_crit_edge ], [ %i.r, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %._crit_edge.i._ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i_crit_edge ], [ %i.o, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ] ; 3 uses
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = icmp ugt i32 %i.w, %i.l
  br i1 %i.aa, label %.lr.ph.i.i.preheader.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i
  %i.ab = zext i32 %i.l to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.06.i.i.i = phi ptr [ %i.aj, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i ], [ %i.ac, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.ad = load ptr, ptr %.06.i.i.i, align 8, !tbaa !118 ; 3 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !120, !nonnull !121, !align !122
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !124
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !124
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ad)
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %i.z
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, !llvm.loop !0

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN13macro_manager17restore_forbiddenEj.exit, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i
  %i.al = phi ptr [ %.pre.i.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i ], [ %i.x, %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.l, ptr %i.am, align 4, !tbaa !117
  br label %_ZN13macro_manager17restore_forbiddenEj.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !118
  call void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6removeERKPS1_(ptr noundef nonnull align 8 dereferenceable(20) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.r, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !4

_ZN13macro_manager17restore_forbiddenEj.exit:     ; preds = %_ZNK6vectorIN13macro_manager5scopeELb0EjE4sizeEv.exit, %._crit_edge.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN6vectorIN13macro_manager5scopeELb0EjE6shrinkEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN13macro_manager17restore_forbiddenEj.exit
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  store i32 %i.g, ptr %i.ar, align 4, !tbaa !117
  br label %_ZN6vectorIN13macro_manager5scopeELb0EjE6shrinkEj.exit

_ZN6vectorIN13macro_manager5scopeELb0EjE6shrinkEj.exit: ; preds = %_ZN13macro_manager17restore_forbiddenEj.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13macro_manager13restore_declsEj(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.obj_map<func_decl, dependency_manager<ast_manager::expr_dependency_config>::dependency *>::key_data", align 8 ; 5 uses
  %3 = alloca %"struct.obj_map<func_decl, app *>::key_data", align 8 ; 5 uses
  %4 = alloca %"struct.obj_map<func_decl, quantifier *>::key_data", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = icmp ult i32 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = zext i32 %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.p = icmp eq ptr %.pre, null
  br i1 %i.p, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i

_ZN6vectorIP9func_declLb0EjE3endEv.exit.i:        ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %._crit_edge
end_hunk_0

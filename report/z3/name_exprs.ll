Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/name_exprs?download=true
inline.NumInlined: 1172
inline.NumDeleted: 298
begin_hunk_0_@_ZN12rewriter_tplIN15name_exprs_core3cfgEE13constant_foldEP3appRN13rewriter_core5frameE:bb.a

_ZN12rewriter_tplIN15name_exprs_core3cfgEE18set_new_child_flagEP4expr.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !125 ; 3 uses
  %.not.i4.i38 = icmp eq ptr %i.et, null
  br i1 %.not.i4.i38, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN12rewriter_tplIN15name_exprs_core3cfgEE18set_new_child_flagEP4expr.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !141, !nonnull !128, !align !129
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !131
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !131
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ev, ptr noundef nonnull %i.et)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN12rewriter_tplIN15name_exprs_core3cfgEE18set_new_child_flagEP4expr.exit
  store ptr null, ptr %i.es, align 8, !tbaa !125
  br label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread

_ZNK11ast_manager6is_iteEPK4expr.exit.thread:     ; preds = %bb.a, %_ZNK11ast_manager6is_iteEPK4expr.exit, %bb.b, %bb.c, %bb.f, %bb.e, %bb.x
  %.1 = phi i1 [ true, %bb.x ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZNK11ast_manager6is_iteEPK4expr.exit ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN15inv_var_shifterclEP4exprjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22name_quantifier_labelsD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15name_exprs_core, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12rewriter_tplIN15name_exprs_core3cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %i.a) #15, !inline_history !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !131
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.e, ptr noundef nonnull %i.c)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i unwind label %bb.d, !inline_history !132

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #16, !inline_history !132
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i:      ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN15name_exprs_coreD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !131
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN15name_exprs_coreD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.o, ptr noundef nonnull %i.m)
          to label %_ZN15name_exprs_coreD2Ev.exit unwind label %bb.g, !inline_history !132

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16, !inline_history !132
  unreachable

_ZN15name_exprs_coreD2Ev.exit:                    ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22name_quantifier_labelsD0Ev(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15name_exprs_core, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12rewriter_tplIN15name_exprs_core3cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %i.a) #15, !inline_history !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !131
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.e, ptr noundef nonnull %i.c)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i unwind label %bb.d, !inline_history !132

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #16, !inline_history !132
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i:    ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZN22name_quantifier_labelsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !131
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN22name_quantifier_labelsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.o, ptr noundef nonnull %i.m)
          to label %_ZN22name_quantifier_labelsD2Ev.exit unwind label %bb.g, !inline_history !132

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16, !inline_history !132
  unreachable

_ZN22name_quantifier_labelsD2Ev.exit:             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 632) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22name_quantifier_labels4predD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN22name_quantifier_labels4predclEP4expr(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %trunc = trunc i32 %i.b to i16
  switch i16 %trunc, label %_ZNK11ast_manager8is_labelEPK4expr.exit [
    i16 2, label %_Z9is_lambdaPK3ast.exit
    i16 0, label %bb.b
  ]

_Z9is_lambdaPK3ast.exit:                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !198
  %i.e = icmp ne i32 %i.d, 2
  br label %_ZNK11ast_manager8is_labelEPK4expr.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager8is_labelEPK4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !197
  %i.k = icmp eq i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br label %_ZNK11ast_manager8is_labelEPK4expr.exit

_ZNK11ast_manager8is_labelEPK4expr.exit:          ; preds = %bb.a, %_Z9is_lambdaPK3ast.exit, %bb.c, %bb.b
  %i.p = phi i1 [ %i.e, %_Z9is_lambdaPK3ast.exit ], [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20name_nested_formulasD2Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15name_exprs_core, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12rewriter_tplIN15name_exprs_core3cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %i.a) #15, !inline_history !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !131
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.e, ptr noundef nonnull %i.c)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i unwind label %bb.d, !inline_history !132

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #16, !inline_history !132
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i:      ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN15name_exprs_coreD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !131
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN15name_exprs_coreD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.o, ptr noundef nonnull %i.m)
          to label %_ZN15name_exprs_coreD2Ev.exit unwind label %bb.g, !inline_history !132

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16, !inline_history !132
  unreachable

_ZN15name_exprs_coreD2Ev.exit:                    ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20name_nested_formulasD0Ev(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15name_exprs_core, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12rewriter_tplIN15name_exprs_core3cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %i.a) #15, !inline_history !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !131
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.e, ptr noundef nonnull %i.c)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i unwind label %bb.d, !inline_history !132

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #16, !inline_history !132
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i:    ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZN20name_nested_formulasD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127, !nonnull !128, !align !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !131
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN20name_nested_formulasD2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.o, ptr noundef nonnull %i.m)
          to label %_ZN20name_nested_formulasD2Ev.exit unwind label %bb.g, !inline_history !132

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16, !inline_history !132
  unreachable

_ZN20name_nested_formulasD2Ev.exit:               ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit.i.i.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 640) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20name_nested_formulasclEP4exprR10ref_vectorIS0_11ast_managerERS2_I3appS3_ER7obj_refIS0_S3_ERS9_IS6_S3_E(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %1, ptr %i.a, align 8, !tbaa !236
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12rewriter_tplIN15name_exprs_core3cfgEEclEP4exprR7obj_refIS3_11ast_managerERS5_I3appS6_E(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14expr_predicateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20name_nested_formulas4predD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN20name_nested_formulas4predclEP4expr(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %trunc = trunc i32 %i.b to i16
  switch i16 %trunc, label %_ZNK3app13get_family_idEv.exit.thread [
    i16 0, label %bb.b
    i16 2, label %_Z9is_lambdaPK3ast.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !179
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK3app13get_family_idEv.exit.thread, label %_ZNK3app13get_family_idEv.exit

_ZNK3app13get_family_idEv.exit:                   ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 8, !tbaa !197
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNK3app13get_family_idEv.exit.thread

bb.c:                                             ; preds = %_ZNK3app13get_family_idEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !167
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZNK3app13get_family_idEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.n = icmp ne ptr %1, %i.m
  br label %_ZNK3app13get_family_idEv.exit.thread

_Z9is_lambdaPK3ast.exit:                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !198
  %i.q = icmp ne i32 %i.p, 2
  br label %_ZNK3app13get_family_idEv.exit.thread

end_hunk_0

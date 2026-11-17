Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/horn_subsume_model_converter?download=true
inline.NumInlined: 636
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN13bool_rewriter6mk_andEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_ZN13bool_rewriter17mk_nflat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit

_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %i.i = icmp eq i32 %.0.i, 5
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !219, !nonnull !55, !align !56
  %i.k = zext i32 %1 to i64
  %i.l = tail call noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.j, i32 noundef 0, i32 noundef 5, ptr %2, i64 %i.k) ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.e
  %i.p = load ptr, ptr %3, align 8, !tbaa !58     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61, !nonnull !55, !align !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.r, ptr noundef nonnull %i.p)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.f, %bb.g, %bb.h
  store ptr %i.l, ptr %3, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit.thread, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %_ZN13bool_rewriter11mk_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13bool_rewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #16
  unreachable

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.j)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #16
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZN6vectorIjLb0EjED2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
          to label %_ZN6vectorIjLb0EjED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #16
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit2:                     ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.s, null
  br i1 %.not.i.i3, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit2
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.t)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN6vectorIjLb0EjED2Ev.exit2, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i4, label %_ZN6vectorIP4exprLb0EjED2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.y)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit5 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit5:                ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !55, !align !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !16
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
  tail call void @__clang_call_terminate(ptr %i.i) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN28horn_subsume_model_converter7mk_hornEP3appP4exprR7obj_refI9func_decl11ast_managerERS4_IS2_S6_E(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator.83", align 1 ; 4 uses
  %7 = alloca %class.ref_vector.0, align 8        ; 7 uses
  %8 = alloca %class.ref_vector.0, align 8        ; 8 uses
  %9 = alloca %class.ptr_vector.35, align 8       ; 7 uses
  %10 = alloca %class.var_subst, align 8          ; 13 uses
  %11 = alloca %class.expr_free_vars, align 8     ; 14 uses
  %12 = alloca %class.svector.16, align 8         ; 9 uses
  %13 = alloca %class.obj_ref.48, align 8         ; 9 uses
  %14 = alloca %class.obj_ref, align 8            ; 12 uses
  %15 = alloca %class.obj_ref, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  store i64 %i.c, ptr %7, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 13 uses
  store ptr null, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i64 %i.c, ptr %8, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr null, ptr %9, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %10, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 536
  invoke void @_ZN12rewriter_tplI16beta_reducer_cfgEC2ER11ast_managerbRS0_(ptr noundef nonnull align 8 dereferenceable(545) %10, ptr noundef nonnull align 8 dereferenceable(952) %i.b, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %10, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 544
  store i8 0, ptr %i.g, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 65535
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_Z11is_uninterpPK4expr.exit

_Z11is_uninterpPK4expr.exit:                      ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 8, !tbaa !104
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.f, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.e:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.f:                                             ; preds = %bb.c, %_Z11is_uninterpPK4expr.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !16
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !16
  %i.x = load ptr, ptr %3, align 8, !tbaa !106    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107, !nonnull !55, !align !56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !16
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.z, ptr noundef nonnull %i.x)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  store ptr %i.m, ptr %3, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !108 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 8, ptr %i.ag, align 8, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !249
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !250
  %i.aj = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 64)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false), !tbaa !252
  store ptr %i.aj, ptr %11, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  invoke void @_ZN14expr_free_varsclEP4expr(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %1)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN14expr_free_vars10accumulateEP4expr(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK14expr_free_vars5emptyEv.exit.thread, label %_ZNK14expr_free_vars5emptyEv.exit

_ZNK14expr_free_vars5emptyEv.exit:                ; preds = %bb.m
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK14expr_free_vars5emptyEv.exit.thread, label %bb.s

_ZNK14expr_free_vars5emptyEv.exit.thread:         ; preds = %bb.m, %_ZNK14expr_free_vars5emptyEv.exit
  %.not.i64 = icmp eq ptr %2, null
  br i1 %.not.i64, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i65

_ZN11ast_manager7inc_refEP3ast.exit.i65:          ; preds = %_ZNK14expr_free_vars5emptyEv.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i65, %_ZNK14expr_free_vars5emptyEv.exit.thread
  %i.au = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %.not.i4.i66 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i66, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61, !nonnull !55, !align !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !16
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %bb.r

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.p, %bb.n, %bb.o
  store ptr %2, ptr %4, align 8, !tbaa !58
  br label %bb.ci

bb.q:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.r:                                             ; preds = %bb.p, %bb.s, %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.s:                                             ; preds = %_ZNK14expr_free_vars5emptyEv.exit, %bb.l
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 816
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !253
  invoke void @_ZN14expr_free_vars16set_default_sortEP4sort(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %i.bf)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr null, ptr %12, align 8, !tbaa !164
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN14expr_free_vars7reverseEv.exit, label %_ZNK14expr_free_vars4sizeEv.exit

_ZNK14expr_free_vars4sizeEv.exit:                 ; preds = %bb.t, %bb.x
  %i.bi = phi ptr [ %i.cq, %bb.x ], [ %i.bg, %bb.t ] ; 4 uses
  %i.bj = phi ptr [ %i.cr, %bb.x ], [ null, %bb.t ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.t ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv, %i.bm ; 2 uses
  br i1 %i.bn, label %bb.u, label %.critedge

.critedge:                                        ; preds = %_ZNK14expr_free_vars4sizeEv.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorI6symbolLb0EjE4sizeEv.exit.i

_ZNK6vectorI6symbolLb0EjE4sizeEv.exit.i:          ; preds = %bb.x, %.critedge
  %.lcssa173267 = phi ptr [ %i.bi, %.critedge ], [ null, %bb.x ]
  %i.bp = phi ptr [ %i.bj, %.critedge ], [ %i.cr, %bb.x ] ; 7 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22 ; 4 uses
  %i.bs = lshr i32 %i.br, 1                       ; 4 uses
  %.not.i68 = icmp eq i32 %i.bs, 0
  br i1 %.not.i68, label %_ZN6vectorI6symbolLb0EjE7reverseEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorI6symbolLb0EjE4sizeEv.exit.i
  %wide.trip.count.i = zext nneg i32 %i.bs to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

end_hunk_0
begin_hunk_1_@_ZN28horn_subsume_model_converter7mk_hornEP3appP4exprR7obj_refI9func_decl11ast_managerERS4_IS2_S6_E:bb.a
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cf ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %i.cb, align 8, !tbaa !254
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !254
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !254
  store ptr %.sroa.0.0.copyload.i.i.1, ptr %i.cg, align 8, !tbaa !254
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6vectorI6symbolLb0EjE7reverseEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !220

bb.u:                                             ; preds = %_ZNK14expr_free_vars4sizeEv.exit
  %i.ci = shl nuw nsw i64 %indvars.iv, 3
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = icmp eq ptr %i.bj, null
  br i1 %i.ck, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !22 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !22
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  invoke void @_ZN6vectorI6symbolLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc69 unwind label %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.w
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !85
  br label %bb.x

bb.x:                                             ; preds = %.noexc69, %bb.v
  %i.cq = phi ptr [ %.pre, %.noexc69 ], [ %i.bi, %bb.v ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i, %.noexc69 ], [ %i.bj, %bb.v ] ; 4 uses
  %i.cs = phi i32 [ %.pre2.i, %.noexc69 ], [ %i.cm, %bb.v ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cu
  store i64 %i.cj, ptr %i.cv, align 8, !tbaa !254
  %i.cw = add i32 %i.cs, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cx = icmp eq ptr %i.cq, null
  br i1 %i.cx, label %_ZNK6vectorI6symbolLb0EjE4sizeEv.exit.i, label %_ZNK14expr_free_vars4sizeEv.exit, !llvm.loop !221

.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp168

_ZN6vectorI6symbolLb0EjE7reverseEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6vectorI6symbolLb0EjE7reverseEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6vectorI6symbolLb0EjE7reverseEv.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN6vectorI6symbolLb0EjE7reverseEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod323 = trunc i32 %i.bs to i1
  call void @llvm.assume(i1 %lcmp.mod323)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.da = xor i32 %i.cz, -1
  %i.db = add i32 %i.br, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dc ; 2 uses
  %.sroa.0.0.copyload.i.i.epil = load ptr, ptr %i.cy, align 8, !tbaa !254
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !254
  store i64 %i.de, ptr %i.cy, align 8, !tbaa !254
  store ptr %.sroa.0.0.copyload.i.i.epil, ptr %i.dd, align 8, !tbaa !254
  br label %_ZN6vectorI6symbolLb0EjE7reverseEv.exit

_ZN6vectorI6symbolLb0EjE7reverseEv.exit:          ; preds = %.lr.ph.i.epil.preheader, %_ZN6vectorI6symbolLb0EjE7reverseEv.exit.loopexit.unr-lcssa, %_ZNK6vectorI6symbolLb0EjE4sizeEv.exit.i
  br i1 %i.bn, label %_ZN14expr_free_vars7reverseEv.exit, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i.i:         ; preds = %.critedge, %_ZN6vectorI6symbolLb0EjE7reverseEv.exit
  %.lcssa173262274 = phi ptr [ %.lcssa173267, %_ZN6vectorI6symbolLb0EjE7reverseEv.exit ], [ %i.bi, %.critedge ] ; 7 uses
  %i.df = getelementptr inbounds i8, ptr %.lcssa173262274, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !22 ; 4 uses
  %i.dh = lshr i32 %i.dg, 1                       ; 4 uses
  %.not.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i, label %_ZN14expr_free_vars7reverseEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.dh to i64 ; 2 uses
  %xtraiter324 = and i64 %wide.trip.count.i.i, 1
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter327 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %niter328 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter328.next.1, %.lr.ph.i.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %indvars.iv.i.i ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dl = xor i32 %i.dk, -1
  %i.dm = add i32 %i.dg, %i.dl
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !255
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !255
  store ptr %i.dq, ptr %i.dj, align 8, !tbaa !255
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !255
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.dt = xor i32 %i.ds, -1
  %i.du = add i32 %i.dg, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %i.dv ; 2 uses
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !255
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !255
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !255
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !255
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter328.next.1 = add i64 %niter328, 2         ; 2 uses
  %niter328.ncmp.1 = icmp eq i64 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %_ZN14expr_free_vars7reverseEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !222

_ZN14expr_free_vars7reverseEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %_ZN14expr_free_vars7reverseEv.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN14expr_free_vars7reverseEv.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZN14expr_free_vars7reverseEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod326 = trunc i32 %i.dh to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %i.dg, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.lcssa173262274, i64 %i.ed ; 2 uses
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !255
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !255
  store ptr %i.eg, ptr %i.dz, align 8, !tbaa !255
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !255
  br label %_ZN14expr_free_vars7reverseEv.exit

_ZN14expr_free_vars7reverseEv.exit:               ; preds = %.lr.ph.i.i.epil.preheader, %_ZN14expr_free_vars7reverseEv.exit.loopexit.unr-lcssa, %bb.t, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i.i, %_ZN6vectorI6symbolLb0EjE7reverseEv.exit
  %.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN14expr_free_vars7reverseEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !16
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.y, %_ZN14expr_free_vars7reverseEv.exit
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !27  ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !22 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !22
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.aa:                                            ; preds = %bb.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc70 unwind label %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !22
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.z, %.noexc70
  %i.er = phi i32 [ %.pre2.i.i, %.noexc70 ], [ %i.en, %bb.z ] ; 2 uses
  %i.es = phi ptr [ %.pre.i.i, %.noexc70 ], [ %i.ek, %bb.z ] ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.eu = zext i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eu
  store ptr %2, ptr %i.ev, align 8, !tbaa !29
  %i.ew = add i32 %i.er, 1
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !22
  br i1 %i.al, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  store ptr null, ptr %14, align 8, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !59
  br label %bb.ab

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %16 = load ptr, ptr %8, align 8, !nonnull !55, !align !56
  %wide.trip.count = zext i32 %i.af to i64
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZN7obj_refI3var11ast_managerED2Ev.exit
  %.pre192 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56 ; 3 uses
  store ptr null, ptr %14, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !59
  %i.fd = icmp eq ptr %.pre192, null
  br i1 %i.fd, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.fe = phi ptr [ %i.ey, %._crit_edge.thread ], [ %i.fc, %._crit_edge ]
  %i.ff = phi ptr [ %i.ex, %._crit_edge.thread ], [ %i.fb, %._crit_edge ]
  %i.fg = phi ptr [ %i.es, %._crit_edge.thread ], [ %.pre192, %._crit_edge ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22
  %i.fj = zext i32 %i.fi to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.ab, %._crit_edge
  %i.fk = phi ptr [ %i.fe, %bb.ab ], [ %i.fc, %._crit_edge ] ; 3 uses
  %i.fl = phi ptr [ %i.ff, %bb.ab ], [ %i.fb, %._crit_edge ]
  %i.fm = phi ptr [ %i.fg, %bb.ab ], [ null, %._crit_edge ]
  %.0.i.i.i = phi i64 [ %i.fj, %bb.ab ], [ 0, %._crit_edge ]
  %i.fn = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.fl, i32 noundef 0, i32 noundef 5, ptr %i.fm, i64 %.0.i.i.i)
          to label %_ZN11ast_manager6mk_andERK10ref_vectorI4exprS_E.exit unwind label %bb.bs ; 8 uses

bb.ac:                                            ; preds = %.lr.ph, %_ZN7obj_refI3var11ast_managerED2Ev.exit
  %i.fo = phi ptr [ null, %.lr.ph ], [ %i.kp, %_ZN7obj_refI3var11ast_managerED2Ev.exit ] ; 5 uses
  %.pr.pre.i = phi ptr [ null, %.lr.ph ], [ %i.kq, %_ZN7obj_refI3var11ast_managerED2Ev.exit ] ; 6 uses
  %indvars.iv185 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next186, %_ZN7obj_refI3var11ast_managerED2Ev.exit ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv185
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !168
  store ptr %i.fr, ptr %i.fa, align 8, !tbaa !59
  %i.fs = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZNK14expr_free_vars4sizeEv.exit73, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !22
  br label %_ZNK14expr_free_vars4sizeEv.exit73

_ZNK14expr_free_vars4sizeEv.exit73:               ; preds = %bb.ad, %bb.ac
  %.0.i.i72 = phi i32 [ %i.fv, %bb.ad ], [ 0, %bb.ac ]
  %i.fw = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.fq)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNK14expr_free_vars4sizeEv.exit73
  %i.fx = trunc nuw i64 %indvars.iv185 to i32
  %i.fy = add i32 %.0.i.i72, %i.fx
  %i.fz = invoke noundef ptr @_ZN11ast_manager6mk_varEjP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.fr, i32 noundef %i.fy, ptr noundef %i.fw)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.af:                                            ; preds = %bb.ae
  %.not.i74 = icmp eq ptr %i.fz, null
  br i1 %.not.i74, label %bb.ag, label %_ZN11ast_manager7inc_refEP3ast.exit.i75

_ZN11ast_manager7inc_refEP3ast.exit.i75:          ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !16
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN11ast_manager7inc_refEP3ast.exit.i75
  store ptr %i.fz, ptr %13, align 8, !tbaa !168
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = and i32 %i.ge, 65535
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.ah, label %bb.bd

bb.ah:                                            ; preds = %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !257 ; 4 uses
  %i.gj = icmp eq ptr %.pr.pre.i, null
  br i1 %i.gj, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.ah
  %i.gk = getelementptr inbounds i8, ptr %.pr.pre.i, i64 -4 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !22 ; 4 uses
  %.not = icmp ult i32 %i.gi, %i.gl
  br i1 %.not, label %bb.av, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.gm = add i32 %i.gi, 1                        ; 5 uses
  %i.gn = icmp ult i32 %i.gm, %i.gl
  br i1 %i.gn, label %.lr.ph.i.preheader.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.go = zext i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.pr.pre.i, i64 %i.go
  %i.gq = zext i32 %i.gm to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.pr.pre.i, i64 %i.gq
  br label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %.lr.ph.i.preheader.i
  %.06.i.i = phi ptr [ %i.gx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gr, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.gs = load ptr, ptr %.06.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i80
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !16
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !16
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.aj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %16, ptr noundef nonnull %i.gs)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i80
  %i.gx = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.gy = icmp ult ptr %i.gx, %i.gp
  br i1 %i.gy, label %.lr.ph.i.i80, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i_crit_edge, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i_crit_edge: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre190 = load i32, ptr %i.gk, align 4, !tbaa !22
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.ah
  %i.gz = add i32 %i.gi, 1                        ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not.not.i.i, label %bb.av, label %thread-pre-split.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i_crit_edge, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ha = phi i32 [ %.pre190, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i_crit_edge ], [ %i.gl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.not15.i.i = icmp ugt i32 %i.gm, %i.ha
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.ak

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %.pr.pre.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.ph301 = phi i32 [ %i.gm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ %i.gz, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i16.i.i.ph = phi i32 [ %i.ha, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.ak:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !22
  br label %bb.av

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.backedge, %thread-pre-split.i.i.preheader
  %i.hb = phi ptr [ %i.fo, %thread-pre-split.i.i.preheader ], [ %.be302, %thread-pre-split.i.i.backedge ] ; 2 uses
  %i.hc = phi ptr [ %.ph, %thread-pre-split.i.i.preheader ], [ %.be302, %thread-pre-split.i.i.backedge ] ; 5 uses
  %cond = icmp eq ptr %i.hc, null
  br i1 %cond, label %bb.al, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !22
  %i.hf = icmp ugt i32 %.ph301, %i.he
  br i1 %i.hf, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.au

bb.al:                                            ; preds = %thread-pre-split.i.i
  %i.hg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc161 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc161:                                        ; preds = %bb.al
  store i32 2, ptr %i.hg, align 4, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i32 0, ptr %i.hh, align 4, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  store ptr %i.hi, ptr %i.e, align 8, !tbaa !27
  br label %thread-pre-split.i.i.backedge

thread-pre-split.i.i.backedge:                    ; preds = %.noexc161, %.noexc162
  %.be302 = phi ptr [ %i.io, %.noexc162 ], [ %i.hi, %.noexc161 ] ; 2 uses
  br label %thread-pre-split.i.i, !llvm.loop !223

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.hj = getelementptr inbounds i8, ptr %i.hc, i64 -8 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !22 ; 3 uses
  %i.hl = mul i32 %i.hk, 3
  %i.hm = add i32 %i.hl, 1
  %i.hn = lshr i32 %i.hm, 1                       ; 3 uses
  %i.ho = shl i32 %i.hn, 3
  %i.hp = add i32 %i.ho, 8                        ; 2 uses
  %.not.i158 = icmp ugt i32 %i.hn, %i.hk
  br i1 %.not.i158, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.hq = shl i32 %i.hk, 3
  %i.hr = add i32 %i.hq, 8
  %.not27.i = icmp ugt i32 %i.hp, %i.hr
  br i1 %.not27.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.hs = call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hs, align 8, !tbaa !87
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 3 uses
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !170
  %i.hv = load ptr, ptr %5, align 8, !tbaa !172   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !173 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ao
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !172
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !174
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !174
  %.phi.trans.insert.i159 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i160 = load i64, ptr %.phi.trans.insert.i159, align 8, !tbaa !173
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ap
  %i.id = phi i64 [ %i.hz, %bb.ap ], [ %.pre.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %i.id, ptr %i.if, align 8, !tbaa !173
  store ptr %i.hw, ptr %5, align 8, !tbaa !172
  store i64 0, ptr %i.ie, align 8, !tbaa !173
  store i8 0, ptr %i.hw, align 8, !tbaa !174
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #17
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %5, align 8, !tbaa !172   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hw
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aq
  %i.ij = load i64, ptr %i.hw, align 8, !tbaa !174
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.ar:                                            ; preds = %bb.an
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @__cxa_free_exception(ptr %i.hs) #15
  br label %.body

bb.as:                                            ; preds = %bb.am
  %i.im = zext i32 %i.hp to i64
  %i.in = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hj, i64 noundef %i.im)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc162:                                        ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  store ptr %i.io, ptr %i.e, align 8, !tbaa !27
  store i32 %i.hn, ptr %i.in, align 4, !tbaa !22
  br label %thread-pre-split.i.i.backedge

bb.at:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.au:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.ip = getelementptr inbounds i8, ptr %i.hc, i64 -4
  store i32 %.ph301, ptr %i.ip, align 4, !tbaa !22
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph301
  br i1 %.not1218.i.i, label %bb.av, label %.lr.ph.preheader.i.i79

.lr.ph.preheader.i.i79:                           ; preds = %bb.au
  %i.iq = zext i32 %.ph301 to i64
  %i.ir = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %i.hc, i64 %i.ir
  %i.it = sub nsw i64 %i.iq, %i.ir
  %i.iu = shl nsw i64 %i.it, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.is, i8 0, i64 %i.iu, i1 false), !tbaa !29
  br label %bb.av

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.as, %bb.aj, %bb.ae, %_ZNK14expr_free_vars4sizeEv.exit73, %bb.aw, %bb.az, %bb.bd, %bb.bg
  %lpad.loopexit.split-lp304 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %bb.ak, %bb.au, %.lr.ph.preheader.i.i79
  %i.iv = phi ptr [ %i.fo, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.fo, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %i.fo, %bb.ak ], [ %i.hb, %bb.au ], [ %i.hb, %.lr.ph.preheader.i.i79 ] ; 5 uses
  %i.iw = zext i32 %i.gi to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !29 ; 2 uses
  %.not50 = icmp eq ptr %i.iy, null
  br i1 %.not50, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.ja = load ptr, ptr %13, align 8, !tbaa !168  ; 2 uses
  %i.jb = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.iz, i32 noundef 0, i32 noundef 2, ptr noundef %i.ja, ptr noundef nonnull %i.iy)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.aw
  %.not.i.i.i.i84 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i84, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i85, label %bb.ax

bb.ax:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
end_hunk_1
begin_hunk_2_@_ZN28horn_subsume_model_converter7mk_hornEP3appP4exprR7obj_refI9func_decl11ast_managerERS4_IS2_S6_E:bb.a
  %i.mo = invoke noundef ptr @_ZN11ast_manager13mk_quantifierE15quantifier_kindjPKP4sortPK6symbolP4expriRS6_SA_jPKS9_jSC_(ptr noundef nonnull align 8 dereferenceable(952) %i.mm, i32 noundef 1, i32 noundef %i.ma, ptr noundef nonnull %i.lx, ptr noundef %i.mn, ptr noundef %.pr, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager9mk_existsEjPKP4sortPK6symbolP4expriRS5_S9_jPKS8_jSB_.exit unwind label %bb.bs ; 3 uses

_ZN11ast_manager9mk_existsEjPKP4sortPK6symbolP4expriRS5_S9_jPKS8_jSB_.exit: ; preds = %bb.bx
  %.not.i125 = icmp eq ptr %i.mo, null
  br i1 %.not.i125, label %bb.by, label %_ZN11ast_manager7inc_refEP3ast.exit.i126

_ZN11ast_manager7inc_refEP3ast.exit.i126:         ; preds = %_ZN11ast_manager9mk_existsEjPKP4sortPK6symbolP4expriRS5_S9_jPKS8_jSB_.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !16
  %i.mr = add i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !16
  br label %bb.by

bb.by:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i126, %_ZN11ast_manager9mk_existsEjPKP4sortPK6symbolP4expriRS5_S9_jPKS8_jSB_.exit
  %i.ms = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %.not.i4.i127 = icmp eq ptr %i.ms, null
  br i1 %.not.i4.i127, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !61, !nonnull !55, !align !56
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !16
  %i.mx = add i32 %i.mw, -1                       ; 2 uses
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !16
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.mu, ptr noundef nonnull %i.ms)
          to label %bb.cb unwind label %bb.bs

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.ca
  store ptr %i.mo, ptr %4, align 8, !tbaa !58
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit unwind label %bb.bs

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit:     ; preds = %bb.cb, %_ZNK14expr_free_vars5emptyEv.exit116.thread
  %.not.i.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i.i131, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit133, label %bb.cc

bb.cc:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.thread276, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %i.na = load ptr, ptr %i.fk, align 8, !tbaa !61, !nonnull !55, !align !56
  %i.nb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !16
  %i.nd = add i32 %i.nc, -1                       ; 2 uses
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !16
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.cd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit133

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.na, ptr noundef nonnull %.pr)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit133 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #16
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit133:      ; preds = %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.nh = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %.not.i.i134 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i134, label %_ZN6vectorI6symbolLb0EjED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit133
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ni)
          to label %_ZN6vectorI6symbolLb0EjED2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nj = landingpad { ptr, i32 }
          catch ptr null
  %i.nk = extractvalue { ptr, i32 } %i.nj, 0
  call void @__clang_call_terminate(ptr %i.nk) #16
  unreachable

_ZN6vectorI6symbolLb0EjED2Ev.exit:                ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit133, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bt, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.lv, %bb.bs ], [ %i.lw, %bb.bt ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.loopexit.split-lp168

.loopexit.split-lp168:                            ; preds = %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %.body
  %.pn54.pn = phi { ptr, i32 } [ %.pn, %bb.ch ], [ %.pn51.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorI6symbolLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.cp

bb.ci:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %_ZN6vectorI6symbolLb0EjED2Ev.exit
  %i.nl = phi ptr [ null, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ %i.lh, %_ZN6vectorI6symbolLb0EjED2Ev.exit ] ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.no)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
  call void @__clang_call_terminate(ptr %i.nq) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.cj, %bb.ci
  %i.nr = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ns)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  call void @__clang_call_terminate(ptr %i.nu) #16
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit.i:               ; preds = %bb.cl, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.nv = load ptr, ptr %11, align 8, !tbaa !109  ; 2 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %_Z11is_uninterpPK4expr.exit.thread164, label %bb.cn

bb.cn:                                            ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.nv)
          to label %_Z11is_uninterpPK4expr.exit.thread164 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #16
  unreachable

bb.cp:                                            ; preds = %.loopexit.split-lp168, %bb.r
  %.pn57 = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %.pn54.pn, %.loopexit.split-lp168 ]
  call void @_ZN14expr_free_varsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #15
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.q
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %bb.cp ], [ %i.bb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.db

_ZN6vectorIP4sortLb0EjED2Ev.exit.thread:          ; preds = %bb.b, %_Z11is_uninterpPK4expr.exit
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

_Z11is_uninterpPK4expr.exit.thread164:            ; preds = %bb.cn, %_ZN6vectorIP4sortLb0EjED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %.pre193 = load ptr, ptr %9, align 8, !tbaa !85 ; 2 uses
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %.not.i.i135 = icmp eq ptr %.pre193, null
  br i1 %.not.i.i135, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %_Z11is_uninterpPK4expr.exit.thread164
  %i.nz = getelementptr inbounds i8, ptr %.pre193, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.nz)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #16
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %_Z11is_uninterpPK4expr.exit.thread164, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.oc = icmp eq ptr %i.nl, null
  br i1 %i.oc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i136

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i136:        ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit
  %i.od = getelementptr inbounds i8, ptr %i.nl, i64 -4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !22 ; 2 uses
  %i.of = zext i32 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.og
  %.not.i137 = icmp eq i32 %i.oe, 0
  br i1 %.not.i137, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i136
  %.pre194 = load ptr, ptr %8, align 8, !tbaa !176, !nonnull !55, !align !56
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141
  %.06.i.i139 = phi ptr [ %i.on, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141 ], [ %i.nl, %.lr.ph.i.i138.preheader ] ; 2 uses
  %i.oi = load ptr, ptr %.06.i.i139, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i140 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i.i140, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i138
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !16
  %i.ol = add i32 %i.ok, -1                       ; 2 uses
  store i32 %i.ol, ptr %i.oj, align 4, !tbaa !16
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.cu, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %.pre194, ptr noundef nonnull %i.oi)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141 unwind label %bb.cw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141: ; preds = %bb.cu, %bb.ct, %.lr.ph.i.i138
  %i.on = getelementptr inbounds nuw i8, ptr %.06.i.i139, i64 8 ; 2 uses
  %i.oo = icmp ult ptr %i.on, %i.oh
  br i1 %i.oo, label %.lr.ph.i.i138, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i141, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i136
  %i.op = getelementptr inbounds i8, ptr %i.nl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.op)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.cv

bb.cv:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #16
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.thread, %_ZN6vectorIP4sortLb0EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ou = phi i1 [ false, %_ZN6vectorIP4sortLb0EjED2Ev.exit.thread ], [ true, %_ZN6vectorIP4sortLb0EjED2Ev.exit ], [ true, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ov = load ptr, ptr %i.d, align 8, !tbaa !27  ; 5 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit157, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ox = getelementptr inbounds i8, ptr %i.ov, i64 -4
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !22 ; 2 uses
  %i.oz = zext i32 %i.oy to i64
  %i.pa = shl nuw nsw i64 %i.oz, 3
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pa
  %.not.i147 = icmp eq i32 %i.oy, 0
  br i1 %.not.i147, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155, label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.06.i.i149 = phi ptr [ %i.pi, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 ], [ %i.ov, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ] ; 2 uses
  %i.pc = load ptr, ptr %.06.i.i149, align 8, !tbaa !29 ; 3 uses
  %i.pd = load ptr, ptr %7, align 8, !tbaa !176, !nonnull !55, !align !56
  %.not.i.i.i.i.i150 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i.i.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i148
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !16
  %i.pg = add i32 %i.pf, -1                       ; 2 uses
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !16
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.cy, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.pd, ptr noundef nonnull %i.pc)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151 unwind label %bb.da

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151: ; preds = %bb.cy, %bb.cx, %.lr.ph.i.i148
  %i.pi = getelementptr inbounds nuw i8, ptr %.06.i.i149, i64 8 ; 2 uses
  %i.pj = icmp ult ptr %i.pi, %i.pb
  br i1 %i.pj, label %.lr.ph.i.i148, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i151
  %.pre.i153 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %.pre.i153, null
  br i1 %.not.i.i.i154, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146
  %i.pk = phi ptr [ %.pre.i153, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152 ], [ %i.ov, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i146 ]
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit157 unwind label %bb.cz

bb.cz:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #16
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #16
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit157: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i152, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret i1 %i.ou

bb.db:                                            ; preds = %bb.cq, %bb.e
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.cq ], [ %i.t, %bb.e ]
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %10) #15
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.d
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.db ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  resume { ptr, i32 } %.pn57.pn.pn.pn
}

declare void @_ZN14expr_free_varsclEP4expr(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @_ZN14expr_free_vars10accumulateEP4expr(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @_ZN14expr_free_vars16set_default_sortEP4sort(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11ast_manager6mk_varEjP4sort(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI3var11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI3var11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175, !nonnull !55, !align !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI3var11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI3var11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI3var11ast_managerE7dec_refEv.exit:    ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #16
  unreachable
}

declare void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorI6symbolLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorI6symbolLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorI6symbolLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorI6symbolLb0EjE7destroyEv.exit:          ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14expr_free_varsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2

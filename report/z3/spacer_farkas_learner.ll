Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_farkas_learner?download=true
inline.NumInlined: 863
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3smt11farkas_utilD2Ev:bb.a
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #19
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i:    ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 32
  %i.an = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !49
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i
  %i.ao = phi ptr [ %.pre.i.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.af, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN6vectorI8rationalLb1EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #19
  unreachable

_ZN6vectorI8rationalLb1EjED2Ev.exit:              ; preds = %_ZN8rationalD2Ev.exit, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN6vectorI8rationalLb1EjED2Ev.exit
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bh, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.au, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bb = load ptr, ptr %.06.i.i, align 8, !tbaa !41 ; 3 uses
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !52, !nonnull !26, !align !27
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !45
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bc, ptr noundef nonnull %i.bb)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.r

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.ba
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.bj = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.au, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bk)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #19
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6vectorI8rationalLb1EjED2Ev.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6spacer14farkas_learner12is_pure_exprERK13obj_hashtableI9func_declEP4exprR11ast_manager(ptr nofree nonnull readnone align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(952) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.obj_mark, align 8            ; 7 uses
  %5 = alloca %"class.spacer::is_pure_expr_proc", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN10array_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(952) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreIN6spacer17is_pure_expr_procE8obj_markI4expr10bit_vector14default_t2uintIS3_EELb0ELb0EEvRT_RT0_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_Z13for_each_exprIN6spacer17is_pure_expr_procEEvRT_P4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_Z13for_each_exprIN6spacer17is_pure_expr_procEEvRT_P4expr.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #19
  unreachable

.body:                                            ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6spacer17is_pure_expr_proc8non_pureE ; 3 uses
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.i = extractvalue { ptr, i32 } %i.h, 1
  %i.j = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6spacer17is_pure_expr_proc8non_pureE) #18
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.g

_Z13for_each_exprIN6spacer17is_pure_expr_procEEvRT_P4expr.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.f

bb.e:                                             ; preds = %.body
  %i.l = extractvalue { ptr, i32 } %i.h, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.f

bb.f:                                             ; preds = %_Z13for_each_exprIN6spacer17is_pure_expr_procEEvRT_P4expr.exit, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %_Z13for_each_exprIN6spacer17is_pure_expr_procEEvRT_P4expr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.0

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer14farkas_learner10get_lemmasEP3appRK13obj_hashtableI4exprER10ref_vectorIS4_11ast_managerE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.69", align 1 ; 4 uses
  %6 = alloca %"struct.obj_map<expr, obj_hashtable<expr> *>::key_data", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.obj_map<expr, obj_hashtable<expr> *>::key_data", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"struct.obj_map<expr, obj_hashtable<expr> *>::key_data", align 8 ; 5 uses
  %9 = alloca %class.obj_mark, align 8            ; 7 uses
  %10 = alloca %class.bool_rewriter, align 8      ; 10 uses
  %11 = alloca %class.params_ref, align 8         ; 7 uses
  %12 = alloca %class.obj_hashtable, align 8      ; 12 uses
  %13 = alloca %"class.spacer::collect_pure_proc", align 8 ; 5 uses
  %14 = alloca %class.obj_ref.40, align 8         ; 12 uses
  %15 = alloca %struct.mk_ismt2_pp, align 8       ; 7 uses
  %16 = alloca %struct.mk_ismt2_pp, align 8       ; 7 uses
  %17 = alloca %class.ptr_vector.41, align 8      ; 19 uses
  %18 = alloca %class.obj_map.43, align 8         ; 15 uses
  %19 = alloca %class.obj_hashtable.34, align 8   ; 14 uses
  %20 = alloca %class.ast_mark, align 8           ; 17 uses
  %21 = alloca %class.ast_mark, align 8           ; 20 uses
  %22 = alloca %class.ast_mark, align 8           ; 13 uses
  %23 = alloca %class.ast_mark, align 8           ; 13 uses
  %24 = alloca %class.ptr_vector.21, align 8      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %25 = alloca %class.obj_ref, align 16           ; 11 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %class.ref_vector, align 8         ; 7 uses
  %27 = alloca %class.obj_ref, align 8            ; 11 uses
  %28 = alloca %class.rational, align 8           ; 19 uses
  %29 = alloca %class.vector.23, align 8          ; 10 uses
  %30 = alloca %class.rational, align 8           ; 15 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %31 = alloca %class.rational, align 8           ; 15 uses
  %32 = alloca %class.obj_ref, align 8            ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !58, !nonnull !26, !align !27 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr null, ptr %11, align 8, !tbaa !248
  invoke void @_ZN13bool_rewriterC2ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(368) %10, ptr noundef nonnull align 8 dereferenceable(952) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 8, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !63
  %i.l = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 64)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !tbaa !66
  store ptr %i.l, ptr %12, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr %12, ptr %13, align 8, !tbaa !54
  %i.m = load ptr, ptr %2, align 8, !tbaa !70     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr i8, ptr %i.m, i64 %.idx.i  ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i.i.i, label %.loopexit660, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !73
  %i.s = icmp ult ptr %i.r, inttoptr (i64 2 to ptr)
  br i1 %i.s, label %bb.d, label %.loopexit660

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i.i.i, label %.loopexit660, label %.lr.ph.i.i.i, !llvm.loop !231

.loopexit660:                                     ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.sroa.0.1.i = phi ptr [ %i.m, %bb.c ], [ %i.q, %bb.d ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not617708 = icmp eq ptr %.sroa.0.1.i, %i.u
  br i1 %.not617708, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit660
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, %.loopexit660
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %1, ptr %14, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.x, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !45
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.mj

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.g:                                             ; preds = %.lr.ph, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit
  %.sroa.0607.0709 = phi ptr [ %.sroa.0.1.i, %.lr.ph ], [ %.sroa.0607.2, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0607.0709, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreIN6spacer17collect_pure_procE8obj_markI4expr10bit_vector14default_t2uintIS3_EELb0ELb0EEvRT_RT0_PS3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.ad)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ae)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #19
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0607.0709, i64 8 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.aj, %i.q
  br i1 %.not1.i.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.sroa.0607.1 = phi ptr [ %i.am, %bb.m ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ak = load ptr, ptr %.sroa.0607.1, align 8, !tbaa !73
  %i.al = icmp ult ptr %i.ak, inttoptr (i64 2 to ptr)
  br i1 %i.al, label %bb.m, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0607.1, i64 8 ; 3 uses
  %.not.i.i243 = icmp eq ptr %i.am, %i.q
  br i1 %.not.i.i243, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !231

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.m, %bb.l
  %.sroa.0607.2 = phi ptr [ %i.aj, %bb.l ], [ %.sroa.0607.1, %.lr.ph.i.i ], [ %i.am, %bb.m ] ; 2 uses
  %.not617 = icmp eq ptr %.sroa.0607.2, %i.u
  br i1 %.not617, label %._crit_edge, label %bb.g

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %._crit_edge
  invoke void @_ZN11proof_utils17reduce_hypothesesER7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN11proof_utils23permute_unit_resolutionER7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.an = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp ugt i32 %i.an, 2
  br i1 %i.ao, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p
  %i.ap = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %i.ap, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  invoke void @_Z12verbose_lockv()
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.u unwind label %bb.x       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.as = load ptr, ptr %14, align 8, !tbaa !75
  invoke void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(952) %i.h, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244: ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  invoke void @_Z14verbose_unlockv()
          to label %bb.ai unwind label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.u, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_0
begin_hunk_1_@_ZN6spacer14farkas_learner10get_lemmasEP3appRK13obj_hashtableI4exprER10ref_vectorIS4_11ast_managerE:bb.a
  %.not.i.i.i397 = icmp eq ptr %i.abt, %i.abk
  br i1 %.not.i.i.i397, label %.lr.ph38.i.i.i400.preheader, label %.lr.ph.i.i.i394, !llvm.loop !234

.lr.ph38.i.i.i400.preheader:                      ; preds = %bb.ht, %bb.hq
  br label %.lr.ph38.i.i.i400

.lr.ph38.i.i.i400:                                ; preds = %.lr.ph38.i.i.i400.preheader, %.lr.ph38.backedge.i.i.i404
  %.137.i.i.i402 = phi ptr [ %.pn.i405, %.lr.ph38.backedge.i.i.i404 ], [ %i.abi, %.lr.ph38.i.i.i400.preheader ] ; 3 uses
  %i.abu = load ptr, ptr %.137.i.i.i402, align 8, !tbaa !165 ; 4 uses
  %i.abv = icmp ult ptr %i.abu, inttoptr (i64 2 to ptr)
  br i1 %i.abv, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.lr.ph38.i.i.i400
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 12
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !163
  %i.aby = icmp eq i32 %i.abx, %i.abe
  %i.abz = icmp eq ptr %i.abu, %i.aba
  %or.cond31.i.i.i403 = and i1 %i.abz, %i.aby
  br i1 %or.cond31.i.i.i403, label %.loopexit623, label %.lr.ph38.backedge.i.i.i404

bb.hv:                                            ; preds = %.lr.ph38.i.i.i400
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abu) ]
  br label %.lr.ph38.backedge.i.i.i404

.lr.ph38.backedge.i.i.i404:                       ; preds = %bb.hu, %bb.hv
  %.pn.i405 = getelementptr inbounds nuw i8, ptr %.137.i.i.i402, i64 16
  br label %.lr.ph38.i.i.i400, !llvm.loop !235

.loopexit623:                                     ; preds = %bb.hr, %bb.hu
  %.026.i.i.i407 = phi ptr [ %.137.i.i.i402, %bb.hu ], [ %.035.i.i.i395, %bb.hr ]
  %i.aca = getelementptr inbounds nuw i8, ptr %.026.i.i.i407, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !94
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 12
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !90
  %i.ace = icmp eq i32 %i.acd, 0
  br i1 %i.ace, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %.loopexit623
  %i.acf = add i32 %.0136710, 1
  br label %bb.iq

bb.hx:                                            ; preds = %bb.ig, %bb.ic, %bb.ia, %bb.id, %_ZNK9parameter11is_rationalER8rational.exit, %bb.ho, %bb.hm
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.hy:                                            ; preds = %.loopexit623, %bb.hp, %bb.hn
  %i.ach = getelementptr inbounds nuw [40 x i8], ptr %i.aan, i64 %indvars.iv800 ; 6 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  %i.acj = load i8, ptr %i.aci, align 8, !tbaa !196
  %i.ack = icmp eq i8 %i.acj, 4
  br i1 %i.ack, label %_ZNK9parameter12get_rationalEv.exit.i, label %_ZNK9parameter11is_rationalER8rational.exit

_ZNK9parameter12get_rationalEv.exit.i:            ; preds = %bb.hy
  %i.acl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acn = load i8, ptr %i.acm, align 4
  %i.aco = and i8 %i.acn, 1
  %i.acp = icmp eq i8 %i.aco, 0
  br i1 %i.acp, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %_ZNK9parameter12get_rationalEv.exit.i
  %i.acq = load i32, ptr %i.ach, align 8, !tbaa !193
  store i32 %i.acq, ptr %28, align 8, !tbaa !193
  %i.acr = load i8, ptr %i.di, align 4
  %i.acs = and i8 %i.acr, -2
  store i8 %i.acs, ptr %i.di, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.ia:                                            ; preds = %_ZNK9parameter12get_rationalEv.exit.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.acl, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(40) %i.ach)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.hx

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.ia, %bb.hz
  %i.act = getelementptr inbounds nuw i8, ptr %i.ach, i64 16 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ach, i64 20
  %i.acv = load i8, ptr %i.acu, align 4
  %i.acw = and i8 %i.acv, 1
  %i.acx = icmp eq i8 %i.acw, 0
  br i1 %i.acx, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.acy = load i32, ptr %i.act, align 8, !tbaa !193
  store i32 %i.acy, ptr %i.dk, align 8, !tbaa !193
  %i.acz = load i8, ptr %i.dl, align 4
  %i.ada = and i8 %i.acz, -2
  store i8 %i.ada, ptr %i.dl, align 4
  br label %_ZNK9parameter11is_rationalER8rational.exit.thread

bb.ic:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.acl, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.act)
          to label %_ZNK9parameter11is_rationalER8rational.exit.thread unwind label %bb.hx

_ZNK9parameter11is_rationalER8rational.exit:      ; preds = %bb.hy
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef nonnull @.str.3)
          to label %bb.id unwind label %bb.hx

bb.id:                                            ; preds = %_ZNK9parameter11is_rationalER8rational.exit
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZNK9parameter11is_rationalER8rational.exit.thread unwind label %bb.hx

_ZNK9parameter11is_rationalER8rational.exit.thread: ; preds = %bb.ic, %bb.ib, %bb.id
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !98
  %i.add = add i32 %i.adc, -1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  %i.adf = zext i32 %i.add to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %i.adf
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i411 = icmp eq ptr %i.adh, null
  br i1 %.not.i.i.i.i411, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.ie

bb.ie:                                            ; preds = %_ZNK9parameter11is_rationalER8rational.exit.thread
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 8 ; 2 uses
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !45
  %i.adk = add i32 %i.adj, 1
  store i32 %i.adk, ptr %i.adi, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.ie, %_ZNK9parameter11is_rationalER8rational.exit.thread
  %i.adl = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 4 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.adn = getelementptr inbounds i8, ptr %i.adl, i64 -4
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !50 ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %i.adl, i64 -8
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !50
  %i.adr = icmp eq i32 %i.ado, %i.adq
  br i1 %i.adr, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %.noexc415 unwind label %bb.hx

.noexc415:                                        ; preds = %bb.ig
  %.pre.i.i412 = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i413 = getelementptr inbounds i8, ptr %.pre.i.i412, i64 -4
  %.pre2.i.i414 = load i32, ptr %.phi.trans.insert.i.i413, align 4, !tbaa !50
  br label %bb.ih

bb.ih:                                            ; preds = %.noexc415, %bb.if
  %i.ads = phi i32 [ %.pre2.i.i414, %.noexc415 ], [ %i.ado, %bb.if ] ; 2 uses
  %i.adt = phi ptr [ %.pre.i.i412, %.noexc415 ], [ %i.adl, %bb.if ] ; 2 uses
  %i.adu = getelementptr inbounds i8, ptr %i.adt, i64 -4
  %i.adv = zext i32 %i.ads to i64
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.adv
  store ptr %i.adh, ptr %i.adw, align 8, !tbaa !41
  %i.adx = add i32 %i.ads, 1
  store i32 %i.adx, ptr %i.adu, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  store i32 0, ptr %30, align 8, !tbaa !193, !alias.scope !252
  %i.ady = load i8, ptr %i.dn, align 4, !alias.scope !252
  %i.adz = and i8 %i.ady, -4                      ; 2 uses
  store i8 %i.adz, ptr %i.dn, align 4, !alias.scope !252
  store ptr null, ptr %i.do, align 8, !tbaa !194, !alias.scope !252
  store i32 1, ptr %i.dp, align 8, !tbaa !193, !alias.scope !252
  %i.aea = load i8, ptr %i.dq, align 4, !alias.scope !252
  %i.aeb = and i8 %i.aea, -4
  store i8 %i.aeb, ptr %i.dq, align 4, !alias.scope !252
  store ptr null, ptr %i.dr, align 8, !tbaa !194, !alias.scope !252
  %i.aec = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48, !noalias !252 ; 2 uses
  %i.aed = load i8, ptr %i.di, align 4, !noalias !252
  %i.aee = and i8 %i.aed, 1
  %i.aef = icmp eq i8 %i.aee, 0
  br i1 %i.aef, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.aeg = load i32, ptr %28, align 8, !tbaa !193, !noalias !252
  store i32 %i.aeg, ptr %30, align 8, !tbaa !193, !alias.scope !252
  store i8 %i.adz, ptr %i.dn, align 4, !alias.scope !252
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i416

bb.ij:                                            ; preds = %bb.ih
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aec, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i416 unwind label %bb.io

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i416: ; preds = %bb.ij, %bb.ii
  %i.aeh = load i8, ptr %i.dl, align 4, !noalias !252
  %i.aei = and i8 %i.aeh, 1
  %i.aej = icmp eq i8 %i.aei, 0
  br i1 %i.aej, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i416
  %i.aek = load i32, ptr %i.dk, align 8, !tbaa !193, !noalias !252
  store i32 %i.aek, ptr %i.dp, align 8, !tbaa !193, !alias.scope !252
  %i.ael = load i8, ptr %i.dq, align 4, !alias.scope !252
  %i.aem = and i8 %i.ael, -2
  store i8 %i.aem, ptr %i.dq, align 4, !alias.scope !252
  br label %_ZN8rationalC2ERKS_.exit.i

bb.il:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i416
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aec, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.io

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.il, %bb.ik
  %i.aen = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48, !noalias !252
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aen, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_Z3absRK8rational.exit unwind label %bb.ip

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aeo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.im unwind label %bb.ip     ; 0 uses

bb.im:                                            ; preds = %_Z3absRK8rational.exit
  %i.aep = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aep, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %.noexc.i unwind label %bb.in

.noexc.i:                                         ; preds = %bb.im
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aep, ptr noundef nonnull align 8 dereferenceable(16) %i.dp)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.in

bb.in:                                            ; preds = %.noexc.i, %bb.im
  %i.aeq = landingpad { ptr, i32 }
          catch ptr null
  %i.aer = extractvalue { ptr, i32 } %i.aeq, 0
  call void @__clang_call_terminate(ptr %i.aer) #19
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.iq

bb.io:                                            ; preds = %bb.il, %bb.ij
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %.body419

bb.ip:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i, %_Z3absRK8rational.exit
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %30) #18
  br label %.body419

.body419:                                         ; preds = %bb.ip, %bb.io
  %.pn203 = phi { ptr, i32 } [ %i.aes, %bb.io ], [ %i.aet, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.kv

bb.iq:                                            ; preds = %_ZN8rationalD2Ev.exit, %bb.hw
  %.1 = phi i32 [ %.0136710, %_ZN8rationalD2Ev.exit ], [ %i.acf, %bb.hw ] ; 2 uses
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next801, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge714.loopexit, label %bb.hm, !llvm.loop !241

_ZNK4decl18get_num_parametersEv.exit:             ; preds = %bb.hl
  %i.aeu = getelementptr inbounds i8, ptr %i.aax, i64 -4
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !50
  %i.aew = add i32 %i.aaf, 2
  %i.aex = icmp ult i32 %i.aew, %i.aev
  br i1 %i.aex, label %bb.ir, label %_ZNK4decl18get_num_parametersEv.exit.thread

bb.ir:                                            ; preds = %_ZNK4decl18get_num_parametersEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.aey = load i32, ptr %i.el, align 8, !tbaa !98
  %i.aez = add i32 %i.aey, -1
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.afa
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !77 ; 5 uses
  store ptr %i.afc, ptr %i.f, align 8, !tbaa !77
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  %i.afe = load i32, ptr %i.afd, align 4
  %i.aff = and i32 %i.afe, 65535
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %bb.is, label %.lr.ph716.preheader

bb.is:                                            ; preds = %bb.ir
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !169
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 24
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !172 ; 3 uses
  %.not.i.i.i.i421 = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i421, label %.lr.ph716.preheader, label %_ZNK11ast_manager5is_orEPK4expr.exit422

_ZNK11ast_manager5is_orEPK4expr.exit422:          ; preds = %bb.is
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !177
  %i.afm = icmp eq i32 %i.afl, 0
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  %i.afo = load i32, ptr %i.afn, align 4
  %i.afp = icmp eq i32 %i.afo, 6
  %i.afq = select i1 %i.afm, i1 %i.afp, i1 false
  br i1 %i.afq, label %_ZNK11ast_manager5is_orEPK4expr.exit422.thread, label %.lr.ph716.preheader

_ZNK11ast_manager5is_orEPK4expr.exit422.thread:   ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit422
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afc, i64 24
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !98 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  %.not721 = icmp eq i32 %i.afs, 0
  br i1 %.not721, label %._crit_edge717, label %.lr.ph716.preheader

.lr.ph716.preheader:                              ; preds = %bb.is, %bb.ir, %_ZNK11ast_manager5is_orEPK4expr.exit422, %_ZNK11ast_manager5is_orEPK4expr.exit422.thread
  %.0133996 = phi ptr [ %i.aft, %_ZNK11ast_manager5is_orEPK4expr.exit422.thread ], [ %i.f, %_ZNK11ast_manager5is_orEPK4expr.exit422 ], [ %i.f, %bb.ir ], [ %i.f, %bb.is ]
  %.0134995 = phi i32 [ %i.afs, %_ZNK11ast_manager5is_orEPK4expr.exit422.thread ], [ 1, %_ZNK11ast_manager5is_orEPK4expr.exit422 ], [ 1, %bb.ir ], [ 1, %bb.is ]
  %wide.trip.count806 = zext i32 %.0134995 to i64
  br label %.lr.ph716

._crit_edge717:                                   ; preds = %_ZN8rationalD2Ev.exit451, %_ZNK11ast_manager5is_orEPK4expr.exit422.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %_ZNK4decl18get_num_parametersEv.exit.thread

.lr.ph716:                                        ; preds = %.lr.ph716.preheader, %_ZN8rationalD2Ev.exit451
  %indvars.iv803 = phi i64 [ 0, %.lr.ph716.preheader ], [ %indvars.iv.next804, %_ZN8rationalD2Ev.exit451 ] ; 3 uses
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %.0133996, i64 %indvars.iv803
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !77 ; 2 uses
  %i.afw = invoke noundef i32 @_ZN13bool_rewriter11mk_not_coreEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %10, ptr noundef %i.afv, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %.noexc427 unwind label %bb.jc

.noexc427:                                        ; preds = %.lr.ph716
  %i.afx = icmp eq i32 %i.afw, 5
  br i1 %i.afx, label %bb.it, label %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit430

bb.it:                                            ; preds = %.noexc427
  %i.afy = load ptr, ptr %10, align 8, !tbaa !251, !nonnull !26, !align !27
  %i.afz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.afy, i32 noundef 0, i32 noundef 8, ptr noundef %i.afv)
          to label %.noexc428 unwind label %bb.jc ; 3 uses

.noexc428:                                        ; preds = %bb.it
  %.not.i.i423 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i423, label %bb.iu, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i424

_ZN11ast_manager7inc_refEP3ast.exit.i.i424:       ; preds = %.noexc428
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8 ; 2 uses
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !45
  %i.agc = add i32 %i.agb, 1
  store i32 %i.agc, ptr %i.aga, align 4, !tbaa !45
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i424, %.noexc428
  %i.agd = load ptr, ptr %27, align 8, !tbaa !43  ; 3 uses
  %.not.i4.i.i425 = icmp eq ptr %i.agd, null
  br i1 %.not.i4.i.i425, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i426, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.age = load ptr, ptr %i.dh, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 8 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !45
  %i.agh = add i32 %i.agg, -1                     ; 2 uses
  store i32 %i.agh, ptr %i.agf, align 4, !tbaa !45
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %bb.iw, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i426

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.age, ptr noundef nonnull %i.agd)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i426 unwind label %bb.jc

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i426: ; preds = %bb.iw, %bb.iv, %bb.iu
  store ptr %i.afz, ptr %27, align 8, !tbaa !43
  br label %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit430

_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit430: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i426, %.noexc427
  %i.agj = getelementptr inbounds nuw [40 x i8], ptr %i.aat, i64 %indvars.iv803 ; 6 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  %i.agl = load i8, ptr %i.agk, align 8, !tbaa !196
  %i.agm = icmp eq i8 %i.agl, 4
  br i1 %i.agm, label %_ZNK9parameter12get_rationalEv.exit.i431, label %_ZNK9parameter11is_rationalER8rational.exit435

_ZNK9parameter12get_rationalEv.exit.i431:         ; preds = %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit430
  %i.agn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %i.agp = load i8, ptr %i.ago, align 4
  %i.agq = and i8 %i.agp, 1
  %i.agr = icmp eq i8 %i.agq, 0
  br i1 %i.agr, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %_ZNK9parameter12get_rationalEv.exit.i431
  %i.ags = load i32, ptr %i.agj, align 8, !tbaa !193
  store i32 %i.ags, ptr %28, align 8, !tbaa !193
  %i.agt = load i8, ptr %i.di, align 4
  %i.agu = and i8 %i.agt, -2
  store i8 %i.agu, ptr %i.di, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i432

bb.iy:                                            ; preds = %_ZNK9parameter12get_rationalEv.exit.i431
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.agn, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(40) %i.agj)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i432 unwind label %bb.jc

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i432: ; preds = %bb.iy, %bb.ix
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agj, i64 16 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agj, i64 20
  %i.agx = load i8, ptr %i.agw, align 4
  %i.agy = and i8 %i.agx, 1
  %i.agz = icmp eq i8 %i.agy, 0
  br i1 %i.agz, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i432
  %i.aha = load i32, ptr %i.agv, align 8, !tbaa !193
  store i32 %i.aha, ptr %i.dk, align 8, !tbaa !193
  %i.ahb = load i8, ptr %i.dl, align 4
  %i.ahc = and i8 %i.ahb, -2
  store i8 %i.ahc, ptr %i.dl, align 4
  br label %_ZNK9parameter11is_rationalER8rational.exit435.thread

bb.ja:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i432
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.agn, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.agv)
          to label %_ZNK9parameter11is_rationalER8rational.exit435.thread unwind label %bb.jc

_ZNK9parameter11is_rationalER8rational.exit435:   ; preds = %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit430
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 366, ptr noundef nonnull @.str.3)
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %_ZNK9parameter11is_rationalER8rational.exit435
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZNK9parameter11is_rationalER8rational.exit435.thread unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jf, %bb.ja, %bb.iy, %bb.iw, %bb.it, %.lr.ph716, %bb.jb, %_ZNK9parameter11is_rationalER8rational.exit435
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

_ZNK9parameter11is_rationalER8rational.exit435.thread: ; preds = %bb.ja, %bb.iz, %bb.jb
  %i.ahe = load ptr, ptr %27, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i.i436 = icmp eq ptr %i.ahe, null
  br i1 %.not.i.i.i.i436, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i437, label %bb.jd

bb.jd:                                            ; preds = %_ZNK9parameter11is_rationalER8rational.exit435.thread
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8 ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !45
  %i.ahh = add i32 %i.ahg, 1
  store i32 %i.ahh, ptr %i.ahf, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i437

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i437: ; preds = %bb.jd, %_ZNK9parameter11is_rationalER8rational.exit435.thread
  %i.ahi = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 4 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i437
  %i.ahk = getelementptr inbounds i8, ptr %i.ahi, i64 -4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !50 ; 2 uses
  %i.ahm = getelementptr inbounds i8, ptr %i.ahi, i64 -8
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.aho = icmp eq i32 %i.ahl, %i.ahn
  br i1 %i.aho, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i437
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %.noexc441 unwind label %bb.jc

.noexc441:                                        ; preds = %bb.jf
  %.pre.i.i438 = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i439 = getelementptr inbounds i8, ptr %.pre.i.i438, i64 -4
  %.pre2.i.i440 = load i32, ptr %.phi.trans.insert.i.i439, align 4, !tbaa !50
  br label %bb.jg

bb.jg:                                            ; preds = %.noexc441, %bb.je
  %i.ahp = phi i32 [ %.pre2.i.i440, %.noexc441 ], [ %i.ahl, %bb.je ] ; 2 uses
  %i.ahq = phi ptr [ %.pre.i.i438, %.noexc441 ], [ %i.ahi, %bb.je ] ; 2 uses
  %i.ahr = getelementptr inbounds i8, ptr %i.ahq, i64 -4
  %i.ahs = zext i32 %i.ahp to i64
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.ahq, i64 %i.ahs
  store ptr %i.ahe, ptr %i.aht, align 8, !tbaa !41
  %i.ahu = add i32 %i.ahp, 1
  store i32 %i.ahu, ptr %i.ahr, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  store i32 0, ptr %31, align 8, !tbaa !193, !alias.scope !253
  %i.ahv = load i8, ptr %i.ds, align 4, !alias.scope !253
  %i.ahw = and i8 %i.ahv, -4                      ; 2 uses
  store i8 %i.ahw, ptr %i.ds, align 4, !alias.scope !253
  store ptr null, ptr %i.dt, align 8, !tbaa !194, !alias.scope !253
  store i32 1, ptr %i.du, align 8, !tbaa !193, !alias.scope !253
  %i.ahx = load i8, ptr %i.dv, align 4, !alias.scope !253
  %i.ahy = and i8 %i.ahx, -4
  store i8 %i.ahy, ptr %i.dv, align 4, !alias.scope !253
  store ptr null, ptr %i.dw, align 8, !tbaa !194, !alias.scope !253
  %i.ahz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48, !noalias !253 ; 2 uses
  %i.aia = load i8, ptr %i.di, align 4, !noalias !253
  %i.aib = and i8 %i.aia, 1
  %i.aic = icmp eq i8 %i.aib, 0
  br i1 %i.aic, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.aid = load i32, ptr %28, align 8, !tbaa !193, !noalias !253
  store i32 %i.aid, ptr %31, align 8, !tbaa !193, !alias.scope !253
  store i8 %i.ahw, ptr %i.ds, align 4, !alias.scope !253
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i443

bb.ji:                                            ; preds = %bb.jg
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ahz, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i443 unwind label %bb.jn

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i443: ; preds = %bb.ji, %bb.jh
  %i.aie = load i8, ptr %i.dl, align 4, !noalias !253
  %i.aif = and i8 %i.aie, 1
  %i.aig = icmp eq i8 %i.aif, 0
  br i1 %i.aig, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i443
  %i.aih = load i32, ptr %i.dk, align 8, !tbaa !193, !noalias !253
  store i32 %i.aih, ptr %i.du, align 8, !tbaa !193, !alias.scope !253
  %i.aii = load i8, ptr %i.dv, align 4, !alias.scope !253
  %i.aij = and i8 %i.aii, -2
  store i8 %i.aij, ptr %i.dv, align 4, !alias.scope !253
  br label %_ZN8rationalC2ERKS_.exit.i444

bb.jk:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i443
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ahz, ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_ZN8rationalC2ERKS_.exit.i444 unwind label %bb.jn

_ZN8rationalC2ERKS_.exit.i444:                    ; preds = %bb.jk, %bb.jj
  %i.aik = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48, !noalias !253
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aik, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %_Z3absRK8rational.exit449 unwind label %bb.jo

_Z3absRK8rational.exit449:                        ; preds = %_ZN8rationalC2ERKS_.exit.i444
  %i.ail = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.jl unwind label %bb.jo     ; 0 uses

bb.jl:                                            ; preds = %_Z3absRK8rational.exit449
  %i.aim = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !48 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aim, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %.noexc.i450 unwind label %bb.jm

.noexc.i450:                                      ; preds = %bb.jl
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aim, ptr noundef nonnull align 8 dereferenceable(16) %i.du)
          to label %_ZN8rationalD2Ev.exit451 unwind label %bb.jm

bb.jm:                                            ; preds = %.noexc.i450, %bb.jl
  %i.ain = landingpad { ptr, i32 }
          catch ptr null
  %i.aio = extractvalue { ptr, i32 } %i.ain, 0
  call void @__clang_call_terminate(ptr %i.aio) #19
  unreachable

_ZN8rationalD2Ev.exit451:                         ; preds = %.noexc.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge717, label %.lr.ph716, !llvm.loop !244

bb.jn:                                            ; preds = %bb.jk, %bb.ji
  %i.aip = landingpad { ptr, i32 }
          cleanup
  br label %.body447

bb.jo:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i444, %_Z3absRK8rational.exit449
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %31) #18
  br label %.body447

.body447:                                         ; preds = %bb.jo, %bb.jn
  %.pn198 = phi { ptr, i32 } [ %i.aip, %bb.jn ], [ %i.aiq, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.jp

bb.jp:                                            ; preds = %.body447, %bb.jc
  %.pn198.pn.pn.pn = phi { ptr, i32 } [ %i.ahd, %bb.jc ], [ %.pn198, %.body447 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.kv

_ZNK4decl18get_num_parametersEv.exit.thread:      ; preds = %bb.hl, %._crit_edge714, %._crit_edge717, %_ZNK4decl18get_num_parametersEv.exit
  %.pre811 = load ptr, ptr %29, align 8, !tbaa !49 ; 4 uses
  br i1 %.0136.lcssa, label %bb.kk, label %bb.jq

bb.jq:                                            ; preds = %_ZNK4decl18get_num_parametersEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  store ptr null, ptr %32, align 8, !tbaa !43
  store ptr %i.h, ptr %i.dx, align 8, !tbaa !76
  %i.air = icmp eq ptr %.pre811, null
  br i1 %i.air, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ais = getelementptr inbounds i8, ptr %.pre811, i64 -4
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !50
  br label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %bb.jq, %bb.jr
  %.0.i = phi i32 [ %i.ait, %bb.jr ], [ 0, %bb.jq ]
  %i.aiu = load ptr, ptr %i.dg, align 8, !tbaa !51
  invoke void @_ZN6spacer14farkas_learner19combine_constraintsEjPKP3appPK8rationalR7obj_refI4expr11ast_managerE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.0.i, ptr noundef %i.aiu, ptr noundef %.pre811, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.js unwind label %bb.kd

bb.js:                                            ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.aiv = load ptr, ptr %32, align 8, !tbaa !43  ; 10 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 12
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !163 ; 3 uses
  %i.aiy = load i32, ptr %i.bu, align 8, !tbaa !71 ; 3 uses
  %i.aiz = add i32 %i.aiy, -1
  %i.aja = and i32 %i.aiz, %i.aix                 ; 3 uses
  %i.ajb = load ptr, ptr %19, align 8, !tbaa !70  ; 3 uses
  %i.ajc = zext i32 %i.aja to i64
  %.idx.i.i452 = shl nuw nsw i64 %i.ajc, 3
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.idx.i.i452 ; 3 uses
  %i.aje = zext i32 %i.aiy to i64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %i.aje
  %.not34.i.i453 = icmp eq i32 %i.aja, %i.aiy
  br i1 %.not34.i.i453, label %.preheader.i.i459, label %.lr.ph.i.i454

.preheader.i.i459:                                ; preds = %bb.jv, %bb.js
  %.not2736.i.i460 = icmp eq i32 %i.aja, 0
  br i1 %.not2736.i.i460, label %.loopexit644, label %.lr.ph38.i.i461

.lr.ph.i.i454:                                    ; preds = %bb.js, %bb.jv
  %.035.i.i455 = phi ptr [ %i.ajm, %bb.jv ], [ %i.ajd, %bb.js ] ; 2 uses
  %i.ajg = load ptr, ptr %.035.i.i455, align 8, !tbaa !73 ; 4 uses
  %.not.i456 = icmp ult ptr %i.ajg, inttoptr (i64 2 to ptr)
  br i1 %.not.i456, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %.lr.ph.i.i454
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 12
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !163
  %i.ajj = icmp eq i32 %i.aji, %i.aix
  %i.ajk = icmp eq ptr %i.ajg, %i.aiv
  %or.cond.i.i457 = and i1 %i.ajk, %i.ajj
  br i1 %or.cond.i.i457, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471, label %bb.jv

bb.ju:                                            ; preds = %.lr.ph.i.i454
  %i.ajl = icmp eq ptr %i.ajg, null
  br i1 %i.ajl, label %.loopexit644, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.ajm = getelementptr inbounds nuw i8, ptr %.035.i.i455, i64 8 ; 2 uses
  %.not.i.i458 = icmp eq ptr %i.ajm, %i.ajf
  br i1 %.not.i.i458, label %.preheader.i.i459, label %.lr.ph.i.i454, !llvm.loop !7

.lr.ph38.i.i461:                                  ; preds = %.preheader.i.i459, %.lr.ph38.i.i461.backedge
  %.137.i.i462 = phi ptr [ %.137.i.i462.be, %.lr.ph38.i.i461.backedge ], [ %i.ajb, %.preheader.i.i459 ] ; 3 uses
  %i.ajn = load ptr, ptr %.137.i.i462, align 8, !tbaa !73 ; 4 uses
  %i.ajo = icmp ult ptr %i.ajn, inttoptr (i64 2 to ptr)
  br i1 %i.ajo, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %.lr.ph38.i.i461
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 12
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !163
  %i.ajr = icmp eq i32 %i.ajq, %i.aix
  %i.ajs = icmp eq ptr %i.ajn, %i.aiv
  %or.cond31.i.i463 = and i1 %i.ajs, %i.ajr
  br i1 %or.cond31.i.i463, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471, label %bb.jy

bb.jx:                                            ; preds = %.lr.ph38.i.i461
  %i.ajt = icmp eq ptr %i.ajn, null
  %i.aju = getelementptr inbounds nuw i8, ptr %.137.i.i462, i64 8 ; 2 uses
  %.not27.i.i469 = icmp eq ptr %i.aju, %i.ajd
  %or.cond43.i.i470 = select i1 %i.ajt, i1 true, i1 %.not27.i.i469
  br i1 %or.cond43.i.i470, label %.loopexit644, label %.lr.ph38.i.i461.backedge

bb.jy:                                            ; preds = %bb.jw
  %.old.i.i464 = getelementptr inbounds nuw i8, ptr %.137.i.i462, i64 8 ; 2 uses
  %.not27.old.i.i465 = icmp eq ptr %.old.i.i464, %i.ajd
  br i1 %.not27.old.i.i465, label %.loopexit644, label %.lr.ph38.i.i461.backedge

.lr.ph38.i.i461.backedge:                         ; preds = %bb.jy, %bb.jx
  %.137.i.i462.be = phi ptr [ %i.aju, %bb.jx ], [ %.old.i.i464, %bb.jy ]
  br label %.lr.ph38.i.i461, !llvm.loop !8

.loopexit644:                                     ; preds = %bb.ju, %bb.jy, %bb.jx, %.preheader.i.i459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store ptr %i.aiv, ptr %i.g, align 8, !tbaa !77
  invoke void @_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_(ptr noundef nonnull align 8 dereferenceable(20) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.jz unwind label %bb.ke

bb.jz:                                            ; preds = %.loopexit644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i.i.i.i472 = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i.i.i472, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i473, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !45
  %i.ajx = add i32 %i.ajw, 1
  store i32 %i.ajx, ptr %i.ajv, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i473

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i473: ; preds = %bb.ka, %bb.jz
  %i.ajy = load ptr, ptr %i.de, align 8, !tbaa !168 ; 4 uses
  %i.ajz = icmp eq ptr %i.ajy, null
  br i1 %i.ajz, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i473
  %i.aka = getelementptr inbounds i8, ptr %i.ajy, i64 -4
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !50 ; 2 uses
  %i.akc = getelementptr inbounds i8, ptr %i.ajy, i64 -8
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !50
  %i.ake = icmp eq i32 %i.akb, %i.akd
  br i1 %i.ake, label %bb.kc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit478

bb.kc:                                            ; preds = %bb.kb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i473
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %.noexc477 unwind label %bb.kd

.noexc477:                                        ; preds = %bb.kc
  %.pre.i.i474 = load ptr, ptr %i.de, align 8, !tbaa !168 ; 2 uses
  %.phi.trans.insert.i.i475 = getelementptr inbounds i8, ptr %.pre.i.i474, i64 -4
  %.pre2.i.i476 = load i32, ptr %.phi.trans.insert.i.i475, align 4, !tbaa !50
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit478

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit478: ; preds = %bb.kb, %.noexc477
  %i.akf = phi i32 [ %.pre2.i.i476, %.noexc477 ], [ %i.akb, %bb.kb ] ; 2 uses
  %i.akg = phi ptr [ %.pre.i.i474, %.noexc477 ], [ %i.ajy, %bb.kb ] ; 2 uses
  %i.akh = getelementptr inbounds i8, ptr %i.akg, i64 -4
  %i.aki = zext i32 %i.akf to i64
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %i.aki
  store ptr %i.aiv, ptr %i.akj, align 8, !tbaa !77
  %i.akk = add i32 %i.akf, 1
  store i32 %i.akk, ptr %i.akh, align 4, !tbaa !50
  br label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471

bb.kd:                                            ; preds = %bb.kc, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.akl = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.ke:                                            ; preds = %.loopexit644
  %i.akm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.kj

_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471: ; preds = %bb.jt, %bb.jw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit478
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull %i.ej, i1 noundef zeroext true)
          to label %bb.kf unwind label %bb.kd

bb.kf:                                            ; preds = %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit471
  %.not.i.i479 = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i479, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit480, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.akn = load ptr, ptr %i.dx, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8 ; 2 uses
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !45
  %i.akq = add i32 %i.akp, -1                     ; 2 uses
  store i32 %i.akq, ptr %i.ako, align 4, !tbaa !45
  %i.akr = icmp eq i32 %i.akq, 0
  br i1 %i.akr, label %bb.kh, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit480

bb.kh:                                            ; preds = %bb.kg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.akn, ptr noundef nonnull %i.aiv)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit480 unwind label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.aks = landingpad { ptr, i32 }
          catch ptr null
  %i.akt = extractvalue { ptr, i32 } %i.aks, 0
  call void @__clang_call_terminate(ptr %i.akt) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit480:      ; preds = %bb.kf, %bb.kg, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %.pre = load ptr, ptr %29, align 8, !tbaa !49
  br label %bb.kk

bb.kj:                                            ; preds = %bb.ke, %bb.kd
end_hunk_1

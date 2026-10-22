Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_unsat_core_learner?download=true
inline.NumInlined: 141
inline.NumDeleted: 94
begin_hunk_0_@_ZN6spacer18unsat_core_learnerD2Ev:bb.a
_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN8ast_markD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aq)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #15
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.au, null
  br i1 %.not.i.i2, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8ast_markD2Ev.exit
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.av)
          to label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #15
  unreachable

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjED2Ev.exit: ; preds = %_ZN8ast_markD2Ev.exit, %bb.k
  ret void

bb.m:                                             ; preds = %_Z7deallocIN6spacer17unsat_core_pluginEEvPT_.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #15
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6spacer18unsat_core_learnerD0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6spacer18unsat_core_learnerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer18unsat_core_learner15register_pluginEPNS_17unsat_core_pluginE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !15
  br label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  store ptr %1, ptr %i.m, align 8, !tbaa !17
  %i.n = add i32 %i.i, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer18unsat_core_learner18compute_unsat_coreER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.proof_post_order, align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !26, !align !27
  call void @_ZN16proof_post_orderC1EP3appR11ast_manager(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit

_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit: ; preds = %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, %bb.a
  %i.i = invoke noundef zeroext i1 @_ZN16proof_post_order7hasNextEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit
  br i1 %i.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZN16proof_post_order4nextEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6spacer18unsat_core_learner9is_closedEP3app.exit: ; preds = %bb.d
  br i1 %i.k, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %bb.e

bb.e:                                             ; preds = %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !26, !align !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.s)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 824
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.w = icmp ne ptr %i.t, %i.v
  %i.x = sext i1 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.y = phi i32 [ 0, %bb.e ], [ %i.x, %.noexc ]
  %i.z = sub i32 0, %i.n
  %.not42 = icmp eq i32 %i.y, %i.z
  br i1 %.not42, label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !26, !align !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !69  ; 3 uses
  %.not.i.i51 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i51, label %_ZNK11ast_manager13proof_parents3endEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ag)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 824
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = icmp ne ptr %i.ah, %i.aj
  %i.al = sext i1 %i.ak to i32
  br label %_ZNK11ast_manager13proof_parents3endEv.exit

_ZNK11ast_manager13proof_parents3endEv.exit:      ; preds = %bb.h, %.noexc52
  %i.am = phi i32 [ 0, %bb.h ], [ %i.al, %.noexc52 ]
  %i.an = add i32 %i.am, %i.ac                    ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not4378 = icmp eq i32 %i.an, 0
  br i1 %.not4378, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a
  %3 = trunc nuw i8 %4 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK11ast_manager13proof_parents3endEv.exit
  %.029.lcssa = phi i1 [ true, %_ZNK11ast_manager13proof_parents3endEv.exit ], [ %3, %._crit_edge.loopexit ] ; 2 uses
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j, i1 noundef zeroext %.029.lcssa)
          to label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZNK11ast_manager13proof_parents3endEv.exit, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a
  %.02880 = phi ptr [ %i.av, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a ], [ %i.ab, %_ZNK11ast_manager13proof_parents3endEv.exit ] ; 2 uses
  %.02979 = phi i8 [ %4, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a ], [ 1, %_ZNK11ast_manager13proof_parents3endEv.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.02880, align 8, !tbaa !129 ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef %i.aq)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.lr.ph
  br i1 %i.at, label %bb.j, label %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a

bb.j:                                             ; preds = %.noexc54
  %i.au = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.aq)
          to label %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit: ; preds = %bb.j
  %spec.select = select i1 %i.au, i8 %.02979, i8 0
  br label %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a

_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a: ; preds = %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit, %.noexc54
  %4 = phi i8 [ %.02979, %.noexc54 ], [ %spec.select, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02880, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.av, %i.ap
  br i1 %.not43, label %._crit_edge.loopexit, label %.lr.ph

_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit: ; preds = %._crit_edge
  br i1 %.029.lcssa, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread

_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread: ; preds = %bb.g, %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef %i.j)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread
  br i1 %i.ay, label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread, label %bb.k

bb.k:                                             ; preds = %.noexc56
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6spacer18unsat_core_learner4is_aEP3app.exit:   ; preds = %bb.k
  br i1 %i.bb, label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge

_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread: ; preds = %.noexc56, %_ZN6spacer18unsat_core_learner4is_aEP3app.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner4is_bEP3app.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6spacer18unsat_core_learner4is_bEP3app.exit:   ; preds = %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread
  br i1 %i.be, label %bb.l, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge

bb.l:                                             ; preds = %_ZN6spacer18unsat_core_learner4is_bEP3app.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !14  ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i: ; preds = %bb.l
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !15 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk
  %.not11.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %.lr.ph.i

_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge: ; preds = %.noexc59, %.noexc60, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i, %bb.l, %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit, %_ZN6spacer18unsat_core_learner4is_bEP3app.exit, %_ZN6spacer18unsat_core_learner4is_aEP3app.exit, %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit
  br label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit, !llvm.loop !48

.lr.ph.i:                                         ; preds = %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i, %.noexc60
  %.01012.i = phi ptr [ %i.br, %.noexc60 ], [ %i.bf, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i ] ; 2 uses
  %i.bm = load ptr, ptr %.01012.i, align 8, !tbaa !17 ; 2 uses
  %i.bn = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.lr.ph.i
  br i1 %i.bn, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %bb.m

bb.m:                                             ; preds = %.noexc59
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef %i.j)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !130

.noexc60:                                         ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.01012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.bl
  br i1 %.not.i, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %.lr.ph.i

bb.n:                                             ; preds = %bb.b
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !14  ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.loopexit71, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61: ; preds = %bb.n
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %.not8.i = icmp eq i32 %i.bv, 0
  br i1 %.not8.i, label %.loopexit71, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61, %.noexc64
  %.09.i = phi ptr [ %i.cd, %.noexc64 ], [ %i.bs, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61 ] ; 2 uses
  %i.bz = load ptr, ptr %.09.i, align 8, !tbaa !17 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131

.noexc64:                                         ; preds = %.lr.ph.i62
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i63 = icmp eq ptr %i.cd, %i.by
  br i1 %.not.i63, label %.loopexit71, label %.lr.ph.i62

.loopexit71:                                      ; preds = %.noexc64, %bb.n, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %._crit_edge84, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %.loopexit71
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !15 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck
  %.not81 = icmp eq i32 %i.ci, 0
  br i1 %.not81, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.u

._crit_edge84:                                    ; preds = %bb.y, %.loopexit71, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !32 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge84
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cp)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #15
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i: ; preds = %bb.o, %._crit_edge84
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !32 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN8ast_markD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cu)
          to label %_ZN8ast_markD2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #15
  unreachable

_ZN8ast_markD2Ev.exit.i:                          ; preds = %bb.q, %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i
  %i.cy = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN16proof_post_orderD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8ast_markD2Ev.exit.i
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cz)
          to label %_ZN16proof_post_orderD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #15
  unreachable

_ZN16proof_post_orderD2Ev.exit:                   ; preds = %_ZN8ast_markD2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.u:                                             ; preds = %.lr.ph83, %bb.y
  %.082 = phi ptr [ %i.cf, %.lr.ph83 ], [ %i.dt, %bb.y ] ; 2 uses
  %i.dc = load ptr, ptr %.082, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !29
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.v, %bb.u
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !15 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
end_hunk_0

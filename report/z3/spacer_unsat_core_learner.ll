Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_unsat_core_learner?download=true
inline.NumInlined: 141
inline.NumDeleted: 94
begin_hunk_0_@_ZN6spacer18unsat_core_learnerD2Ev:bb.a
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
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit
  br i1 %i.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZN16proof_post_order4nextEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %bb.e       ; 10 uses

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit unwind label %.loopexit.split-lp70

_ZN6spacer18unsat_core_learner9is_closedEP3app.exit: ; preds = %bb.d
  br i1 %i.k, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit69:                                      ; preds = %.lr.ph.i, %bb.p
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp70:                             ; preds = %bb.d, %bb.g, %._crit_edge, %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread, %bb.n, %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !26, !align !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.t)
          to label %.noexc unwind label %.loopexit.split-lp70

.noexc:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 824
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp ne ptr %i.u, %i.w
  %i.y = sext i1 %i.x to i32
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  %i.z = phi i32 [ 0, %bb.f ], [ %i.y, %.noexc ]
  %i.aa = sub i32 0, %i.o
  %.not42 = icmp eq i32 %i.z, %i.aa
  br i1 %.not42, label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !26, !align !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !69  ; 3 uses
  %.not.i.i51 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i51, label %_ZNK11ast_manager13proof_parents3endEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %i.ad, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ah)
          to label %.noexc52 unwind label %bb.k

.noexc52:                                         ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 824
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.al = icmp ne ptr %i.ai, %i.ak
  %i.am = sext i1 %i.al to i32
  br label %_ZNK11ast_manager13proof_parents3endEv.exit

_ZNK11ast_manager13proof_parents3endEv.exit:      ; preds = %bb.i, %.noexc52
  %i.an = phi i32 [ 0, %bb.i ], [ %i.am, %.noexc52 ]
  %i.ao = add i32 %i.an, %i.ad                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not4375 = icmp eq i32 %i.ao, 0
  br i1 %.not4375, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a, %_ZNK11ast_manager13proof_parents3endEv.exit
  %.029.lcssa = phi i1 [ true, %_ZNK11ast_manager13proof_parents3endEv.exit ], [ %3, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a ] ; 2 uses
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j, i1 noundef zeroext %.029.lcssa)
          to label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit unwind label %.loopexit.split-lp70

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %_ZNK11ast_manager13proof_parents3endEv.exit, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a
  %.02877 = phi ptr [ %i.ax, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a ], [ %i.ac, %_ZNK11ast_manager13proof_parents3endEv.exit ] ; 2 uses
  %.02976 = phi i1 [ %3, %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a ], [ true, %_ZNK11ast_manager13proof_parents3endEv.exit ]
  %i.as = load ptr, ptr %.02877, align 8, !tbaa !129 ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef %i.as)
          to label %.noexc54 unwind label %bb.m

.noexc54:                                         ; preds = %.lr.ph
  br i1 %i.av, label %bb.l, label %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a

bb.l:                                             ; preds = %.noexc54
  %i.aw = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.as)
          to label %_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a unwind label %bb.m

_ZN6spacer18unsat_core_learner9is_b_openEP3app.exit.a: ; preds = %bb.l, %.noexc54
  %not. = phi i1 [ true, %.noexc54 ], [ %i.aw, %bb.l ]
  %3 = select i1 %not., i1 %.02976, i1 false      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02877, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.ax, %i.aq
  br i1 %.not43, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit: ; preds = %._crit_edge
  br i1 %.029.lcssa, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread

_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread: ; preds = %bb.h, %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef %i.j)
          to label %.noexc56 unwind label %.loopexit.split-lp70

.noexc56:                                         ; preds = %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit.thread
  br i1 %i.bb, label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread, label %bb.n

bb.n:                                             ; preds = %.noexc56
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.be = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit unwind label %.loopexit.split-lp70

_ZN6spacer18unsat_core_learner4is_aEP3app.exit:   ; preds = %bb.n
  br i1 %i.be, label %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge

_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread: ; preds = %.noexc56, %_ZN6spacer18unsat_core_learner4is_aEP3app.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !26, !align !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef %i.j)
          to label %_ZN6spacer18unsat_core_learner4is_bEP3app.exit unwind label %.loopexit.split-lp70

_ZN6spacer18unsat_core_learner4is_bEP3app.exit:   ; preds = %_ZN6spacer18unsat_core_learner4is_aEP3app.exit.thread
  br i1 %i.bh, label %bb.o, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge

bb.o:                                             ; preds = %_ZN6spacer18unsat_core_learner4is_bEP3app.exit
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !14  ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i: ; preds = %bb.o
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %.lr.ph.i

_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge: ; preds = %.noexc59, %.noexc60, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i, %bb.o, %_ZN6spacer18unsat_core_learner10set_closedEP3appb.exit, %_ZN6spacer18unsat_core_learner4is_bEP3app.exit, %_ZN6spacer18unsat_core_learner4is_aEP3app.exit, %_ZN6spacer18unsat_core_learner9is_closedEP3app.exit
  br label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit, !llvm.loop !48

.lr.ph.i:                                         ; preds = %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i, %.noexc60
  %.01012.i = phi ptr [ %i.bu, %.noexc60 ], [ %i.bi, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i ] ; 2 uses
  %i.bp = load ptr, ptr %.01012.i, align 8, !tbaa !17 ; 2 uses
  %i.bq = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %i.j)
          to label %.noexc59 unwind label %.loopexit69

.noexc59:                                         ; preds = %.lr.ph.i
  br i1 %i.bq, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %bb.p

bb.p:                                             ; preds = %.noexc59
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef %i.j)
          to label %.noexc60 unwind label %.loopexit69, !inline_history !130

.noexc60:                                         ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.01012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.bo
  br i1 %.not.i, label %_ZN6spacer18unsat_core_learner20compute_partial_coreEP3app.exit.backedge, label %.lr.ph.i

bb.q:                                             ; preds = %bb.b
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !14  ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.loopexit68, label %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61

_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61: ; preds = %bb.q
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %.not8.i = icmp eq i32 %i.by, 0
  br i1 %.not8.i, label %.loopexit68, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61, %.noexc64
  %.09.i = phi ptr [ %i.cg, %.noexc64 ], [ %i.bv, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61 ] ; 2 uses
  %i.cc = load ptr, ptr %.09.i, align 8, !tbaa !17 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.noexc64 unwind label %.loopexit, !inline_history !131

.noexc64:                                         ; preds = %.lr.ph.i62
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i63 = icmp eq ptr %i.cg, %i.cb
  br i1 %.not.i63, label %.loopexit68, label %.lr.ph.i62

.loopexit68:                                      ; preds = %.noexc64, %bb.q, %_ZN6vectorIPN6spacer17unsat_core_pluginELb0EjE3endEv.exit.i61
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %._crit_edge81, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %.loopexit68
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn
  %.not78 = icmp eq i32 %i.cl, 0
  br i1 %.not78, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.x

._crit_edge81:                                    ; preds = %bb.ab, %.loopexit68, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.cq, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !32 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge81
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cs)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #15
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i: ; preds = %bb.r, %._crit_edge81
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !32 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN8ast_markD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cx)
          to label %_ZN8ast_markD2Ev.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #15
  unreachable

_ZN8ast_markD2Ev.exit.i:                          ; preds = %bb.t, %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i.i
  %i.db = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %_ZN16proof_post_orderD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8ast_markD2Ev.exit.i
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dc)
          to label %_ZN16proof_post_orderD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #15
  unreachable

_ZN16proof_post_orderD2Ev.exit:                   ; preds = %_ZN8ast_markD2Ev.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.x:                                             ; preds = %.lr.ph80, %bb.ab
  %.079 = phi ptr [ %i.ci, %.lr.ph80 ], [ %i.dw, %bb.ab ] ; 2 uses
  %i.df = load ptr, ptr %.079, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !29
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.y, %bb.x
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !15 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 -8
end_hunk_0

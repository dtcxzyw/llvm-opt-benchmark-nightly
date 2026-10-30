Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_elim_term_ite?download=true
inline.NumInlined: 511
inline.NumDeleted: 296
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7datalog16mk_elim_term_ite6groundEP4expr:bb.a
  %.not.i3.i = icmp eq ptr %i.ba, null
  br i1 %.not.i3.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !229
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !229
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.j
  store ptr %i.at, ptr %i.av, align 8, !tbaa !223
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.noexc23, %.noexc24, %bb.j, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !313

bb.m:                                             ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %5, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i8 0, ptr %i.bf, align 8, !tbaa !322
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !218, !noalias !323 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !221, !noalias !323
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i32 [ %i.bj, %bb.n ], [ 0, %bb.m ]
  invoke void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(545) %5, ptr noundef %2, i32 noundef %.0.i.i.i, ptr noundef %i.bg)
          to label %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit unwind label %bb.v

_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bm)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.o, %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bq)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #19
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit.i:               ; preds = %bb.q, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.bt = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN14expr_free_varsD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bt)
          to label %_ZN14expr_free_varsD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #19
  unreachable

_ZN14expr_free_varsD2Ev.exit:                     ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %5) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.by, %bb.v ], [ %i.bx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn17.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN14expr_free_varsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14expr_free_varsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !220  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !219    ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN16expr_sparse_markD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
          to label %_ZN16expr_sparse_markD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #19
  unreachable

_ZN16expr_sparse_markD2Ev.exit:                   ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7datalog16mk_elim_term_ite4elimERNS_4ruleERNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.sbuffer, align 8             ; 20 uses
  %4 = alloca %class.ast_fast_mark, align 8       ; 16 uses
  %5 = alloca %class.th_rewriter, align 8         ; 8 uses
  %6 = alloca %class.params_ref, align 8          ; 7 uses
  %7 = alloca %class.ref_vector, align 8          ; 16 uses
  %8 = alloca %class.obj_ref, align 8             ; 7 uses
  %9 = alloca %class.obj_ref, align 8             ; 8 uses
  %10 = alloca %class.obj_ref, align 8            ; 21 uses
  %11 = alloca %class.ref_vector.4, align 8       ; 7 uses
  %12 = alloca %class.obj_ref.11, align 8         ; 6 uses
  %13 = alloca %class.obj_ref.128, align 8        ; 7 uses
  %14 = alloca %class.obj_ref, align 8            ; 5 uses
  %15 = alloca %class.ref.129, align 8            ; 6 uses
  %16 = alloca %class.params_ref, align 8         ; 7 uses
  %17 = alloca %class.ref.130, align 8            ; 9 uses
  %18 = alloca %class.sref_buffer, align 8        ; 12 uses
  %19 = alloca %class.ref.130, align 8            ; 5 uses
  %20 = alloca %class.obj_ref, align 8            ; 6 uses
  %21 = alloca %class.obj_ref, align 8            ; 8 uses
  %22 = alloca %class.ref_vector.4, align 8       ; 7 uses
  %23 = alloca %class.obj_ref, align 8            ; 5 uses
  %24 = alloca %class.obj_ref.11, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i, align 8, !tbaa !223 ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !227, !nonnull !214, !align !215
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !229
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !229
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull %i.j)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.r = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 0, ptr %i.s, align 4, !tbaa !221
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !342
  invoke void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(952) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !346  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !347  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.aa = ptrtoint ptr %i.z to i64
  store i64 %i.aa, ptr %7, align 8, !tbaa !216
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 16 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !218
  %i.ac = icmp ult i32 %i.w, %i.y
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = zext i32 %i.w to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %bb.d
  invoke void @_Z11flatten_andR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.k unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.gm

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.ag = phi ptr [ null, %.lr.ph ], [ %i.av, %bb.j ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !230
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !229
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !229
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.g, %bb.f
  %i.ap = icmp eq ptr %i.ag, null
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !221 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !221
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !221
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.h
  %i.av = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ag, %bb.h ] ; 3 uses
  %i.aw = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ar, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  store ptr %i.al, ptr %i.az, align 8, !tbaa !223
  %i.ba = add i32 %i.aw, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !221
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !324

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215 ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !231
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr null, ptr %9, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr null, ptr %10, align 8, !tbaa !231
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !216
  %i.bf = load ptr, ptr %7, align 8, !tbaa !227, !noalias !348, !nonnull !214, !align !215
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !218, !noalias !348 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !221, !noalias !348
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i32 [ %i.bj, %bb.l ], [ 0, %bb.k ]
  %i.bk = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bf, i32 noundef %.0.i.i.i, ptr noundef %i.bg)
          to label %.noexc113 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc113:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !229, !noalias !348
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !229, !noalias !348
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

end_hunk_0
begin_hunk_1_@_ZN7datalog16mk_elim_term_ite4elimERNS_4ruleERNS_8rule_setE:bb.a
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i168: ; preds = %bb.bs, %bb.br, %.lr.ph.i.i165
  %i.ja = getelementptr inbounds nuw i8, ptr %.06.i.i166, i64 8 ; 2 uses
  %i.jb = icmp ult ptr %i.ja, %i.it
  br i1 %i.jb, label %.lr.ph.i.i165, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i168
  %.pre.i170 = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.not.i.i171 = icmp eq ptr %.pre.i170, null
  br i1 %.not.i.i171, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i163
  %i.jc = phi ptr [ %.pre.i170, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169 ], [ %i.in, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i163 ]
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -4
  store i32 0, ptr %i.jd, align 4, !tbaa !221
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169, %bb.bq
  invoke void @_ZNK4goal12get_formulasER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(124) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174
  invoke void @_Z11flatten_andR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.bt, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174, %_ZN3refI4goalEC2EPS0_.exit162
  %lpad.loopexit.split-lp595 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.loopexit.split-lp257

bb.bu:                                            ; preds = %bb.bp, %bb.bt
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !258
  %i.jg = add i32 %i.jf, -1                       ; 2 uses
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !258
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bv, label %_ZN3refI4goalED2Ev.exit

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.ii) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.ii)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #19
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN3refI4goalED2Ev.exit, %bb.bm
  %.not329 = icmp eq i32 %i.w, 0
  br i1 %.not329, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %bb.bx
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.trip.count376 = zext i32 %i.w to i64
  br label %bb.bz

._crit_edge322:                                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit187, %bb.bx
  %i.jl = load ptr, ptr %7, align 8, !tbaa !227, !noalias !352, !nonnull !214, !align !215
  %i.jm = load ptr, ptr %i.ab, align 8, !tbaa !218, !noalias !352 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176, label %bb.by

bb.by:                                            ; preds = %._crit_edge322
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !221, !noalias !352
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176: ; preds = %bb.by, %._crit_edge322
  %.0.i.i.i177 = phi i32 [ %i.jp, %bb.by ], [ 0, %._crit_edge322 ]
  %i.jq = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.jl, i32 noundef %.0.i.i.i177, ptr noundef %i.jm)
          to label %.noexc180 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc180:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176
  %.not.i.i.i178 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i178, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179:     ; preds = %.noexc180
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !229, !noalias !352
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !229, !noalias !352
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181

bb.bz:                                            ; preds = %.lr.ph321, %_ZN7obj_refI4expr11ast_managerED2Ev.exit187
  %indvars.iv373 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next374, %_ZN7obj_refI4expr11ast_managerED2Ev.exit187 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv373
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !230
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, -8
  %i.jy = inttoptr i64 %i.jx to ptr
  invoke void @_ZN7datalog16mk_elim_term_ite6groundEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %20, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.jy)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.jz = load ptr, ptr %20, align 8, !tbaa !231
  %i.ka = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 4 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !221 ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.ka, i64 -8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !221
  %i.kg = icmp eq i32 %i.kd, %i.kf
  br i1 %i.kg, label %bb.cc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit187

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc185 unwind label %bb.ce

.noexc185:                                        ; preds = %bb.cc
  %.pre.i.i182 = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i183 = getelementptr inbounds i8, ptr %.pre.i.i182, i64 -4
  %.pre2.i.i184 = load i32, ptr %.phi.trans.insert.i.i183, align 4, !tbaa !221
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit187

_ZN7obj_refI4expr11ast_managerED2Ev.exit187:      ; preds = %bb.cb, %.noexc185
  %i.kh = phi i32 [ %.pre2.i.i184, %.noexc185 ], [ %i.kd, %bb.cb ] ; 2 uses
  %i.ki = phi ptr [ %.pre.i.i182, %.noexc185 ], [ %i.ka, %bb.cb ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -4
  %i.kk = zext i32 %i.kh to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kk
  store ptr %i.jz, ptr %i.kl, align 8, !tbaa !223
  %i.km = add i32 %i.kh, 1
  store i32 %i.km, ptr %i.kj, align 4, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge322, label %bb.bz, !llvm.loop !330

bb.cd:                                            ; preds = %bb.bz
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #18
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn93 = phi { ptr, i32 } [ %i.ko, %bb.ce ], [ %i.kn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %.loopexit.split-lp257

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179, %.noexc180
  %i.kp = load ptr, ptr %10, align 8, !tbaa !231  ; 3 uses
  %.not.i.i189 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i189, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, label %bb.cg

bb.cg:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181
  %i.kq = load ptr, ptr %i.be, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !229
  %i.kt = add i32 %i.ks, -1                       ; 2 uses
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !229
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.ch, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kq, ptr noundef nonnull %i.kp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit192:      ; preds = %bb.ch, %bb.cg, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181
  store ptr %i.jq, ptr %10, align 8, !tbaa !231
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.cj unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit192
  %i.kx = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.ky = load ptr, ptr %10, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !350
  invoke void @_ZN7datalog16mk_elim_term_ite6groundEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %21, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.la)
          to label %bb.ck unwind label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.lb = load ptr, ptr %21, align 8, !tbaa !231
  %i.lc = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.kx, i32 noundef 0, i32 noundef 9, ptr noundef %i.ky, ptr noundef %i.lb)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %bb.cr ; 11 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %bb.ck
  %.not.i194 = icmp eq ptr %i.lc, null            ; 2 uses
  br i1 %.not.i194, label %bb.cl, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !229
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !229
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.lc, ptr %9, align 8, !tbaa !231
  %i.lg = load ptr, ptr %21, align 8, !tbaa !231  ; 3 uses
  %.not.i.i196 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i196, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !229
  %i.ll = add i32 %i.lk, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !229
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.cn, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.li, ptr noundef nonnull %i.lg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit197:      ; preds = %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.lp = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112has_term_iteER7obj_refI4expr11ast_managerE(ptr %i.lc, ptr nonnull %i.bb)
          to label %bb.cp unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cp:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit197
  br i1 %i.lp, label %bb.fk, label %bb.ct

.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph317, %._crit_edge318, %bb.bl, %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, %bb.bg, %_ZN7obj_refI4expr11ast_managerED2Ev.exit197, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176
  %lpad.loopexit.split-lp598 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp257

bb.cq:                                            ; preds = %bb.cj
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.ck
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #18
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn88 = phi { ptr, i32 } [ %i.lr, %bb.cr ], [ %i.lq, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.loopexit.split-lp257

bb.ct:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.ls = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.lt = ptrtoint ptr %i.ls to i64
  store i64 %i.lt, ptr %22, align 8, !tbaa !216
  %i.lu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  store ptr null, ptr %i.lu, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.lv, ptr %4, align 8, !tbaa !264
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  store i32 0, ptr %i.lw, align 8, !tbaa !265
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  store i32 16, ptr %i.lx, align 4, !tbaa !266
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 3 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !229
  %i.ma = icmp ugt i32 %i.lz, 1
  br i1 %i.ma, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4            ; 2 uses
  %i.md = and i32 %i.mc, 65536
  %.not.i.i.i200 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i200, label %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i, label %bb.ev

_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i:   ; preds = %bb.cu
  %i.me = or disjoint i32 %i.mc, 65536
  store i32 %i.me, ptr %i.mb, align 4
  store ptr %i.lc, ptr %i.lv, align 8, !tbaa !268
  store i32 1, ptr %i.lw, align 8, !tbaa !265
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.mf, ptr %3, align 8, !tbaa !271
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 16, ptr %i.mh, align 4, !tbaa !272
  store ptr %i.lc, ptr %i.mf, align 8
  %.sroa.5213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.5213.0..sroa_idx.i.i.i, align 8
  br label %.preheader.i.i.i.sink.split

thread-pre-splitthread-pre-split.i.i.i:           ; preds = %bb.dw, %bb.ep, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i144.i.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i133.i.i.i, %_Z17is_uninterp_constPK4expr.exit.thread1.i132.i.i.i, %_Z17is_uninterp_constPK4expr.exit.i131.i.i.i, %bb.du, %._crit_edge.i.i.i
  %.pr.pr.i.i.i = load i32, ptr %i.mg, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.thread223.i.i.i, %bb.cw, %thread-pre-splitthread-pre-split.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-splitthread-pre-split.i.i.i ], [ %i.ml, %.thread223.i.i.i ], [ %i.ml, %bb.cw ] ; 2 uses
  %i.mi = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.mi, label %bb.eq, label %.preheader.i.i.i

.preheader.i.i.i.sink.split:                      ; preds = %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i, %bb.cv
  %.sink = phi i32 [ 1, %bb.cv ], [ %i.wd, %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i ] ; 2 uses
  store i32 %.sink, ptr %i.mg, align 8, !tbaa !273
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.sink.split, %thread-pre-split.i.i.i
  %i.mj = phi i32 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %.sink, %.preheader.i.i.i.sink.split ] ; 2 uses
  %i.mk = load ptr, ptr %3, align 8, !tbaa !271
  %i.ml = add i32 %i.mj, -1                       ; 6 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.mm ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !275 ; 15 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = load i32, ptr %i.mp, align 4
  %trunc.i.i.i = trunc i32 %i.mq to i16
  switch i16 %trunc.i.i.i, label %bb.eo [
    i16 1, label %bb.cw
    i16 0, label %bb.cx
    i16 2, label %bb.ea
  ]

bb.cw:                                            ; preds = %.preheader.i.i.i
  store i32 %i.ml, ptr %i.mg, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

bb.cx:                                            ; preds = %.preheader.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !279 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 3 uses
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !280 ; 2 uses
  %i.mv = icmp ult i32 %i.mu, %i.ms
  br i1 %i.mv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cx
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i, %.lr.ph.i.i.i
  %i.mx = phi i32 [ %i.mu, %.lr.ph.i.i.i ], [ %i.rg, %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i ] ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !223 ; 13 uses
  %i.nb = add nuw i32 %i.mx, 1
  store i32 %i.nb, ptr %i.mt, align 8, !tbaa !280
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 3 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !229
  %i.ne = icmp ugt i32 %i.nd, 1
  br i1 %i.ne, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4            ; 2 uses
  %i.nh = and i32 %i.ng, 65536
  %.not230.i.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not230.i.i.i, label %bb.da, label %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i, !llvm.loop !331

bb.da:                                            ; preds = %bb.cz
  %i.ni = or disjoint i32 %i.ng, 65536
  store i32 %i.ni, ptr %i.nf, align 4
  %i.nj = load i32, ptr %i.lw, align 8, !tbaa !265 ; 2 uses
  %i.nk = load i32, ptr %i.lx, align 4, !tbaa !266 ; 2 uses
  %.not.i.i66.i.i.i = icmp ult i32 %i.nj, %i.nk
  br i1 %.not.i.i66.i.i.i, label %._crit_edge.i.i81.i.i.i, label %bb.db

._crit_edge.i.i81.i.i.i:                          ; preds = %bb.da
  %.pre.i.i82.i.i.i = load ptr, ptr %4, align 8, !tbaa !264
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit85.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.nl = shl i32 %i.nk, 1                        ; 2 uses
  %i.nm = zext i32 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 3
  %i.no = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.nn)
          to label %.noexc83.i.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc83.i.i.i:                                   ; preds = %bb.db
  %i.np = load i32, ptr %i.lw, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i67.i.i.i = icmp eq i32 %i.np, 0
end_hunk_1
begin_hunk_2_@_ZN7datalog16mk_elim_term_ite4elimERNS_4ruleERNS_8rule_setE:bb.a
  %niter = phi i64 [ 0, %.lr.ph.i.i175.i.i.i.new ], [ %niter.next.1, %bb.en ]
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %indvars.iv.i.i177.i.i.i
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i174.i.i.i, i64 %indvars.iv.i.i177.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vw, ptr noundef nonnull align 8 dereferenceable(16) %i.vx, i64 16, i1 false)
  %indvars.iv.next.i.i178.i.i.i = or disjoint i64 %indvars.iv.i.i177.i.i.i, 1 ; 2 uses
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %indvars.iv.next.i.i178.i.i.i
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i174.i.i.i, i64 %indvars.iv.next.i.i178.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, ptr noundef nonnull align 8 dereferenceable(16) %i.vz, i64 16, i1 false)
  %indvars.iv.next.i.i178.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i177.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i180.i.i.i.loopexit.unr-lcssa, label %bb.en, !llvm.loop !2

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i: ; preds = %.noexc189.i.i.i, %._crit_edge.i.i180.i.i.i
  %.pre2.i185.i.i.i = phi i32 [ %i.vr, %._crit_edge.i.i180.i.i.i ], [ %.pre2.pre.i183.i.i.i, %.noexc189.i.i.i ]
  store ptr %i.vq, ptr %3, align 8, !tbaa !271
  store i32 %i.vn, ptr %i.mh, align 4, !tbaa !272
  br label %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i

.thread223.i.i.i:                                 ; preds = %bb.eb, %bb.ea
  store i32 %i.ml, ptr %i.mg, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

bb.eo:                                            ; preds = %.preheader.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 100, ptr noundef nonnull @.str.2)
          to label %bb.ep unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %bb.eo
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %thread-pre-splitthread-pre-split.i.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i: ; preds = %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i, %._crit_edge.i186.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i, %._crit_edge.i126.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i, %._crit_edge.i100.i.i.i
  %.sink.i.i.i = phi i32 [ %.pre2.i125.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %.pre2.i99.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %i.ow, %._crit_edge.i100.i.i.i ], [ %i.qr, %._crit_edge.i126.i.i.i ], [ %i.vl, %._crit_edge.i186.i.i.i ], [ %.pre2.i185.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %.sink372.i.i.i = phi ptr [ %i.qw, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %i.pb, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %.pre.i101.i.i.i, %._crit_edge.i100.i.i.i ], [ %.pre.i127.i.i.i, %._crit_edge.i126.i.i.i ], [ %.pre.i187.i.i.i, %._crit_edge.i186.i.i.i ], [ %i.vq, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %.0.i335.sink.i.i.i = phi ptr [ %i.na, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %i.na, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %i.na, %._crit_edge.i100.i.i.i ], [ %i.na, %._crit_edge.i126.i.i.i ], [ %.0.i.i.i.i, %._crit_edge.i186.i.i.i ], [ %.0.i.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %i.wa = zext i32 %.sink.i.i.i to i64
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr %.sink372.i.i.i, i64 %i.wa ; 2 uses
  store ptr %.0.i335.sink.i.i.i, ptr %i.wb, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.wc = load i32, ptr %i.mg, align 8, !tbaa !273
  %i.wd = add i32 %i.wc, 1
  br label %.preheader.i.i.i.sink.split

bb.eq:                                            ; preds = %thread-pre-split.i.i.i
  %i.we = load ptr, ptr %3, align 8, !tbaa !271   ; 3 uses
  %.not.i.i.i191.i.i.i = icmp eq ptr %i.we, %i.mf
  %i.wf = icmp eq ptr %i.we, null
  %or.cond.i.i.i192.i.i.i = or i1 %.not.i.i.i191.i.i.i, %i.wf
  br i1 %or.cond.i.i.i192.i.i.i, label %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.we)
          to label %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.wg = landingpad { ptr, i32 }
          catch ptr null
  %i.wh = extractvalue { ptr, i32 } %i.wg, 0
  call void @__clang_call_terminate(ptr %i.wh) #19
  unreachable

_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i: ; preds = %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre.i.i198 = load ptr, ptr %4, align 8, !tbaa !264 ; 4 uses
  %.pre64.i.i = load i32, ptr %i.lw, align 8, !tbaa !265 ; 2 uses
  %i.wi = zext i32 %.pre64.i.i to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.wi, 3        ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.pre.i.i198, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %.pre64.i.i, 0
  br i1 %.not8.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i
  %i.wk = add nsw i64 %.idx.i.i.i.i, -8           ; 2 uses
  %i.wl = lshr exact i64 %i.wk, 3
  %i.wm = add nuw nsw i64 %i.wl, 1
  %xtraiter627 = and i64 %i.wm, 3                 ; 2 uses
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod628.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.wr, %.lr.ph.i.i.i.i.prol ], [ %.pre.i.i198, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter629 = phi i64 [ %prol.iter629.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.wn = load ptr, ptr %.09.i.i.i.i.prol, align 8, !tbaa !268
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4
  %i.wq = and i32 %i.wp, -65537
  store i32 %i.wq, ptr %i.wo, align 4
  %i.wr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter629.next = add i64 %prol.iter629, 1   ; 2 uses
  %prol.iter629.cmp.not = icmp eq i64 %prol.iter629.next, %xtraiter627
  br i1 %prol.iter629.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !340

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %.pre.i.i198, %.lr.ph.i.i.i.i.preheader ], [ %i.wr, %.lr.ph.i.i.i.i.prol ]
  %i.ws = icmp ult i64 %i.wk, 24
  br i1 %i.ws, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.xm, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.wt = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !268
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 4 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4
  %i.ww = and i32 %i.wv, -65537
  store i32 %i.ww, ptr %i.wu, align 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !268
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4
  %i.xb = and i32 %i.xa, -65537
  store i32 %i.xb, ptr %i.wz, align 4
  %i.xc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !268
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = and i32 %i.xf, -65537
  store i32 %i.xg, ptr %i.xe, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !268
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4 ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4
  %i.xl = and i32 %i.xk, -65537
  store i32 %i.xl, ptr %i.xj, align 4
  %i.xm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i199.3 = icmp eq ptr %i.xm, %i.wj
  br i1 %.not.i.i.i.i199.3, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i4.i.i = load ptr, ptr %4, align 8, !tbaa !264
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i
  %i.xn = phi ptr [ %.pre.i4.i.i, %.loopexit.loopexit.i.i.i ], [ %.pre.i.i198, %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i ] ; 3 uses
  store i32 0, ptr %i.lw, align 8, !tbaa !265
  %.not.i.i.i.i5.i.i = icmp eq ptr %i.xn, %i.lv
  %i.xo = icmp eq ptr %i.xn, null
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i5.i.i, %i.xo
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %.loopexit.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.xn)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xp = landingpad { ptr, i32 }
          catch ptr null
  %i.xq = extractvalue { ptr, i32 } %i.xp, 0
  call void @__clang_call_terminate(ptr %i.xq) #19
  unreachable

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.db, %bb.dc, %bb.dn, %bb.ds, %bb.dt, %bb.dz, %bb.eo, %bb.ep, %bb.df, %bb.dg, %bb.dp, %bb.dq, %bb.ej, %bb.ek, %bb.el, %bb.em
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

bb.ev:                                            ; preds = %bb.et, %.loopexit.i.i.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.xr = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.xs = load ptr, ptr %i.lu, align 8, !tbaa !234 ; 3 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xu = getelementptr inbounds i8, ptr %i.xs, i64 -4
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !221
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203: ; preds = %bb.ev, %bb.ew
  %.0.i.i202 = phi i32 [ %i.xv, %bb.ew ], [ 0, %bb.ev ]
  invoke void @_Z9mk_forallR11ast_managerjPKP3appP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %23, ptr noundef nonnull align 8 dereferenceable(952) %i.xr, i32 noundef %.0.i.i202, ptr noundef %i.xs, ptr noundef %i.lc)
          to label %bb.ex unwind label %bb.fi

bb.ex:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203
  br i1 %.not.i194, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xw = load ptr, ptr %i.bd, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.xx = load i32, ptr %i.ly, align 4, !tbaa !229
  %i.xy = add i32 %i.xx, -1                       ; 2 uses
  store i32 %i.xy, ptr %i.ly, align 4, !tbaa !229
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %bb.ez, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.xw, ptr noundef nonnull %i.lc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ya = landingpad { ptr, i32 }
          catch ptr null
  %i.yb = extractvalue { ptr, i32 } %i.ya, 0
  call void @__clang_call_terminate(ptr %i.yb) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit208:      ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.yc = load ptr, ptr %23, align 8, !tbaa !231  ; 3 uses
  store ptr %i.yc, ptr %9, align 8, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.yd = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  store ptr null, ptr %24, align 8, !tbaa !235
  %i.ye = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !216
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !349, !nonnull !214, !align !215
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN7datalog12rule_manager7mk_ruleEP4exprP3appRNS_8rule_setERK6symbol(ptr noundef nonnull align 8 dereferenceable(1104) %i.yg, ptr noundef %i.yc, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.yh)
          to label %bb.fb unwind label %bb.fj

bb.fb:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit208
  %i.yi = load ptr, ptr %i.yf, align 8, !tbaa !349, !nonnull !214, !align !215
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !297 ; 3 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ym = getelementptr inbounds i8, ptr %i.yk, i64 -4
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !221
  %i.yo = add i32 %i.yn, -1
  %i.yp = zext i32 %i.yo to i64
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0.i.i.i209 = phi i64 [ %i.yp, %bb.fc ], [ 4294967295, %bb.fb ]
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %.0.i.i.i209
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !298
  invoke void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104) %i.yi, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.yr)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit211 unwind label %bb.fj

_ZN7obj_refI3app11ast_managerED2Ev.exit211:       ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.ys = load ptr, ptr %i.lu, align 8, !tbaa !234 ; 5 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212:         ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit211
  %i.yu = getelementptr inbounds i8, ptr %i.ys, i64 -4
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !221 ; 2 uses
  %i.yw = zext i32 %i.yv to i64
  %i.yx = shl nuw nsw i64 %i.yw, 3
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yx
  %.not.i213 = icmp eq i32 %i.yv, 0
  br i1 %.not.i213, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221, label %.lr.ph.i.i214

.lr.ph.i.i214:                                    ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217
  %.06.i.i215 = phi ptr [ %i.zf, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217 ], [ %i.ys, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212 ] ; 2 uses
  %i.yz = load ptr, ptr %.06.i.i215, align 8, !tbaa !230 ; 3 uses
  %i.za = load ptr, ptr %22, align 8, !tbaa !238, !nonnull !214, !align !215
  %.not.i.i.i.i.i216 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i.i.i216, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i214
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !229
  %i.zd = add i32 %i.zc, -1                       ; 2 uses
  store i32 %i.zd, ptr %i.zb, align 4, !tbaa !229
  %i.ze = icmp eq i32 %i.zd, 0
  br i1 %i.ze, label %bb.ff, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.za, ptr noundef nonnull %i.yz)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217 unwind label %bb.fh

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217: ; preds = %bb.ff, %bb.fe, %.lr.ph.i.i214
  %i.zf = getelementptr inbounds nuw i8, ptr %.06.i.i215, i64 8 ; 2 uses
  %i.zg = icmp ult ptr %i.zf, %i.yy
  br i1 %i.zg, label %.lr.ph.i.i214, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217
  %.pre.i219 = load ptr, ptr %i.lu, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %.pre.i219, null
  br i1 %.not.i.i.i220, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212
  %i.zh = phi ptr [ %.pre.i219, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218 ], [ %i.ys, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212 ]
  %i.zi = getelementptr inbounds i8, ptr %i.zh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.zi)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222 unwind label %bb.fg

bb.fg:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221
  %i.zj = landingpad { ptr, i32 }
          catch ptr null
  %i.zk = extractvalue { ptr, i32 } %i.zj, 0
  call void @__clang_call_terminate(ptr %i.zk) #19
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.zl = landingpad { ptr, i32 }
          catch ptr null
  %i.zm = extractvalue { ptr, i32 } %i.zl, 0
  call void @__clang_call_terminate(ptr %i.zm) #19
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit211, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.fk

bb.fi:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %.body

bb.fj:                                            ; preds = %bb.fd, %_ZN7obj_refI4expr11ast_managerED2Ev.exit208
  %i.zo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %.body

.body:                                            ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fj, %bb.fi
  %.pn90 = phi { ptr, i32 } [ %i.zo, %bb.fj ], [ %i.zn, %bb.fi ], [ %lpad.loopexit.split-lp577, %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.loopexit.split-lp257

bb.fk:                                            ; preds = %bb.cp, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222
  %25 = phi ptr [ %i.lc, %bb.cp ], [ %i.yc, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222 ]
  %.074 = xor i1 %i.lp, true
  %i.zp = load ptr, ptr %18, align 8, !tbaa !261  ; 3 uses
  %i.zq = load i32, ptr %i.hk, align 8, !tbaa !262 ; 2 uses
  %i.zr = zext i32 %i.zq to i64
  %.idx.i = shl nuw nsw i64 %i.zr, 3
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.idx.i
  %.not.i223 = icmp eq i32 %i.zq, 0
  br i1 %.not.i223, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %bb.fk, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.06.i.i225 = phi ptr [ %i.zy, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i ], [ %i.zp, %bb.fk ] ; 2 uses
  %i.zt = load ptr, ptr %.06.i.i225, align 8, !tbaa !263 ; 4 uses
  %.not.i.i.i.i226 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i.i226, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i224
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 32 ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !258
  %i.zw = add i32 %i.zv, -1                       ; 2 uses
  store i32 %i.zw, ptr %i.zu, align 8, !tbaa !258
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.fm, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.zt) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.zt)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i unwind label %bb.fp

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i: ; preds = %bb.fm, %bb.fl, %.lr.ph.i.i224
  %i.zy = getelementptr inbounds nuw i8, ptr %.06.i.i225, i64 8 ; 2 uses
  %i.zz = icmp ult ptr %i.zy, %i.zs
  br i1 %i.zz, label %.lr.ph.i.i224, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, !llvm.loop !3

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.pre.i227 = load ptr, ptr %18, align 8, !tbaa !261
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, %bb.fk
  %i.aaa = phi ptr [ %.pre.i227, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i ], [ %i.zp, %bb.fk ] ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aaa, %i.hj
  %i.aab = icmp eq ptr %i.aaa, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i1.i, %i.aab
  br i1 %or.cond.i.i.i.i, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aaa)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  %i.aad = extractvalue { ptr, i32 } %i.aac, 0
  call void @__clang_call_terminate(ptr %i.aad) #19
  unreachable

bb.fp:                                            ; preds = %bb.fm
  %i.aae = landingpad { ptr, i32 }
          catch ptr null
  %i.aaf = extractvalue { ptr, i32 } %i.aae, 0
  call void @__clang_call_terminate(ptr %i.aaf) #19
  unreachable

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.aag = load ptr, ptr %17, align 8, !tbaa !247 ; 4 uses
  %.not.i.i228 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i228, label %_ZN3refI4goalED2Ev.exit229, label %bb.fq

bb.fq:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 32 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !258
  %i.aaj = add i32 %i.aai, -1                     ; 2 uses
  store i32 %i.aaj, ptr %i.aah, align 8, !tbaa !258
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %bb.fr, label %_ZN3refI4goalED2Ev.exit229

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.aag) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.aag)
          to label %_ZN3refI4goalED2Ev.exit229 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  %i.aam = extractvalue { ptr, i32 } %i.aal, 0
  call void @__clang_call_terminate(ptr %i.aam) #19
  unreachable

_ZN3refI4goalED2Ev.exit229:                       ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.aan = load ptr, ptr %15, align 8, !tbaa !241 ; 5 uses
  %.not.i.i230 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i230, label %_ZN3refI6tacticED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN3refI4goalED2Ev.exit229
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8 ; 2 uses
  %i.aap = load i32, ptr %i.aao, align 8, !tbaa !244
  %i.aaq = add i32 %i.aap, -1                     ; 2 uses
  store i32 %i.aaq, ptr %i.aao, align 8, !tbaa !244
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %bb.fu, label %_ZN3refI6tacticED2Ev.exit

bb.fu:                                            ; preds = %bb.ft
  %i.aas = load ptr, ptr %i.aan, align 8, !tbaa !17
  %i.aat = load ptr, ptr %i.aas, align 8
  call void %i.aat(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.aan) #18, !inline_history !341
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.aan)
          to label %_ZN3refI6tacticED2Ev.exit unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aau = landingpad { ptr, i32 }
          catch ptr null
  %i.aav = extractvalue { ptr, i32 } %i.aau, 0
  call void @__clang_call_terminate(ptr %i.aav) #19
  unreachable

_ZN3refI6tacticED2Ev.exit:                        ; preds = %_ZN3refI4goalED2Ev.exit229, %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.fy

.loopexit.split-lp257:                            ; preds = %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cf, %bb.cs, %.body
  %.pn96.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp595, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn90, %.body ], [ %.pn88, %bb.cs ], [ %.pn93, %bb.cf ], [ %lpad.loopexit.split-lp598, %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  br label %bb.fw

bb.fw:                                            ; preds = %.loopexit.split-lp257, %bb.bk
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %.loopexit.split-lp257 ], [ %i.hy, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN3refI6tacticED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.bj
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn, %bb.fw ], [ %i.hx, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.loopexit.split-lp267

bb.fy:                                            ; preds = %bb.q, %_ZN3refI6tacticED2Ev.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %26 = phi ptr [ %25, %_ZN3refI6tacticED2Ev.exit ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ null, %bb.q ] ; 3 uses
  %.175 = phi i1 [ %.074, %_ZN3refI6tacticED2Ev.exit ], [ true, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ false, %bb.q ]
  %i.aaw = load ptr, ptr %10, align 8, !tbaa !231 ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i231, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aax = load ptr, ptr %i.be, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8 ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !229
  %i.aba = add i32 %i.aaz, -1                     ; 2 uses
  store i32 %i.aba, ptr %i.aay, align 4, !tbaa !229
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %bb.ga, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aax, ptr noundef nonnull %i.aaw)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232 unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.abc = landingpad { ptr, i32 }
          catch ptr null
  %i.abd = extractvalue { ptr, i32 } %i.abc, 0
  call void @__clang_call_terminate(ptr %i.abd) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit232:      ; preds = %bb.fy, %bb.fz, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.not.i.i233 = icmp eq ptr %26, null
  br i1 %.not.i.i233, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234, label %bb.gc

bb.gc:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit232
  %i.abe = load ptr, ptr %i.bd, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.abf = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !229
  %i.abh = add i32 %i.abg, -1                     ; 2 uses
  store i32 %i.abh, ptr %i.abf, align 4, !tbaa !229
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.gd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.abe, ptr noundef nonnull %26)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.abj = landingpad { ptr, i32 }
          catch ptr null
  %i.abk = extractvalue { ptr, i32 } %i.abj, 0
  call void @__clang_call_terminate(ptr %i.abk) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit234:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit232, %bb.gc, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.abl = load ptr, ptr %8, align 8, !tbaa !231  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i235, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236, label %bb.gf

bb.gf:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit234
  %i.abm = load ptr, ptr %i.bc, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 8 ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !229
  %i.abp = add i32 %i.abo, -1                     ; 2 uses
  store i32 %i.abp, ptr %i.abn, align 4, !tbaa !229
  %i.abq = icmp eq i32 %i.abp, 0
  br i1 %i.abq, label %bb.gg, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236

bb.gg:                                            ; preds = %bb.gf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.abm, ptr noundef nonnull %i.abl)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236 unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.abr = landingpad { ptr, i32 }
          catch ptr null
  %i.abs = extractvalue { ptr, i32 } %i.abr, 0
  call void @__clang_call_terminate(ptr %i.abs) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit236:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit234, %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.abt = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 5 uses
  %i.abu = icmp eq ptr %i.abt, null
  br i1 %i.abu, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit236
  %i.abv = getelementptr inbounds i8, ptr %i.abt, i64 -4
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !221 ; 2 uses
  %i.abx = zext i32 %i.abw to i64
  %i.aby = shl nuw nsw i64 %i.abx, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.aby
  %.not.i238 = icmp eq i32 %i.abw, 0
  br i1 %.not.i238, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246, label %.lr.ph.i.i239

.lr.ph.i.i239:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242
  %.06.i.i240 = phi ptr [ %i.acg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242 ], [ %i.abt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237 ] ; 2 uses
  %i.aca = load ptr, ptr %.06.i.i240, align 8, !tbaa !223 ; 3 uses
  %i.acb = load ptr, ptr %7, align 8, !tbaa !227, !nonnull !214, !align !215
  %.not.i.i.i.i.i241 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i.i.i241, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i239
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 8 ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !229
  %i.ace = add i32 %i.acd, -1                     ; 2 uses
  store i32 %i.ace, ptr %i.acc, align 4, !tbaa !229
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.gj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.acb, ptr noundef nonnull %i.aca)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242 unwind label %bb.gl

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242: ; preds = %bb.gj, %bb.gi, %.lr.ph.i.i239
  %i.acg = getelementptr inbounds nuw i8, ptr %.06.i.i240, i64 8 ; 2 uses
  %i.ach = icmp ult ptr %i.acg, %i.abz
  br i1 %i.ach, label %.lr.ph.i.i239, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242
  %.pre.i244 = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %.pre.i244, null
  br i1 %.not.i.i.i245, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237
  %i.aci = phi ptr [ %.pre.i244, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243 ], [ %i.abt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237 ]
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.acj)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.gk

bb.gk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #19
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.acm = landingpad { ptr, i32 }
          catch ptr null
  %i.acn = extractvalue { ptr, i32 } %i.acm, 0
  call void @__clang_call_terminate(ptr %i.acn) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit236, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.175

.loopexit.split-lp267:                            ; preds = %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fx, %bb.bi, %.loopexit.split-lp262
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn, %bb.fx ], [ %i.hw, %bb.bi ], [ %.pn81, %.loopexit.split-lp262 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp272

.loopexit.split-lp272:                            ; preds = %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp267
  %.pn104 = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp267 ], [ %lpad.loopexit.split-lp607, %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit.split-lp272, %bb.e
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104, %.loopexit.split-lp272 ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn104.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_Z11flatten_andR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !229
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !229
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
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112has_term_iteER7obj_refI4expr11ast_managerE(ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.sbuffer, align 8             ; 20 uses
  %1 = alloca %class.ast_fast_mark, align 8       ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  store i32 0, ptr %i.b, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  store i32 16, ptr %i.c, align 4, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !229
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = and i32 %i.h, 65536
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i, label %_Z19quick_for_each_exprIN12_GLOBAL__N_113term_ite_procEEvRT_P4expr.exit.i

_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i:   ; preds = %bb.b
  %i.j = or disjoint i32 %i.h, 65536
  store i32 %i.j, ptr %i.g, align 4
  store ptr %.0.val, ptr %i.a, align 8, !tbaa !268
  store i32 1, ptr %i.b, align 8, !tbaa !265
  br label %bb.c
end_hunk_2

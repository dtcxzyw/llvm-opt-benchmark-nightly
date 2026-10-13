Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_elim_term_ite?download=true
inline.NumInlined: 511
inline.NumDeleted: 296
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7datalog16mk_elim_term_ite6groundEP4expr:bb.a
  %.not.i3.i = icmp eq ptr %i.bc, null
  br i1 %.not.i3.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !229
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !229
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ay, ptr noundef nonnull %i.bc)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.k, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.l
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !223
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !313

bb.p:                                             ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %5, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i8 0, ptr %i.bi, align 8, !tbaa !322
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !218, !noalias !323 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !221, !noalias !323
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i32 [ %i.bm, %bb.q ], [ 0, %bb.p ]
  invoke void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(545) %5, ptr noundef %2, i32 noundef %.0.i.i.i, ptr noundef %i.bj)
          to label %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit unwind label %bb.y

_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bp)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.r, %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bt)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #19
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit.i:               ; preds = %bb.t, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.bw = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN14expr_free_varsD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bw)
          to label %_ZN14expr_free_varsD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #19
  unreachable

_ZN14expr_free_varsD2Ev.exit:                     ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.x:                                             ; preds = %._crit_edge
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %5) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.y ], [ %i.ca, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.e, %bb.n, %bb.z, %bb.d
  %.pn17.pn = phi { ptr, i32 } [ %i.al, %bb.d ], [ %.pn, %bb.z ], [ %i.bh, %bb.n ], [ %i.am, %bb.e ]
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
  %9 = alloca %class.obj_ref, align 8             ; 9 uses
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
          to label %bb.l unwind label %bb.s

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.hh

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
          to label %.noexc unwind label %bb.k

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

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215 ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr null, ptr %9, align 8, !tbaa !231
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr null, ptr %10, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !216
  %i.bg = load ptr, ptr %7, align 8, !tbaa !227, !noalias !348, !nonnull !214, !align !215
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !218, !noalias !348 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !221, !noalias !348
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i32 [ %i.bk, %bb.m ], [ 0, %bb.l ]
  %i.bl = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, i32 noundef %.0.i.i.i, ptr noundef %i.bh)
          to label %.noexc113 unwind label %bb.t  ; 4 uses

.noexc113:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc113
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7datalog16mk_elim_term_ite4elimERNS_4ruleERNS_8rule_setE:bb.a
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -4
  store i32 0, ptr %i.jk, align 4, !tbaa !221
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i169, %bb.by
  invoke void @_ZNK4goal12get_formulasER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(124) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.cb unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174
  invoke void @_Z11flatten_andR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ce unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit197, %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, %bb.bt, %._crit_edge309
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

.loopexit:                                        ; preds = %bb.ca
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp:                               ; preds = %_ZN3refI4goalEC2EPS0_.exit162, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit174, %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.go

bb.ce:                                            ; preds = %bb.bx, %bb.cb
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ip, i64 32 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !258
  %i.jo = add i32 %i.jn, -1                       ; 2 uses
  store i32 %i.jo, ptr %i.jm, align 8, !tbaa !258
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.cf, label %_ZN3refI4goalED2Ev.exit

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.ip) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.ip)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #19
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN3refI4goalED2Ev.exit, %bb.bu
  %.not320 = icmp eq i32 %i.w, 0
  br i1 %.not320, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.ch
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.trip.count355 = zext i32 %i.w to i64
  br label %bb.cj

._crit_edge313:                                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit187, %bb.ch
  %i.jt = load ptr, ptr %7, align 8, !tbaa !227, !noalias !352, !nonnull !214, !align !215
  %i.ju = load ptr, ptr %i.ab, align 8, !tbaa !218, !noalias !352 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge313
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !221, !noalias !352
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176: ; preds = %bb.ci, %._crit_edge313
  %.0.i.i.i177 = phi i32 [ %i.jx, %bb.ci ], [ 0, %._crit_edge313 ]
  %i.jy = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.jt, i32 noundef %.0.i.i.i177, ptr noundef %i.ju)
          to label %.noexc180 unwind label %bb.da ; 3 uses

.noexc180:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176
  %.not.i.i.i178 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i178, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179:     ; preds = %.noexc180
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !229, !noalias !352
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !229, !noalias !352
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181

bb.cj:                                            ; preds = %.lr.ph312, %_ZN7obj_refI4expr11ast_managerED2Ev.exit187
  %indvars.iv352 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next353, %_ZN7obj_refI4expr11ast_managerED2Ev.exit187 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv352
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !230
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, -8
  %i.kg = inttoptr i64 %i.kf to ptr
  invoke void @_ZN7datalog16mk_elim_term_ite6groundEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %20, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.kg)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.kh = load ptr, ptr %20, align 8, !tbaa !231
  %i.ki = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 4 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kk = getelementptr inbounds i8, ptr %i.ki, i64 -4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !221 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.ki, i64 -8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !221
  %i.ko = icmp eq i32 %i.kl, %i.kn
  br i1 %i.ko, label %bb.cm, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit187

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc185 unwind label %bb.co

.noexc185:                                        ; preds = %bb.cm
  %.pre.i.i182 = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i183 = getelementptr inbounds i8, ptr %.pre.i.i182, i64 -4
  %.pre2.i.i184 = load i32, ptr %.phi.trans.insert.i.i183, align 4, !tbaa !221
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit187

_ZN7obj_refI4expr11ast_managerED2Ev.exit187:      ; preds = %bb.cl, %.noexc185
  %i.kp = phi i32 [ %.pre2.i.i184, %.noexc185 ], [ %i.kl, %bb.cl ] ; 2 uses
  %i.kq = phi ptr [ %.pre.i.i182, %.noexc185 ], [ %i.ki, %bb.cl ] ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %i.ks = zext i32 %i.kp to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ks
  store ptr %i.kh, ptr %i.kt, align 8, !tbaa !223
  %i.ku = add i32 %i.kp, 1
  store i32 %i.ku, ptr %i.kr, align 4, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count355
  br i1 %exitcond356.not, label %._crit_edge313, label %bb.cj, !llvm.loop !330

bb.cn:                                            ; preds = %bb.cj
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn93 = phi { ptr, i32 } [ %i.kw, %bb.co ], [ %i.kv, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.go

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i179, %.noexc180
  %i.kx = load ptr, ptr %10, align 8, !tbaa !231  ; 3 uses
  %.not.i.i189 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i189, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192, label %bb.cq

bb.cq:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181
  %i.ky = load ptr, ptr %i.bf, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !229
  %i.lb = add i32 %i.la, -1                       ; 2 uses
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !229
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.cr, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ky, ptr noundef nonnull %i.kx)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit192 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit192:      ; preds = %bb.cr, %bb.cq, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit181
  store ptr %i.jy, ptr %10, align 8, !tbaa !231
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ct unwind label %bb.cc

bb.ct:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit192
  %i.lf = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.lg = load ptr, ptr %10, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !350
  invoke void @_ZN7datalog16mk_elim_term_ite6groundEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %21, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.li)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.lj = load ptr, ptr %21, align 8, !tbaa !231
  %i.lk = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.lf, i32 noundef 0, i32 noundef 9, ptr noundef %i.lg, ptr noundef %i.lj)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %bb.dc ; 10 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %bb.cu
  %.not.i194 = icmp eq ptr %i.lk, null            ; 2 uses
  br i1 %.not.i194, label %bb.cv, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !229
  %i.ln = add i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !229
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.lk, ptr %9, align 8, !tbaa !231
  %i.lo = load ptr, ptr %21, align 8, !tbaa !231  ; 3 uses
  %.not.i.i196 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i196, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lp = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !229
  %i.lt = add i32 %i.ls, -1                       ; 2 uses
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !229
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.cx, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lq, ptr noundef nonnull %i.lo)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit197 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit197:      ; preds = %bb.cv, %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.lx = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112has_term_iteER7obj_refI4expr11ast_managerE(ptr %i.lk, ptr nonnull %i.bc)
          to label %bb.cz unwind label %bb.cc     ; 2 uses

bb.cz:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit197
  br i1 %i.lx, label %bb.gc, label %bb.de

bb.da:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i176
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.db:                                            ; preds = %bb.ct
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cu
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #18
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn88 = phi { ptr, i32 } [ %i.ma, %bb.dc ], [ %i.lz, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.go

bb.de:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.mb = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.mc = ptrtoint ptr %i.mb to i64
  store i64 %i.mc, ptr %22, align 8, !tbaa !216
  %i.md = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  store ptr null, ptr %i.md, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.me, ptr %4, align 8, !tbaa !264
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  store i32 0, ptr %i.mf, align 8, !tbaa !265
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  store i32 16, ptr %i.mg, align 4, !tbaa !266
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !229
  %i.mj = icmp ugt i32 %i.mi, 1
  br i1 %i.mj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4            ; 2 uses
  %i.mm = and i32 %i.ml, 65536
  %.not.i.i.i200 = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i.i200, label %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i, label %bb.fn

_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i:   ; preds = %bb.df
  %i.mn = or disjoint i32 %i.ml, 65536
  store i32 %i.mn, ptr %i.mk, align 4
  store ptr %i.lk, ptr %i.me, align 8, !tbaa !268
  store i32 1, ptr %i.mf, align 8, !tbaa !265
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i.i, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.mo, ptr %3, align 8, !tbaa !271
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 16, ptr %i.mq, align 4, !tbaa !272
  store ptr %i.lk, ptr %i.mo, align 8
  %.sroa.5213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.5213.0..sroa_idx.i.i.i, align 8
  br label %.preheader.i.i.i.sink.split

thread-pre-splitthread-pre-split.i.i.i:           ; preds = %bb.el, %bb.fh, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i144.i.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i133.i.i.i, %_Z17is_uninterp_constPK4expr.exit.thread1.i132.i.i.i, %_Z17is_uninterp_constPK4expr.exit.i131.i.i.i, %bb.ej, %._crit_edge.i.i.i
  %.pr.pr.i.i.i = load i32, ptr %i.mp, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.thread223.i.i.i, %bb.dh, %thread-pre-splitthread-pre-split.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-splitthread-pre-split.i.i.i ], [ %i.mu, %.thread223.i.i.i ], [ %i.mu, %bb.dh ] ; 2 uses
  %i.mr = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.mr, label %bb.fi, label %.preheader.i.i.i

.preheader.i.i.i.sink.split:                      ; preds = %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i, %bb.dg
  %.sink = phi i32 [ 1, %bb.dg ], [ %i.wt, %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i ] ; 2 uses
  store i32 %.sink, ptr %i.mp, align 8, !tbaa !273
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.sink.split, %thread-pre-split.i.i.i
  %i.ms = phi i32 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %.sink, %.preheader.i.i.i.sink.split ] ; 2 uses
  %i.mt = load ptr, ptr %3, align 8, !tbaa !271
  %i.mu = add i32 %i.ms, -1                       ; 6 uses
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mv ; 3 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !275 ; 15 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4
  %trunc.i.i.i = trunc i32 %i.mz to i16
  switch i16 %trunc.i.i.i, label %bb.fg [
    i16 1, label %bb.dh
    i16 0, label %bb.dj
    i16 2, label %bb.eq
  ]

bb.dh:                                            ; preds = %.preheader.i.i.i
  store i32 %i.mu, ptr %i.mp, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

bb.di:                                            ; preds = %bb.fh, %bb.fg
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.dj:                                            ; preds = %.preheader.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !279 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 3 uses
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !280 ; 2 uses
  %i.nf = icmp ult i32 %i.ne, %i.nc
  br i1 %i.nf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dj
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i, %.lr.ph.i.i.i
  %i.nh = phi i32 [ %i.ne, %.lr.ph.i.i.i ], [ %i.rt, %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i ] ; 2 uses
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.ni
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !223 ; 13 uses
  %i.nl = add nuw i32 %i.nh, 1
  store i32 %i.nl, ptr %i.nd, align 8, !tbaa !280
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !229
  %i.no = icmp ugt i32 %i.nn, 1
  br i1 %i.no, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 4 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4            ; 2 uses
  %i.nr = and i32 %i.nq, 65536
  %.not230.i.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not230.i.i.i, label %bb.dn, label %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit.i.i.i, !llvm.loop !331

bb.dm:                                            ; preds = %bb.ei, %bb.eh, %bb.eb, %bb.dp, %bb.do
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.nt = or disjoint i32 %i.nq, 65536
  store i32 %i.nt, ptr %i.np, align 4
  %i.nu = load i32, ptr %i.mf, align 8, !tbaa !265 ; 2 uses
  %i.nv = load i32, ptr %i.mg, align 4, !tbaa !266 ; 2 uses
  %.not.i.i66.i.i.i = icmp ult i32 %i.nu, %i.nv
  br i1 %.not.i.i66.i.i.i, label %._crit_edge.i.i81.i.i.i, label %bb.do

._crit_edge.i.i81.i.i.i:                          ; preds = %bb.dn
  %.pre.i.i82.i.i.i = load ptr, ptr %4, align 8, !tbaa !264
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit85.i.i.i

end_hunk_1
begin_hunk_2_@_ZN7datalog16mk_elim_term_ite4elimERNS_4ruleERNS_8rule_setE:bb.a
  %indvars.iv.next.i.i178.i.i.i = or disjoint i64 %indvars.iv.i.i177.i.i.i, 1 ; 2 uses
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wf, i64 %indvars.iv.next.i.i178.i.i.i
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i174.i.i.i, i64 %indvars.iv.next.i.i178.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wn, ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i64 16, i1 false)
  %indvars.iv.next.i.i178.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i177.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i180.i.i.i.loopexit.unr-lcssa, label %bb.fe, !llvm.loop !2

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i: ; preds = %.noexc189.i.i.i, %._crit_edge.i.i180.i.i.i
  %.pre2.i185.i.i.i = phi i32 [ %i.wg, %._crit_edge.i.i180.i.i.i ], [ %.pre2.pre.i183.i.i.i, %.noexc189.i.i.i ]
  store ptr %i.wf, ptr %3, align 8, !tbaa !271
  store i32 %i.wc, ptr %i.mq, align 4, !tbaa !272
  br label %_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i

bb.ff:                                            ; preds = %bb.fd, %bb.fc
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.thread223.i.i.i:                                 ; preds = %bb.er, %bb.eq
  store i32 %i.mu, ptr %i.mp, align 8, !tbaa !273
  br label %thread-pre-split.i.i.i

bb.fg:                                            ; preds = %.preheader.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 100, ptr noundef nonnull @.str.2)
          to label %bb.fh unwind label %bb.di

bb.fh:                                            ; preds = %bb.fg
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %thread-pre-splitthread-pre-split.i.i.i unwind label %bb.di

_ZN12_GLOBAL__N_124uninterp_const_collectorclEP3app.exit149.i.i.i: ; preds = %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i, %._crit_edge.i186.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i, %._crit_edge.i126.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i, %._crit_edge.i100.i.i.i
  %.sink.i.i.i = phi i32 [ %.pre2.i125.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %.pre2.i99.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %i.ph, %._crit_edge.i100.i.i.i ], [ %i.rd, %._crit_edge.i126.i.i.i ], [ %i.wa, %._crit_edge.i186.i.i.i ], [ %.pre2.i185.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %.sink393.i.i.i = phi ptr [ %i.ri, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %i.pm, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %.pre.i101.i.i.i, %._crit_edge.i100.i.i.i ], [ %.pre.i127.i.i.i, %._crit_edge.i126.i.i.i ], [ %.pre.i187.i.i.i, %._crit_edge.i186.i.i.i ], [ %i.wf, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %.0.i345.sink.i.i.i = phi ptr [ %i.nk, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i124.i.i.i ], [ %i.nk, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i98.i.i.i ], [ %i.nk, %._crit_edge.i100.i.i.i ], [ %i.nk, %._crit_edge.i126.i.i.i ], [ %.0.i.i.i.i, %._crit_edge.i186.i.i.i ], [ %.0.i.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i184.i.i.i ]
  %i.wq = zext i32 %.sink.i.i.i to i64
  %i.wr = getelementptr inbounds nuw [16 x i8], ptr %.sink393.i.i.i, i64 %i.wq ; 2 uses
  store ptr %.0.i345.sink.i.i.i, ptr %i.wr, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.ws = load i32, ptr %i.mp, align 8, !tbaa !273
  %i.wt = add i32 %i.ws, 1
  br label %.preheader.i.i.i.sink.split

bb.fi:                                            ; preds = %thread-pre-split.i.i.i
  %i.wu = load ptr, ptr %3, align 8, !tbaa !271   ; 3 uses
  %.not.i.i.i191.i.i.i = icmp eq ptr %i.wu, %i.mo
  %i.wv = icmp eq ptr %i.wu, null
  %or.cond.i.i.i192.i.i.i = or i1 %.not.i.i.i191.i.i.i, %i.wv
  br i1 %or.cond.i.i.i192.i.i.i, label %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.wu)
          to label %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #19
  unreachable

_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i: ; preds = %bb.fj, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre.i.i198 = load ptr, ptr %4, align 8, !tbaa !264 ; 4 uses
  %.pre75.i.i = load i32, ptr %i.mf, align 8, !tbaa !265 ; 2 uses
  %i.wy = zext i32 %.pre75.i.i to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.wy, 3        ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.pre.i.i198, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %.pre75.i.i, 0
  br i1 %.not8.i.i.i.i, label %.loopexit.i5.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i
  %i.xa = add nsw i64 %.idx.i.i.i.i, -8           ; 2 uses
  %i.xb = lshr exact i64 %i.xa, 3
  %i.xc = add nuw nsw i64 %i.xb, 1
  %xtraiter588 = and i64 %i.xc, 3                 ; 2 uses
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.xh, %.lr.ph.i.i.i.i.prol ], [ %.pre.i.i198, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter590 = phi i64 [ %prol.iter590.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.xd = load ptr, ptr %.09.i.i.i.i.prol, align 8, !tbaa !268
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = and i32 %i.xf, -65537
  store i32 %i.xg, ptr %i.xe, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter590.next = add i64 %prol.iter590, 1   ; 2 uses
  %prol.iter590.cmp.not = icmp eq i64 %prol.iter590.next, %xtraiter588
  br i1 %prol.iter590.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !340

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %.pre.i.i198, %.lr.ph.i.i.i.i.preheader ], [ %i.xh, %.lr.ph.i.i.i.i.prol ]
  %i.xi = icmp ult i64 %i.xa, 24
  br i1 %i.xi, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.yc, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.xj = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !268
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4 ; 2 uses
  %i.xl = load i32, ptr %i.xk, align 4
  %i.xm = and i32 %i.xl, -65537
  store i32 %i.xm, ptr %i.xk, align 4
  %i.xn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !268
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 4 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4
  %i.xr = and i32 %i.xq, -65537
  store i32 %i.xr, ptr %i.xp, align 4
  %i.xs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !268
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4
  %i.xw = and i32 %i.xv, -65537
  store i32 %i.xw, ptr %i.xu, align 4
  %i.xx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !268
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4 ; 2 uses
  %i.ya = load i32, ptr %i.xz, align 4
  %i.yb = and i32 %i.ya, -65537
  store i32 %i.yb, ptr %i.xz, align 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i199.3 = icmp eq ptr %i.yc, %i.wz
  br i1 %.not.i.i.i.i199.3, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre.i4.i.i = load ptr, ptr %4, align 8, !tbaa !264
  br label %.loopexit.i5.i.i

.loopexit.i5.i.i:                                 ; preds = %.loopexit.loopexit.i.i.i, %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i
  %i.yd = phi ptr [ %.pre.i4.i.i, %.loopexit.loopexit.i.i.i ], [ %.pre.i.i198, %_Z18for_each_expr_coreIN12_GLOBAL__N_124uninterp_const_collectorE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr.exit.i.i ] ; 3 uses
  store i32 0, ptr %i.mf, align 8, !tbaa !265
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.yd, %i.me
  %i.ye = icmp eq ptr %i.yd, null
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i6.i.i, %i.ye
  br i1 %or.cond.i.i.i.i.i.i, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %.loopexit.i5.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.yd)
          to label %bb.fn unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yf = landingpad { ptr, i32 }
          catch ptr null
  %i.yg = extractvalue { ptr, i32 } %i.yf, 0
  call void @__clang_call_terminate(ptr %i.yg) #19
  unreachable

.body.i.i:                                        ; preds = %bb.ff, %bb.ey, %bb.ep, %bb.eg, %bb.dv, %bb.dm, %bb.di
  %.pn53.pn.i.i.i = phi { ptr, i32 } [ %i.um, %bb.ey ], [ %i.na, %bb.di ], [ %i.tg, %bb.ep ], [ %i.wp, %bb.ff ], [ %i.rs, %bb.eg ], [ %i.ns, %bb.dm ], [ %i.pw, %bb.dv ]
  call void @_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

bb.fn:                                            ; preds = %bb.fl, %.loopexit.i5.i.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.yh = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  %i.yi = load ptr, ptr %i.md, align 8, !tbaa !234 ; 3 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yk = getelementptr inbounds i8, ptr %i.yi, i64 -4
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !221
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203: ; preds = %bb.fn, %bb.fo
  %.0.i.i202 = phi i32 [ %i.yl, %bb.fo ], [ 0, %bb.fn ]
  invoke void @_Z9mk_forallR11ast_managerjPKP3appP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %23, ptr noundef nonnull align 8 dereferenceable(952) %i.yh, i32 noundef %.0.i.i202, ptr noundef %i.yi, ptr noundef %i.lk)
          to label %bb.fp unwind label %bb.ga

bb.fp:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203
  br i1 %.not.i194, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ym = load ptr, ptr %i.be, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.yn = load i32, ptr %i.mh, align 4, !tbaa !229
  %i.yo = add i32 %i.yn, -1                       ; 2 uses
  store i32 %i.yo, ptr %i.mh, align 4, !tbaa !229
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %bb.fr, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ym, ptr noundef nonnull %i.lk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit208 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yq = landingpad { ptr, i32 }
          catch ptr null
  %i.yr = extractvalue { ptr, i32 } %i.yq, 0
  call void @__clang_call_terminate(ptr %i.yr) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit208:      ; preds = %bb.fr, %bb.fq, %bb.fp
  %i.ys = load ptr, ptr %23, align 8, !tbaa !231  ; 2 uses
  store ptr %i.ys, ptr %9, align 8, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.yt = load ptr, ptr %i.t, align 8, !tbaa !225, !nonnull !214, !align !215
  store ptr null, ptr %24, align 8, !tbaa !235
  %i.yu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.yt, ptr %i.yu, align 8, !tbaa !216
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !349, !nonnull !214, !align !215
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN7datalog12rule_manager7mk_ruleEP4exprP3appRNS_8rule_setERK6symbol(ptr noundef nonnull align 8 dereferenceable(1104) %i.yw, ptr noundef %i.ys, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.yx)
          to label %bb.ft unwind label %bb.gb

bb.ft:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit208
  %i.yy = load ptr, ptr %i.yv, align 8, !tbaa !349, !nonnull !214, !align !215
  %i.yz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !297 ; 3 uses
  %i.zb = icmp eq ptr %i.za, null
  br i1 %i.zb, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.zc = getelementptr inbounds i8, ptr %i.za, i64 -4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !221
  %i.ze = add i32 %i.zd, -1
  %i.zf = zext i32 %i.ze to i64
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.0.i.i.i209 = phi i64 [ %i.zf, %bb.fu ], [ 4294967295, %bb.ft ]
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %.0.i.i.i209
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !298
  invoke void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104) %i.yy, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.zh)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit211 unwind label %bb.gb

_ZN7obj_refI3app11ast_managerED2Ev.exit211:       ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.zi = load ptr, ptr %i.md, align 8, !tbaa !234 ; 5 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212:         ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit211
  %i.zk = getelementptr inbounds i8, ptr %i.zi, i64 -4
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !221 ; 2 uses
  %i.zm = zext i32 %i.zl to i64
  %i.zn = shl nuw nsw i64 %i.zm, 3
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zi, i64 %i.zn
  %.not.i213 = icmp eq i32 %i.zl, 0
  br i1 %.not.i213, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221, label %.lr.ph.i.i214

.lr.ph.i.i214:                                    ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217
  %.06.i.i215 = phi ptr [ %i.zv, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217 ], [ %i.zi, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212 ] ; 2 uses
  %i.zp = load ptr, ptr %.06.i.i215, align 8, !tbaa !230 ; 3 uses
  %i.zq = load ptr, ptr %22, align 8, !tbaa !238, !nonnull !214, !align !215
  %.not.i.i.i.i.i216 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i.i.i216, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i214
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !229
  %i.zt = add i32 %i.zs, -1                       ; 2 uses
  store i32 %i.zt, ptr %i.zr, align 4, !tbaa !229
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.fx, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.zq, ptr noundef nonnull %i.zp)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217 unwind label %bb.fz

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217: ; preds = %bb.fx, %bb.fw, %.lr.ph.i.i214
  %i.zv = getelementptr inbounds nuw i8, ptr %.06.i.i215, i64 8 ; 2 uses
  %i.zw = icmp ult ptr %i.zv, %i.zo
  br i1 %i.zw, label %.lr.ph.i.i214, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i217
  %.pre.i219 = load ptr, ptr %i.md, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %.pre.i219, null
  br i1 %.not.i.i.i220, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212
  %i.zx = phi ptr [ %.pre.i219, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218 ], [ %i.zi, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i212 ]
  %i.zy = getelementptr inbounds i8, ptr %i.zx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.zy)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222 unwind label %bb.fy

bb.fy:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221
  %i.zz = landingpad { ptr, i32 }
          catch ptr null
  %i.aaa = extractvalue { ptr, i32 } %i.zz, 0
  call void @__clang_call_terminate(ptr %i.aaa) #19
  unreachable

bb.fz:                                            ; preds = %bb.fx
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  %i.aac = extractvalue { ptr, i32 } %i.aab, 0
  call void @__clang_call_terminate(ptr %i.aac) #19
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit211, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i218, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.gc

bb.ga:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit203
  %i.aad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %.body

bb.gb:                                            ; preds = %bb.fv, %_ZN7obj_refI4expr11ast_managerED2Ev.exit208
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.gb, %bb.ga
  %.pn90 = phi { ptr, i32 } [ %i.aae, %bb.gb ], [ %i.aad, %bb.ga ], [ %.pn53.pn.i.i.i, %.body.i.i ]
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.go

bb.gc:                                            ; preds = %bb.cz, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit222
  %.074 = xor i1 %i.lx, true
  %i.aaf = load ptr, ptr %18, align 8, !tbaa !261 ; 3 uses
  %i.aag = load i32, ptr %i.hp, align 8, !tbaa !262 ; 2 uses
  %i.aah = zext i32 %i.aag to i64
  %.idx.i = shl nuw nsw i64 %i.aah, 3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %.idx.i
  %.not.i223 = icmp eq i32 %i.aag, 0
  br i1 %.not.i223, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %bb.gc, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.06.i.i225 = phi ptr [ %i.aao, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i ], [ %i.aaf, %bb.gc ] ; 2 uses
  %i.aaj = load ptr, ptr %.06.i.i225, align 8, !tbaa !263 ; 4 uses
  %.not.i.i.i.i226 = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i.i.i226, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph.i.i224
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32 ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !258
  %i.aam = add i32 %i.aal, -1                     ; 2 uses
  store i32 %i.aam, ptr %i.aak, align 8, !tbaa !258
  %i.aan = icmp eq i32 %i.aam, 0
  br i1 %i.aan, label %bb.ge, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.aaj) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.aaj)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i unwind label %bb.gh

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i: ; preds = %bb.ge, %bb.gd, %.lr.ph.i.i224
  %i.aao = getelementptr inbounds nuw i8, ptr %.06.i.i225, i64 8 ; 2 uses
  %i.aap = icmp ult ptr %i.aao, %i.aai
  br i1 %i.aap, label %.lr.ph.i.i224, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, !llvm.loop !3

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE7dec_refEPS0_.exit.i.i
  %.pre.i227 = load ptr, ptr %18, align 8, !tbaa !261
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i, %bb.gc
  %i.aaq = phi ptr [ %.pre.i227, %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.loopexit.i ], [ %i.aaf, %bb.gc ] ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aaq, %i.ho
  %i.aar = icmp eq ptr %i.aaq, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i1.i, %i.aar
  br i1 %or.cond.i.i.i.i, label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aaq)
          to label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  %i.aat = extractvalue { ptr, i32 } %i.aas, 0
  call void @__clang_call_terminate(ptr %i.aat) #19
  unreachable

bb.gh:                                            ; preds = %bb.ge
  %i.aau = landingpad { ptr, i32 }
          catch ptr null
  %i.aav = extractvalue { ptr, i32 } %i.aau, 0
  call void @__clang_call_terminate(ptr %i.aav) #19
  unreachable

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit: ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE13dec_range_refEPKPS0_S6_.exit.i, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.aaw = load ptr, ptr %17, align 8, !tbaa !247 ; 4 uses
  %.not.i.i228 = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i228, label %_ZN3refI4goalED2Ev.exit229, label %bb.gi

bb.gi:                                            ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !258
  %i.aaz = add i32 %i.aay, -1                     ; 2 uses
  store i32 %i.aaz, ptr %i.aax, align 8, !tbaa !258
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.gj, label %_ZN3refI4goalED2Ev.exit229

bb.gj:                                            ; preds = %bb.gi
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.aaw) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.aaw)
          to label %_ZN3refI4goalED2Ev.exit229 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abb = landingpad { ptr, i32 }
          catch ptr null
  %i.abc = extractvalue { ptr, i32 } %i.abb, 0
  call void @__clang_call_terminate(ptr %i.abc) #19
  unreachable

_ZN3refI4goalED2Ev.exit229:                       ; preds = %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev.exit, %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.abd = load ptr, ptr %15, align 8, !tbaa !241 ; 5 uses
  %.not.i.i230 = icmp eq ptr %i.abd, null
  br i1 %.not.i.i230, label %_ZN3refI6tacticED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZN3refI4goalED2Ev.exit229
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !244
  %i.abg = add i32 %i.abf, -1                     ; 2 uses
  store i32 %i.abg, ptr %i.abe, align 8, !tbaa !244
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.gm, label %_ZN3refI6tacticED2Ev.exit

bb.gm:                                            ; preds = %bb.gl
  %i.abi = load ptr, ptr %i.abd, align 8, !tbaa !17
  %i.abj = load ptr, ptr %i.abi, align 8
  call void %i.abj(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.abd) #18, !inline_history !341
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.abd)
          to label %_ZN3refI6tacticED2Ev.exit unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.abk = landingpad { ptr, i32 }
          catch ptr null
  %i.abl = extractvalue { ptr, i32 } %i.abk, 0
  call void @__clang_call_terminate(ptr %i.abl) #19
  unreachable

_ZN3refI6tacticED2Ev.exit:                        ; preds = %_ZN3refI4goalED2Ev.exit229, %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.gr

bb.go:                                            ; preds = %bb.cc, %bb.cd, %bb.cp, %bb.da, %bb.dd, %.body, %bb.bs, %bb.br
  %.pn96.pn.pn = phi { ptr, i32 } [ %i.ie, %bb.br ], [ %i.ly, %bb.da ], [ %lpad.phi, %bb.cd ], [ %i.ii, %bb.bs ], [ %.pn93, %bb.cp ], [ %.pn90, %.body ], [ %i.jl, %bb.cc ], [ %.pn88, %bb.dd ]
  call void @_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.bq
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %bb.go ], [ %i.id, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN3refI6tacticED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.bp
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn, %bb.gp ], [ %i.ic, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.hf

bb.gr:                                            ; preds = %bb.r, %_ZN3refI6tacticED2Ev.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %.175 = phi i1 [ %.074, %_ZN3refI6tacticED2Ev.exit ], [ true, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ false, %bb.r ]
  %i.abm = load ptr, ptr %10, align 8, !tbaa !231 ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i231, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.abn = load ptr, ptr %i.bf, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !229
  %i.abq = add i32 %i.abp, -1                     ; 2 uses
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !229
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %bb.gt, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.abn, ptr noundef nonnull %i.abm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit232 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.abs = landingpad { ptr, i32 }
          catch ptr null
  %i.abt = extractvalue { ptr, i32 } %i.abs, 0
  call void @__clang_call_terminate(ptr %i.abt) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit232:      ; preds = %bb.gr, %bb.gs, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %25 = load ptr, ptr %9, align 8, !tbaa !231     ; 3 uses
  %.not.i.i233 = icmp eq ptr %25, null
  br i1 %.not.i.i233, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234, label %bb.gv

bb.gv:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit232
  %i.abu = load ptr, ptr %i.be, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.abv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !229
  %i.abx = add i32 %i.abw, -1                     ; 2 uses
  store i32 %i.abx, ptr %i.abv, align 4, !tbaa !229
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.gw, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.abu, ptr noundef nonnull %25)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit234 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.abz = landingpad { ptr, i32 }
          catch ptr null
  %i.aca = extractvalue { ptr, i32 } %i.abz, 0
  call void @__clang_call_terminate(ptr %i.aca) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit234:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit232, %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.acb = load ptr, ptr %8, align 8, !tbaa !231  ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.acb, null
  br i1 %.not.i.i235, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236, label %bb.gy

bb.gy:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit234
  %i.acc = load ptr, ptr %i.bd, align 8, !tbaa !232, !nonnull !214, !align !215
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 8 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !229
  %i.acf = add i32 %i.ace, -1                     ; 2 uses
  store i32 %i.acf, ptr %i.acd, align 4, !tbaa !229
  %i.acg = icmp eq i32 %i.acf, 0
  br i1 %i.acg, label %bb.gz, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.acc, ptr noundef nonnull %i.acb)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit236 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ach = landingpad { ptr, i32 }
          catch ptr null
  %i.aci = extractvalue { ptr, i32 } %i.ach, 0
  call void @__clang_call_terminate(ptr %i.aci) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit236:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit234, %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.acj = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 5 uses
  %i.ack = icmp eq ptr %i.acj, null
  br i1 %i.ack, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit236
  %i.acl = getelementptr inbounds i8, ptr %i.acj, i64 -4
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !221 ; 2 uses
  %i.acn = zext i32 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 3
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.aco
  %.not.i238 = icmp eq i32 %i.acm, 0
  br i1 %.not.i238, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246, label %.lr.ph.i.i239

.lr.ph.i.i239:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242
  %.06.i.i240 = phi ptr [ %i.acw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242 ], [ %i.acj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237 ] ; 2 uses
  %i.acq = load ptr, ptr %.06.i.i240, align 8, !tbaa !223 ; 3 uses
  %i.acr = load ptr, ptr %7, align 8, !tbaa !227, !nonnull !214, !align !215
  %.not.i.i.i.i.i241 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i.i.i241, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.i.i239
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 8 ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !229
  %i.acu = add i32 %i.act, -1                     ; 2 uses
  store i32 %i.acu, ptr %i.acs, align 4, !tbaa !229
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.hc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.acr, ptr noundef nonnull %i.acq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242 unwind label %bb.he

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242: ; preds = %bb.hc, %bb.hb, %.lr.ph.i.i239
  %i.acw = getelementptr inbounds nuw i8, ptr %.06.i.i240, i64 8 ; 2 uses
  %i.acx = icmp ult ptr %i.acw, %i.acp
  br i1 %i.acx, label %.lr.ph.i.i239, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i242
  %.pre.i244 = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %.pre.i244, null
  br i1 %.not.i.i.i245, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237
  %i.acy = phi ptr [ %.pre.i244, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243 ], [ %i.acj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i237 ]
  %i.acz = getelementptr inbounds i8, ptr %i.acy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.acz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.hd

bb.hd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246
  %i.ada = landingpad { ptr, i32 }
          catch ptr null
  %i.adb = extractvalue { ptr, i32 } %i.ada, 0
  call void @__clang_call_terminate(ptr %i.adb) #19
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.adc = landingpad { ptr, i32 }
          catch ptr null
  %i.add = extractvalue { ptr, i32 } %i.adc, 0
  call void @__clang_call_terminate(ptr %i.add) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit236, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i243, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.175

bb.hf:                                            ; preds = %.loopexit251, %.loopexit.split-lp252, %bb.gq, %bb.bo, %bb.bd, %bb.t
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn, %bb.gq ], [ %i.ib, %bb.bo ], [ %.pn81, %bb.bd ], [ %i.by, %bb.t ], [ %lpad.loopexit253, %.loopexit251 ], [ %lpad.loopexit.split-lp254, %.loopexit.split-lp252 ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.s, %bb.k
  %.pn104 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %.pn96.pn.pn.pn.pn.pn.pn, %bb.hf ], [ %i.bx, %bb.s ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.e
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104, %bb.hg ], [ %i.af, %bb.e ]
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
